VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Randomize"
   ClientHeight    =   4485
   ClientLeft      =   3255
   ClientTop       =   2460
   ClientWidth     =   4335
   LinkTopic       =   "Form1"
   ScaleHeight     =   4485
   ScaleWidth      =   4335
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   120
      Top             =   720
   End
   Begin VB.Line Line1 
      X1              =   960
      X2              =   960
      Y1              =   720
      Y2              =   3240
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   960
      Top             =   2880
      Width           =   2295
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   960
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   960
      Top             =   1440
      Width           =   2295
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   960
      Top             =   720
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Picture1_Click()

End Sub

Private Sub Timer1_Timer()
Randomize
Shape1.Width = 3000 * Rnd
Shape2.Width = 3000 * Rnd
Shape3.Width = 3000 * Rnd
Shape4.Width = 3000 * Rnd
End Sub
