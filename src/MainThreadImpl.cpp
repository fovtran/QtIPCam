#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QThread>
#include <QtCore>

#include "MyThread.h"
#include "XmlConfigReader.h"
#include "MainThreadImpl.h"

using namespace std;

MainThreadImpl::MainThreadImpl(QObject *parent) : QObject(parent), eventLoop(this)
{
    pool = new QThread(this);
    //pool->setMaxThreadCount (1);

    canvas = new VideoCanvasThread(this);
    network = new NetworkThread(this);

    connect(network, SIGNAL(statistics_ready(int)), this, SLOT(display_stats(int)));
    eventLoop.processEvents();
    qDebug() << "NEVER SHOULD REACH THIS";
    this->run();
}

void MainThreadImpl::run()
{
    eventLoop.processEvents();
    QThreadPool* pool2 = new QThreadPool(this);
    pool2 ->setMaxThreadCount (2);

    pool->moveToThread(canvas);
    pool->start();

    pool2->start(network);
}

void MainThreadImpl::send_video_dataframe(QByteArray dataframe)
{
    current_frame.loadFromData(dataframe);
    emit canvas->ImageReady(current_frame);
}

void MainThreadImpl::display_stats(int stats) { qDebug() << "JFIF - " << stats; }
MainThreadImpl::~MainThreadImpl() { delete this; }
void MainThreadImpl::stop() {}
