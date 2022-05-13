#include "gamelogic.h"
#include <cstdlib>
#include <vector>


GameLogic::GameLogic(QObject *parent) : QObject(parent)
{
    m_mainLabel = "Да начнётся игра";
}

QString GameLogic::mainLabel()
{
    return m_mainLabel;
}

QString GameLogic::playerValue()
{
    return m_playerValue;
}

QString GameLogic::aiValue()
{
    return m_aiValue;
}

void GameLogic::playerChoice(int choice)
{
    startGame(choice);
}

void GameLogic::setMainLabel(QString text)
{
    m_mainLabel = text;
    emit mainLabelChanged();
}

void GameLogic::setPlayerValue(QString value)
{
    m_playerValue = value;
    emit playerValueChanged();
}

void GameLogic::setAiValue(QString value)
{
    m_aiValue = value;
    emit aiValueChanged();
}

void GameLogic::aiChoice()
{
    m_aiChoice = std::rand() % 3;
}

void GameLogic::startGame(int plChoice)
{
    QVector<QString> naming(3);
    naming[0] = "Камень";
    naming[1] = "Ножницы";
    naming[2] = "Бумага";

    aiChoice();
    if (m_aiChoice == plChoice)
    {
        setMainLabel("Ничья");
        setAiValue(naming[m_aiChoice]);
        setPlayerValue(naming[plChoice]);
    }
    else if ((m_aiChoice == 0 && plChoice == 2) || (m_aiChoice == 1 && plChoice == 0) || (m_aiChoice == 2 && plChoice == 1))
    {
        setMainLabel("Победа!");
        setAiValue(naming[m_aiChoice]);
        setPlayerValue(naming[plChoice]);
    }
    else if ((m_aiChoice == 2 && plChoice == 0) || (m_aiChoice == 0 && plChoice == 1) || (m_aiChoice == 1 && plChoice == 2))
    {
        setMainLabel("Поражение!");
        setAiValue(naming[m_aiChoice]);
        setPlayerValue(naming[plChoice]);
    }
    else return;
}
