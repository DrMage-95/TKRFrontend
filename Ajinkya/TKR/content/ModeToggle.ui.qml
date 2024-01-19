import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: 300
    height: 200

    state: "Config"

    CustomLabel {
        id: customLabel
        x: 68
        y: 65
        color: "#61d140"
        text: qsTr("CHARGING")
        font.letterSpacing: 1
        font.pixelSize: 32
    }

    CustomLabel {
        id: customLabel1
        x: 68
        y: 106
        color: "#9d9d9d"
        text: qsTr("CONFIGURATION")
        font.letterSpacing: 1
        font.pixelSize: 32
    }

    MouseArea {
        id: mouseArea95
        anchors.fill: parent
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: configToChargeAnim
                onFinished: root.state = "Charge"
                from: 0
                loops: 1
                duration: 500
                to: 500
                running: false
            },
            TimelineAnimation {
                id: chargeToConfigAnim
                onFinished: root.state = "Config"
                from: 500
                loops: 1
                duration: 500
                to: 1000
                running: false
            }
        ]
        endFrame: 1000
        startFrame: 0
        enabled: true

        KeyframeGroup {
            target: customLabel
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 0
            }

            Keyframe {
                value: "#61d140"
                frame: 1000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 500
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "color"
            Keyframe {
                value: "#9d9d9d"
                frame: 0
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1000
            }

            Keyframe {
                value: "#61d140"
                frame: 500
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "opacity"

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "opacity"

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }
    }

    Connections {
        target: mouseArea95
        onClicked: {
            if (root.state === "Config")
                root.state = "Config2Charge"
            else if (root.state === "Charge")
                root.state = "Charge2Config"
        }
    }

    Connections {
        target: configToChargeAnim
        onStarted: stackLayout1.currentIndex = 1
    }

    Connections {
        target: chargeToConfigAnim
        onStarted: stackLayout1.currentIndex = 0
    }
    states: [
        State {
            name: "Config"

            PropertyChanges {
                target: timeline
                currentFrame: 500
                enabled: true
            }
        },
        State {
            name: "Charge2Config"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: chargeToConfigAnim
                running: true
            }
        },
        State {
            name: "Charge"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }

            PropertyChanges {
                target: configToChargeAnim
            }
        },
        State {
            name: "Config2Charge"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: configToChargeAnim
                running: true
            }
        }
    ]
}
