#include "qmlmanager.h"

QmlManager* QmlManager::m_staticManager;

QmlManager::QmlManager(QObject *parent) : QObject(parent)
{
    try {

        m_staticManager = this;
        //*****************************************************   INIT ALL CONTROLLER   *****************************************

        m_handler_HomePage = new Handler_HomePage();
        emit handlerHomePageChanged ();
        qmlRegisterType<Handler_HomePage>("com.controls.Handler_HomePage", 1, 0, "Handler_HomePage");

    }catch (const char* e) {

        qDebug() << QString(Q_FUNC_INFO) + " EXCEPTION :: " +e;

    }
}

