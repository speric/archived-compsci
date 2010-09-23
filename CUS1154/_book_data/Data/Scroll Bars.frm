VERSION 5.00
Begin VB.Form frmScrollBars 
   Caption         =   "Scroll Bar Controls"
   ClientHeight    =   3915
   ClientLeft      =   1650
   ClientTop       =   1545
   ClientWidth     =   6630
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   6630
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   3480
      Width           =   6015
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   3855
      Left            =   6120
      TabIndex        =   0
      Top             =   0
      Width           =   375
   End
   Begin VB.Shape shpCircle 
      FillColor       =   &H00C00000&
      FillStyle       =   6  'Cross
      Height          =   1455
      Left            =   120
      Shape           =   3  'Circle
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "frmScrollBars"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
