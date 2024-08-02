object frmMain: TfrmMain
  Left = 108
  Top = 130
  Width = 650
  Height = 312
  Caption = 'h c'
  Color = clBtnFace
  Font.Charset = SHIFTJIS_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS P????'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 14
  object lbl00: TLabel
    Left = 200
    Top = 10
    Width = 35
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = '('#180'-`)'
  end
  object cmdStart: TButton
    Left = 4
    Top = 4
    Width = 94
    Height = 24
    Caption = 'Start Server'
    Enabled = False
    TabOrder = 0
    OnClick = cmdStartClick
  end
  object cmdStop: TButton
    Left = 102
    Top = 4
    Width = 94
    Height = 24
    Caption = 'Stop Server'
    Enabled = False
    TabOrder = 1
    OnClick = cmdStopClick
  end
  object txtDebug: TMemo
    Left = 0
    Top = 35
    Width = 642
    Height = 250
    Align = alBottom
    Anchors = [akLeft, akBottom]
    Color = clBlack
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS P????'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object sv1: TServerSocket
    Active = False
    Port = 6900
    ServerType = stNonBlocking
    OnClientConnect = sv1ClientConnect
    OnClientDisconnect = sv1ClientDisconnect
    OnClientRead = sv1ClientRead
    OnClientError = sv1ClientError
    Left = 204
  end
  object sv2: TServerSocket
    Active = False
    Port = 5964
    ServerType = stNonBlocking
    OnClientConnect = sv2ClientConnect
    OnClientDisconnect = sv2ClientDisconnect
    OnClientRead = sv2ClientRead
    OnClientError = sv2ClientError
    Left = 212
  end
  object sv3: TServerSocket
    Active = False
    Port = 5967
    ServerType = stNonBlocking
    OnClientConnect = sv3ClientConnect
    OnClientDisconnect = sv3ClientDisconnect
    OnClientRead = sv3ClientRead
    OnClientError = sv3ClientError
    Left = 220
  end
  object DBsaveTimer: TTimer
    Enabled = False
    Interval = 900000
    OnTimer = DBsaveTimerTimer
    Left = 8
    Top = 32
  end
end
