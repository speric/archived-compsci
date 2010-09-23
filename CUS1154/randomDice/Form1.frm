VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Ranom Dice Program"
   ClientHeight    =   5610
   ClientLeft      =   1650
   ClientTop       =   1545
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   5610
   ScaleWidth      =   4560
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1440
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1800
      TabIndex        =   2
      Top             =   2040
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GO!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   1
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   250
      Left            =   600
      Top             =   840
   End
   Begin VB.Timer diceTimer 
      Left            =   120
      Top             =   840
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "The Dice Randomizer"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   2010
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   5
      Left            =   1560
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   4
      Left            =   1560
      Picture         =   "Form1.frx":084B
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   3
      Left            =   1560
      Picture         =   "Form1.frx":1083
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   2
      Left            =   1560
      Picture         =   "Form1.frx":18B1
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   1
      Left            =   1560
      Picture         =   "Form1.frx":20C7
      Stretch         =   -1  'True
      Top             =   840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   975
      Index           =   0
      Left            =   1560
      Picture         =   "Form1.frx":28CD
      Stretch         =   -1  'True
      Top             =   840
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
diceTimer.Interval = 500
Dim x As Integer
x = 7
For j = -2 To 11 Step 3
x = x + j
Next j
Text1 = x

End Sub

Private Sub Command2_Click()
Randomize
x = Int((6 * Rnd) + 9)
Text2 = x
End Sub

Private Sub diceTimer_Timer()
Randomize
i = Int(Rnd * 6)
Image1(i).Visible = True

For j = 0 To 5
If j <> i Then Image1(j).Visible = False
Next j

End Sub

Private Sub Timer1_Timer()
Label1.Visible = Not Label1.Visible
End Sub
