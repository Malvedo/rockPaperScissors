import QtQuick 2.0

Rectangle {
    id: root
    color: "transparent"
    property alias source: _button.source
    property alias text: _icon.text
    property string type: "ai"
    property alias margin: _icon.anchors.bottomMargin
    Image {
        id: _button
        antialiasing: false
        smooth: false
        source: {
            if (parent.type === "ai") "qrc:/resources/monitor_ai.png"
            else "qrc:/resources/monitor_player.png"
        }

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
            centerIn: parent
        }
    }

}
