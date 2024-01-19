import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: motherboard
    width: Constants.width
    height: 320
    
    ComboBox {
        id: comboBox
        x: 70
        y: 72
        width: 186
        height: 68
        font.weight: Font.DemiBold
        font.bold: true
        font.pointSize: 26
        font.family: "Teko Medium"
        displayText: qsTr("Sensors")
        currentIndex: -1
        model: ["Sensor1","Sensor2","Sensor3","Sensor4"]
        
        Loader {
            id: loader
            x: 145
            y: 0
            width: 200
            height: 200
            visible: false
            anchors.right: parent.right
            anchors.rightMargin: -201
            source: "MBSensor1.qml"
        }
        
        Loader {
            id: loader1
            x: 145
            y: 0
            width: 200
            height: 200
            visible: false
            anchors.right: parent.right
            anchors.rightMargin: -201
            source: "MBSensor2.qml"
        }
        
        Loader {
            id: loader2
            x: 145
            y: 0
            width: 200
            height: 200
            visible: false
            anchors.right: parent.right
            anchors.rightMargin: -201
            source: "MBSensor3.qml"
        }
        
        Loader {
            id: loader3
            x: 145
            y: 0
            width: 200
            height: 200
            visible: false
            anchors.right: parent.right
            anchors.rightMargin: -201
            source: "MBSensor4.qml"
        }
        
        Connections {
            target: comboBox.model

            onCurrentIndexChanged: {
                loader.visible = false;
                loader1.visible = false;
                loader2.visible = false;
                loader3.visible = false;

                if (comboBox.currentIndex === 0) {
                    loader.visible = true;
                } else if (comboBox.currentIndex === 1) {
                    loader1.visible = true;
                } else if (comboBox.currentIndex === 2) {
                    loader2.visible = true;
                } else if (comboBox.currentIndex === 3) {
                    loader3.visible = true;
                } else if (comboBox.currentIndex === -1) {
                    loader.visible = false;
                }
            }
        }
    }

    Text {
        id: text1
        x: 982
        y: 128
        color: "#838383"
        text: qsTr("View CAN")
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.weight: Font.DemiBold
        font.family: "Teko Medium"
    }

    RoundButton {
        id: roundButton
        x: 1114
        y: 128
        icon.color: "#e59b35"
        icon.source: "images/arrow_right.png"

        Connections {
            target: roundButton
            onClicked: loader4.visible = true
        }
    }

    Loader {
        id: loader4
        x: 0
        y: 0
        width: 1280
        height: 320
        visible: false
        source: "CAN.qml"
    }
}
