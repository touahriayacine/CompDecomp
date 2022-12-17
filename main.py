from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication
import sys
import main_widget_ui as ui
import chose
import results
import os


class MyApp(QtWidgets.QMainWindow, ui.Ui_MainWindow):
    def __init__(self, parent=None):
        super(MyApp, self).__init__(parent)
        self.setupUi(self)
        self.selectFile.clicked.connect(self.getfilepath)
        self.cwd = os.getcwd()

    def getfilepath(self):
        file_name = QtWidgets.QFileDialog.getOpenFileName(
            self, "selectionner un fichier", "", "fichier text (*.txt)")
        if file_name:
            self.path = file_name[0]
            self.window = QtWidgets.QMainWindow()
            self.ui = chose.Ui_choseOperation()
            self.ui.setupUi(self.window)
            self.ui.comp.clicked.connect(lambda: self.do_operation(
                "Compression", f"{self.cwd}\comp_prog.exe", "cmp", "prog_cmp.txt"))
            self.ui.decomp.clicked.connect(lambda: self.do_operation(
                "Decompression", f"{self.cwd}\decomp_prog.exe", "dcmp", "prog_dcmp.txt"))
            self.close()
            self.window.show()

    def do_operation(self, t, prog_name, extension, file_name):
        path_cmp = f"{self.cwd}\comp_prog.exe"
        path_decmp = f"{self.cwd}\decomp_prog.exe"
        if not os.path.exists(path_cmp) or not os.path.exists(path_decmp):
            os.system(
                f"{self.cwd}\lex_program\winflex\winflex.exe {self.cwd}\lex_program\compression.l")
            os.system(
                f"gcc {self.cwd}\lex.yy.c -o {self.cwd}\comp_prog")
            os.system(
                f"{self.cwd}\lex_program\winflex\winflex.exe {self.cwd}\lex_program\decompression.l")
            os.system(
                f"gcc {self.cwd}\lex.yy.c -o {self.cwd}\decomp_prog")
        file_input, file_output, title = self.open_window()
        title.setText(t)
        self.read_file(self.path, file_input)
        tmp = self.path.split("/")
        path = "/".join(tmp[:-1])
        name = tmp[-1]
        new_name = name.split(".")[0] + f"_{extension}.txt"
        os.system(f"{prog_name} {self.path}")
        os.system(f"move {file_name} {path}\{new_name}")
        self.read_file(f"{path}/{new_name}", file_output)

    def open_window(self):
        self.window = QtWidgets.QMainWindow()
        self.interface = results.Ui_resultsWin()
        self.interface.setupUi(self.window)
        self.close()
        self.window.show()
        return self.interface.file_input, self.interface.file_output, self.interface.title

    def read_file(self, path, label):
        with open(path, "r") as f:
            content = f.read()
            label.setText(content)


def main():
    app = QApplication(sys.argv)
    form = MyApp()
    form.show()
    app.exec_()


if __name__ == '__main__':
    main()
