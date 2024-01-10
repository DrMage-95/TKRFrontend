

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: item4
    width: 1280
    height: 752

    RowLayout {
        id: rowLayout
        x: 358
        y: 605
        width: 881
        height: 100
        TextField {
            id: textField
            placeholderText: qsTr("Text Field")
            Text {
                id: text1
                x: 23
                y: -45
                color: "#9d9d9d"
                text: qsTr("Delta")
                font.pixelSize: 32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.ExtraBold
                font.bold: true
            }
        }

        TextField {
            id: textField1
            placeholderText: qsTr("Text Field")
            Text {
                id: text2
                x: 30
                y: -45
                color: "#9d9d9d"
                text: qsTr("V")
                font.pixelSize: 32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.ExtraBold
                font.bold: true
            }

            Text {
                id: text3
                x: 51
                y: -29
                color: "#9d9d9d"
                text: qsTr("min")
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.ExtraBold
                font.bold: true
            }
        }

        TextField {
            id: textField2
            placeholderText: qsTr("Text Field")
            Text {
                id: text4
                x: 30
                y: -45
                color: "#9d9d9d"
                text: qsTr("V")
                font.pixelSize: 32
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.ExtraBold
                font.bold: true
            }

            Text {
                id: text5
                x: 51
                y: -29
                color: "#9d9d9d"
                text: qsTr("max")
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.ExtraBold
                font.bold: true
            }
        }
    }

    CircleIndicator {
        id: circleIndicator
        x: 65
        y: 123
    }

    Text {
        id: text6
        x: 55
        y: 145
        color: "#aeaeae"
        text: qsTr("999")
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.ExtraBold
        font.bold: true
    }

    Rectangle {
        id: rectangle
        x: 264
        y: 27
        width: 860
        height: 528
        color: "#00ffffff"

        ColumnLayout {
            id: columnLayout
            x: -100
            y: -16
            width: 142
            height: 378

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("MODULE 1")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 20
                font.bold: true
                font.weight: Font.ExtraBold

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent

                    Connections {
                        target: mouseArea
                        onClicked: stackLayout.currentIndex = 0
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label.color = "white"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label1.color = "black"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label2.color = "black"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label3.color = "black"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label4.color = "black"
                    }

                    Connections {
                        target: mouseArea
                        onClicked: label5.color = "black"
                    }
                }
            }

            Label {
                id: label1
                color: "#000000"
                text: qsTr("MODULE 2")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.weight: Font.ExtraBold
                font.pointSize: 20

                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent

                    Connections {
                        target: mouseArea1
                        onClicked: stackLayout.currentIndex = 1
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label.color = "black"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label1.color = "white"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label2.color = "black"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label3.color = "black"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label4.color = "black"
                    }

                    Connections {
                        target: mouseArea1
                        onClicked: label5.color = "black"
                    }
                }
            }

            Label {
                id: label2
                color: "#000000"
                text: qsTr("MODULE 3")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.weight: Font.ExtraBold
                font.pointSize: 20

                MouseArea {
                    id: mouseArea2
                    anchors.fill: parent

                    Connections {
                        target: mouseArea2
                        onClicked: stackLayout.currentIndex = 2
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label.color = "black"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label1.color = "black"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label2.color = "white"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label3.color = "black"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label4.color = "black"
                    }

                    Connections {
                        target: mouseArea2
                        onClicked: label5.color = "black"
                    }
                }
            }

            Label {
                id: label3
                color: "#000000"
                text: qsTr("MODULE 4")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.weight: Font.ExtraBold
                font.pointSize: 20

                MouseArea {
                    id: mouseArea3
                    anchors.fill: parent

                    Connections {
                        target: mouseArea3
                        onClicked: stackLayout.currentIndex = 3
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label.color = "black"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label1.color = "black"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label2.color = "black"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label3.color = "white"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label4.color = "black"
                    }

                    Connections {
                        target: mouseArea3
                        onClicked: label5.color = "black"
                    }
                }
            }

            Label {
                id: label4
                color: "#000000"
                text: qsTr("MODULE 5")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.weight: Font.ExtraBold
                font.pointSize: 20

                MouseArea {
                    id: mouseArea4
                    anchors.fill: parent

                    Connections {
                        target: mouseArea4
                        onClicked: stackLayout.currentIndex = 4
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label.color = "black"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label1.color = "black"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label2.color = "black"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label3.color = "black"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label4.color = "white"
                    }

                    Connections {
                        target: mouseArea4
                        onClicked: label5.color = "black"
                    }
                }
            }

            Label {
                id: label5
                color: "#000000"
                text: qsTr("MODULE 6")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.weight: Font.ExtraBold
                font.pointSize: 20

                MouseArea {
                    id: mouseArea5
                    anchors.fill: parent

                    Connections {
                        target: mouseArea5
                        onClicked: stackLayout.currentIndex = 5
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label.color = "black"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label1.color = "black"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label2.color = "black"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label3.color = "black"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label4.color = "black"
                    }

                    Connections {
                        target: mouseArea5
                        onClicked: label5.color = "white"
                    }
                }
            }
        }

        StackLayout {
            id: stackLayout
            x: 54
            y: -3
            width: 867
            height: 378

            Item {
                id: item1
                width: 200
                height: 200

                GridLayout {
                    id: gridLayout
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    columnSpacing: 3
                    rows: 5
                    columns: 4

                    Repeater {
                        id: repeater
                        model: 20

                        Rectangle {
                            id: rectangle1
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"

                            TextField {
                                id: textField8
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                }

                ColumnLayout {
                    id: columnLayout1
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3

                    Text {
                        id: text10
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        font.bold: true
                        font.weight: Font.ExtraBold
                    }

                    Repeater {
                        id: repeater1
                        model: 6

                        TextField {
                            id: textField9
                            placeholderText: qsTr("Text Field")
                        }
                    }

                }
            }

            Item {
                id: item2
                width: 200
                height: 200
                GridLayout {
                    id: gridLayout1
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    rows: 6
                    Repeater {
                        id: repeater2
                        model: 18
                        Rectangle {
                            id: rectangle7
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"
                            TextField {
                                id: textField10
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                    columns: 3
                    columnSpacing: 3
                }

                ColumnLayout {
                    id: columnLayout2
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3
                    Text {
                        id: text14
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.ExtraBold
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Repeater {
                        id: repeater3
                        model: 6
                        TextField {
                            id: textField11
                            placeholderText: qsTr("Text Field")
                        }
                    }
                }
            }

            Item {
                id: item3
                width: 200
                height: 200
                GridLayout {
                    id: gridLayout2
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    rows: 6
                    Repeater {
                        id: repeater4
                        model: 18
                        Rectangle {
                            id: rectangle8
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"
                            TextField {
                                id: textField12
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                    columns: 3
                    columnSpacing: 3
                }

                ColumnLayout {
                    id: columnLayout3
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3
                    Text {
                        id: text15
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.ExtraBold
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Repeater {
                        id: repeater5
                        model: 6
                        TextField {
                            id: textField13
                            placeholderText: qsTr("Text Field")
                        }
                    }
                }
            }

            Item {
                id: item5
                width: 200
                height: 200
                GridLayout {
                    id: gridLayout3
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    rows: 6
                    Repeater {
                        id: repeater6
                        model: 18
                        Rectangle {
                            id: rectangle9
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"
                            TextField {
                                id: textField14
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                    columns: 3
                    columnSpacing: 3
                }

                ColumnLayout {
                    id: columnLayout4
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3
                    Text {
                        id: text16
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.ExtraBold
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Repeater {
                        id: repeater7
                        model: 6
                        TextField {
                            id: textField15
                            placeholderText: qsTr("Text Field")
                        }
                    }
                }
            }

            Item {
                id: item6
                width: 200
                height: 200
                GridLayout {
                    id: gridLayout4
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    rows: 6
                    Repeater {
                        id: repeater8
                        model: 18
                        Rectangle {
                            id: rectangle10
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"
                            TextField {
                                id: textField16
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                    columns: 3
                    columnSpacing: 3
                }

                ColumnLayout {
                    id: columnLayout5
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3
                    Text {
                        id: text17
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.ExtraBold
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Repeater {
                        id: repeater9
                        model: 6
                        TextField {
                            id: textField17
                            placeholderText: qsTr("Text Field")
                        }
                    }
                }
            }

            Item {
                id: item7
                width: 200
                height: 200
                GridLayout {
                    id: gridLayout5
                    x: 0
                    y: 0
                    width: 632
                    height: 378
                    rows: 5
                    Repeater {
                        id: repeater10
                        model: 20
                        Rectangle {
                            id: rectangle11
                            width: 120
                            height: 56
                            visible: true
                            color: "#00ffffff"
                            TextField {
                                id: textField18
                                width: 120
                                height: 56
                                placeholderText: qsTr("Text Field")
                            }
                        }
                    }
                    columns: 4
                    columnSpacing: 3
                }

                ColumnLayout {
                    id: columnLayout6
                    x: 638
                    y: -1
                    width: 229
                    height: 379
                    spacing: 3
                    Text {
                        id: text18
                        color: "#ff5400"
                        text: qsTr("Temperature1")
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.ExtraBold
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    }

                    Repeater {
                        id: repeater11
                        model: 6
                        TextField {
                            id: textField19
                            placeholderText: qsTr("Text Field")
                        }
                    }
                }
            }
        }

        RowLayout {
            id: rowLayout1
            x: 0
            y: 381
            width: 852
            height: 147

            Rectangle {
                id: rectangle2
                width: 120
                height: 56
                color: "#ffffff"

                Text {
                    id: text7
                    x: -8
                    y: 62
                    text: qsTr("Over Voltage")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }
            }

            Rectangle {
                id: rectangle3
                width: 120
                height: 56
                color: "#ffffff"

                Text {
                    id: text8
                    x: -15
                    y: 64
                    text: qsTr("Under Voltage")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }
            }

            Rectangle {
                id: rectangle4
                width: 120
                height: 56
                color: "#ffffff"

                Text {
                    id: text9
                    x: 8
                    y: 52
                    text: qsTr("Over")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }

                Text {
                    id: text11
                    x: 8
                    y: 73
                    text: qsTr("Temperature")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }
            }

            Rectangle {
                id: rectangle5
                width: 120
                height: 56
                color: "#ffffff"

                Text {
                    id: text12
                    x: -9
                    y: 64
                    text: qsTr("Current Limit")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }
            }

            Rectangle {
                id: rectangle6
                width: 120
                height: 56
                color: "#ffffff"

                Text {
                    id: text13
                    x: 33
                    y: 64
                    text: qsTr("Delta")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.weight: Font.ExtraBold
                }
            }
        }

        RoundButton {
            id: roundButton
            x: 848
            y: 429
            checkable: true
            icon.color: "#00ffffff"
            icon.height: 52
            icon.width: 52
            icon.source: "images/enter.png"
        }
    }
}
