VERSION 5.00
Begin VB.Form SLSCOMSN 
   BackColor       =   &H80000005&
   Caption         =   "Calculating Sales Commission"
   ClientHeight    =   2295
   ClientLeft      =   2970
   ClientTop       =   2775
   ClientWidth     =   5250
   LinkTopic       =   "Form1"
   ScaleHeight     =   2295
   ScaleWidth      =   5250
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   4
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   1080
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1560
      TabIndex        =   2
      Top             =   480
      Width           =   2655
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000E&
      Caption         =   "Commission:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000014&
      Caption         =   "Sales:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   0
      Top             =   480
      Width           =   495
   End
End
Attribute VB_Name = "SLSCOMSN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
' display commission amt as value of user input * rate
Text2.Text = Val(Text1.Text) * 0.15 'val() converts string to numeber
Text1.SetFocus
End Sub
