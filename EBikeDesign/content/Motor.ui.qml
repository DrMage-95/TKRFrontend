/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1280
    height: 800

    Tumbler {
        id: tumbler
        x: 568
        y: 180
        width: 217
        height: 440
        spacing: 5
        wheelEnabled: true
        focusPolicy: Qt.WheelFocus
        visibleItemCount: 3
        model: 10

        Label {
            id: label
            x: 2
            y: 0
            color: "#ff0000"
            text: qsTr("Acceleration")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.weight: Font.ExtraBold
            font.pointSize: 26
        }

        Label {
            id: label1
            x: 22
            y: 197
            color: "#ff0000"
            text: qsTr("Autocross")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.ExtraBold
            font.pointSize: 26
            font.bold: true
        }

        Label {
            id: label2
            x: 36
            y: 393
            color: "#ff0000"
            text: qsTr("Skidpad")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.ExtraBold
            font.pointSize: 26
            font.bold: true
        }
    }
}
