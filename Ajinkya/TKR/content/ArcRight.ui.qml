import QtQuick 2.10
import TKRDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0

ArcItem {
    id: arcRight
    width: 360
    height: 360
    fillColor: "#00ffffff"
    property real value: 69
    end: 262
    capStyle: 32
    strokeColor: "#38ccde"
    strokeWidth: 14
    begin: 98
    rotation: -90

    Timeline {
        id: timeline
        currentFrame: arcRight.value * 10
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: arcRight
            property: "begin"

            Keyframe {
                value: 262
                frame: 0
            }

            Keyframe {
                value: 98
                frame: 1000
            }
        }
    }
}
