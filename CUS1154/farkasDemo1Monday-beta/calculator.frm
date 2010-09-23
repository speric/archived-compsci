VERSION 5.00
Begin VB.Form frmVBCalc 
   BackColor       =   &H80000013&
   Caption         =   "VBCalc v 2.0"
   ClientHeight    =   3855
   ClientLeft      =   4560
   ClientTop       =   3735
   ClientWidth     =   5385
   FillColor       =   &H00FFFFFF&
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "calculator.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   3855
   ScaleWidth      =   5385
   Begin VB.TextBox txtAnswer 
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "0.0000"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   480
      Width           =   3495
   End
   Begin VB.CommandButton cmdClearMem 
      Caption         =   "Clear Mem"
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
      Left            =   2160
      TabIndex        =   40
      Top             =   840
      Width           =   1095
   End
   Begin VB.TextBox txtMem4 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   39
      Top             =   2280
      Width           =   1095
   End
   Begin VB.TextBox txtMem3 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   1800
      Width           =   1095
   End
   Begin VB.TextBox txtMem2 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   1320
      Width           =   1095
   End
   Begin VB.TextBox txtMem1 
      BackColor       =   &H80000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   36
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton cmdExponent 
      BackColor       =   &H00C0C0C0&
      Caption         =   "y^x"
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
      Left            =   4560
      TabIndex        =   31
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdMemRecall 
      Caption         =   "??"
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
      TabIndex        =   30
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdToMem 
      Caption         =   "M+"
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
      TabIndex        =   29
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdToTan 
      Caption         =   "tan"
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
      TabIndex        =   28
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdToCos 
      Caption         =   "cos"
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
      TabIndex        =   27
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdToSin 
      Caption         =   "sin"
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
      TabIndex        =   26
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdSqrt 
      BackColor       =   &H00C0C0C0&
      Caption         =   "sqrt"
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
      Left            =   4560
      TabIndex        =   24
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdPercent 
      Caption         =   "%"
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
      Left            =   4560
      TabIndex        =   23
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdFraction 
      Caption         =   "1/X"
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
      Left            =   4560
      TabIndex        =   22
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdEquals 
      Caption         =   "="
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
      Left            =   4560
      TabIndex        =   18
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdDivide 
      Caption         =   "/"
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
      Left            =   3960
      TabIndex        =   17
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdMultiply 
      Caption         =   "*"
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
      Left            =   3960
      TabIndex        =   16
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdSubtract 
      Caption         =   "-"
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
      Left            =   3960
      TabIndex        =   14
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdAdd 
      BackColor       =   &H00C0C0C0&
      Caption         =   "+"
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
      Left            =   3960
      TabIndex        =   13
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdNumSix 
      Caption         =   "6"
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
      Left            =   3360
      TabIndex        =   12
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
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
      Left            =   3360
      TabIndex        =   11
      Top             =   840
      Width           =   1095
   End
   Begin VB.TextBox txtNumberView 
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "0.0000"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "0"
      Top             =   120
      Width           =   3495
   End
   Begin VB.CommandButton cmdDecimal 
      Caption         =   "."
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
      Left            =   3360
      TabIndex        =   10
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdPosNeg 
      Caption         =   "+/-"
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
      Left            =   2760
      TabIndex        =   9
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdNumZero 
      Caption         =   "0"
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
      Left            =   2160
      TabIndex        =   8
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdNumThree 
      Caption         =   "3"
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
      Left            =   3360
      TabIndex        =   7
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdNumTwo 
      Caption         =   "2"
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
      Left            =   2760
      TabIndex        =   6
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdNumOne 
      Caption         =   "1"
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
      Left            =   2160
      TabIndex        =   5
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdNumFive 
      Caption         =   "5"
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
      Left            =   2760
      TabIndex        =   4
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdNumFour 
      Caption         =   "4"
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
      Left            =   2160
      TabIndex        =   3
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdNumNine 
      Caption         =   "9"
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
      Left            =   3360
      TabIndex        =   2
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdNumEight 
      Caption         =   "8"
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
      Left            =   2760
      TabIndex        =   1
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdNumSeven 
      Caption         =   "7"
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
      Left            =   2160
      TabIndex        =   15
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "EQU."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   1200
      TabIndex        =   43
      Top             =   240
      Width           =   360
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ANS."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   1200
      TabIndex        =   42
      Top             =   600
      Width           =   345
   End
   Begin VB.Label lblMem4 
      AutoSize        =   -1  'True
      Caption         =   "M4"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   120
      TabIndex        =   35
      Top             =   2400
      Width           =   195
   End
   Begin VB.Label lblMem3 
      AutoSize        =   -1  'True
      Caption         =   "M3"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   120
      TabIndex        =   34
      Top             =   1920
      Width           =   195
   End
   Begin VB.Label lblMem2 
      AutoSize        =   -1  'True
      Caption         =   "M2"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   120
      TabIndex        =   33
      Top             =   1440
      Width           =   195
   End
   Begin VB.Label lblMem1 
      AutoSize        =   -1  'True
      Caption         =   "M1"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   120
      TabIndex        =   32
      Top             =   960
      Width           =   195
   End
   Begin VB.Label lblAnswer 
      Height          =   135
      Left            =   5160
      TabIndex        =   25
      Top             =   2400
      Width           =   135
   End
   Begin VB.Label lblOperation 
      Height          =   135
      Left            =   5160
      TabIndex        =   21
      Top             =   1320
      Width           =   135
   End
   Begin VB.Label lblSecondNumber 
      Height          =   135
      Left            =   5160
      TabIndex        =   20
      Top             =   1920
      Width           =   135
   End
   Begin VB.Label lblFirstNumber 
      Height          =   135
      Left            =   5160
      TabIndex        =   19
      Top             =   840
      Width           =   135
   End
   Begin VB.Menu mnuFile 
      Caption         =   "Program"
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
         Index           =   1
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
         Index           =   2
         Shortcut        =   ^A
      End
   End
