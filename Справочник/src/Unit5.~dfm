object Form5: TForm5
  Left = 284
  Top = 160
  BorderStyle = bsSingle
  Caption = #1057#1086#1074#1077#1090#1099
  ClientHeight = 418
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 984
    Top = 144
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 225
    Height = 337
    DataSource = DataSource1
    Options = [dgEditing, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ReadOnly = True
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
        Visible = False
      end>
  end
  object Memo1: TMemo
    Left = 240
    Top = 8
    Width = 353
    Height = 409
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 344
    Width = 113
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 344
    Width = 115
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 368
    Width = 113
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 368
    Width = 115
    Height = 25
    Caption = #1055#1086#1076#1088#1086#1073#1085#1077#1077
    TabOrder = 5
    OnClick = Button4Click
  end
  object Memo2: TMemo
    Left = 600
    Top = 40
    Width = 353
    Height = 353
    Lines.Strings = (
      #1054#1087#1080#1089#1072#1085#1080#1077)
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Button5: TButton
    Left = 600
    Top = 392
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 856
    Top = 392
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 600
    Top = 8
    Width = 345
    Height = 21
    TabOrder = 9
    Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Button7: TButton
    Left = 8
    Top = 392
    Width = 225
    Height = 25
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1073#1083#1102#1076
    TabOrder = 10
    OnClick = Button7Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Revalto\De' +
      'sktop\kursovay\db\db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 1024
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1086#1074#1077#1090#1099
    Left = 1024
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 1024
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 1024
    Top = 104
  end
  object MainMenu1: TMainMenu
    Left = 992
    Top = 8
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
end
