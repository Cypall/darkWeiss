object frmMain: TfrmMain
  Left = 135
  Top = 128
  Width = 658
  Height = 337
  Anchors = []
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
    Top = 32
    Width = 649
    Height = 277
    Align = alCustom
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
  object Edit1: TEdit
    Left = 256
    Top = 6
    Width = 289
    Height = 22
    Color = clBlack
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS P????'
    Font.Style = []
    MaxLength = 100
    ParentFont = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 551
    Top = 4
    Width = 94
    Height = 24
    Caption = 'Send Message'
    Enabled = False
    TabOrder = 4
    OnClick = Button1Click
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
