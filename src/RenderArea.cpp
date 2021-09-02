#include <stdlib.h>
#include <math.h>

#include <QDateTime>
#include <QDebug>
#include <QPainter>
#include <QImage>
#include <QVBoxLayout>
#include <qendian.h>

#include "RenderArea.h"

using namespace std;

RenderArea::RenderArea(QWidget *parent) : QWidget(parent)
{
    setBackgroundRole(QPalette::Base);
    setAutoFillBackground(true);
    setMinimumHeight(480);
    setMinimumWidth(640);
    bool isEnabled=true;
    refresh_rate.start();
    enabled.storeRelease(&isEnabled);
}

void RenderArea::setImage(QImage q)
{
    frame = q;
    this->repaint();
}

void RenderArea::set_enable(bool c)
{
    enabled.storeRelease(&c);
    qDebug()<<"Display enabled";
}

/*
 * painter.drawImage runs only after refresh expired
 *
 *
*/
void RenderArea::paintEvent(QPaintEvent *event)
{
    if (enabled.loadAcquire()){
        if(refresh_rate.hasExpired(50))
        {
            bool isEnabled =0;
            enabled.storeRelease( &isEnabled );
            refresh_rate.restart();

            painter.begin(this);
            painter.drawImage(QPoint(0, 0), frame);
            painter.end();
        }

    }
    else
    {
        if(refresh_rate.hasExpired(25))
        {
            bool isEnabled=1;
            enabled.storeRelease( &isEnabled );
            refresh_rate.restart();
        }
    }
    //painter.fillRect(0, 0,640,480, Qt::green);
}
