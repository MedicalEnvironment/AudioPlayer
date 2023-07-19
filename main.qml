import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 600
    height: 400

    Rectangle {
        id: playerScreen
        width: parent.width
        height: parent.height * 0.75
        color: "black"

        Text {
            anchors.centerIn: parent
            font.pixelSize: 48
            text: "Video Player Screen"
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height * 0.25

        RowLayout {
            anchors.centerIn: parent

            IconButton {
                text: "⏪️"
                onClicked: {
                    // Add logic for rewind
                }
            }

            IconButton {
                text: "▶️"
                onClicked: {
                    // Add logic for play
                }
            }

            IconButton {
                text: "⏸️"
                onClicked: {
                    // Add logic for pause
                }
            }

            IconButton {
                text: "⏹"
                onClicked: {
                    // Add logic for stop
                }
            }

            IconButton {
                text: "⏩️"
                onClicked: {
                    // Add logic for fast playback
                }
            }
        }
    }

    ProgressBar {
        width: parent.width
        from: 0
        to: 100
        value: 50 // Set the current playback location value
    }
}

// Custom IconButton component
Item {
    property alias text: button.text
    signal clicked

    Button {
        id: button
        text: ""
        onClicked: parent.clicked()
    }
}
