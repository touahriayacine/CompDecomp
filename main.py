from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication
import sys
import main_widget_ui as ui
import chose , results
import os

class MyApp(QtWidgets.QMainWindow, ui.Ui_MainWindow):
    def __init__(self, parent=None):
        super(MyApp, self).__init__(parent)
        self.setupUi(self)
        self.selectFile.clicked.connect(self.getfilepath)

    def getfilepath(self):
        file_name = QtWidgets.QFileDialog.getOpenFileName(self, "selectionner un fichier" , "" , "fichier text (*.txt)")
        if file_name:
            self.path = file_name[0]
            self.window = QtWidgets.QMainWindow()
            self.ui = chose.Ui_choseOperation()
            self.ui.setupUi(self.window)
            self.ui.comp.clicked.connect(lambda: self.do_operation("Compression" , "comp_prog" , "cmp"))
            self.ui.decomp.clicked.connect(lambda: self.do_operation("Decompression" , "decomp_prog" , "dcmp"))
            self.close()
            self.window.show()

    def do_operation(self , t , prog_name , extension):
        file_input, file_output , title = self.open_window()
        title.setText(t)
        self.read_file(self.path , file_input)
        tmp = self.path.split("/")
        path = "/".join(tmp[:-1])
        name= tmp[-1]
        new_name = name.split(".")[0] + f"_{extension}.txt"
        os.system(f"./{prog_name} {self.path}")
        os.system(f"mv prog_cmp.txt {path}/{new_name}")
        self.read_file(f"{path}/{new_name}" , file_output)

    def open_window(self):
        self.window = QtWidgets.QMainWindow()
        self.interface = results.Ui_resultsWin()
        self.interface.setupUi(self.window)
        self.close()
        self.window.show()
        return self.interface.file_input , self.interface.file_output , self.interface.title

    def read_file(self , path, label):
        with open(path , "r") as f:
            content = f.read()
            label.setText(content)
            

def main():
    app = QApplication(sys.argv)
    form = MyApp()
    form.show()
    app.exec_()

if __name__ == '__main__':
    main()