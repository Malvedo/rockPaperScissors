import QtQuick 2.4

Rectangle {
    id: root
    color: "transparent"
    property string text: ""

    Image {
        id: _icon
        antialiasing: false
        smooth: false
        height: parent.height - parent.height/100 * 25
        width: parent.width - parent.width/100 * 25

        anchors{
        verticalCenter: parent.verticalCenter
        horizontalCenter: parent.horizontalCenter
        }

        source: if (root.text === "Камень"){
                    "qrc:/resources/rock.png"
                }
                else if (root.text === "Ножницы"){
                    "qrc:/resources/scissors.png"
                }
                else if (root.text === "Бумага"){
                    "qrc:/resources/paper.png"
                }
                else ""
    }
}
