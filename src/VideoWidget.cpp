#include <stdlib.h>
#include <math.h>

#include <QDateTime>
#include <QDebug>
#include <QImage>
#include <QPainter>
#include <QObject>
#include <QThread>
#include <QEventLoop>
#include <QVBoxLayout>
#include <qendian.h>

#include "VideoWidget.h"

VideoWidget::VideoWidget(QObject *parent) : m_canvas(nullptr)
{
    m_canvas = new RenderArea(this);
    initializeWindow();
}

VideoWidget::~VideoWidget() { delete this; }
void VideoWidget::setSize(int x, int y){}

void VideoWidget::setImage(QImage qim)
{
    m_canvas->setImage(qim);
}

void VideoWidget::initializeWindow()
{
    QScopedPointer<QWidget> window(new QWidget);
    QScopedPointer<QVBoxLayout> layout(new QVBoxLayout);
    connect(this, SIGNAL(set_enable(bool)), m_canvas, SLOT(set_enable(bool)), Qt::DirectConnection);

    layout->addWidget(m_canvas);
    m_canvas->update();

    window->setLayout(layout.data());
    layout.take(); // ownership transferred

    setCentralWidget(window.data());
    QWidget *const windowPtr = window.take(); // ownership transferred
    windowPtr->show();
}
