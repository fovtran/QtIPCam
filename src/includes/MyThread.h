#ifndef MYTHREAD_H_
#define MYTHREAD_H_

#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QRunnable>

#include "VideoWidget.h"
#include "HttpSocketReaderImpl.h"

class VideoCanvasThread : public QThread
{
    Q_OBJECT

    public:
        explicit VideoCanvasThread(QObject *parent = nullptr);
        ~VideoCanvasThread();
        void run();

    signals:
        void ImageReady(QImage);

    protected:
        VideoWidget* video_canvas;

    private:
        QEventLoop eventLoop;

};

class NetworkThread : public QObject, public QRunnable
{
    Q_OBJECT

    public:
        NetworkThread(QObject *parent = nullptr);
        ~NetworkThread();
        void run();
        HttpSocketReaderImpl* httpStreamer;

    signals:
        void statistics_ready(int);
        void frame_ready(QByteArray);

    public slots:
        void network_statistics(int);
        void send_frame(QByteArray);

    protected:
        int counter2;

    private:
        QEventLoop eventLoop;
};

#endif
