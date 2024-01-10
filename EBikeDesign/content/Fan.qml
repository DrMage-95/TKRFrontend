import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1280
    height: 320

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
    }

    Image {
        id: image
        x: 1066
        y: 213
        width: 100
        height: 100
        source: "images/search_cancel.png"
        fillMode: Image.PreserveAspectFit
    }
}
