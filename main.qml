import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    Rectangle {
        anchors.fill: parent
        color: "black"

        Video {
            id: videoPlayer
            anchors.centerIn: parent
            width: parent.width - 100
            height: parent.height - 100
            source: "path_to_your_video_file.mp4" // Replace with the path to your video file
        }

        Row {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "\u25B6" // Play button symbol (▶️)
                onClicked: videoPlayer.play()
            }

            Button {
                text: "\u23F8" // Pause button symbol (⏸️)
                onClicked: videoPlayer.pause()
            }

            Button {
                text: "\u23F9" // Stop button symbol (⏹️)
                onClicked: videoPlayer.stop()
            }

            Button {
                text: "\u23EA" // Rewind button symbol (⏪️)
                onClicked: videoPlayer.seek(videoPlayer.position - 5000)
            }

            Button {
                text: "\u23E9" // Forward button symbol (⏩️)
                onClicked: videoPlayer.seek(videoPlayer.position + 5000)
            }
        }
    }
}
