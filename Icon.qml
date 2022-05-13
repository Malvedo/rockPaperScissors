import QtQuick 2.4

Rectangle {
    id: root
    color: "transparent"
    property string text: ""

    Image {
        id: _icon
        width: root.height
        height: root.height
        antialiasing: false
        smooth: false

        anchors{
        fill: parent
        margins: 40
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
