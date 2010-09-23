VERSION 5.00
Begin VB.Form frmShapeProperties 
   Caption         =   "Shape Properties"
   ClientHeight    =   3990
   ClientLeft      =   1650
   ClientTop       =   1545
   ClientWidth     =   6555
   LinkTopic       =   "Form1"
   ScaleHeight     =   3990
   ScaleWidth      =   6555
   Begin VB.Frame fraType 
      Caption         =   "Shape"
      Height          =   1935
      Left            =   600
      TabIndex        =   0
      Top             =   1680
      Width           =   1575
      Begin VB.OptionButton optOval 
         Caption         =   "Oval"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   1440
         Width           =   1215
      End
      Begin VB.OptionButton optCircle 
         Caption         =   "Circle"
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton optRectangle 
         Caption         =   "Rectangle"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Shape shpChange 
      Height          =   1095
      Left            =   1920
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "frmShapeProperties"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub optCircle_Click()
    shpChange.Shape = 3
End Sub
Private Sub optOval_Click()
    shpChange.Shape = 2
End Sub
Private Sub optRectangle_Click()
    shpChange.Shape = 0
End Sub
