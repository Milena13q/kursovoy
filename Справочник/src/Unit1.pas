unit Unit1;//������� ����

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, Menus, Grids, DBGrids, ExtCtrls, ShellApi;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Button5: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button6: TButton;
    N5: TMenuItem;
    Button7: TButton;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

// �������
procedure TForm1.N3Click(Sender: TObject);
begin

  MessageBox(0, '���������: "�������������-���������� ������� "����� ����������� �����" '
    + #13
    + '��������� �������������, ����� ���������������� ������ �� ������������� ����� '
    + ' ����������� ����.����� ����������� �������� ���������� � ������, ������������ '
    + ' ��, � ���������, ����������� ���� �������������, � ��������, �� ������� ��������� �����. '
    + ' �������������-���������� ������� ��������� ��� ���������, �������������, ������� ��� '
    + ' ��������� ������� � ����� ��������, ����� ���������� ���� � ���. '
    + #13
    + ' ����������� ���������: �������� ������ ����������, '
    + ' ������ - ���-32 ', '� ���������', MB_ICONWARNING or MB_OK);
end;

// ������� ����������
procedure TForm1.N4Click(Sender: TObject);
begin
  Application.Terminate;
end;

// ���������
procedure TForm1.Button4Click(Sender: TObject);
begin
  //ShowMessage(IntToStr(DBGrid1.SelectedField.Index));
  if(DBGrid1.SelectedField.Index <> 0) then
  begin
    // ���������� / ���������� ������
    Panel1.Visible := True;

    // ���������� ������� �����
    Label1.Caption := '������������: ' + DBGrid1.Fields[1].AsString;
    Memo1.Text := DBGrid1.Fields[2].AsString;

    // ��������� �������
    Memo2.Clear;
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'SELECT * FROM `�����_�������` WHERE `��� �����` = ' + DBGrid1.Fields[0].AsString;
    ADOQuery1.Open;
    Memo2.Text := ADOQuery1.Fields[2].Value;

    // �������� ����������� �����
    ListBox1.Clear;
    ADOQuery1.Close;

    ADOQuery1.SQL.Text := 'SELECT * '
      + ' FROM `�����_�����������` '
      + ' INNER JOIN `�����������` ON `�����_�����������`.`��� �����������` = `�����������`.`���` '
      + ' WHERE `�����_�����������`.`��� �����` = ' + DBGrid1.Fields[0].AsString;

    ADOQuery1.Open;
    while not ADOQuery1.Eof do
    begin
      ListBox1.Items.Add(ADOQuery1.Fields[5].AsString + ' - ' + ADOQuery1.Fields[3].AsString);
      ADOQuery1.Next;
    end;

    // �������� ����������
    if FileExists('C:/Users/Revalto/Desktop/kursovay/src/images/' + DBGrid1.Fields[0].AsString + '.jpg') then
      Image1.Picture.LoadFromFile('C:/Users/Revalto/Desktop/kursovay/src/images/' + DBGrid1.Fields[0].AsString + '.jpg')
    else
      Image1.Picture.LoadFromFile('C:/Users/Revalto/Desktop/kursovay/src/images/noImage.jpg');
  end
  else
  begin
    ShowMessage('�� �� ������� �����!');
    Panel1.Visible := False;
  end
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if(DBGrid1.SelectedField.Index <> 0) then
  begin
    // ������� ������� (Access ������� ��� �� ������)
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'DELETE FROM `�����` WHERE `���` = ' + DBGrid1.Fields[0].AsString;
    ADOQuery1.ExecSQL;

    // ������������� DBGrid ��� ����������� ������ �������
    ADOTable1.Active := False;
    ADOTable1.Active := True;
  end
  else
    ShowMessage('�� �� ������� �����!')
end;

// �������� ����� ���������� / ���������
procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Show;
  Form2.Edit1.Clear;
  Form2.Edit2.Clear;
  Form2.Memo1.Clear;
  Form2.Memo2.Clear;
  Form2.Button2.Visible := True;
  Form2.Button4.Visible := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if(DBGrid1.SelectedField.Index <> 0) then
  begin
    Form2.Show;
    Form2.Edit1.Clear;
    Form2.Edit2.Clear;
    Form2.Memo1.Clear;
    Form2.Memo2.Clear;
    Form2.Button2.Visible := False;
    Form2.Button4.Visible := True;

    // ��������� ID
    Form2.Label6.Caption := DBGrid1.Fields[0].AsString;

    // ������������ + ���������
    Form2.Edit1.Text := DBGrid1.Fields[1].AsString;
    Form2.Memo1.Text := DBGrid1.Fields[2].AsString;

    // ������
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'SELECT * FROM `�����_�������` WHERE `��� �����` = ' + DBGrid1.Fields[0].AsString;
    ADOQuery1.Open;
    Form2.Memo2.Text := ADOQuery1.Fields[2].Value;

    // ����������
    if FileExists('images/' + DBGrid1.Fields[0].AsString + '.jpg') then
      Form2.Edit2.Text := 'C:\Users\Revalto\Desktop\kursovay\src\images\' + DBGrid1.Fields[0].AsString + '.jpg';
  end
  else
    ShowMessage('�� �� ������� �����!')
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ADOTable1.Filtered := False;
  ADOTable1.Filter := '������������ LIKE ' + #39 + Edit1.Text + '%' + #39;
  if length(edit1.text) > 0 then
    ADOTable1.Filtered:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  // ������������� DBGrid ��� ����������� ������ �������
  ADOTable1.Active := False;
  ADOTable1.Active := True;
end;

// ����������
procedure TForm1.N5Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'C:\Users\Revalto\Desktop\kursovay\src\chm\foodbook.chm', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form5.show;
Form1.Hide;
end;

end.
