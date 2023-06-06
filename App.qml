import QtQuick 6.5
import QtQuick.Window 6.5
import QtQuick.VirtualKeyboard 6.5
import QtQuick.Controls 6.5


Window {
    id: root
    width: Screen.width*2/3
    height: Screen.height/1.2
    visible: true

    //visibility: "FullScreen"

    /*
    ToolBar {
        id: toolBar
        anchors.right: parent.right
        anchors.left: parent.left
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            //text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            text:"\u2630"
            font:  Constants.largeFont
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }
*/


    StackView {
        id: ss1
        width:parent.width/2
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        //anchors.left: parent.left
        initialItem: Menu_asli {}
    }

    InputPanel {
        id: inputPanel
        property bool showKeyboard :  active
        y: showKeyboard ? parent.height - height : parent.height
        //y:200
        Behavior on y {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        anchors.leftMargin: parent.width/10
        anchors.rightMargin: parent.width/10
        anchors.left: parent.left
        anchors.right: parent.right
    }

    Drawer {
        id: drawer
        width: root.width * 0.33
        height: root.height

        Column {
            anchors.fill: parent
            ItemDelegate {
                text: qsTr(" فرا کاربر")
                width: parent.width
                onClicked: {
                    ss1.push("FaraKarbar.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr(" دوگزینه ای")
                width: parent.width
                onClicked: {
                    ss1.push("Dogozine.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr(" منو اصلی")
                width: parent.width
                onClicked: {
                    ss1.push("Menu_asli.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr(" تعداد و قیمت")
                width: parent.width
                onClicked: {
                    ss1.push("Tedad.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr(" شماره موبایل")
                width: parent.width
                onClicked: {
                    ss1.push("Shomareh.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("پرداخت و فیش")
                width: parent.width
                onClicked: {
                    ss1.push("Fysh.qml")
                    drawer.close()
                }
            }
        }
    }

    Screen01 {
        id: mainScreen
        width:parent.width/2
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }
}


