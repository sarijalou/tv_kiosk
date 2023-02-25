import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle {
    Rectangle{

    width:parent.width
    height:parent.height/10
    color: 'green'
    }


    Rectangle
    {
        id:fl1
        width: parent.width*2/5
        height:( parent.height*9)/10
        y:parent.height*1/10

        color: "blue"

        Flickable
        {
            anchors.fill:parent
            contentHeight: mColumnId.implicitHeight

            Column
            {
                id : mColumnId
                anchors.fill: parent

                QrpBtn
                {
                    id: btn1
                    text: "pizza"
                    opacity:0.8
                    src:"images/pizza.png"

                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }

                }
                QrpBtn
                {
                    id: btn2
                    text: "Latte"
                    opacity:0.8
                    src:"images/sandwich.png"
                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }


                }
                QrpBtn
                {
                    id: btn3
                    text: "Latte"
                    src:"images/pack.png"

                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }
                }
                QrpBtn
                {
                    id: btn4
                    text: "Latte"
                    src:"images/chiken.png"

                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }
                }
                QrpBtn
                {
                    id: btn5
                    text: "Latte"
                    src:"images/french.png"

                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }
                }
                QrpBtn
                {
                    id: btn6
                    text: "Latte"
                    src:"images/drink.png"

                    onClicked:
                    {
                        btn1.opacity=0.8
                        btn2.opacity=0.8
                        btn3.opacity=0.8
                        btn4.opacity=0.8
                        btn5.opacity=0.8
                        btn6.opacity=0.8

                        opacity:1
                    }
                }

            }
            ScrollBar.vertical: ScrollBar{}
        }
    }

    Flickable
    {
        id:fl2
        anchors.left: fl1.right
        width: parent.width*2/3
        height: parent.height*9/10
        y:parent.height*1/10
//       boundsBehavior: Flickable.StopAtBounds
       boundsBehavior: Flickable.DragAndOvershootBounds

        contentHeight: nColumnId.implicitHeight//+400
     //   contentY : contentHeight-height


        Grid
        {
            id : nColumnId
            anchors.fill: parent
            columns: 3
            spacing: 10

            Rectangle
            {
                color: "red"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 1"
                    font.pointSize: 10
                    color : "white"
                }
            }


            Rectangle
            {
                color: "blue"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 2"
                    font.pointSize: 10
                    color : "white"
                }
            }

            Rectangle
            {
                color: "yellow"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 3"
                    font.pointSize: 10
                    color : "white"
                }
            }

            Rectangle
            {
                color: "magenta"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 4"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle
            {
                color: "yellowgreen"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 5"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle
            {
                color: "red"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 6"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle
            {
                color: "beige"
                width: parent.width/4
                height: 200
                Text
                {
                    anchors.centerIn: parent
                    text: "Element 7"
                    font.pointSize: 10
                    color : "white"
                }
            }
            Rectangle
            {
                color: "royalblue"
                width: parent.width/4
                height: 200
                Text
                {
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


