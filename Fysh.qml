import QtQuick 6.2
import QtQuick.Controls 2.15

Rectangle {
    //width: Screen.width/3
    //height: Screen.height/1.2
    width: Screen.width/3
    height: Screen.height/1.2

    color:"red"
    Button{
        text:'منو اصلی'
        onClicked: {

            ss1.push("Menu_asli.qml")

        }

    }

    property alias title: textItem.text

    Text {
        id: textItem
        text: qsTr("ext")
        anchors.centerIn: parent
        font.family: Constants.largeFont.family
        font.pixelSize: Constants.largeFont.pixelSize
    }
}
