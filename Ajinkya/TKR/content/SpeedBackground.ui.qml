import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0
import TKRData 1.0

Item {
    id: element
    width: 454
    height: 440
    property alias currentFrame: timeline.currentFrame

    ArcItem {
        id: arcRight
        x: 36
        y: 37
        width: 360
        height: 360
        visible: true
        rotation: -90
        fillColor: "#00ffffff"
        antialiasing: true
        begin: 98
        end: 262
        capStyle: 32
        strokeColor: "#6d6d6d"
        strokeWidth: 14
    }

    ArcItem {
        id: arcLeft
        x: 42
        y: 37
        width: 360
        height: 360
        rotation: -90
        fillColor: "#00ffffff"
        antialiasing: true
        strokeColor: "#6d6d6d"
        strokeWidth: 14
        end: 82
        begin: -82
        capStyle: 32
    }

    Item {
        id: details
        anchors.fill: parent

        ArcItem {
            id: arc
            x: 29
            y: 27
            width: 380
            height: 380
            fillColor: "#00ffffff"
            antialiasing: true
            strokeWidth: 2
            begin: 0.1
            strokeStyle: 2
            strokeColor: "#5d5d5d"
            dashPattern: [1, 4]
            end: 360

            Image {
                id: image
                x: 140
                y: 140
                width: 100
                height: 100
                source: "images/tkr.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: text0Percent
            x: 231
            y: 415
            color: "#6d6d6d"
            text: "0%"
            font.pixelSize: 14
        }

        Text {
            id: text0
            x: 194
            y: 415
            color: "#6d6d6d"
            text: "0"
            font.pixelSize: 14
        }

        Text {
            id: text50Percent
            x: 424
            y: 192
            color: "#6d6d6d"
            text: "50%"
            anchors.right: parent.right
            font.pixelSize: 14
        }

        Text {
            id: text30
            x: 0
            y: 192
            color: "#6d6d6d"
            text: (Backend.metricSystem ? "48" : "30")
            anchors.left: parent.left
            font.pixelSize: 14
        }

        Text {
            id: text100Percent
            x: 231
            y: 0
            color: "#6d6d6d"
            text: "100%"
            font.pixelSize: 14
        }

        Text {
            id: text60
            x: 194
            y: 0
            color: "#6d6d6d"
            text: (Backend.metricSystem ? "96" : "60")
            font.pixelSize: 14
        }

        Column {
            id: tempInfo
            width: 100
            height: 130
            anchors.horizontalCenterOffset: -100
            anchors.verticalCenter: arc.verticalCenter
            anchors.horizontalCenter: arc.horizontalCenter
            spacing: -8

            Image {
                id: tempIcon
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/acc-temp.png"
            }

            CustomLabel {
                id: averageTempLabel
                text: qsTr("26")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 48
            }

            CustomLabel {
                id: avgC
                width: 40
                height: 47
                color: "#6d6d6d"
                text: qsTr("Ambient Accumulator Temperature")
                anchors.horizontalCenter: parent.horizontalCenter
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
                wrapMode: Text.WordWrap
            }
        }

        Column {
            id: batteryInfo
            width: 100
            height: 130
            anchors.horizontalCenterOffset: 100
            anchors.verticalCenter: arc.verticalCenter
            anchors.horizontalCenter: arc.horizontalCenter
            spacing: -8

            Image {
                id: batteryIcon
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/battery.png"
            }

            CustomLabel {
                id: batteryLabel
                text: qsTr("95%")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 48
            }

            CustomLabel {
                id: batteryLabel2
                width: 40
                height: 70
                color: "#6d6d6d"
                text: qsTr("SOC Charge")
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
            }
        }
    }



    Timeline {
        id: timeline
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: details
            property: "opacity"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                value: 0
                frame: 1000
            }
        }
    }
}

