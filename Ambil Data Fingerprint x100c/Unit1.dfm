object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 263
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 169
    Height = 145
    Caption = 'Pengaturan'
    TabOrder = 0
    object edtNetAddress: TLabeledEdit
      Left = 11
      Top = 31
      Width = 101
      Height = 19
      Ctl3D = False
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'IP Address:'
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      TabOrder = 0
      Text = '192.168.100.16'
    end
    object btnConnect: TButton
      Left = 20
      Top = 72
      Width = 120
      Height = 25
      Caption = 'Connect'
      TabOrder = 1
      OnClick = btnConnectClick
    end
    object edtNetPort: TLabeledEdit
      Left = 118
      Top = 31
      Width = 41
      Height = 19
      Ctl3D = False
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Port:'
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = '4370'
      Visible = False
    end
    object Button4: TButton
      Left = 20
      Top = 103
      Width = 120
      Height = 25
      Caption = 'GetGeneralLogData'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object CZKEM1: TCZKEM
    Left = 64
    Top = 181
    Width = 23
    Height = 28
    TabOrder = 1
    Visible = False
    ControlData = {0009000061020000E5020000}
  end
  object Lv1: TListView
    Left = 199
    Top = 8
    Width = 146
    Height = 225
    Columns = <
      item
        Caption = 'Id Finger'
        MinWidth = 70
        Width = 70
      end
      item
        Caption = 'Nama'
        MinWidth = 70
        Width = 70
      end>
    TabOrder = 2
    ViewStyle = vsReport
  end
  object Lv2: TListView
    Left = 351
    Top = 8
    Width = 315
    Height = 225
    Columns = <
      item
        Caption = 'Id Finger'
        MinWidth = 70
        Width = 70
      end
      item
        Caption = 'Absen'
        MinWidth = 50
      end
      item
        Caption = 'Tanggal'
        MinWidth = 100
        Width = 100
      end>
    MultiSelect = True
    TabOrder = 3
    ViewStyle = vsReport
  end
end
