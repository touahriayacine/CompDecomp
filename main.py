from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication
import sys
import main_widget_ui as ui
import chose , results

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
            self.ui.comp.clicked.connect(self.compression)
            self.ui.decomp.clicked.connect(self.decompression)
            self.close()
            self.window.show()

    def compression(self):
        print(f"compression: {self.path}")
        file_input, file_output , title = self.open_window()
        title.setText("Compression")
        self.read_file(self.path , file_input)
    
    def decompression(self):
        print(f"decompression: {self.path}")
        file_input,file_output , title= self.open_window()
        title.setText("Decompression")
        self.read_file(self.path , file_input)

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