End
Attribute VB_Name = "frmVBCalc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'VBCalc by Eric Farkas
'fall 2002
'version 2.0
Private Sub cmdAdd_Click()
'addition operation
setOperation ("add")
txtNumberView.SetFocus
End Sub

Private Sub cmdClear_Click()
'clears all fields and resets variables for next operation
txtNumberView.Text = ""
doOperation = False
nextNumber = False
isDecimal = False
isFraction = False
posNeg = False
lblOperation.Caption = ""
lblFirstNumber.Caption = ""
lblSecondNumber.Caption = ""
txtNumberView.SetFocus
End Sub

Private Sub cmdClearMem_Click()
If txtNumberView = "1" Then
    txtMem1 = ""
    txtNumberView = ""
ElseIf txtNumberView = "2" Then
    txtMem2 = ""
    txtNumberView = ""
ElseIf txtNumberView = "3" Then
    txtMem3 = ""
    txtNumberView = ""
ElseIf txtNumberView = "4" Then
    txtMem4 = ""
    txtNumberView = ""
Else: MsgBox "No such memory location", vbOKOnly, "No Location"
End If
End Sub

Private Sub cmdDecimal_Click()
'adds a decimal to the current number
If isDecimal = False Then 'run if the number isn't already a decimal
    isDecimal = True
    addToNumView (".") 'put the decimal into the textbox
ElseIf isDecimal = True Then 'if it is, ignore the event
Exit Sub
End If
txtNumberView.SetFocus
End Sub

Private Sub cmdDivide_Click()
'divide operation
setOperation ("div")
txtNumberView.SetFocus
End Sub

Private Sub cmdEquals_Click()
'performs operation on two numbers entered
'***********************
'finds the second number in the operation using string functions
Dim position As Integer
position = InStr(txtNumberView.Text, operator)
lblSecondNumber.Caption = Mid(txtNumberView.Text, position + 1)
'***********************

If lblOperation.Caption = "mul" Then 'multiplication
    finalValue = Val(lblFirstNumber) * Val(lblSecondNumber)
ElseIf lblOperation.Caption = "add" Then 'addition
    finalValue = Val(lblFirstNumber) + Val(lblSecondNumber)
ElseIf lblOperation.Caption = "sub" Then 'subtraction
    finalValue = Val(lblFirstNumber) - Val(lblSecondNumber)
ElseIf lblOperation.Caption = "div" Then 'division
    If Val(lblSecondNumber) = 0 Then
        MsgBox "Cannot divide by 0.", vbOKOnly, "Divide By Zero"
        txtNumberView.Text = ""
    ElseIf Val(lblSecondNumber) <> 0 Then
        finalValue = Val(lblFirstNumber) / Val(lblSecondNumber)
    End If
ElseIf lblOperation = "exp" Then 'exponents
    finalValue = Val(lblFirstNumber) ^ Val(lblSecondNumber)
ElseIf lblOperation = "sqr" Then 'square roots
    If Val(lblFirstNumber) < 0 Then
        MsgBox "Cannot take the root of a non-positive.", vbOKOnly, "Non-Positive"
        txtNumberView.Text = ""
    ElseIf Val(lblFirstNumber) > 0 Then
        finalValue = Sqr(Val(lblFirstNumber))
    End If
