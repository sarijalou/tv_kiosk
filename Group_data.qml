import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs



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
        id:fl2
        anchors.left: fl1.right
        width: parent.width*3/5
        height: parent.height*9/10
        y:parent.height*1/10
        //        color: 'yellow'


        FileDialog {
            id: fileDialog
            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
            // onAccepted: image.source = selectedFile
            nameFilters: ["png file(*.png)"]
            onAccepted: {
                labaly.text=selectedFile
            }
        }


        Label
        {
            id:lbl_name
            text: "نام گروه:"
            anchors.right:    parent.right
        }
        Rectangle
        {
            width: 200
            height: 20
            //            color: "yellow"
            border.width: 1
            border.color: "black"
            anchors.right: lbl_name.left

            TextInput
            {

                anchors.fill:    parent

            }
        }


        Label
        {
            id:lbl_ax
            text: "عکس گروه"
            anchors.right:    parent.right
            y:100

        }
        Button
        {
            id :btn_select
            text: "انتخاب"
            anchors.right: lbl_ax.left
            y:100
            onClicked: {
                fileDialog.open()
            }

        }
        Rectangle
        {
            width: 100
            height: 20
            anchors.right: btn_select.left
            y:100
            border.width: 1
            Label
            {
                id:labaly

                anchors.fill: parent

                text: "/img/a.png"


            }
        }

        Button
        {
            id :btn_sabt
            text: "ثبت"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            y:175

        }

        Button
        {
            id :btn_hazf
            text: "حذف"
            anchors.bottom: parent.bottom
            y:175

        }

            Image{
                source: labaly.text
                width: 100
                height: 100
               anchors.centerIn: parent

            }


    }

    Rectangle
    {

        width:parent.width
        height:parent.height/10
        color: 'green'
    }


}


