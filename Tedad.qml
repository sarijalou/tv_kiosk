import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle
{
    //    Rectangle
    //    {
    //        id:sarbarg_id
    //        width:parent.width
    //        height:parent.height/10
    //        color: 'green'

    //        Button
    //        {
    //            anchors.right: parent.right
    //            text: "back"

    //            onClicked:
    //            {
    //                ss1.push('Dogozine.qml')
    //            }
    //        }

    //        Button
    //        {
    //            anchors.left: parent.left
    //            text: "fara_karbar"

    //            onClicked:
    //            {
    //                ss1.push('FaraKarbar.qml')
    //            }
    //        }
    //    }

    color:"green"
    Rectangle
    {
        id:list_rect_id
        anchors.centerIn: parent

        width: parent.width*(1-0.15)
        height:parent.height*(1-0.25)

        color: 'beige'
        Flickable
        {

            anchors.fill:parent

            contentHeight: list_ColumnId.implicitHeight//+400


            Column
            {
                id : list_ColumnId
                anchors.fill: parent
                //spacing: 10


                Repeater
                {
                    model: order_product.length
                    ProductBtn
                    {
                        width:parent.width/6

                        //height: fl1.height
                        text:order_product[index][1]
                        src:order_product[index][2]
                        price:order_product[index][3].toString()
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"








                    }
                }


            }





        }

        ScrollBar.vertical: ScrollBar{}
    }
        Rectangle
        {
            id:sarbarg_id
            width:parent.width
            height:parent.height/10
            color: 'green'

            Button
            {
                anchors.right: parent.right
                text: "back"

                onClicked:
                {
                    ss1.push('Dogozine.qml')
                }
            }

            Button
            {
                anchors.left: parent.left
                text: "next"

                onClicked:
                {
                    ss1.push('Shomareh.qml')
                }
            }
        }









    Component.onCompleted:
    {
        console.log("sssssaaaaallllaaaammmm",order_product)
    }
}
