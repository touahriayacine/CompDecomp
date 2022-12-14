from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_choseOperation(object):
    def setupUi(self, choseOperation):
        choseOperation.setObjectName("choseOperation")
        choseOperation.resize(652, 493)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(choseOperation.sizePolicy().hasHeightForWidth())
        choseOperation.setSizePolicy(sizePolicy)
        self.centralwidget = QtWidgets.QWidget(choseOperation)
        self.centralwidget.setObjectName("centralwidget")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(0, 0, 641, 491))
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap("./assets/b2.jpg"))
        self.label.setScaledContents(True)
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(0, 20, 651, 61))
        font = QtGui.QFont()
        font.setFamily("Poppins SemiBold")
        font.setPointSize(17)
        self.label_2.setFont(font)
        self.label_2.setScaledContents(True)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.comp = QtWidgets.QPushButton(self.centralwidget)
        self.comp.setGeometry(QtCore.QRect(190, 313, 260, 61))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(190, 190, 190))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.ButtonText, brush)
        self.comp.setPalette(palette)
        font = QtGui.QFont()
        font.setFamily("Poppins SemiBold")
        font.setPointSize(13)
        self.comp.setFont(font)
        self.comp.setObjectName("comp")
        self.decomp = QtWidgets.QPushButton(self.centralwidget)
        self.decomp.setGeometry(QtCore.QRect(190, 393, 261, 61))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(190, 190, 190))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.ButtonText, brush)
        self.decomp.setPalette(palette)
        font = QtGui.QFont()
        font.setFamily("Poppins SemiBold")
        font.setPointSize(13)
        self.decomp.setFont(font)
        self.decomp.setObjectName("decomp")
        choseOperation.setCentralWidget(self.centralwidget)

        self.retranslateUi(choseOperation)
        QtCore.QMetaObject.connectSlotsByName(choseOperation)

    def retranslateUi(self, choseOperation):
        _translate = QtCore.QCoreApplication.translate
        choseOperation.setWindowTitle(_translate("choseOperation", "MainWindow"))
        self.label_2.setText(_translate("choseOperation", "Run Length Encoding"))
        self.comp.setText(_translate("choseOperation", "compression"))
        self.decomp.setText(_translate("choseOperation", "decompression"))
