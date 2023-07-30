// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5


Item
{
    id: root
//    width:10000
    height:50
    property alias  src:imgg.source
//    property alias src2:imgg2.source
//    property alias src3:imgg3.source

    property int duration: 250
    property alias text: label.text
    property alias price: label2.text
    property alias teddadd:label3.text
    property alias allprice:label4.text
    signal clicked
    signal clicked2
    signal clicked3


    Image
    {
        id:imgg
        source: "images/pack.png"
        signal clicked
        anchors.verticalCenter: parent.verticalCenter
//        x:0
        width: parent.width*80/100
        height: parent.height*80/100
    }
    Row
    {
        anchors.left: imgg.right
        anchors.verticalCenter: parent.verticalCenter
//      anchors.horizontalCenter: parent.horizontalCenter
//        spacing: 5
        Label
        {
            id: label

            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter

            anchors.left :imgg.right
            color: "#443224"
            font.pixelSize: 15

        }
        Label
        {
            id: label2
//            x:parent.width*0.7
            text: qsTr("")
            anchors.verticalCenter: parent.verticalCenter

            //              anchors.horizontalCenter: label2.horizontalCenter
            anchors.left :label.right
            color: "#443224"
            font.pixelSize: 15

        }
        Image
        {
            id: imgg2
//             x:parent.width*0.75
            source: ".img/neg.png"
            width: 30
            height: 30
//          signal clicked2
            //text: qsTr("si")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left :label2.right
            //font.pixelSize: 15

            MouseArea
            {
                anchors.fill: parent
                onClicked: clicked2()
            }
        }
        Text
        {
            id: label3

            text: qsTr("s")
            anchors.verticalCenter: parent.verticalCenter
//            x: parent.width*70/100

            anchors.left :imgg2.right
            color: "#443224"
            font.pixelSize: 15

        }
        Image
        {
            id: imgg3
//            x:root.width*0.85
            source: ".img/posi.png"
            width:30
            height: 30
//            signal clicked3
            //text: qsTr("si")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left :label3.right
            //font.pixelSize: 15

            MouseArea
            {
                anchors.fill: parent
                onClicked: clicked3()
            }
        }
        Text
        {
            id: label4
//            x:root.width*0.9
            text: qsTr("s")
            anchors.verticalCenter: parent.verticalCenter
//            x: parent.width*90/100
          anchors.left :imgg3.right
            color: "#443224"
            font.pixelSize: 15

        }
    }






}
