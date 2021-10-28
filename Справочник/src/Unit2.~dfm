object Form2: TForm2
  Left = 542
  Top = 158
  BorderStyle = bsSingle
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
  ClientHeight = 675
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Top = 200
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
    Top = 368
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
  object Label5: TLabel
    Left = 8
    Top = 592
    Width = 110
    Height = 20
    Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 400
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label6'
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 353
    Height = 137
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 8
    Top = 224
    Width = 353
    Height = 137
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 648
    Width = 169
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 648
    Width = 169
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 392
    Width = 353
    Height = 185
    DataSource = DataSource1
    Options = [dgEditing, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 5
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
        FieldName = #1042#1077#1089
        Visible = False
      end>
  end
  object Button3: TButton
    Left = 296
    Top = 615
    Width = 65
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 616
    Width = 281
    Height = 21
    TabOrder = 7
  end
  object Button4: TButton
    Left = 192
    Top = 648
    Width = 169
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 8
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Revalto\De' +
      'sktop\kursovay\db\db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 368
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 368
    Top = 40
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090#1099
    Left = 368
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 368
    Top = 104
  end
end
