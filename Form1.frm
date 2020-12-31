VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   Caption         =   "Technolodeen Anti VBS.mugen"
   ClientHeight    =   5415
   ClientLeft      =   240
   ClientTop       =   930
   ClientWidth     =   5235
   LinkTopic       =   "Form1"
   ScaleHeight     =   5415
   ScaleWidth      =   5235
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H8000000D&
      Caption         =   "Clean Flahdrive"
      Height          =   2295
      Left            =   120
      TabIndex        =   3
      Top             =   2280
      Width           =   4935
      Begin VB.CommandButton Command2 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000D&
         Caption         =   "Clen Flashdrive Now"
         Height          =   735
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   960
         Width           =   1575
      End
      Begin VB.DriveListBox Drive1 
         BackColor       =   &H8000000D&
         Height          =   315
         Left            =   120
         TabIndex        =   4
         Top             =   600
         Width           =   4575
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Select Drive"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Status..."
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1920
         Width           =   3135
      End
      Begin VB.Line Line2 
         X1              =   120
         X2              =   4815
         Y1              =   1800
         Y2              =   1815
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000D&
      Caption         =   "Clean PC"
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4935
      Begin VB.CommandButton Command1 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000D&
         Caption         =   "Clean PC Now"
         Height          =   735
         Left            =   1440
         MaskColor       =   &H8000000D&
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Status..."
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   1560
         Width           =   2895
      End
      Begin VB.Line Line1 
         X1              =   120
         X2              =   4815
         Y1              =   1440
         Y2              =   1455
      End
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "T  E  C  H  N  O  L  O  D  E  E  N"
      BeginProperty Font 
         Name            =   "Agency FB"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   615
      Left            =   120
      TabIndex        =   7
      Top             =   4680
      Width           =   5055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
Label1.Caption = "Killing Virus Process..."
Shell "taskkill /im wscript* /f"
Label1.Caption = "Deleting Virus File..."
Kill Environ$("appdata") & "\mugen.vbs"
Kill Environ$("appdata") & "\mugen"
Beep
MsgBox "Finished", vbInformation, "Technolodeen Anti VBS.mugen"
Label1.Caption = "Status..."
End Sub

Private Sub Command2_Click()
On Error Resume Next
Dim wh
Dim hw
wh = wscript.CreateObject("WScript.Shell")
hw = Left(Drive1.Drive, 2)
Label2.Caption = "Killing Virus Process..."
Shell "taskkill /im wscript* /f"
wh.sleep 100
Label2.Caption = "Fixing Hidden File(s)..."
Shell "attrib -s -h -r -a " & hw & "\* /s /d", vbHide
wh.sleep 100
Label2.Caption = "Cleaning Shortcut(s)..."
Kill hw & "\" & "*" & ".lnk"
wh.sleep 100
Label2.Caption = "Clenaning The Virus..."
Kill hw & "\" & "mugen" & "*"
Beep
MsgBox "Finished", vbInformation, "Technolodeen Anti VBS.mugen"
Label2.Caption = "Status..."
End Sub

Private Sub Form_Unload(Cancel As Integer)
MsgBox "Bye Bye..." & vbCrLf & "Thanks for Using Technolodeen's Software... '^,...,^'", vbInformation, "Technolodeen Anti VBS.mugen"
End Sub
