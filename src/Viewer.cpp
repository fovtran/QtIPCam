#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QProcess>
#include <QRunnable>
#include <QThread>
#include <QThreadPool>
#include <QtNetwork>

#include <vector>
#include <QMainWindow>
#include <QImage>
#include <QWidget>
#include <QPainter>
#include <QLabel>

#include <vector>

#include "MyThread.h"
#include "Viewer.h"

using namespace std;

Viewer::~Viewer() { delete this; }
void Viewer::update() { repaint(); }

Viewer::Viewer(QWidget *parent) : QWidget(parent)
{
    this->setFixedSize(640, 480);
    this->show();
}

void Viewer::setImage(QByteArray frame)
{
    QImage copy = QImage::fromData(frame, "MJPG");  //QImage(frame,W,H,QImage::Format_RGB32);
}
