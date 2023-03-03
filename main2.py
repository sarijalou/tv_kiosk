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