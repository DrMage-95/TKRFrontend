pragma Singleton
import QtQuick 2.10

Item {
    id: backend

    property real temp: 26
    property real battery: 95

    property string tempString: Math.round(backend.temp)

    property real brightness: 0
    property bool showFPS: false

    property real delta: 0.6
    property string deltaString: backend.delta

    signal reset

    property int seconds: 0
    property int minutes: 0
    property int hours: 0
    property string time: ""
    property date __currentTime: new Date()

    function resetSettings() {
        backend.metricSystem = false
        backend.brightness = 0
        backend.showFPS = false
    }

    function resetAll() {
        resetSettings()

        backend.temp = 26
        backend.battery = 95
        backend.delta = 0.6

        __currentTime = new Date();

        reset()
    }

    Component.onCompleted: { __timeUpdate() }

    Timer {
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            backend.__currentTime = new Date()
            __timeUpdate()
        }
    }

    function __timeUpdate() {
        seconds = backend.__currentTime.getSeconds()
        minutes = backend.__currentTime.getMinutes()
        hours = backend.__currentTime.getHours()
        time = backend.__currentTime.toLocaleTimeString({ hour: '2-digit', minute:'2-digit' })
    }    
}

