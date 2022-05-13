import QtQuick 2.0

Rectangle {
    id: root
    color: "transparent"
    property alias source: _button.source
    property alias text: _icon.text
    property alias margin: _icon.anchors.bottomMargin
    Image {
        id: _button
        antialiasing: false
        smooth: false
        source: "qrc:/resources/Button1.png"

        anchors{
        fill: parent
        margins: 10
        }
    }
    Icon{
        id: _icon
        height: Math.min (root.height, root.width)
        width: Math.min (root.height, root.width)
        anchors{
            left: root.left
            leftMargin: 0
            bottom: root.bottom
            bottomMargin: 20
        }
    }

}
