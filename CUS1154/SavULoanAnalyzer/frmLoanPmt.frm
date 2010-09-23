VERSION 5.00
Begin VB.Form frmLoanPmt 
   BackColor       =   &H80000009&
   Caption         =   "SavU Loan Analyzer"
   ClientHeight    =   4860
   ClientLeft      =   6150
   ClientTop       =   2610
   ClientWidth     =   4725
   Icon            =   "frmLoanPmt.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4860
   ScaleWidth      =   4725
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
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
      Left            =   2880
      TabIndex        =   14
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
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
      Left            =   2880
      TabIndex        =   13
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdCalculate 
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
      Left            =   2880
      TabIndex        =   12
      Top             =   2520
      Width           =   1215
   End
   Begin VB.HScrollBar hsbYears 
      Height          =   255
      LargeChange     =   5
      Left            =   240
      Max             =   30
      Min             =   1
      TabIndex        =   11
      Top             =   3120
      Value           =   1
      Width           =   1815
   End
   Begin VB.HScrollBar hsbRate 
      Height          =   255
      LargeChange     =   10
      Left            =   240
      Max             =   1500
      Min             =   1
      TabIndex        =   10
      Top             =   1920
      Value           =   1
      Width           =   1815
   End
   Begin VB.TextBox txtAmount 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label lblSumPmnts 
      BackColor       =   &H80000009&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2640
      TabIndex        =   8
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label lblPayment 
      BackColor       =   &H80000009&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2640
      TabIndex        =   7
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   "Sum Of Payments"
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
      Left            =   2640
      TabIndex        =   6
      Top             =   1320
      Width           =   1500
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   "Monthly Payment"
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
      Left            =   2640
      TabIndex        =   5
      Top             =   480
      Width           =   1500
   End
   Begin VB.Label lblYears 
      AutoSize        =   -1  'True
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
      Height          =   195
      Left            =   1920
      TabIndex        =   4
      Top             =   2880
      Width           =   105
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   "YEARS"
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
      Left            =   240
      TabIndex        =   3
      Top             =   2880
      Width           =   540
   End
   Begin VB.Label lblRate 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   ".01"
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
      Left            =   1800
      TabIndex        =   2
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   "APR"
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
      Left            =   240
      TabIndex        =   1
      Top             =   1680
      Width           =   345
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H80000009&
      Caption         =   "Loan Amout"
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
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1020
   End
   Begin VB.Shape Shape3 
      Height          =   2415
      Left            =   2520
      Top             =   2280
      Width           =   2055
   End
   Begin VB.Shape Shape2 
      Height          =   1815
      Left            =   2520
      Top             =   240
      Width           =   2055
   End
   Begin VB.Shape Shape1 
      Height          =   4455
      Left            =   120
      Top             =   240
      Width           =   2055
   End
End
Attribute VB_Name = "frmLoanPmt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAbout_Click()
frmLoanAbt.Show 1
End Sub

Private Sub cmdCalculate_Click()
If IsNumeric(txtAmount.Text) = False Then
    MsgBox "Please Enter Loan Amount In Numbers Only", 48, "SavU Loan Analyzer"
    txtAmount.Text = ""
    txtAmount.SetFocus
Else
    monthlypmt = Pmt(0.0001 * hsbRate.Value / 12, hsbYears.Value * 12, -1 * txtAmount.Text, 0, 1)
    lblPayment = Format$(monthlypmt, "currency")
    lblSumPmnts = Format$(monthlypmt * hsbYears.Value * 12, "currency")
End If
End Sub

Private Sub cmdClear_Click()
txtAmount.Text = ""
hsbYears.Value = 1
hsbRate.Value = 1
lblPayment = ""
lblSumPmnts = ""
txtAmount.SetFocus
End Sub

Private Sub hsbRate_Change()
'updates lblRate when scroll bar changes
lblRate = hsbRate.Value * 0.01
End Sub

Private Sub hsbRate_Scroll()
'updates lblRate when scroll bar changes
lblRate = hsbRate.Value * 0.01
End Sub

Private Sub hsbYears_Change()
'updates lblYears when scroll bar changes
lblYears = hsbYears.Value
End Sub

Private Sub hsbYears_Scroll()
'updates lblYears when scroll bar changes
lblYears = hsbYears.Value
End Sub
