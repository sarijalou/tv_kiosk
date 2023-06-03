import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Dialogs



Rectangle
{
    property int number_of_grops:1
    property var input_dbbbb:[]
    property real group_size: 20/100
    property int highlightedIndex: 0

    property var input_product: []
    property int number_of_product: 1



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
                    model: number_of_grops+1
                    QrpBtn
                    {
                        width:fl1.width
                        //height: fl1.height

                        text:
                            if (index === number_of_grops)
                            {
                                "add" ;
                            }
                            else
                            {

                                input_dbbbb[index][0];
                            }

                        src:
                            if (index === number_of_grops)
                            {
                                ".img/add_btn.png" ;
                            }
                            else
                            {
                                input_dbbbb[index][1];

                            }



                        clr:
                        { if(index === highlightedIndex )
                                "yellow" ;
                            else
                                "blue";
                        }


                        onClicked: {
                            highlightedIndex=index


                            if (index === number_of_grops)
                            {
                               group_edit.visible=true
                                input_name.text=""
                                labaly.text=""
                                input_radif.text=index
                            }
                            else
                            {

                            input_name.text=text
                            labaly.text=src
                            input_radif.text=index

                            input_product=manager.db_select_product(text)
                            console.log(input_product)
                            number_of_product=input_product.length
                            }

                        }
                    }
                }

            }
            ScrollBar.vertical: ScrollBar{}
        }
    }

    Rectangle
    {        id:fl22
        anchors.left: fl1.right
        width: parent.width*(1-group_size)
        height: parent.height*9/10
        y:parent.height*1/10
        color: 'beige'
        visible: true
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
                    model: number_of_product+1
                    ProductBtn
                    {
                        width:parent.width/3


                        text:
                            if (index === number_of_product)
                            {
                                "add" ;
                            }
                            else
                            {

                               input_product[index][0];
                            }

                        src:
                            if (index === number_of_product)
                            {
                                ".img/add_btn.png" ;
                            }
                            else
                            {
                                input_product[index][2];

                            }

                        //height: fl1.height
                        price:input_product[index][1]
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked: {


                            if (index === number_of_product)
                            {
                               product_edit.visible=true

                            }



                        }
                    }


                }





            }

            ScrollBar.vertical: ScrollBar{}
        }



    }

