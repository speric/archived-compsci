VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmGeoView 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "GeoView"
   ClientHeight    =   4680
   ClientLeft      =   2280
   ClientTop       =   3075
   ClientWidth     =   2475
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4680
   ScaleWidth      =   2475
   Begin VB.Data Data1 
      Connect         =   "Access"
      DatabaseName    =   "C:\!speric\school\cus1154\GeoView\World.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Countries"
      Top             =   4320
      Width           =   2460
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1920
      Top             =   3720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      Flags           =   1
      FontName        =   "Tahoma"
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      DataField       =   "Government"
      DataSource      =   "Data1"
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
      Index           =   5
      Left            =   360
      TabIndex        =   5
      Top             =   2400
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Government:"
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
      Index           =   4
      Left            =   120
      TabIndex        =   4
      Top             =   2160
      Width           =   1110
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      DataField       =   "Capital"
      DataSource      =   "Data1"
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
      Index           =   3
      Left            =   360
      TabIndex        =   3
      Top             =   1920
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Capital:"
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
      Index           =   2
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   630
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      DataField       =   "Name"
      DataSource      =   "Data1"
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
      Index           =   1
      Left            =   360
      TabIndex        =   1
      Top             =   1440
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name:"
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
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   525
   End
   Begin VB.Image Image1 
      DataField       =   "Flag"
      DataSource      =   "Data1"
      Height          =   960
      Left            =   600
      Stretch         =   -1  'True
      Top             =   0
      Width           =   960
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu mnuSelect 
      Caption         =   "&Select"
      Begin VB.Menu mnuNext 
         Caption         =   "&Next"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuPrev 
         Caption         =   "&Previous"
         Shortcut        =   ^P
      End
      Begin VB.Menu Seperator 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFirst 
         Caption         =   "&First"
      End
      Begin VB.Menu mnuLast 
         Caption         =   "&Last"
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Begin VB.Menu mnuView 
         Caption         =   "&View"
         Begin VB.Menu mnuName 
            Caption         =   "&Name"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuCapital 
            Caption         =   "&Capital"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuGovt 
            Caption         =   "&Government"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnuFont 
         Caption         =   "&Font"
      End
   End
End
Attribute VB_Name = "frmGeoView"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu mnuOptions
End Sub
Private Sub mnuExit_Click()
Unload frmGeoView
End Sub

Private Sub mnuFirst_Click()
Data1.Recordset.MoveFirst
End Sub

Private Sub mnuFont_Click()
CommonDialog1.ShowFont

For X = 0 To 5
    With Label1(X)
        .FontName = CommonDialog1.FontName
        .FontItalic = CommonDialog1.FontItalic
        .FontBold = CommonDialog1.FontBold
        .FontSize = CommonDialog1.FontSize
    End With
Next
Data1.Recordset.MoveFirst
frmGeoView.Width = Label1(5).Left + Label1(5).Width + Label1(4).Left
Image1.Left = (frmGeoView.Width - Image1.Width) / 2
End Sub

Private Sub mnuGovt_Click()
ToggleView mnuGovt, 5
End Sub

Private Sub mnuLast_Click()
Data1.Recordset.MoveLast
End Sub

Private Sub mnuNext_Click()
Data1.Recordset.MoveNext
If Data1.Recordset.EOF = True Then Data1.Recordset.MoveFirst
End Sub

Private Sub mnuPrev_Click()
Data1.Recordset.MovePrevious
If Data1.Recordset.EOF = True Then Data1.Recordset.MoveLast
End Sub

Public Sub ToggleView(ControlName As Control, LabelIndex As Integer)
ControlName.Checked = Not ControlName.Checked
Label1(LabelIndex).Visible = Not Label1(LabelIndex).Visible
End Sub
