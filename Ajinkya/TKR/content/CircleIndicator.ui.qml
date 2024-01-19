import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0

Rectangle {
    id: circle
    width: 16
    height: 16
    radius: 8
    state: "unchecked"
    states: [
        State {
            name: "checked"
            when: circle.checked

            PropertyChanges {
                target: gradientStop
                color: "#cc2020"
            }

            PropertyChanges {
                target: gradientStop1
                color: "#f61b1b"
            }
        },
        State {
            name: "unchecked"
            when: !circle.checked

            PropertyChanges {
                target: gradientStop
                color: "#018600"
            }

            PropertyChanges {
                target: gradientStop1
                color: "#02ff00"
            }
        }
    ]
    property bool checked: false
    gradient: Gradient {
        GradientStop {
            id: gradientStop
            position: 0
            color: "#838383"
        }

        GradientStop {
            id: gradientStop1
            position: 1
            color: "#747474"
        }
    }
}
