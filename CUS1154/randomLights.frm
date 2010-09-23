VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2265
   ClientLeft      =   2850
   ClientTop       =   1830
   ClientWidth     =   4485
   LinkTopic       =   "Form1"
   ScaleHeight     =   2265
   ScaleWidth      =   4485
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   360
      Top             =   960
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1560
      TabIndex        =   0
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   1215
      Index           =   2
      Left            =   1560
      Picture         =   "randomLights.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   1215
      Index           =   1
      Left            =   1560
      Picture         =   "randomLights.frx":0442
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   1215
      Index           =   0
      Left            =   1560
      Picture         =   "randomLights.frx":0884
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'Image1(0).Visible = False
'Image1(1).Visible = False
'Image1(2).Visible = False

Randomize
i = Int(3 * Rnd)
Image1(i).Visible = True

If i = 0 Then
Image1(1).Visible = False
Image1(2).Visible = False
ElseIf i = 1 Then
Image1(0).Visible = False
Image1(2).Visible = False
ElseIf i = 2 Then
Image1(0).Visible = False
Image1(1).Visible = False
End If
End Sub

Private Sub Timer1_Timer()
'Image1(0).Visible = False
'Image1(1).Visible = False
'Image1(2).Visible = False

Randomize
i = Int(3 * Rnd)
Image1(i).Visible = True

If i = 0 Then
Image1(1).Visible = False
Image1(2).Visible = False
ElseIf i = 1 Then
Image1(0).Visible = False
Image1(2).Visible = False
ElseIf i = 2 Then
Image1(0).Visible = False
Image1(1).Visible = False
End If

End Sub