ElseIf lblOperation = "pct" Then 'percents
    finalValue = (Val(lblFirstNumber) / 100) * Val(lblSecondNumber) 'calculates what percent 2nd num is of 1st
ElseIf lblOperation = "fra" Then '1 / x
    finalValue = 1 / Val(lblFirstNumber)
Else:
    finalValue = txtNumberView.Text 'if equals is pressed after one number, leave that in the textbox
End If

Call clear  'reset all the values, call the 'clear' function
txtNumberView.Text = txtNumberView.Text & vbNewLine & "= " & finalValue
newNumber = True
End Sub

Private Sub cmdExponent_Click()
setOperation ("exp")
txtNumberView.SetFocus
End Sub

Private Sub cmdFraction_Click()
'takes a number and gives 1/number for the answer
setOperation ("fra")
txtNumberView.SetFocus
End Sub

Private Sub cmdMemRecall_Click()
'puts the number saved into the textbox
Dim i As Integer
Dim num As String
If num = "1" Then
    txtNumberView = txtNumberView & txtMem1
ElseIf num = "2" Then
    txtNumberView = txtNumberView & txtMem2
ElseIf num = "3" Then
    txtNumberView = txtNumberView & txtMem3
ElseIf num = "4" Then
    txtNumberView = txtNumberView & txtMem4
Else: MsgBox "No such memory location", vbOKOnly, "No Location"
End If
End Sub

Private Sub cmdMultiply_Click()
'multiplication operation
setOperation ("mul")
txtNumberView.SetFocus
End Sub

Private Sub cmdNumEight_Click()
'adds '8' to the textbox
Call addNumber(8)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumFive_Click()
'adds '5' to the textbox
Call addNumber(5)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumFour_Click()
'adds '4' to the textbox
Call addNumber(4)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumNine_Click()
'adds '9' to the textbox
Call addNumber(9)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumOne_Click()
'adds '1' to the textbox
Call addNumber(1)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumSeven_Click()
'adds '7' to the textbox
Call addNumber(7)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumSix_Click()
'adds '6' to the textbox
Call addNumber(6)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumThree_Click()
'adds '3' to the textbox
Call addNumber(3)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumTwo_Click()
'adds '2' to the textbox
Call addNumber(2)
txtNumberView.SetFocus
End Sub

Private Sub cmdNumZero_Click()
'adds '0' to the textbox
Call addNumber(0)
txtNumberView.SetFocus
End Sub

Private Sub cmdPercent_Click()
'percent function
setOperation ("pct")
txtNumberView.SetFocus
End Sub

Private Sub cmdPosNeg_Click()
'makes the current number pos or neg
If posNeg = False Then 'if it's positive
    txtNumberView.Text = "-" + txtNumberView.Text 'add the '-' sign to the beginning of the number
    posNeg = True 'set the flag to true
ElseIf posNeg = True Then 'if it is negative already
    txtNumberView.Text = Abs(Val(txtNumberView.Text)) 'make it positive
End If
txtNumberView.SetFocus
End Sub
Private Sub cmdSqrt_Click()
'computes the square root of a number
setOperation ("sqr")
txtNumberView.SetFocus
End Sub

Private Sub cmdSubtract_Click()
'subtraction operation
setOperation ("sub")
txtNumberView.SetFocus
End Sub
Private Sub cmdToCos_Click()
'cosine of an angle
doTrigFunction ("cos")
txtNumberView.SetFocus
End Sub
Private Sub cmdToMem_Click()
If txtMem1 = "" Then
    txtMem1 = txtNumberView
ElseIf txtMem2 = "" Then
    txtMem2 = txtNumberView
ElseIf txtMem3 = "" Then
    txtMem3 = txtNumberView
ElseIf txtMem4 = "" Then
    txtMem4 = txtNumberView
Else: MsgBox "All memory is filled", vbOKOnly, "No More Memory"
End If
txtNumberView.SetFocus
End Sub

Private Sub cmdToSin_Click()
'sine of an angle
doTrigFunction ("sin")
txtNumberView.SetFocus
End Sub

Private Sub cmdToTan_Click()
'tangent of an angle
doTrigFunction ("tan")
txtNumberView.SetFocus
End Sub


Private Sub mnuAbout_Click(Index As Integer)
'bring up the about box
frmAbout.Show
End Sub

Private Sub mnuExit_Click(Index As Integer)
'exit the calculator
Unload Me
End Sub
Private Sub txtMem1_DblClick()
txtNumberView = txtNumberView & txtMem1
End Sub
Private Sub txtMem2_DblClick()
txtNumberView = txtNumberView & txtMem2
End Sub

