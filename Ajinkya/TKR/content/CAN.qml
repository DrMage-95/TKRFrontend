import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 1280
    height: 320

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1280
        height: 320
        color: "#ffffff"
    }

    RoundButton {
        id: roundButton
        x: 22
        y: 22
        icon.height: 26
        icon.width: 26
        icon.color: "#e59b35"
        icon.source: "images/arrow_left.png"

        Connections {
            target: roundButton
            onClicked: item1.visible = false
        }
    }

}