//++++++++++++++++++++

    Rectangle
    {
        width:parent.width
        height:parent.height/10
        color: 'green'
        Row
        {
            spacing: 20
        Button{
            width: 80
//            anchors.left: parent.left
            text: "menu_asli"

            onClicked: {
                ss1.push('Menu_asli.qml')
            }
        }

        Button{
            width: 80

//            anchors.left: parent.left
            text: "ویرایش گروه"

            onClicked: {

            if(group_edit.visible)
                            group_edit.visible=0;
            else
                group_edit.visible=1;


            }
        }
        }
    }

    Rectangle
    {

        id:group_edit
        width: parent.width*9/10
        height: parent.height*9/10
        anchors.centerIn: parent

        color: "lightgray"
        radius: 10
        visible:false

        gradient: Gradient {
            GradientStop { position: 0; color: "#DDDDDD" }
            GradientStop { position: 0.5; color: "#BBBBBB" }
            GradientStop { position: 1; color: "#AAAAAA" }
        }

        Rectangle {
            width: parent.width - 6
            height: parent.height - 6
            color: "transparent"
            border.color: "#FFFFFF" // Highlight color
            border.width: 3 // Highlight width
            radius: parent.radius - (border.width / 2) // Match parent's corner radius
            anchors.centerIn: parent
        }





        //visible: false

        Button
        {
            text: "خروج"
            onClicked: parent.visible=false

        }



        FileDialog {
            id: fileDialog
            //            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
            // onAccepted: image.source = selectedFile
            nameFilters: ["png file(*.png)"]
            onAccepted: {
                labaly.text=manager.copy_from_qml_png(selectedFile)
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
                id:input_name
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
            }
        }

        Button
        {
            id :btn_sabt
            text: "ثبت"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            y:175
            onClicked: {
                manager.db_delete_Groups(input_name.text,labaly.text)

                manager.db_insert_to_group( input_name.text,labaly.text,input_radif.text)

                input_dbbbb=manager.db_select_from_group()
                number_of_grops=input_dbbbb.length
                input_name.text=''
                labaly.text=''
                input_radif.text='0'
            }
        }

        Button
        {
            text: "حذف"
            anchors.bottom: parent.bottom
            y:175
            onClicked: {
                manager.db_delete_Groups(input_name.text,labaly.text)
                input_dbbbb=manager.db_select_from_group()
                number_of_grops=input_dbbbb.length
                input_name.text=''
                labaly.text=''
                input_radif.text='0'
            }
        }

        Image{
            id:imagek
            source: labaly.text
            width: 100
            height: 100
            anchors.centerIn: parent

        }

        Label
        {
            id:lbl_radif
            text: "ردیف:"
            anchors.right:    parent.right
            anchors.top: imagek.bottom
        }
        Rectangle
        {
            width: 200
            height: 20
            //            color: "yellow"
            border.width: 1
            border.color: "black"
            anchors.right: lbl_radif.left
            anchors.top: imagek.bottom

            TextInput
            {
                id:input_radif
                anchors.fill:    parent
            }
        }
    }



    Rectangle
    {

        id:product_edit
        width: parent.width*9/10
        height: parent.height*9/10
        anchors.centerIn: parent

        color: "lightblue"
        radius: 10
        visible:false

//        gradient: Gradient {
//            GradientStop { position: 0; color: "#DDDDDD" }
//            GradientStop { position: 0.5; color: "#BBBBBB" }
//            GradientStop { position: 1; color: "#AAAAAA" }
//        }

        Rectangle {
            width: parent.width - 6
            height: parent.height - 6
            color: "transparent"
            border.color: "#FFFFFF" // Highlight color
            border.width: 3 // Highlight width
            radius: parent.radius - (border.width / 2) // Match parent's corner radius
            anchors.centerIn: parent
        }





        //visible: false

        Button
        {
            text: "خروج"
            onClicked: parent.visible=false

        }



        FileDialog {
            id: fileDialog2
            //            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
            // onAccepted: image.source = selectedFile
            nameFilters: ["png file(*.png)"]
            onAccepted: {
                lbl_prduct.text=manager.copy_from_qml_png(selectedFile)
            }
        }

        Label
        {
            id:product_lbl_name
            text: "نام محصول:"
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
                id:input_name2
                anchors.fill:    parent
            }
        }


        Label
        {
            id:product_lbl_ax
            text: "عکس محصول"
            anchors.right:    parent.right
            y:100
        }
        Button
        {
            id :product_btn_select
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
                id:lbl_prduct
                anchors.fill: parent
            }
        }

        Button
        {
            text: "ثبت"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            y:175
//            onClicked: {
//                manager.db_delete_Groups(input_name.text,labaly.text)

//                manager.db_insert_to_group( input_name.text,labaly.text,input_radif.text)

//                input_dbbbb=manager.db_select_from_group()
//                number_of_grops=input_dbbbb.length
//                input_name.text=''
//                labaly.text=''
//                input_radif.text='0'
//            }
        }

        Button
        {
            text: "حذف"
            anchors.bottom: parent.bottom
            y:175
//            onClicked: {
//                manager.db_delete_Groups(input_name.text,labaly.text)
//                input_dbbbb=manager.db_select_from_group()
//                number_of_grops=input_dbbbb.length
//                input_name.text=''
//                labaly.text=''
//                input_radif.text='0'
//            }
        }

        Image{
            id:imagekk
            source: labaly.text
            width: 100
            height: 100
            anchors.centerIn: parent

        }

//        Label
//        {
//            id:lbl_radif
//            text: "ردیف:"
//            anchors.right:    parent.right
//            anchors.top: imagek.bottom
//        }
//        Rectangle
//        {
//            width: 200
//            height: 20
//            //            color: "yellow"
//            border.width: 1
//            border.color: "black"
//            anchors.right: lbl_radif.left
//            anchors.top: imagek.bottom

//            TextInput
//            {
//                id:input_radif
//                anchors.fill:    parent
//            }
//        }
    }



    Component.onCompleted:
    {


        input_dbbbb=manager.db_select_from_group()

        number_of_grops=input_dbbbb.length

        //        console.log(input_dbbbb)
        //        console.log(number_of_grops)

    }
}




