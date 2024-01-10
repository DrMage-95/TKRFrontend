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
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: 370
    height: 200

    state: "Motherboard"

    CustomLabel {
        id: customLabel
        x: 68
        y: 24
        color: "#61d140"
        text: qsTr("MOTHERBOARD")
        font.letterSpacing: 1
        font.pixelSize: 26
    }

    CustomLabel {
        id: customLabel1
        x: 68
        y: 65
        color: "#9d9d9d"
        text: qsTr("POWER DISTRIBUTION UNIT")
        font.letterSpacing: 1
        font.pixelSize: 26
    }

    CustomLabel {
        id: customLabel2
        x: 68
        y: 106
        color: "#9d9d9d"
        text: qsTr("BATTERY MANAGEMENT SYSTEM")
        font.letterSpacing: 1
        font.pixelSize: 26
    }

    CustomLabel {
        id: customLabel3
        x: 68
        y: 147
        color: "#9d9d9d"
        text: qsTr("MOTOR CONTROLLER")
        font.letterSpacing: 1
        font.pixelSize: 26
    }

    MouseArea {
        id: mouseArea
        x: 63
        y: 24
        width: 145
        height: 35
    }

    MouseArea {
        id: mouseArea1
        x: 63
        y: 65
        width: 255
        height: 35
    }

    MouseArea {
        id: mouseArea2
        x: 68
        y: 108
        width: 286
        height: 35
    }

    MouseArea {
        id: mouseArea3
        x: 63
        y: 149
        width: 192
        height: 35
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: pduToMbAnim
                onFinished: root.state = "Motherboard"
                from: 500
                loops: 1
                duration: 500
                to: 1000
                running: false
            },
            TimelineAnimation {
                id: pduToBMSAnim
                onFinished: root.state = "BMS"
                from: 3500
                loops: 1
                duration: 500
                to: 4000
                running: false
            },
            TimelineAnimation {
                id: pduToMCAnim
                onFinished: root.state = "MC"
                from: 4500
                loops: 1
                duration: 500
                to: 5000
                running: false
            },
            TimelineAnimation {
                id: mbToPDUAnim
                onFinished: root.state = "PDU"
                from: 0
                loops: 1
                duration: 500
                to: 500
                running: false
            },
            TimelineAnimation {
                id: mbToBMSAnim
                onFinished: root.state = "BMS"
                from: 1000
                loops: 1
                duration: 500
                to: 1500
                running: false
            },
            TimelineAnimation {
                id: mbToMCAnim
                onFinished: root.state = "MC"
                from: 2000
                loops: 1
                duration: 500
                to: 2500
                running: false
            },
            TimelineAnimation {
                id: bmsToMbAnim
                onFinished: root.state = "Motherboard"
                from: 1500
                loops: 1
                duration: 500
                to: 2000
                running: false
            },
            TimelineAnimation {
                id: bmsToPDUAnim
                onFinished: root.state = "PDU"
                from: 4000
                loops: 1
                duration: 500
                to: 4500
                running: false
            },
            TimelineAnimation {
                id: bmsToMCAnim
                onFinished: root.state = "MC"
                from: 6000
                loops: 1
                duration: 500
                to: 6500
                running: false
            },
            TimelineAnimation {
                id: mcToMbAnim
                onFinished: root.state = "Motherboard"
                from: 2500
                loops: 1
                duration: 500
                to: 3000
                running: false
            },
            TimelineAnimation {
                id: mcToPDUAnim
                onFinished: root.state = "PDU"
                from: 5000
                loops: 1
                duration: 500
                to: 5500
                running: false
            },
            TimelineAnimation {
                id: mcToBMSAnim
                onFinished: root.state = "BMS"
                from: 6500
                loops: 1
                duration: 500
                to: 7000
                running: false
            }
        ]
        endFrame: 7000
        startFrame: 0
        enabled: true

        KeyframeGroup {
            target: customLabel
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 0
            }

            Keyframe {
                value: "#61d140"
                frame: 1000
            }

            Keyframe {
                value: "#61d140"
                frame: 2000
            }

            Keyframe {
                value: "#61d140"
                frame: 3000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 500
            }

            Keyframe {
                value: "#61d140"
                frame: 3500
            }

            Keyframe {
                value: "#61d140"
                frame: 4500
            }

            Keyframe {
                value: "#61d140"
                frame: 5500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 0
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel2
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 1500
            }

            Keyframe {
                value: "#61d140"
                frame: 4000
            }

            Keyframe {
                value: "#61d140"
                frame: 6000
            }

            Keyframe {
                value: "#61d140"
                frame: 7000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 0
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6500
            }
        }

        KeyframeGroup {
            target: customLabel3
            property: "color"
            Keyframe {
                value: "#61d140"
                frame: 2500
            }

            Keyframe {
                value: "#61d140"
                frame: 5000
            }

            Keyframe {
                value: "#61d140"
                frame: 6500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 0
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 1500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 2000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 3500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 4500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 5500
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 6000
            }

            Keyframe {
                value: "#9d9d9d"
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 1250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 1750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 2250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 2750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 3750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 4250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 4750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 5250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel2
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 1250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 1750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 3750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -157
                frame: 4250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel3
            property: "x"
            Keyframe {
                value: 68
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 1500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 2250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 2500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 2750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 3500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 4500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 4750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 5250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 5500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6000
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 255
                frame: 6250
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 6500
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: -152
                frame: 6750
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 68
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel
            property: "opacity"

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }

            Keyframe {
                value: 0
                frame: 1250
            }

            Keyframe {
                value: 1
                frame: 1500
            }

            Keyframe {
                value: 0
                frame: 1750
            }

            Keyframe {
                value: 1
                frame: 2000
            }

            Keyframe {
                value: 0
                frame: 2250
            }

            Keyframe {
                value: 1
                frame: 2500
            }

            Keyframe {
                value: 1
                frame: 2750
            }

            Keyframe {
                value: 1
                frame: 3000
            }

            Keyframe {
                value: 1
                frame: 3500
            }

            Keyframe {
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 1
                frame: 4500
            }

            Keyframe {
                value: 1
                frame: 5000
            }

            Keyframe {
                value: 1
                frame: 5500
            }

            Keyframe {
                value: 1
                frame: 6000
            }

            Keyframe {
                value: 1
                frame: 6500
            }

            Keyframe {
                value: 1
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel1
            property: "opacity"

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 250
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 750
            }

            Keyframe {
                value: 1
                frame: 1000
            }

            Keyframe {
                value: 1
                frame: 1500
            }

            Keyframe {
                value: 1
                frame: 2000
            }

            Keyframe {
                value: 1
                frame: 2500
            }

            Keyframe {
                value: 1
                frame: 3000
            }

            Keyframe {
                value: 1
                frame: 3500
            }

            Keyframe {
                value: 0
                frame: 3750
            }

            Keyframe {
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 0
                frame: 4250
            }

            Keyframe {
                value: 1
                frame: 4500
            }

            Keyframe {
                value: 0
                frame: 4750
            }

            Keyframe {
                value: 1
                frame: 5000
            }

            Keyframe {
                value: 0
                frame: 5250
            }

            Keyframe {
                value: 1
                frame: 5500
            }

            Keyframe {
                value: 1
                frame: 6000
            }

            Keyframe {
                value: 1
                frame: 6500
            }

            Keyframe {
                value: 1
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel2
            property: "opacity"

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 1
                frame: 1000
            }

            Keyframe {
                value: 0
                frame: 1250
            }

            Keyframe {
                value: 1
                frame: 1500
            }

            Keyframe {
                value: 0
                frame: 1750
            }

            Keyframe {
                value: 1
                frame: 2000
            }

            Keyframe {
                value: 1
                frame: 2500
            }

            Keyframe {
                value: 1
                frame: 3000
            }

            Keyframe {
                value: 1
                frame: 3500
            }

            Keyframe {
                value: 0
                frame: 3750
            }

            Keyframe {
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 0
                frame: 4250
            }

            Keyframe {
                value: 1
                frame: 4500
            }

            Keyframe {
                value: 1
                frame: 5000
            }

            Keyframe {
                value: 1
                frame: 5500
            }

            Keyframe {
                value: 1
                frame: 6000
            }

            Keyframe {
                value: 0
                frame: 6250
            }

            Keyframe {
                value: 1
                frame: 6500
            }

            Keyframe {
                value: 0
                frame: 6750
            }

            Keyframe {
                value: 1
                frame: 7000
            }
        }

        KeyframeGroup {
            target: customLabel3
            property: "opacity"

            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 500
            }

            Keyframe {
                value: 1
                frame: 1000
            }

            Keyframe {
                value: 1
                frame: 1500
            }

            Keyframe {
                value: 1
                frame: 2000
            }

            Keyframe {
                value: 0
                frame: 2250
            }

            Keyframe {
                value: 1
                frame: 2500
            }

            Keyframe {
                value: 0
                frame: 2750
            }

            Keyframe {
                value: 1
                frame: 3000
            }

            Keyframe {
                value: 1
                frame: 3500
            }

            Keyframe {
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 1
                frame: 4500
            }

            Keyframe {
                value: 0
                frame: 4750
            }

            Keyframe {
                value: 1
                frame: 5000
            }

            Keyframe {
                value: 0
                frame: 5250
            }

            Keyframe {
                value: 1
                frame: 5500
            }

            Keyframe {
                value: 1
                frame: 6000
            }

            Keyframe {
                value: 0
                frame: 6250
            }

            Keyframe {
                value: 1
                frame: 6500
            }

            Keyframe {
                value: 0
                frame: 6750
            }

            Keyframe {
                value: 1
                frame: 7000
            }
        }
    }




    Connections {
        target: mouseArea
        onClicked: {
            if (root.state === "PDU")
                root.state = "PDU2Motherboard"
            else if (root.state === "BMS")
                root.state = "BMS2Motherboard"
            else if (root.state === "MC")
                root.state = "MC2Motherboard"
        }
    }

    Connections {
        target: mouseArea1
        onClicked: {
            if (root.state === "Motherboard")
                root.state = "Motherboard2PDU"
            else if (root.state === "BMS")
                root.state = "BMS2PDU"
            else if (root.state === "MC")
                root.state = "MC2PDU"
        }
    }

    Connections {
        target: mouseArea2
        onClicked: {
            if (root.state === "Motherboard")
                root.state = "Motherboard2BMS"
            else if (root.state === "PDU")
                root.state = "PDU2BMS"
            else if (root.state === "MC")
                root.state = "MC2BMS"
        }
    }

    Connections {
        target: mouseArea3
        onClicked: {
            if (root.state === "Motherboard")
                root.state = "Motherboard2MC"
            else if (root.state === "PDU")
                root.state = "PDU2MC"
            else if (root.state === "BMS")
                root.state = "BMS2MC"
        }
    }

    states: [
        State {
            name: "Motherboard"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }

            PropertyChanges {
                target: customLabel
                x: 68
            }

            PropertyChanges {
                target: customLabel1
                x: 68
                y: 65
            }

            PropertyChanges {
                target: customLabel2
                x: 68
                y: 106
            }

            PropertyChanges {
                target: customLabel3
                x: 68
                y: 147
            }
        },

        State {
            name: "mbToPDU"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "mbToBMS"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "mbToMC"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "PDU"

            PropertyChanges {
                target: timeline
                currentFrame: 500
                enabled: true
            }
        },

        State {
            name: "pduToMb"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "pduToBMS"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "pduToMC"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "BMS"

            PropertyChanges {
                target: timeline
                currentFrame: 1500
                enabled: true
            }
        },

        State {
            name: "bmsToMb"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "bmsToPDU"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "bmsToMC"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "MC"

            PropertyChanges {
                target: timeline
                currentFrame: 2500
                enabled: true
            }
        },

        State {
            name: "mcToMb"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "mcToPDU"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        },

        State {
            name: "mcToBMS"

            PropertyChanges {
                target: timeline
                enabled: true
            }
        }
    ]
}
