import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle {

    property int number_of_grops:1
    property var input_dbbbb:[]
    property real group_size: 30/100



    Rectangle
    {
        id:fl1
        width: parent.width*group_size
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
                Repeater {
                    model: number_of_grops
                    QrpBtn
                    {
                        width:fl1.width
                        //height: fl1.height
                        text:input_dbbbb[index][0]
                        src:input_dbbbb[index][1]
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked: {



                        }
                    }


                }
                ScrollBar.vertical: ScrollBar{}
            }
        }
    }

    Rectangle
    {        id:fl2
        anchors.left: fl1.right
        width: parent.width*(1-group_size)
        height: parent.height*9/10
        y:parent.height*1/10

        Flickable
        {

            anchors.fill:parent

            contentHeight: nColumnId.implicitHeight//+400


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

    Rectangle
    {

        width:parent.width
        height:parent.height/10
        color: 'green'

        Button{
            anchors.right: parent.right
            text: "back"

            onClicked: {
                ss1.push('Dogozine.qml')
            }
        }

        Button{
            anchors.left: parent.left
            text: "fara_karbar"

            onClicked: {
                ss1.push('Group_data.qml')
            }
        }
    }
    Component.onCompleted:
    {


        input_dbbbb=manager.db_select_from_group()

        number_of_grops=input_dbbbb.length

        //        console.log(input_dbbbb)
        //        console.log(number_of_grops)

    }
}

