object Form1: TForm1
  Left = 280
  Top = 150
  BorderStyle = bsSingle
  Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102'-'#1088#1077#1094#1077#1087#1090
  ClientHeight = 466
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 161
    Height = 345
    DataSource = DataSource1
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
        Visible = False
      end>
  end
  object Button1: TButton
    Left = 0
    Top = 392
    Width = 81
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 80
    Top = 392
    Width = 83
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 0
    Top = 416
    Width = 81
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 80
    Top = 416
    Width = 83
    Height = 25
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 4
    OnClick = Button4Click
  end
  object Panel1: TPanel
    Left = 160
    Top = 0
    Width = 609
    Height = 473
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 121
      Height = 20
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 376
      Top = 56
      Width = 225
      Height = 225
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 82
      Height = 20
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 152
      Width = 63
      Height = 20
      Caption = #1056#1077#1094#1077#1087#1090': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 272
      Width = 111
      Height = 20
      Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090#1099': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 8
      Top = 56
      Width = 361
      Height = 89
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 8
      Top = 176
      Width = 361
      Height = 89
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object ListBox1: TListBox
      Left = 8
      Top = 296
      Width = 361
      Height = 137
      ItemHeight = 16
      TabOrder = 2
    end
  end
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button5: TButton
    Left = 120
    Top = 0
    Width = 41
    Height = 21
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 0
    Top = 368
    Width = 161
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 0
    Top = 440
    Width = 161
    Height = 25
    Caption = #1055#1086#1083#1077#1079#1085#1099#1077' '#1089#1086#1074#1077#1090#1099
    TabOrder = 9
    OnClick = Button7Click
  end
  object MainMenu1: TMainMenu
    Left = 792
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N3: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
        OnClick = N5Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Revalto\Desktop\kursovay\db\db.mdb;Mode=Share Deny None;Pers' +
      'ist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:R' +
      'egistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine ' +
      'Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partia' +
      'l Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New ' +
      'Database Password="";Jet OLEDB:Create System Database=False;Jet ' +
      'OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Comp' +
      'act=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLE' +
      'DB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 792
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1041#1083#1102#1076#1072
    Left = 792
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 792
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 792
    Top = 112
  end
end
