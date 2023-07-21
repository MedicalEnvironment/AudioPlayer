import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    property alias name: iconText
    property alias icon: iconLabel.text

    width: 40
    height: 40
    color: "#f0f0f0"

    Text {
        id: iconLabel
        anchors.centerIn: parent
        text: parent.iconText
        font.pixelSize: 20
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.clicked()
        }
    }

    signal clicked()
}
