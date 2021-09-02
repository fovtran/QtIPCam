#include <QDebug>
#include <QtCore>
#include <QString>
#include <QObject>
#include <QtNetwork>
#include <QMessageBox>
#include "XmlConfigReader.h"

XmlConfigReader::XmlConfigReader(QObject *parent) : QObject(parent) {}
XmlConfigReader::~XmlConfigReader(){ delete this; }

QString XmlConfigReader::read(const QString filename)
{
    QFile xmlFile(filename);
        if (!xmlFile.open(QIODevice::ReadOnly | QIODevice::Text))
            {
                qDebug() << "Error reading xml";
                exit(0);
            }

    QXmlStreamReader xml(&xmlFile);

    // Parses the xml stream
    if(xml.readNextStartElement()) {
        if (xml.name() == "config"){
                while (xml.readNextStartElement()) {
                    if(xml.name() == "ip") {
                        QString s = xml.readElementText();
                        return s;
                    }
                    else
                        xml.skipCurrentElement();
        }
    }
}

    if (xml.hasError())
    {
        qDebug() << "XML error: " << xml.errorString().data();
    }
}


