import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Video Player"

    Rectangle {
        anchors.fill: parent
        color: "black"

        VideoOutput {
            id: videoOutput
            anchors.fill: parent
            source: mediaPlayer
        }

        MediaPlayer {
            id: mediaPlayer
            autoLoad: true
            autoPlay: false
            source: "path/to/your/video/file.mp4" // Replace with the actual video file path
        }

        Column {
            anchors.bottom: parent.bottom
            spacing: 10
            padding: 10

            Row {
                spacing: 10

                IconButton {
                    text: "\u25B6" // Unicode for play symbol ▶️
                    onClicked: mediaPlayer.play()
                }

                IconButton {
                    text: "\u23F8" // Unicode for pause symbol ⏸️
                    onClicked: mediaPlayer.pause()
                }

                IconButton {
                    text: "\u23F9" // Unicode for stop symbol ⏹
                    onClicked: mediaPlayer.stop()
                }

                IconButton {
                    text: "\u23EA" // Unicode for rewind symbol ⏪️
                    onClicked: mediaPlayer.seek(mediaPlayer.position - 5000) // Seek 5 seconds backward
                }

                IconButton {
                    text: "\u23E9" // Unicode for forward symbol ⏩️
                    onClicked: mediaPlayer.seek(mediaPlayer.position + 5000) // Seek 5 seconds forward
                }
            }

            ProgressBar {
                value: mediaPlayer.position
                from: 0
                to: mediaPlayer.duration
                width: parent.width
                height: 5
            }
        }
    }
}
