import QtQuick 2.10
import TKRDesign 1.0
import TKRData 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: bmsScreen
    width: Constants.width
    height: Constants.height

    ModeToggle {
        id: modeToggle
        x: 0
        y: 457
    }

    CircleIndicator {
        id: circleIndicator
        x: 112
        y: 141

        CustomLabel {
            id: customLabel
            x: -15
            y: 25
            text: qsTr("999")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 4
            font.bold: true
            font.weight: Font.ExtraBold
            font.pointSize: 26
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    RowLayout {
        id: rowLayout
        x: 312
        y: 681
        width: 934
        height: 100
        spacing: 7

        CustomLabel {
            id: deltaLabel
            text: Backend.deltaString
            font.pixelSize: 48

            Text {
                id: text1
                x: 0
                y: -18
                color: "#61d140"
                text: qsTr("DELTA")
                font.pixelSize: 26
                font.family: "Teko Medium"
            }
        }

        CustomLabel {
            id: vmaxLabel
            text: qsTr("4.2 V")
            font.pixelSize: 48

            Text {
                id: text2
                x: 20
                y: -18
                color: "#61d140"
                text: qsTr("V")
                font.pixelSize: 26
                font.family: "Teko Medium"
            }

            Text {
                id: text3
                x: 32
                y: -10
                color: "#61d140"
                text: qsTr("MAX")
                font.pixelSize: 20
                font.family: "Teko Medium"
            }
        }

        CustomLabel {
            id: vminLabel
            text: qsTr("3.6 V")
            font.pixelSize: 48

            Text {
                id: text4
                x: 17
                y: -19
                color: "#61d140"
                text: qsTr("V")
                font.pixelSize: 26
                font.family: "Teko Medium"
            }

            Text {
                id: text5
                x: 27
                y: -10
                color: "#61d140"
                text: qsTr("MIN")
                font.pixelSize: 20
                font.family: "Teko Medium"
            }
        }
    }

    RectangleItem {
        id: rectangle
        x: 306
        y: 50
        width: 900
        height: 400
        strokeColor: "#00ff0303"
        fillColor: "#00ffffff"
        adjustBorderRadius: true

        ColumnLayout {
            id: columnLayout
            x: 0
            y: 0
            width: 150
            height: 400

            CustomLabel {
                id: customLabel1
                color: "#61d140"
                text: qsTr("MODULE 1")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent

                    Connections {
                        target: mouseArea
                        onClicked: stackLayout.currentIndex = 0
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel1.color = "#61d140"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel2.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel3.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel4.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel5.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: customLabel6.color = "#dfdfdf"
                    }
                }
            }

            CustomLabel {
                id: customLabel2
                text: qsTr("MODULE 2")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea1
                    x: -5
                    y: -70
                    anchors.fill: parent

                    Connections {
                        target: mouseArea1
                        onClicked: stackLayout.currentIndex = 1
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel1.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel2.color = "#61d140"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel3.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel4.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel5.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: customLabel6.color = "#dfdfdf"
                    }
                }
            }

            CustomLabel {
                id: customLabel3
                text: qsTr("MODULE 3")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea2
                    x: 0
                    y: -70
                    anchors.fill: parent

                    Connections {
                        target: mouseArea2
                        onClicked: stackLayout.currentIndex = 2
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel1.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel2.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel3.color = "#61d140"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel4.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel5.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: customLabel6.color = "#dfdfdf"
                    }
                }
            }

            CustomLabel {
                id: customLabel4
                text: qsTr("MODULE 4")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea3
                    x: 1
                    y: -70
                    anchors.fill: parent

                    Connections {
                        target: mouseArea3
                        onClicked: stackLayout.currentIndex = 3
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel1.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel2.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel3.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel4.color = "#61d140"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel5.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: customLabel6.color = "#dfdfdf"
                    }
                }
            }

            CustomLabel {
                id: customLabel5
                text: qsTr("MODULE 5")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea4
                    x: 0
                    y: 70
                    anchors.fill: parent

                    Connections {
                        target: mouseArea4
                        onClicked: stackLayout.currentIndex = 4
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel1.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel2.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel3.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel4.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel5.color = "#61d140"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: customLabel6.color = "#dfdfdf"
                    }
                }
            }

            CustomLabel {
                id: customLabel6
                text: qsTr("MODULE 6")
                font.pixelSize: 45
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                MouseArea {
                    id: mouseArea5
                    x: 0
                    y: -70
                    anchors.fill: parent

                    Connections {
                        target: mouseArea5
                        onClicked: stackLayout.currentIndex = 5
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel1.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel2.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel3.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel4.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel5.color = "#dfdfdf"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: customLabel6.color = "#61d140"
                    }
                }
            }
        }

        StackLayout {
            id: stackLayout
            x: 178
            y: 0
            width: 744
            height: 400

            Item {
                GridLayout {
                    id: gridLayout
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 5
                    columns: 4

                    Repeater {
                        id: repeater
                        model: 20

                        CustomLabel {
                            id: customLabel7
                            text: qsTr("3.8 V")
                        }


                    }
                }

                Rectangle {
                    id: rectangle1
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"

                    CustomLabel {
                        id: customLabel13
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout1
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft

                        CustomLabel {
                            id: customLabel21
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel22
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel23
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel24
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel25
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel26
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }

            Item {
                GridLayout {
                    id: gridLayout1
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 6
                    Repeater {
                        id: repeater1
                        model: 18
                        CustomLabel {
                            id: customLabel8
                            text: qsTr("4.2 V")
                        }
                    }
                    columns: 3
                }

                Rectangle {
                    id: rectangle2
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"
                    CustomLabel {
                        id: customLabel27
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout2
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft
                        CustomLabel {
                            id: customLabel28
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel29
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel30
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel31
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel32
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel33
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }

            Item {
                GridLayout {
                    id: gridLayout2
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 5
                    Repeater {
                        id: repeater2
                        model: 20
                        CustomLabel {
                            id: customLabel9
                            text: qsTr("3.8 V")
                        }
                    }
                    columns: 4
                }

                Rectangle {
                    id: rectangle3
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"
                    CustomLabel {
                        id: customLabel34
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout3
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft
                        CustomLabel {
                            id: customLabel35
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel36
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel37
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel38
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel39
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel40
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }

            Item {
                GridLayout {
                    id: gridLayout3
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 5
                    Repeater {
                        id: repeater3
                        model: 20
                        CustomLabel {
                            id: customLabel10
                            text: qsTr("3.8 V")
                        }
                    }
                    columns: 4
                }

                Rectangle {
                    id: rectangle4
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"
                    CustomLabel {
                        id: customLabel41
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout4
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft
                        CustomLabel {
                            id: customLabel42
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel43
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel44
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel45
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel46
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel47
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }

            Item {
                GridLayout {
                    id: gridLayout4
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 5
                    Repeater {
                        id: repeater4
                        model: 20
                        CustomLabel {
                            id: customLabel11
                            text: qsTr("3.8 V")
                        }
                    }
                    columns: 4
                }

                Rectangle {
                    id: rectangle5
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"
                    CustomLabel {
                        id: customLabel48
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout5
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft
                        CustomLabel {
                            id: customLabel49
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel50
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel51
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel52
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel53
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel54
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }

            Item {
                GridLayout {
                    id: gridLayout5
                    x: 0
                    y: 0
                    width: 528
                    height: 400
                    rows: 5
                    Repeater {
                        id: repeater5
                        model: 20
                        CustomLabel {
                            id: customLabel12
                            text: qsTr("3.8 V")
                        }
                    }
                    columns: 4
                }

                Rectangle {
                    id: rectangle6
                    x: 544
                    y: 0
                    width: 200
                    height: 400
                    color: "#00ffffff"
                    CustomLabel {
                        id: customLabel55
                        x: -8
                        y: 0
                        color: "#e59b35"
                        text: qsTr("TEMPERATURE")
                        font.pixelSize: 48
                    }

                    ColumnLayout {
                        id: columnLayout6
                        x: 0
                        y: 75
                        width: 200
                        height: 325
                        layoutDirection: Qt.RightToLeft
                        CustomLabel {
                            id: customLabel56
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel57
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel58
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel59
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel60
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }

                        CustomLabel {
                            id: customLabel61
                            text: qsTr("26C")
                            font.pixelSize: 26
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        }
                    }
                }
            }
        }
    }

    StackLayout {
        id: stackLayout1
        x: 312
        y: 471
        width: 928
        height: 171
        currentIndex: 0

        Item {
            GridLayout {
                id: gridLayout6
                x: 0
                y: 0
                width: 698
                height: 171
                columns: 2
                rows: 2

                TextField {
                    id: textField
                    placeholderText: qsTr("Text Field")

                    CustomLabel {
                        id: customLabel14
                        x: 201
                        y: 7
                        color: "#61d140"
                        text: qsTr("Over Current")
                        font.pixelSize: 26
                    }
                }

                TextField {
                    id: textField1
                    placeholderText: qsTr("Text Field")

                    CustomLabel {
                        id: customLabel15
                        x: 201
                        y: 7
                        color: "#61d140"
                        text: qsTr("Under Current")
                        font.pixelSize: 26
                    }
                }

                TextField {
                    id: textField2
                    placeholderText: qsTr("Text Field")

                    CustomLabel {
                        id: customLabel16
                        x: 201
                        y: 7
                        color: "#61d140"
                        text: qsTr("Over Voltage")
                        font.pixelSize: 26
                    }
                }

                TextField {
                    id: textField3
                    placeholderText: qsTr("Text Field")

                    CustomLabel {
                        id: customLabel17
                        x: 201
                        y: 7
                        color: "#61d140"
                        text: qsTr("Current Limit")
                        font.pixelSize: 26
                    }
                }

                TextField {
                    id: textField4
                    placeholderText: qsTr("Text Field")

                    CustomLabel {
                        id: customLabel18
                        x: 201
                        y: 7
                        color: "#61d140"
                        text: qsTr("Delta")
                        font.pixelSize: 26
                    }
                }
            }

            RoundButton {
                id: roundButton
                x: 800
                y: 60
                icon.height: 26
                icon.width: 26
                icon.color: "#61d140"
                icon.source: "images/send.png"
                display: AbstractButton.IconOnly
            }
        }

        Item {
            Button {
                id: button
                x: 120
                y: 56
                text: qsTr("BALANCE")
                font.pixelSize: 24
                font.family: "Teko Medium"
                display: AbstractButton.TextOnly
            }

            ProgressBar {
                id: progressBar
                x: 438
                y: 57
                width: 430
                height: 57
                value: 95
                to: 100
            }

            CustomLabel {
                id: customLabel19
                x: 616
                y: 20
                color: "#61d140"
                text: "95%"
                font.pixelSize: 48
            }

            CustomLabel {
                id: customLabel20
                x: 596
                y: 102
                color: "#61d140"
                text: qsTr("469.5 V")
                font.pixelSize: 48
            }
        }
    }
}


