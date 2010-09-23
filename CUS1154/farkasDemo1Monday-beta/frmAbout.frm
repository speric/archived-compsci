VERSION 5.00
Begin VB.Form frmAbout 
   Caption         =   "About VBCalc"
   ClientHeight    =   855
   ClientLeft      =   9030
   ClientTop       =   3885
   ClientWidth     =   3765
   LinkTopic       =   "Form2"
   ScaleHeight     =   855
   ScaleWidth      =   3765
   Begin VB.Label Label1 
      Alignment       =   2  'Center
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
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3495
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Label1.Caption = _
"VBCalc v1.0 by Eric Farkas" & vbNewLine & _
"Made October 2002"
End Sub

