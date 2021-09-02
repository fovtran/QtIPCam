#ifndef VIEWER_H_
#define VIEWER_H_

#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QProcess>
#include <QRunnable>
#include <QtNetwork>
#include <QTcpSocket>
#include <QAbstractSocket>

#include <QMainWindow>
#include <QImage>
#include <QWidget>
#include <QPainter>
#include <QLabel>

class Viewer : public QWidget {
    Q_OBJECT

public:
    Viewer(QWidget *parent = nullptr);
    ~Viewer();
    void setImage(QByteArray);
    void update();

public slots:

private:
    QWidget scene;
    QString path;
    QImage source;
    QLabel view;
};

#endif
