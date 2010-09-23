VERSION 5.00
Begin VB.Form frmMathTutor 
   Caption         =   "Math Tutor"
   ClientHeight    =   3915
   ClientLeft      =   1650
   ClientTop       =   1545
   ClientWidth     =   6630
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   6630
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      Height          =   375
      Left            =   2640
      TabIndex        =   6
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CheckBox chkDivide 
      Caption         =   "Divide"
      Height          =   375
      Left            =   5160
      TabIndex        =   5
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkMultiply 
      Caption         =   "Multiply"
      Height          =   375
      Left            =   3480
      TabIndex        =   4
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkSubtract 
      Caption         =   "Subtract"
      Height          =   375
      Left            =   1920
      TabIndex        =   3
      Top             =   2520
      Width           =   975
   End
   Begin VB.CheckBox chkAdd 
      Caption         =   "Add"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtNumber2 
      Height          =   615
      Left            =   3960
      TabIndex        =   1
      Top             =   240
      Width           =   1935
   End
   Begin VB.TextBox txtNumber1 
      Height          =   615
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label lblDivision 
      Caption         =   "Division"
      Height          =   495
      Left            =   5160
      TabIndex        =   10
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblMultiplication 
      Caption         =   "Multiplication"
      Height          =   495
      Left            =   3480
      TabIndex        =   9
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblSubtraction 
      Caption         =   "Subtraction"
      Height          =   495
      Left            =   1920
      TabIndex        =   8
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label lblAddition 
      Caption         =   "Addition"
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   1560
      Width           =   1215
   End
End
Attribute VB_Name = "frmMathTutor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub chkAdd_Click()

End Sub

Private Sub chkDivide_Click()

End Sub

Private Sub cmdCalculate_Click()
    
End Sub

Private Sub Form_Load()

End Sub

Private Sub lblAddition_Click()

End Sub

Private Sub txtNumber1_Change()

End Sub
