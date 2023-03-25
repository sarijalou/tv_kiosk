import sql_cmd
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

    @Slot(str)
    def dbbbb(self,num):
        print("clicked "+num)

    @Slot(str)
    def dbbbd(self,num):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        sql_cmd.insert_customer(conn,int(num))
        conn.close()
        
    @Slot(str,str,str)
    def db_insert_to_group(self,name,img,radif):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        print(radif,int(radif))
        sql_cmd.insert_group(conn,name,img,int(radif))
        conn.close()
        
    # SELECT Group_id, Group_name, Group_image, Group_row FROM Groups_tbl;
    @Slot(result=list)
    def db_select_from_group(self):
        
        database = r"my.db3"
        conn = sql_cmd.create_connection(database)
        ressult=sql_cmd.select_group(conn)
        conn.close()
        return ressult
        
        

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
