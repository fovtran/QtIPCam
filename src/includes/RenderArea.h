#ifndef RENDERAREA_H_
#define RENDERAREA_H_

#include <QByteArray>
#include <QObject>
#include <QPixmap>
#include <QImage>
#include <QWidget>
#include <QPainter>
#include <QtCore>

class RenderArea : public QWidget
{
    Q_OBJECT

    public:
        RenderArea(QWidget *parent = nullptr);

    public slots:
        void setImage(QImage);
        void set_enable(bool);

    protected:
        void paintEvent(QPaintEvent*);
        QElapsedTimer refresh_rate;

    private:
        QAtomicPointer<bool> enabled;
        QImage frame;
        QPainter painter;
};

#endif
