import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle {


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

    Rectangle
    {

        width:parent.width
        height:parent.height/10
        color: 'green'
    }

}


