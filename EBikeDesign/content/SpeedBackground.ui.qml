/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.10
import ebikeDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0
import EbikeData 1.0

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
                x: 112
                y: 94
                width: 162
                height: 159
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
            text: "30"
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
            text: "60"
            font.pixelSize: 14
        }

        Column {
            id: speedInfo
            x: 80
            y: 145
            width: 100
            height: 150
            spacing: -8

            Image {
                id: speedIcon
                x: 0
                source: "images/temperature.png"
            }

            CustomLabel {
                id: averageSpeedLabel
                x: 15
                text: Backend.tempString
                font.pixelSize: 48
            }

            CustomLabel {
                id: avgMPH
                x: 11
                width: 40
                height: 47
                color: "#6d6d6d"
                text: qsTr("°C")
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
                wrapMode: Text.WordWrap
            }
        }

        Column {
            id: batteryInfo
            x: 267
            y: 145
            width: 100
            height: 150
            spacing: -8

            Image {
                id: batteryIcon
                x: 35
                width: 64
                height: 64
                source: "images/battery.png"
                sourceSize.height: 64
                sourceSize.width: 64
            }

            CustomLabel {
                id: batteryLabel
                x: 50
                text: Backend.batteryString
                font.pixelSize: 48
            }

            CustomLabel {
                id: assistLeft
                x: 46
                width: 40
                height: 70
                color: "#6d6d6d"
                text:  qsTr("%")
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

