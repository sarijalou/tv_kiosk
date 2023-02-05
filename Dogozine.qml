import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2

    color: "#ffffff"
    border.color: "#ffffff"


    property alias title: textItem.text

    Text {
        id: textItem
        text: qsTr("Hello Azmayesh1") + " 01"
        anchors.centerIn: parent
        font.family: Constants.largeFont.family
        font.pixelSize: Constants.largeFont.pixelSize
    }
}
