import QtQuick 2.10

Item {
    id: root

    property int fps: 0

    QtObject {
        id: internal
        property int counter: 0
    }

    Item {
        NumberAnimation on rotation {
            from: 0
            to: 360
            duration: 1000
            loops: -1
        }
        onRotationChanged: internal.counter++
    }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            root.fps = internal.counter
            internal.counter = 0
        }
    }
}

