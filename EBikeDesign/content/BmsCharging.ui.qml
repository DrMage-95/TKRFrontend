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
    width: 1280
    height: 752

    Button {
        id: button
        x: 97
        y: 318
        width: 203
        height: 116
        text: qsTr("Balance")
    }

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
                font.bold: true
                font.weight: Font.ExtraBold
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
                font.bold: true
                font.weight: Font.ExtraBold
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
                font.bold: true
                font.weight: Font.ExtraBold
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
                font.bold: true
                font.weight: Font.ExtraBold
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
                font.bold: true
                font.weight: Font.ExtraBold
            }
        }
    }

    Text {
        id: text6
        x: 182
        y: 145
        text: qsTr("999")
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.weight: Font.ExtraBold
    }

    CircleIndicator {
        id: circleIndicator
        x: 191
        y: 123
    }
}
