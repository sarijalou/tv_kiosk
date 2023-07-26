import QtQuick 6.5
import QtQuick.Controls 6.5



Rectangle {

    property int number_of_grops:1


    property var input_dbbbb:[]
    property real group_size: 25/100
    property var input_product: []
    property int number_of_product: 1
    property int highlightedIndex: 0
    property string qrptxt
    property string old_text
    property int number_of_order:0

    Rectangle
    {
        id:fl1
        width: parent.width*group_size
        height:parent.height-(sabad_id.height+sarbarg_id.height)
        y:sarbarg_id.height

        color: "red"
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

                        clr:
                        { if(index === highlightedIndex )
                                "brown" ;
                            else
                                "yellow";
                        }



                        onClicked:
                        {
                            highlightedIndex = index
                            input_product=manager.db_select_product(text)
                            console.log(input_product)
                            number_of_product=input_product.length
                            qrptxt=text
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
        anchors.bottom: sabad_id.top
        width: parent.width*(1-group_size)
        height:parent.height-(sabad_id.height+sarbarg_id.height)
        y:sarbarg_id.height
        color: 'beige'
        Flickable
        {

            anchors.fill:parent

            contentHeight: nColumnId.implicitHeight//+400


            Grid
            {
                id : nColumnId
                anchors.fill: parent
                columns: 3
                //spacing: 10


                Repeater
                {
                    model: number_of_product
                    ProductBtn
                    {
                        width:parent.width/3

                        //height: fl1.height
                        text:input_product[index][0]
                        src:input_product[index][2]
                        price:input_product[index][1].toString()
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked: {
                            //                            order_product[0][0]=text
                            //                            order_product[0][1]=src
                            //                            order_product[0][2]=price
                            //                            order_product[0][3]=qrptxt




                            for (var i = 0; i < order_product.length; i++) {
                                var item = order_product[i];
                                if (item[0] === qrptxt && item[1] === text && item[2] === src && item[3] === price) {
                                    // Item already exists, increment its quantity
                                    item[4]++;
                                    console.log(order_product)

                                    return;
                                }
                            }
                            // Item does not exist, add it to the array with quantity = 1
                            order_product.push([qrptxt, text, src, price, 1])




                            console.log(order_product)
                            number_of_order=order_product.length
                        }
                    }


                }





            }

            ScrollBar.vertical: ScrollBar{}
        }

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
            text: "fara_karbar"

            onClicked:
            {
                ss1.push('FaraKarbar.qml')
            }
        }
    }
    Rectangle
    {
        id:sabad_id

        width:parent.width
        height:parent.height*0.15
        color: 'royalblue'
        anchors.bottom: parent.bottom

        Rectangle
        {
            id:sabad_right_id
            anchors.left:sabad_left_id.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right:parent.right
            //            color: 'brown'
            Flickable
            {
                anchors.fill: parent
                contentWidth: blue_row_id.implicitWidth
                Row
                {
                    id:blue_row_id
                    anchors.fill: parent
                    Repeater
                    {
                        model: number_of_order
                        ProductBtn
                        {
                            width:sabad_right_id.width/4

                            height: sabad_id.height*3/4
                            text:order_product[index][1]
                            src:order_product[index][2]
                            //                            price:order_product[index][3].toString()
                            onClicked:
                            {
                                for (var j = 0; j< order_product.length; j++) {
                                    var item = order_product[j];
                                    if ( item[1] === text && item[2] === src ) {
                                        // Item already exists, increment its quantity
                                        order_product.splice(j,1)
                                        number_of_order=order_product.length
                                        console.log(order_product)

                                        return;
                                    }
                                }


                                console.log(text,src)

                            }
                        }
                    }


                } // ScrollBar.horizontal: ScrollBar

                onContentWidthChanged:
                {
                    if ( contentWidth <sabad_right_id.width)
                    {
                        // At the end, no need to scroll further
                        return;
                    }
                    // Scroll to the end
                    contentX = contentWidth - width;
                }

            }
        }
        Rectangle{
            id:sabad_left_id
            color:'black'
            anchors.left:parent.left
            anchors.bottom: parent.bottom
            anchors.top:parent.top
            width: parent.width*0.2

            Button
            {
                id:blue_next_id
                anchors.left: parent.left
                text: "next"

                onClicked:
                {
                    ss1.push('Tedad.qml')
                }
            }
            Button
            {
                id:blue_cancel_id
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                text: "انصراف"

                onClicked:
                {
                    ss1.push('Dogozine.qml')
                }
            }}}
    Component.onCompleted:
    {
        input_dbbbb=manager.db_select_from_group()
        number_of_grops=input_dbbbb.length
        input_product=manager.db_select_product(input_dbbbb[0][0])
        number_of_product=input_product.length
        order_product=[]
    }

    /* Component.onCompleted:
    {
        input_dbbbb=manager.db_select_from_group()
        number_of_grops=input_dbbbb.length
        input_product=manager.db_select_product(input_dbbbb[0][0])
        number_of_product=input_product.length
    }*/


}

