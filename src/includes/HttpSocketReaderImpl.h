#ifndef MYTCPSOCKET_H_
#define MYTCPSOCKET_H_

#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QTcpSocket>
#include <QRunnable>
#include <QThread>

#define LOG_LEVEL 0

class HttpSocketReaderImpl : public QObject
{
    Q_OBJECT

signals:
    void export_statistics(int);
    void export_current_frame(QByteArray);
    void enable();

public slots:
    void killSocket();

    public:
        explicit HttpSocketReaderImpl(QObject* parent=nullptr);
        QTcpSocket *OpenSocket(QString);
        void ConnectAndEmit(QTcpSocket*);
        QTcpSocket *socket;

    protected:
        QByteArray header;
        QByteArray lineEnd;
        QByteArray buffer;
        QByteArray curr_frame;
        QElapsedTimer timer;

    private:
        QEventLoop eventLoop;
        QAtomicPointer<bool> _stopping;
        QAtomicPointer<bool> _data_ready;
        QAtomicPointer<bool> buffer_is_locked;
        QAtomicPointer<int> jfif_start_position;
        QAtomicPointer<int> jfif_end_position;
        QAtomicPointer<int> jfif_start;
        QAtomicPointer<int> jfif_end;

        bool firstRun = true;
        QAtomicInt threadCount = 0;
        QAtomicInt frame_size = 0;
        QAtomicInt frame_counter = 0;
        QAtomicInt frames_per_sec = 0;
        QAtomicInt chunk_size = 1448;
        QAtomicInt buffer_count = 1;
        QAtomicInt bufsize = chunk_size*buffer_count;
        const char* host;
        quint16 port = 80;
};

#endif
