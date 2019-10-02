#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qmlmanager.h>
#include <QQmlContext>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;


    //******************************************   Init Managers Class   **********************************
    QmlManager *qmlapi = new QmlManager();
    engine.rootContext()->setContextProperty("QmlManagerSalwa", qmlapi);




    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();
}
