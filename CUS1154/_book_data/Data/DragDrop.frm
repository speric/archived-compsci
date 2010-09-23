VERSION 5.00
Begin VB.Form frmDragDrop 
   Caption         =   "Drag And Drop The Letter On The Mailbox"
   ClientHeight    =   3885
   ClientLeft      =   1995
   ClientTop       =   1770
   ClientWidth     =   5595
   Icon            =   "DragDrop.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3885
   ScaleWidth      =   5595
   Begin VB.Image imgDone 
      Height          =   480
      Left            =   360
      Picture         =   "DragDrop.frx":0442
      Top             =   3000
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgLetter 
      DragIcon        =   "DragDrop.frx":0884
      Height          =   480
      Left            =   360
      Picture         =   "DragDrop.frx":0CC6
      Top             =   240
      Width           =   480
   End
   Begin VB.Image imgMailbox 
      Height          =   480
      Left            =   4800
      Picture         =   "DragDrop.frx":1108
      Top             =   3000
      Width           =   480
   End
End
Attribute VB_Name = "frmDragDrop"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub imgMailbox_DragDrop(Source As Control, X As Single, Y As Single)
imgMailbox.Picture = imgDone.Picture
End Sub

Private Sub imgMailbox_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
Randomize
'move to new top position
lowerbound = 0
upperbound = frmDragDrop.ScaleHeight - imgLetter.Height
imgMailbox.Top = Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
'move to new left position
lowerbound =
upperbound =
imgMailbox.Left =

End Sub


