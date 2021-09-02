#ifndef VIDEOCANVAS_H_
#define VIDEOCANVAS_H_

#include <QByteArray>
#include <QMainWindow>
#include <QObject>
#include <QImage>

#include "RenderArea.h"

class VideoWidget : public QMainWindow
{
    Q_OBJECT

    public:
        explicit VideoWidget(QObject *parent = nullptr);
        ~VideoWidget();

    private:
        void initializeWindow();

    signals:
        void _ShowVideoCanvas();
        void set_enable(bool);

    private slots:
        void setImage(QImage);
        void setSize(int,int);

    protected:
        QThread* thread;

    private:
        RenderArea* m_canvas;
        QByteArray* m_buffer;

};


#endif
