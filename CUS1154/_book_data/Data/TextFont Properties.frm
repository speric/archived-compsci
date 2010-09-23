VERSION 5.00
Begin VB.Form frmFontAlign 
   Caption         =   "Font and Alignment Properties"
   ClientHeight    =   3915
   ClientLeft      =   1650
   ClientTop       =   1545
   ClientWidth     =   6630
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   6630
   Begin VB.CheckBox Check3 
      Caption         =   "Check3"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   495
      Left            =   1200
      TabIndex        =   6
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CheckBox chkBold 
      Caption         =   "Bold"
      Height          =   495
      Left            =   1200
      TabIndex        =   5
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Frame fraAlign 
      Caption         =   "Alignment"
      Height          =   1815
      Left            =   3960
      TabIndex        =   1
      Top             =   1680
      Width           =   1695
      Begin VB.OptionButton Option6 
         Caption         =   "Option6"
         Height          =   375
         Left            =   360
         TabIndex        =   4
         Top             =   1320
         Width           =   855
      End
      Begin VB.OptionButton Option5 
         Caption         =   "Option5"
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   840
         Width           =   855
      End
      Begin VB.OptionButton optLeft 
         Caption         =   "Left Align"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame fraFont 
      Caption         =   "Font"
      Height          =   1815
      Left            =   960
      TabIndex        =   0
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label lblFontAlign 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Font and Alignment Properties"
      Height          =   435
      Left            =   1560
      TabIndex        =   8
      Top             =   600
      Width           =   3675
   End
End
Attribute VB_Name = "frmFontAlign"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkBold_Click()
    lblFontAlign.FontBold = chkBold.Value
End Sub

Private Sub optLeft_Click()
    lblFontAlign.Alignment = 0
End Sub

