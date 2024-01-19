import QtQuick 2.10
import TKRDesign 1.0
import TKRData 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    color: "#1a1e25"
    state: "Standard"

    Item {
        id: screenCanvas
        width: Constants.width * 3
        height: Constants.height
        x: -Constants.width

        MCScreen {
            id: mcScreen
            opacity: 0
        }

        Item {
            id: standardScreen
            width: Constants.width
            x: Constants.width
            height: Constants.height

            Item {
                id: bmss
                x: 892
                y: 107
                width: 200
                height: 200

                CustomLabel {
                    x: 46
                    y: 111
                    color: "#9d9d9d"
                    text: qsTr("VIEW BMS")
                    font.letterSpacing: 1
                    font.pixelSize: 32

                    Image {
                        id: image
                        x: 16
                        y: -81
                        source: "images/bms.png"
                        sourceSize.height: 80
                        sourceSize.width: 80
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            MouseArea {
                id: rightClickArea
                x: 890
                y: 100
                width: 200
                height: 200
            }

            MouseArea {
                id: leftClickArea
                x: 90
                y: 100
                width: 200
                height: 200
            }
        }

        BMSScreen {
            id: bmsScreen
            x: Constants.width * 2
        }
    }

    Foreground {
        id: foreground
        currentFrame: 0
    }

    Connections {
        target: leftClickArea
        onClicked: {
            root.state = "StandardToMC"
        }
    }

    Connections {
        target: rightClickArea
        onClicked: {
            root.state = "StandardToBMS"
        }
    }

    Connections {
        target: foreground
        onClicked: {
            if (state === "MC")
                root.state = "MCToStandard"
            else if (state === "BMS")
                root.state = "BMSToStandard"
            else if (state === "Standard")
                root.state = "ToBig"
            else if (state === "Big")
                root.state = "FromBig"
        }
    }

    SettingsBar {
        id: settings
        x: 0
        y: 0
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: standardToMCAnimation
                onFinished: root.state = "MC"
                loops: 1
                duration: 350
                from: 3000
                to: 4000
                running: false
            },
            TimelineAnimation {
                id: standardToBMSAnimation
                onFinished: root.state = "BMS"
                loops: 1
                duration: 350
                from: 1000
                to: 2000
                running: false
            },
            TimelineAnimation {
                id: bmsToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 2000
                to: 3000
                running: false
            },
            TimelineAnimation {
                id: mcToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 0
                to: 1000
                running: false
            },
            TimelineAnimation {
                id: fromBigAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 250
                from: 5000
                to: 4100
                running: false
            },
            TimelineAnimation {
                id: toBigAnimation
                onFinished: root.state = "Big"
                loops: 1
                duration: 250
                from: 4100
                to: 5000
                running: false
            }
        ]
        endFrame: 5000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: screenCanvas
            property: "x"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -2560
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 5000
            }
        }

        KeyframeGroup {
            target: standardScreen
            property: "scale"

            Keyframe {
                value: 0.8
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1003
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 5000
            }
        }

        KeyframeGroup {
            target: bmsScreen
            property: "scale"

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 3000
            }
        }

        KeyframeGroup {
            target: standardScreen
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4100
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 5000
            }
        }

        KeyframeGroup {
            target: bmsScreen
            property: "opacity"
            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 3000
            }
        }

        KeyframeGroup {
            target: foreground
            property: "currentFrame"
            Keyframe {
                value: 1000
                frame: 0
            }

            Keyframe {
                value: "2000"
                frame: 1000
            }

            Keyframe {
                value: "1000"
                frame: 2000
            }

            Keyframe {
                value: 0
                frame: 1001
            }

            Keyframe {
                value: "2000"
                frame: 3000
            }

            Keyframe {
                value: 0
                frame: 3001
            }

            Keyframe {
                value: 1000
                frame: 4000
            }

            Keyframe {
                value: "2000"
                frame: 4100
            }

            Keyframe {
                value: "2000"
                frame: 4102
            }

            Keyframe {
                value: "2500"
                frame: 5000
            }

            Keyframe {
                value: "2000"
                frame: 4043
            }
        }

        KeyframeGroup {
            target: bmss
            property: "x"
            Keyframe {
                value: 892
                frame: 4101
            }

            Keyframe {
                value: 1271
                frame: 5000
            }
        }

        KeyframeGroup {
            target: bmss
            property: "y"
            Keyframe {
                value: 107
                frame: 4101
            }

            Keyframe {
                value: -109
                frame: 5000
            }
        }

        KeyframeGroup {
            target: bmss
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "x"
            Keyframe {
                value: 123
                frame: 4101
            }

            Keyframe {
                value: -150
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "y"
            Keyframe {
                value: 625
                frame: 4101
            }

            Keyframe {
                value: 830
                frame: 5000
            }
        }

        KeyframeGroup {
            target: image
            property: "opacity"
            Keyframe {
                value: 1
                frame: 4101
            }

            Keyframe {
                value: 0
                frame: 5000
            }
        }

        KeyframeGroup {
            target: bmsScreen
            property: "currentFrame"
            Keyframe {
                value: 0
                frame: 1000
            }

            Keyframe {
                value: 1000
                frame: 2000
            }
        }
    }

    states: [
        State {
            name: "MC"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }
        },
        State {
            name: "Standard"

            PropertyChanges {
                target: timeline
                currentFrame: 1000
                enabled: true
            }

            PropertyChanges {
                target: image
                x: 16
                y: -85
            }
        },
        State {
            name: "BMS"

            PropertyChanges {
                target: timeline
                currentFrame: 2000
                enabled: true
            }
        },
        State {
            name: "MCToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToMCAnimation
                running: false
            }

            PropertyChanges {
                target: mcToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToBMS"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToBMSAnimation
                running: true
            }
        },
        State {
            name: "BMSToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: bmsToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToMC"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToMCAnimation
                running: true
            }
        },
        State {
            name: "Big"

            PropertyChanges {
                target: timeline
                currentFrame: 5000
                enabled: true
            }
        },
        State {
            name: "ToBig"

            PropertyChanges {
                target: timeline
                currentFrame: 4100
                enabled: true
            }

            PropertyChanges {
                target: toBigAnimation
                running: true
            }
        },
        State {
            name: "FromBig"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: timeline
                currentFrame: 5000
                enabled: true
            }

            PropertyChanges {
                target: fromBigAnimation
                running: true
            }
        }
    ]
}

