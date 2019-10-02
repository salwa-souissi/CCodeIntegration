#pragma once

#include <QObject>
#include <QDebug>
#include <QString>
#include <QtQml>

//**************************************************************************************
#include <Controllers/handler_homepage.h>
class Handler_HomePage;

class QmlManager : public QObject
{

    Q_OBJECT
    //********************************************    INIT UI VALUES   **************************

    //********************************************  DECLARE ALL CONTROLLER   *****************************************
    Q_PROPERTY(Handler_HomePage *_handler_HomePage MEMBER m_handler_HomePage NOTIFY  handlerHomePageChanged)


public:
    explicit QmlManager(QObject *parent = nullptr);
    ~QmlManager(){}

    //********************************************    INIT UI VALUES   **************************


    //********************************************  INIT ALL CONTROLLER   *****************************************
    Handler_HomePage *m_handler_HomePage;

    static QmlManager* m_staticManager;


Q_SIGNALS:

    //********************************************    INIT UI VALUES   **************************


    //********************************************  INIT ALL CONTROLLER   *****************************************

    void handlerHomePageChanged();


public Q_SLOTS:

};

