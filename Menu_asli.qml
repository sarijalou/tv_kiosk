import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2

    Rectangle{
        id:fl1
        width: parent.width/2
        height: parent.height
        color: "#eec1a2"

    Flickable{
        anchors.fill:parent
        contentHeight: mColumnId.implicitHeight

    Column{
            id : mColumnId
            anchors.fill: parent

        QrpBtn {
            id: btn1
            text: "Latte"
            opacity:0.5
        }
          QrpBtn {
            id: btn2
            text: "Latte"
                        opacity:0.5

        }
          QrpBtn {
            id: btn3
            text: "Latte"
        }
       
        }

        ScrollBar.vertical: ScrollBar{}
    }
           }

    Flickable{
        id:fl2
        anchors.left: fl1.right
            width: parent.width*2/3
        height: parent.height
        contentHeight: nColumnId.implicitHeight


        Grid{
            id : nColumnId
            anchors.fill: parent
            columns: 3
            spacing: 10

            Rectangle {
                color: "red"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 1"
                    font.pointSize: 10
                    color : "white"
                }
            }


            Rectangle {
                color: "blue"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 2"
                    font.pointSize: 10
                    color : "white"
                }
            }

            Rectangle {
                color: "yellow"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 3"
                    font.pointSize: 10
                    color : "white"
                }
            }

            Rectangle {
                color: "magenta"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 4"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle {
                color: "yellowgreen"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 5"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle {
                color: "red"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 6"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle {
                color: "beige"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 7"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle {
                color: "royalblue"
                width: parent.width/4
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 8"
                    font.pointSize: 10
                    color : "white"
                }
            }



        }

        ScrollBar.vertical: ScrollBar{}
    }


}


