#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QtNetwork>
#include <omp.h>

#include "HttpSocketReaderImpl.h"

extern int parallelism_enabled;

void HttpSocketReaderImpl::killSocket() { bool x=true; _stopping.storeRelease(&x); }

HttpSocketReaderImpl::HttpSocketReaderImpl(QObject *parent) : QObject(parent), eventLoop(this){}

/*
 * This class just opens a socket
 *
*/
QTcpSocket *HttpSocketReaderImpl::OpenSocket(QString ipaddress)
{
    if (firstRun)
    {
        firstRun = false;
        threadCount.operator++();

        qDebug() << "ThreadCount: " << threadCount.load();
        qDebug() << ipaddress;
        QByteArray ba = ipaddress.toLatin1();
        host = ba.data();
        socket = new QTcpSocket;
        socket->connectToHost(host, port);
        lineEnd = "\r\n";
        header.append("GET /video.cgi?.mjpg HTTP/1.1" + lineEnd);
        header.append("Host: "  + ipaddress + lineEnd);
        header.append("User-Agent: python-requests/2.14.2" + lineEnd);
        header.append("Accept-Encoding: gzip, deflate" + lineEnd);
        header.append("Accept: */*" + lineEnd);
        header.append("Connection: keep-alive" + lineEnd);
        header.append("\r\r\n\r\n");
        socket->setReadBufferSize( bufsize.loadAcquire() );
        socket->write(static_cast<QByteArray>(header));
        socket->waitForBytesWritten();
    }
    eventLoop.processEvents();
        return socket;
}

/*
 * This class loops through atomic operators for three kinds of memory operations
 * 1. Costly hardware calls to the network stack
 * 2. Rather costly buffer search and memory copy
 * 3. Slow timer call for collecting stats
 * The while loop is superfast and then
 * as we add Interlocked Boolean Pointers
 * compiler relocates the code to the shortest path possible
 * at the cycle nest, and then costly memory calls are mutexed
 * not memory fenced at the second nest which operates on the bus.
 * Then we need a few things,
 * 1. Interlock all operations to atomic pointers inside the while loop
 * 2. Invoke costly memory operations from a different thread working at the bus.
*/
void HttpSocketReaderImpl::ConnectAndEmit(QTcpSocket *current_socket)
{
    qDebug() << "Connecting...";
    timer.start();

    jfif_end_position.storeRelease(nullptr);
    jfif_start_position.storeRelease(nullptr);

    while(!_stopping.loadAcquire()){
        // Useless if nesting on a costly initial buffer expectation
        // Rather move it outside the superfast while loop,
        if(current_socket->waitForConnected(2000))
        {
            bool isSocketReady = current_socket->waitForReadyRead();
            _data_ready.storeRelease( &isSocketReady );

            // Type one error, slow error catching inside Atomic while
            try
            {
                if(_data_ready.loadAcquire())
                    // long and costly mem-copy from network socket stack
                    // into buffer object. better of without locks
                    // and using a memory fence. right?
                    buffer +=current_socket->read(bufsize.loadAcquire());
            }
            catch(QException)
            {
                qDebug() << "Error: No data.";
                bool x;
                x=true;
                _stopping.storeRelease(&x);
            }

            // Type 3 error: unbound string buffer search in Atomic While
            // This is the slowest routine
            // Since it loops a string for a pattern
            // We need a flip-flop handling the current state of buffer reads
            int _jfifstart = buffer.indexOf("\xff\xd8");
            int _jfifend = buffer.indexOf("\xff\xd9");
            jfif_start_position.storeRelease( &_jfifstart );
            jfif_end_position.storeRelease( &_jfifend );

            jfif_start.storeRelease( jfif_start_position );
            jfif_end.storeRelease( jfif_end_position );


            if ( *jfif_start.loadAcquire()==-1 or *jfif_end.loadAcquire()==-1)
                continue;

            if ( jfif_start.loadAcquire() < jfif_end.loadAcquire() )
            {
                bool yes;
                yes = true;
                buffer_is_locked.storeRelease(&yes);
            }
            else
            {
                bool no;
                no = false;
                buffer_is_locked.storeRelease(&no);
            }

            // Type 4 error: buffer operation hanging on a Atomic spinlock
            if ( buffer_is_locked.loadAcquire() )
            {
                // Type 5 error: multiple unbound calls to memory copy.
                // This is the actual buffer extraction from A to B
                // This is rather a slower process of buffer slicing and memory copy
                // Could this require a Worker or a Runnable on its own?

                curr_frame = buffer.mid(*jfif_start.loadAcquire(), *jfif_start.loadAcquire()+*jfif_end.loadAcquire()+2);
                //curr_frame.storeRelease(&x);
            }

            // Type 4 error: buffer operation hanging on a Atomic spinlock
            if ( buffer_is_locked.loadAcquire() )
            {
                // Type 6 error: object emit call without a stack-pointer
                // wait states have to be inserted betwen Interlocks
                // in order to preserve cpu from stalling doing
                // a series of allocation and deallocations of large memory block,
                //QByteArray x = *curr_frame.loadAcquire();
                emit export_current_frame( curr_frame );

                buffer.clear();

                bool yes;
                yes= true;
                buffer_is_locked.storeRelease(&yes);

                frame_size.storeRelease( *jfif_end.loadAcquire() - *jfif_start.loadAcquire() );
                jfif_end.storeRelease(nullptr);
                jfif_start.storeRelease(nullptr);
                ++frames_per_sec;
                ++frame_counter;

                // Type 2 error: unknown cost of hardware timer call and timer counter evaluation
                // rather slow or non-atomic timer operation
                // improve it adding a interlocked flag
                // which skips cycle-by-cycle costly call.
                if(timer.hasExpired(1000))
                {
                    //emit export_statistics(frames_per_sec);
                    frames_per_sec.storeRelease( 0 );
                    timer.restart();
                }
                // Type 7 error: garbage collect of unknown Interlocking condition.
                // rather slow buffer garbage collecting
                // how to simply discard the pointer of buffer
                // instead of doing a costly nested write?
            }
        }
        else
        {
            qDebug() << "Packets dropped.";
            bool x;
            x=true;
            _stopping.storeRelease(&x);
        }
    } // termina loop while

    current_socket->flush();
    current_socket->close();
}
