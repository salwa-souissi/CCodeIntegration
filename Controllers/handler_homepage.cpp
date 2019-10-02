#include "handler_homepage.h"

Handler_HomePage::Handler_HomePage(QObject *parent ) : QObject(parent)
{

}

void Handler_HomePage::doCalc(int value)
{
    m_result =QString::number(value *2) ;
    qDebug() << m_result;
    emit resultChanged();
}

