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
    id: page01
    width: Constants.width
    height: 320

    ComboBox {
        id: comboBox
        x: 442
        y: 51
        displayText: qsTr("Sensors")
        model: ["Sensor1", "Sensor2", "Sensor3", "Sensor4"]

        Loader {
            id: loader
            x: 124
            y: 6
            width: 200
            height: 200
            visible: false
            active: none.none

            Image {
                id: image
                x: 0
                y: 0
                width: 200
                height: 200
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Loader {
            id: loader1
            x: 124
            y: 6
            width: 200
            height: 200
            visible: false
        }

        Loader {
            id: loader2
            x: 124
            y: 6
            width: 200
            height: 200
            visible: false
            Image {
                id: image2
                x: 0
                y: 0
                width: 200
                height: 200
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Loader {
            id: loader3
            x: 151
            y: 9
            width: 200
            height: 200
            visible: false
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
                        }
            }
        }
    }

    Button {
        id: button
        x: 1067
        y: 134
        text: qsTr("CAN")

        Loader {
            id: loader4
            x: -1064
            y: -137
            width: 1276
            height: 324
            visible: false
            source: "Fan.qml"

            Button {
                id: button1
                x: 1066
                y: 213
                visible: true
                text: qsTr("Back")
                icon.source: "images/arrow_left.png"
                icon.color: "#ff0000"

                Connections {
                    target: button1
                    onClicked: loader4.visible = false
                }
            }
        }

        Connections {
            target: button
            onClicked: loader4.visible = true
        }
    }
}
