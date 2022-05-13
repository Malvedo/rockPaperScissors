import QtQuick 2.12
import QtQuick.Window 2.12
import RPS 1.0

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Камень Ножницы Бумага")

    Rectangle {
        id: _background
        anchors.fill: parent
        color: "#110022"
        z: -100
    }

    GameLogic {
        id: _rps
    }

    Text {
        id: _label
        color: "#ffffff"
        smooth: false
        antialiasing: false
        FontLoader{
            id: _font
            source: "qrc:/resources/vcrosdmonorusbyd.ttf"
        }

        font{
            family: _font.name
            pointSize: 24
        }

        z: 5
        anchors {
            centerIn: parent
        }
        text: _rps.mainLabel
    }
    Monitor{
        id: _playerMonitor
        text: _rps.playerValue
        type: "player"
        width: root.width / 2
        height: root.height / 2 -10
        anchors.left: _background.left
        anchors.top: _background.top
    }
    Monitor{
        id: _aiMonitor
        text: _rps.aiValue
        type: "ai"
        width: root.width / 2
        height: root.height / 2 -10
        anchors.right: _background.right
        anchors.top: _background.top
    }

    Button{
        id: _rock
        text: "Камень"
        width: root.width / 3
        height: root.height / 2 -10
        anchors.left: _background.left
        anchors.bottom: _background.bottom
        MouseArea{
            anchors.fill: parent
            onPressed: {
                _rps.playerChoice(0)
                parent.source = "qrc:/resources/Button2.png"
                parent.margin = 10
            }
            onReleased: {
                parent.source = "qrc:/resources/Button1.png"
                parent.margin = 20
            }

        }
    }
    Button{
        id: _scisseors
        text: "Ножницы"
        width: root.width / 3
        height: root.height / 2 -10
        anchors.horizontalCenter: _background.horizontalCenter
        anchors.bottom: _background.bottom
        MouseArea{
            anchors.fill: parent
            onPressed: {
                _rps.playerChoice(1)
                parent.source = "qrc:/resources/Button2.png"
                parent.margin = 10
            }
            onReleased: {
                parent.source = "qrc:/resources/Button1.png"
                parent.margin = 20
            }

        }
    }
    Button{
        id: _paper
        text: "Бумага"
        width: root.width / 3
        height: root.height / 2 -10
        anchors.right: _background.right
        anchors.bottom: _background.bottom
        MouseArea{
            anchors.fill: parent
            onPressed: {
                _rps.playerChoice(2)
                parent.source = "qrc:/resources/Button2.png"
                parent.margin = 10
            }
            onReleased: {
                parent.source = "qrc:/resources/Button1.png"
                parent.margin = 20
            }

        }
    }




}
