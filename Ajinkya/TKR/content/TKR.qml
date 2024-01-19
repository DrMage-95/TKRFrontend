import QtQuick 2.10
import TKRDesign 1.0
import TKRData 1.0
import QtQuick.Studio.Effects 1.0

Item {
    width: Constants.width
    height: Constants.height

    Screen01 {
        id: screen
    }

    BrightnessContrastEffect {
        source: screen
        anchors.fill: screen

        brightness: Backend.brightness
        contrast: 0.0
    }

    Item {
        id: fpsCorner
        visible: Backend.showFPS
        enabled: visible

        CustomLabel {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 5
            text: counter.fps + " FPS"
            font.pixelSize: 26
        }

        FpsCounter {
            id: counter
        }
    }
}
