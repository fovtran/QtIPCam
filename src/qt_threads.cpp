#include <iostream>
#include <thread>
#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QProcess>
#include <QRunnable>
#include <QThread>
#include <QThreadPool>
#include <vector>
#include <QApplication>

#include "MainThreadImpl.h"

using namespace std;
// λ**=&_

class UserInputEater : public QObject
{
public:
    bool eventFilter(QObject *object, QEvent *event)
    {
        switch(event->type())
        {
        case QEvent::UpdateRequest:
        case QEvent::UpdateLater:
        case QEvent::Paint:
            return QObject::eventFilter(object, event);
        default:
            return true;
        }
    }
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    qDebug() << "Starting";
    app.processEvents();
    MainThreadImpl* c = new MainThreadImpl();
    QThreadPool::globalInstance()->start(c);
    app.sync();
    int p = app.exec();
    return p;
}
