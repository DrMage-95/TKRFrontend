import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0

Item {
    id: root
    width: Constants.width
    height: Constants.height
    property alias speedoMeter: speedoMeter
    property alias currentFrame: timeline.currentFrame

    state: "Normal"

    signal clicked

    SpeedoMeter {
        id: speedoMeter
        x: 373
        y: 180

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Connections {
        target: mouseArea
        onClicked: root.clicked()
    }

    Image {
        id: image
        x: 8
        y: 600
        source: "images/small_speedometer_shadow.png"

        Text {
            id: text1
            x: 65
            y: 70
            color: "#009699"
            text: qsTr("BACK")
            font.pixelSize: 36
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.weight: Font.DemiBold
            font.family: "Teko Medium"
        }
    }

    Timeline {
        id: timeline

        endFrame: 2500
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: image
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: "0"
                frame: 1082
            }

            Keyframe {
                value: 0
                frame: 2000
            }

            Keyframe {
                value: 0
                frame: 2500
            }

            Keyframe {
                value: 0
                frame: 928
            }

            Keyframe {
                value: 0
                frame: 1559
            }

            Keyframe {
                value: 1
                frame: 1002
            }
        }

        KeyframeGroup {
            target: speedoMeter
            property: "x"
            Keyframe {
                value: 421
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 421
                frame: 1999
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -118
                frame: 960
            }

            Keyframe {
                value: "421"
                frame: 2500
            }

            Keyframe {
                value: -118
                frame: 1017
            }

            Keyframe {
                value: -118
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speedoMeter
            property: "y"
            Keyframe {
                value: 180
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 180
                frame: 1999
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 476
                frame: 960
            }

            Keyframe {
                value: 180
                frame: 2500
            }

            Keyframe {
                value: 476
                frame: 1017
            }

            Keyframe {
                value: 476
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speedoMeter
            property: "scale"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1999
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.45
                frame: 960
            }

            Keyframe {
                value: "1.4"
                frame: 2499
            }

            Keyframe {
                value: 0.45
                frame: 1017
            }

            Keyframe {
                value: 0.45
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speedoMeter
            property: "currentFrame"
            Keyframe {
                value: ""
                frame: 0
            }

            Keyframe {
                value: 1000
                frame: 928
            }

            Keyframe {
                value: 1000
                frame: 1085
            }

            Keyframe {
                value: 0
                frame: 1999
            }
        }
    }
}
