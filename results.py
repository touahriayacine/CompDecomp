from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_resultsWin(object):
    def setupUi(self, resultsWin):
        resultsWin.setObjectName("resultsWin")
        resultsWin.resize(800, 600)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(resultsWin.sizePolicy().hasHeightForWidth())
        resultsWin.setSizePolicy(sizePolicy)
        resultsWin.setMinimumSize(QtCore.QSize(800, 600))
        resultsWin.setMaximumSize(QtCore.QSize(800, 600))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(246, 245, 244))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Window, brush)
        resultsWin.setPalette(palette)
        self.centralwidget = QtWidgets.QWidget(resultsWin)
        self.centralwidget.setObjectName("centralwidget")
        self.title = QtWidgets.QLabel(self.centralwidget)
        self.title.setGeometry(QtCore.QRect(0, 10, 791, 61))
        font = QtGui.QFont()
        font.setFamily("Poppins SemiBold")
        font.setPointSize(17)
        self.title.setFont(font)
        self.title.setScaledContents(True)
        self.title.setAlignment(QtCore.Qt.AlignCenter)
        self.title.setObjectName("title")
        self.frame = QtWidgets.QFrame(self.centralwidget)
        self.frame.setGeometry(QtCore.QRect(10, 80, 381, 511))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(200, 200, 200, 127))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Window, brush)
        self.frame.setPalette(palette)
        self.frame.setStyleSheet("#frame{\n"
"\n"
"background-color: rgba(200 , 200 , 200 , .5);\n"
"}")
        self.frame.setObjectName("frame")
        self.file_input = QtWidgets.QLabel(self.frame)
        self.file_input.setGeometry(QtCore.QRect(10, 10, 341, 491))
        self.file_input.setMinimumSize(QtCore.QSize(341, 491))
        self.file_input.setMaximumSize(QtCore.QSize(16777215, 491))
        font = QtGui.QFont()
        font.setFamily("Poppins")
        font.setPointSize(13)
        self.file_input.setFont(font)
        self.file_input.setText("")
        self.file_input.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignTop)
        self.file_input.setObjectName("file_input")
        self.frame_2 = QtWidgets.QFrame(self.centralwidget)
        self.frame_2.setGeometry(QtCore.QRect(410, 80, 381, 511))
        self.frame_2.setStyleSheet("#frame_2{\n"
"\n"
"background-color: rgba(200 , 200 , 200 , .5);\n"
"}")
        self.frame_2.setFrameShape(QtWidgets.QFrame.StyledPanel)
        self.frame_2.setFrameShadow(QtWidgets.QFrame.Raised)
        self.frame_2.setObjectName("frame_2")
        self.file_output = QtWidgets.QLabel(self.frame_2)
        self.file_output.setGeometry(QtCore.QRect(10, 10, 491, 491))
        self.file_output.setMinimumSize(QtCore.QSize(491, 0))
        self.file_output.setMaximumSize(QtCore.QSize(331, 491))
        font = QtGui.QFont()
        font.setFamily("Poppins")
        font.setPointSize(13)
        self.file_output.setFont(font)
        self.file_output.setText("")
        self.file_output.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignTop)
        self.file_output.setObjectName("file_output")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(-4, -4, 811, 611))
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap("assets/b2.jpg"))
        self.label.setObjectName("label")
        self.label.raise_()
        self.title.raise_()
        self.frame.raise_()
        self.frame_2.raise_()
        resultsWin.setCentralWidget(self.centralwidget)

        self.retranslateUi(resultsWin)
        QtCore.QMetaObject.connectSlotsByName(resultsWin)

    def retranslateUi(self, resultsWin):
        _translate = QtCore.QCoreApplication.translate
        resultsWin.setWindowTitle(_translate("resultsWin", "MainWindow"))
        self.title.setText(_translate("resultsWin", "Run Length Encoding"))
