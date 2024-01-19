import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Rectangle {
    id: tabbar
    width: 1200
    height: 50
    color: "#0d0d0d"

    property int index: 0

    RowLayout {
        y: 0
        anchors.left: parent.left
        anchors.right: parent.right

        Image {
            id: settings
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/settings.png"

            MouseArea {
                id: settingsClicked
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.bottomMargin: -4
                anchors.topMargin: -4
                anchors.fill: parent
            }
        }

        Image {
            id: mb
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/motherboard.png"

            MouseArea {
                id: mbClicked
                anchors.topMargin: -4
                anchors.bottomMargin: -4
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.fill: parent
            }
        }

        Image {
            id: pdu
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "images/pdu.png"

            MouseArea {
                id: pduClicked
                anchors.rightMargin: -64
                anchors.leftMargin: -64
                anchors.bottomMargin: -4
                anchors.topMargin: -4
                anchors.fill: parent
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 8
        y: 38
        width: 365
        height: 4
        color: "#ffffff"
        Behavior on x {

            PropertyAnimation {
                duration: 140
            }
        }
    }

    Connections {
        target: mbClicked
        onClicked: {
            tabbar.index = "1"
        }
    }

    Connections {
        target: settingsClicked
        onClicked: {
            tabbar.index = "0"
        }
    }

    Connections {
        target: pduClicked
        onClicked: {
            tabbar.index = "2"
        }
    }
    states: [
        State {
            name: "Left"
            when: tabbar.index === 0

            PropertyChanges {
                target: settings
                source: "images/settings_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 8
            }
        },
        State {
            name: "Middle"
            when: tabbar.index === 1

            PropertyChanges {
                target: mb
                source: "images/motherboard_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 418
            }

        },
        State {
            name: "Right"
            when: tabbar.index === 2

            PropertyChanges {
                target: pdu
                source: "images/pdu_selected.png"
            }

            PropertyChanges {
                target: rectangle
                x: 827
            }
        }
    ]
}
