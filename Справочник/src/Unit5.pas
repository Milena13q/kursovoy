unit Unit5;  //������

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, Menus, ShellApi;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo2: TMemo;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  if Form5.Width = 975 then
    Form5.Width := 606
  else
    Form5.Width := 975;

  Button6.Visible := False;
  Button5.Visible := True;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'INSERT INTO `������` (`������������`, `��������`) VALUES( :rName, :rAbout )';
  ADOQuery1.Parameters.ParamByName('rName').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('rAbout').Value := Memo2.Text;
  ADOQuery1.ExecSQL;

  // ������������� DBGrid ��� ����������� ������ �������
  ADOTable1.Active := False;
  ADOTable1.Active := True;

  // ��������
  Edit1.Text := '������������';
  Memo2.Text := '��������';

  // �������
  Form5.Width := 606;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  Edit1.Text := '������������';
  Memo2.Text := '��������';
  Form5.Width := 606;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  if(DBGrid1.SelectedField.Index <> 0) then
  begin
    if Form5.Width = 606 then
      Form5.Width := 975;

    // ������� ID �������������� �������� (����� �� ������� ��� ������ �������)
    Label1.Caption := DBGrid1.Fields[0].AsString;

    // ������� ������
    Edit1.Text := DBGrid1.Fields[1].AsString;
    Memo2.Text := DBGrid1.Fields[2].AsString;

    // ������� ������
    Button6.Visible := True;
    Button5.Visible := False;
  end
  else
  begin
    ShowMessage('�� �� ������� �����!');
    Form5.Width := 606;
  end
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  if(DBGrid1.SelectedField.Index <> 0) then
  begin
    // ������� ������� (Access ������� ��� �� ������)
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'DELETE FROM `������` WHERE `���` = ' + DBGrid1.Fields[0].AsString;
    ADOQuery1.ExecSQL;

    // ������������� DBGrid ��� ����������� ������ �������
    ADOTable1.Active := False;
    ADOTable1.Active := True;
  end
  else
    ShowMessage('�� �� ������� �����!')
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  Memo1.Text := DBGrid1.Fields[2].AsString;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'UPDATE `������` SET `������������` = :Name, `��������` = :About '
    + ' WHERE `���` = :Key';
  ADOQuery1.Parameters.ParamByName('Key').Value := Label1.Caption;
  ADOQuery1.Parameters.ParamByName('Name').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('About').Value := Memo2.Text;
  ADOQuery1.ExecSQL;

  // ������������� DBGrid ��� ����������� ������ �������
  ADOTable1.Active := False;
  ADOTable1.Active := True;

  // ��������
  Edit1.Text := '������������';
  Memo2.Text := '��������';

  // �������
  Form5.Width := 606;
end;

procedure TForm5.N4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm5.N3Click(Sender: TObject);
begin
  MessageBox(0, '���������: "�������������-���������� ������� "����� ����������� �����" '
    + #13
    + '��������� �������������, ����� ���������������� ������ �� ������������� ����� '
    + ' ����������� ����.����� ����������� �������� ���������� � ������, ������������ '
    + ' ��, � ���������, ����������� ���� �������������, � ��������, �� ������� ��������� �����. '
    + ' �������������-���������� ������� ��������� ��� ���������, �������������, ������� ��� '
    + ' ��������� ������� � ����� ��������, ����� ���������� ���� � ���. ', '� ���������', MB_ICONWARNING or MB_OK);
end;

procedure TForm5.N5Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open',
    'C:\Users\Revalto\Desktop\kursovay\src\chm\foodbook.chm', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
Form1.show;
Form5.Hide;
end;

end.
