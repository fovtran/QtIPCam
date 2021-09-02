#ifndef CONFIGREAD_H_
#define CONFIGREAD_H_

#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>


class XmlConfigReader : public QObject
{
    Q_OBJECT

    public:
        explicit XmlConfigReader(QObject *parent=nullptr);
        ~XmlConfigReader();
        QString read(const QString);
        QList<QMap<QString,QString>> iplist;

    private:
        QString errorString;
        QFile *xmlFile;

        QString _filename;
        QXmlStreamReader xml;
};

#endif
