#pragma once

#include <QObject>
#include <QDebug>


class Handler_HomePage : public QObject
{ Q_OBJECT
    Q_PROPERTY(QString _result MEMBER m_result NOTIFY  resultChanged)

public:
    explicit Handler_HomePage(QObject *parent = nullptr);
    ~Handler_HomePage(){}

    QString m_result;

Q_SIGNALS:
    void resultChanged();

public Q_SLOTS:
    Q_INVOKABLE void doCalc(int value);

};

