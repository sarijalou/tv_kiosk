import sql_cmd
import copy_png
import time

import sys

from PySide6.QtCore import   QObject,Slot
from PySide6.QtGui import QGuiApplication 
from PySide6.QtQml import QQmlApplicationEngine


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ata
class Manager(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)
         
    @Slot(str,str)
    def foo(self,inpaaat,kk):
        print("clicked "+inpaaat+kk)
        
        
    @Slot(result=str)
    def rett(self):
        return "kkkk"
    
    @Slot(str,result=str)
    def copy_from_qml_png(self,input_dialog):
        ress=copy_png.copy_file_png(input_dialog)
        
        return ress
    
    

    @Slot(str)
    def dbbbb(self,num):
        print("clicked "+num)

    @Slot(str,str)
    def dbbbd(self,num,name):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        print(int(num),name)
        sql_cmd.insert_customer(conn,int(num),name)
        conn.close()
        
    @Slot(str,str,str)
    def db_insert_to_group(self,name,img,radif):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        
        sql_cmd.insert_group(conn,name,img,int(radif))
        conn.close()
    @Slot(str,str,int,str,str,str,str,int,str,int)
    def db_insert_to_order(self,mobile,qty,time,location,employer_id,Product_name,price,succes,Group_name,shomareh):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        
        sql_cmd.insert_order(conn,mobile,qty,time,location,employer_id,Product_name,price,succes,Group_name,shomareh)
        conn.close()
    
    
    @Slot(str,str,str,str,str)
    def db_insert_to_product(self,name,img,pricee,group_id,Available):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        
        sql_cmd.insert_product(conn,name,img,float(pricee),int(group_id),int(Available))
        conn.close()
    
    
    @Slot(str,str)    
    def db_delete_Groups(self,name,img):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        sql_cmd.delete_Groups(conn,name,img)
        conn.close()

    @Slot(str,str,str)    
    def db_delete_product(self,name,img,price):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        sql_cmd.delete_product(conn,name,img,price)
        print("hii")
        conn.close()


        
        
    @Slot(result=list)
    def db_select_from_group(self):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        ressult=sql_cmd.select_group(conn)
        conn.close()
        return ressult
    
    
    @Slot(str,result=list)
    def  db_select_product(self,group_name):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        ressult=sql_cmd.select_product(conn,group_name)
        conn.close()
        return ressult   
    @Slot(str,result=int)
    def db_select_group_id(self,group_name):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        ressult=sql_cmd.select_group_id(conn,group_name)
        conn.close()
        return ressult      
    @Slot(result=int)
    def  db_take_time(self):
        result=int(time.time())
        print(result)
        return result  
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++sa


def main():
    app = QGuiApplication(sys.argv)

    manager = Manager()



    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("manager", manager)


    engine.load("App.qml")
    sys.exit(app.exec())


if __name__ == "__main__":
    main()
