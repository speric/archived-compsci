VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmTheater 
   BackColor       =   &H80000009&
   Caption         =   "Theater Box Office"
   ClientHeight    =   5700
   ClientLeft      =   4035
   ClientTop       =   2025
   ClientWidth     =   4965
   LinkTopic       =   "Form1"
   ScaleHeight     =   5700
   ScaleWidth      =   4965
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4320
      Top             =   5160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtRecord 
      Height          =   1215
      Left            =   480
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   13
      Top             =   4320
      Width           =   3855
   End
   Begin VB.CommandButton cmdEnter 
      Caption         =   "Enter"
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
      Left            =   2640
      TabIndex        =   11
      Top             =   3360
      Width           =   1215
   End
   Begin VB.OptionButton optFive 
      BackColor       =   &H80000009&
      Caption         =   "5"
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
      Left            =   3240
      TabIndex        =   10
      Top             =   2160
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.OptionButton optFour 
      BackColor       =   &H80000009&
      Caption         =   "4"
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
      Left            =   2640
      TabIndex        =   9
      Top             =   2160
      Width           =   375
   End
   Begin VB.OptionButton optThree 
      BackColor       =   &H80000009&
      Caption         =   "3"
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
      Left            =   2040
      TabIndex        =   8
      Top             =   2160
      Width           =   375
   End
   Begin VB.OptionButton optTwo 
      BackColor       =   &H80000009&
      Caption         =   "2"
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
      Left            =   1440
      TabIndex        =   7
      Top             =   2160
      Width           =   375
   End
   Begin VB.OptionButton optOne 
      BackColor       =   &H80000009&
      Caption         =   "1"
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
      Left            =   840
      TabIndex        =   6
      Top             =   2160
      Width           =   375
   End
   Begin VB.Frame fraNumTickets 
      BackColor       =   &H80000009&
      Caption         =   "# Of Tickets"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   480
      TabIndex        =   5
      Top             =   1920
      Width           =   2775
   End
   Begin VB.CheckBox chkMatinee 
      BackColor       =   &H80000009&
      Caption         =   "Matinee Discount"
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
      Left            =   1320
      TabIndex        =   4
      Top             =   1200
      Width           =   1815
   End
   Begin VB.ComboBox cboShow 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      ItemData        =   "frmTheater.frx":0000
      Left            =   480
      List            =   "frmTheater.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   480
      Width           =   3375
   End
   Begin VB.Label lblAmtDue 
      BackColor       =   &H80000009&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   12
      Top             =   3360
      Width           =   1455
   End
   Begin VB.Shape shpMatinee 
      Height          =   735
      Left            =   480
      Top             =   960
      Width           =   3495
   End
   Begin VB.Label lblRecord 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Transaction Record"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   480
      TabIndex        =   2
      Top             =   4080
      Width           =   1650
   End
   Begin VB.Label lblDue 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Amount Due"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   480
      TabIndex        =   1
      Top             =   3120
      Width           =   1050
   End
   Begin VB.Label lblShowSelection 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Show Selection"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   1275
   End
End
Attribute VB_Name = "frmTheater"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim num As Integer

Private Sub cmdEnter_Click()
txtRecord.Text = num & " - " & cboShow.Text & " (" & lblAmtDue.Caption & ")" & vbNewLine & txtRecord.Text
cboShow.ListIndex = -1
chkMatinee.Value = 0
optFive.Value = True
lblAmtDue.Caption = ""

End Sub


Private Sub Form_DblClick()
CommonDialog1.ShowColor
frmTheater.BackColor = CommonDialog1.Color
cboShow.BackColor = CommonDialog1.Color
chkMatinee.BackColor = CommonDialog1.Color
fraNumTicket = CommonDialog1.Color
optOne.BackColor = CommonDialog1.Color
optTwo.BackColor = CommonDialog1.Color
optThree.BackColor = CommonDialog1.Color
optFour.BackColor = CommonDialog1.Color
lblAmtDue.BackColor = CommonDialog1.Color
txtRecord.BackColor = CommonDialog1.Color

End Sub

Private Sub optFour_Click()
num = 4
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")

End Sub

Private Sub optOne_Click()
num = 1
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")

End Sub

Private Sub optThree_Click()
num = 3
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")

End Sub

Private Sub optTwo_Click()
num = 2
If chkMatinee.Value = 1 Then price = 3.5 Else price = 5
lblAmtDue.Caption = Format$(num * price, "currency")

End Sub
