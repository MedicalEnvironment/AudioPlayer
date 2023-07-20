import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias text: button.text
    signal clicked

    Button {
        id: button
        text: ""
        onClicked: parent.clicked()
    }
}
