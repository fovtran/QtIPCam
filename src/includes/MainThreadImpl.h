#ifndef MAINTHREADIMPL_H
#define MAINTHREADIMPL_H

#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QRunnable>
#include <QImage>

#include "MyThread.h"

class MainThreadImpl: public QObject, public QRunnable
{
    Q_OBJECT

    public:
        explicit MainThreadImpl(QObject* parent = nullptr);
        ~MainThreadImpl();
        void run();
        void stop();
        QThread *pool;
        VideoCanvasThread *canvas;
        NetworkThread *network;
        QImage current_frame;

    signals:
        void enableCanvas();
        void frame_ready(QImage);

    public slots:
        void display_stats(int);
        void send_video_dataframe(QByteArray);

    protected:
        int counter;

    private:
        QEventLoop eventLoop;
};

#endif // MAINTHREADIMPL_H
