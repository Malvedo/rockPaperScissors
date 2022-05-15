import QtQuick 2.0

Rectangle {
    id: root
    color: "transparent"
    property alias source: _button.source
    property alias text: _icon.text
    property alias margin: _icon.anchors.bottomMargin
    property bool clicked: false

    Image {
        id: _button
        antialiasing: false
        smooth: false
        source: "qrc:/resources/Button1.png"

        anchors{
        fill: parent
        margins: Math.min(root.width, root.height) * 0.05
        }
    }
    Rectangle {
        id: _center
        width: _button.width
        height: _button.height/100 * 10
        color: "transparent"
        anchors {
            verticalCenter: _button.verticalCenter
            horizontalCenter: _button.horizontalCenter
        }
    }

    Icon{
        id: _icon
        height: Math.min (root.height, root.width)
        width: Math.min (root.height, root.width)
        anchors{
            id: _anc
            horizontalCenter: parent.horizontalCenter
            top: root.clicked ? _center.bottom : _center.top

            topMargin: - Math.min(_button.width, _button.height)/100 * 55
        }
    }

}