Private Sub txtMem3_DblClick()
txtNumberView = txtNumberView & txtMem3
End Sub
Private Sub txtMem4_DblClick()
txtNumberView = txtNumberView & txtMem4
End Sub

Private Sub txtNumberView_KeyPress(KeyAscii As Integer)
'this event allows the user to input numbers and perform operations from the keyboard
'since every event set the focus back to the main textbox, this event is a property
'of that textbox.  the values come in as ascii numbers, they are tested to find out
'what they represent, and then the corresponding event is called

If KeyAscii = vbKey0 Then '0
    Call cmdNumZero_Click
ElseIf KeyAscii = vbKey1 Then '1
    Call cmdNumOne_Click
ElseIf KeyAscii = vbKey2 Then '2
    Call cmdNumTwo_Click
ElseIf KeyAscii = vbKey3 Then '3
    Call cmdNumThree_Click
ElseIf KeyAscii = vbKey4 Then '4
    Call cmdNumFour_Click
ElseIf KeyAscii = vbKey5 Then '5
    Call cmdNumFive_Click
ElseIf KeyAscii = vbKey6 Then '6
    Call cmdNumSix_Click
ElseIf KeyAscii = vbKey7 Then '7
    Call cmdNumSeven_Click
ElseIf KeyAscii = vbKey8 Then '8
    Call cmdNumEight_Click
ElseIf KeyAscii = vbKey9 Then '9
    Call cmdNumNine_Click
ElseIf KeyAscii = 43 Then '+ sign
    Call cmdAdd_Click
ElseIf KeyAscii = 45 Then '- sign
    Call cmdSubtract_Click
ElseIf KeyAscii = 42 Then '* sign
    Call cmdMultiply_Click
ElseIf KeyAscii = 47 Then '/ sign
    Call cmdDivide_Click
ElseIf KeyAscii = vbKeyReturn Then ''enter' key
    Call cmdEquals_Click
ElseIf KeyAscii = 46 Then '. sign
   Call cmdDecimal_Click
ElseIf KeyAscii = 32 Then 'spacebar
    Call cmdClear_Click
End If
txtNumberView.SetFocus
End Sub

Function addNumber(userInput)
If newNumber = True Then
    txtNumberView.Text = ""
    newNumber = False
End If

If userInput = "0" And txtNumberView.Text = "0" Then
    txtNumberView.Text = "0"
ElseIf userInput <> "0" And txtNumberView.Text = "0" Then
    txtNumberView.Text = ""
    txtNumberView.Text = userInput
Else
    txtNumberView.Text = txtNumberView.Text & userInput
End If
End Function

Function doTrigFunction(trigFunction As String)
Pi = 4 * Atn(1) 'value of pi

If trigFunction = "tan" Then 'tangent
    txtNumberView.Text = Tan((Val(txtNumberView.Text) * Pi) / 180)
ElseIf trigFunction = "sin" Then 'sine
    txtNumberView.Text = Sin((Val(txtNumberView.Text) * Pi) / 180)
ElseIf trigFunction = "cos" Then 'cosine
    txtNumberView.Text = Cos((Val(txtNumberView.Text) * Pi) / 180)
End If
nextNumber = True 'no values added to the answer
End Function

Function setOperation(operation As String)
If doOperation = False Then 'run when the first number has been entered
    lblFirstNumber.Caption = txtNumberView
    lblOperation.Caption = operation 'set the operation variable
    If operation = "add" Then
        operator = "+"
        txtNumberView = txtNumberView & " + "
    ElseIf operation = "mul" Then
        operator = "*"
        txtNumberView = txtNumberView & " * "
    ElseIf operation = "sub" Then
        operator = "-"
        txtNumberView = txtNumberView & " - "
    ElseIf operation = "div" Then
        operator = "/"
        txtNumberView = txtNumberView & " / "
    ElseIf operation = "exp" Then
        operator = "^"
        txtNumberView.Text = txtNumberView.Text & " ^ "
    ElseIf operation = "sqr" Then
        txtNumberView = "sqr(" & txtNumberView.Text & ")"
    ElseIf operation = "pct" Then
        operator = "%"
        txtNumberView = txtNumberView & "% "
    ElseIf operation = "fra" Then
        operator = "/"
        lblFirstNumber = txtNumberView
        txtNumberView = "1 / " & txtNumberView
    End If
    doOperation = True 'tell vbcalc the next number will be the second in the operation
End If
End Function
Function clear()
'clears all fields and resets variables for next operation
doOperation = False
newNumber = False
isDecimal = False
isFraction = False
posNeg = False
lblOperation.Caption = ""
lblFirstNumber.Caption = ""
lblSecondNumber.Caption = ""
txtNumberView.SetFocus
End Function


