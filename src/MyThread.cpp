#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QThread>

#include "MyThread.h"
#include "VideoWidget.h"
#include "XmlConfigReader.h"

using namespace std;

VideoCanvasThread::~VideoCanvasThread() { delete this;}
VideoCanvasThread::VideoCanvasThread(QObject *parent) : QThread(parent), eventLoop(this)
{
    qDebug() << "Starting Canvas- " << QThread::currentThread();
    video_canvas = new VideoWidget(this);

    connect(video_canvas, SIGNAL(_ShowVideoCanvas()), video_canvas, SLOT(show()) );
    connect(this, SIGNAL(ImageReady(QImage)), video_canvas, SLOT(setImage(QImage)), Qt::DirectConnection);

    this->run();
}

void VideoCanvasThread::run()
{
    emit video_canvas->_ShowVideoCanvas();
    emit video_canvas->set_enable(true);
}

NetworkThread::~NetworkThread() { delete this; }
NetworkThread::NetworkThread(QObject* parent)  : QObject(parent), eventLoop(this)
{
    qDebug() << "Starting Network- " << QThread::currentThread();
    httpStreamer = new HttpSocketReaderImpl(this);
    connect(httpStreamer, SIGNAL(export_statistics(int)), this, SLOT(network_statistics(int)) );
    connect(httpStreamer, SIGNAL(export_current_frame(QByteArray)), parent, SLOT(send_video_dataframe(QByteArray)), Qt::DirectConnection);
    eventLoop.processEvents();
    this->run();
}

void NetworkThread::run()
{
    qDebug() << "Streamer Enabled";
    eventLoop.processEvents();
    XmlConfigReader xml;

    QFileInfo fi("temp");
    QDir actual_path(".");
    QDir executable_path = QDir::currentPath();
    QString config_path = executable_path.path() + "/config/config.xml";
    qDebug() << "Working directory : " << executable_path.path();

    QString ipaddress = xml.read(config_path);
    qDebug() << "Target URI: " << ipaddress;
    QTcpSocket *socket = httpStreamer->OpenSocket(ipaddress);
    httpStreamer->ConnectAndEmit(socket);
}

void NetworkThread::send_frame(QByteArray frame) { emit frame_ready(frame); }
void NetworkThread::network_statistics(int stats) { emit statistics_ready(stats); }
