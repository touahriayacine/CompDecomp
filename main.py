from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication
import sys
import main_widget_ui as ui

class MyApp(QtWidgets.QMainWindow, ui.Ui_MainWindow):
    def __init__(self, parent=None):
        super(MyApp, self).__init__(parent)
        self.setupUi(self)

def main():
    app = QApplication(sys.argv)
    form = MyApp()
    form.show()
    app.exec_()

if __name__ == '__main__':
    main()