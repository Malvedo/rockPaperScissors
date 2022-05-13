#ifndef GAMELOGIC_H
#define GAMELOGIC_H

#include <QObject>

class GameLogic : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString mainLabel READ mainLabel WRITE setMainLabel NOTIFY mainLabelChanged)
    Q_PROPERTY(QString playerValue READ playerValue WRITE setPlayerValue NOTIFY playerValueChanged)
    Q_PROPERTY(QString aiValue READ aiValue WRITE setAiValue NOTIFY aiValueChanged)

public:
    explicit GameLogic(QObject *parent = nullptr);
    QString mainLabel();
    QString playerValue();
    QString aiValue();

signals:
    void mainLabelChanged();
    void playerValueChanged();
    void aiValueChanged();

public slots:
    void playerChoice(int choice);
    void setMainLabel(QString text);
    void setPlayerValue(QString value);
    void setAiValue(QString value);


private:
    //Атрибуты
    QString m_mainLabel;
    QString m_playerValue;
    QString m_aiValue;
    int m_aiChoice;

    //Методы
    void aiChoice();
    void startGame(int plChoice);

};

#endif // GAMELOGIC_H
