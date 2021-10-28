unit Unit2; //�������������

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo2: TMemo;
    Memo1: TMemo;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Label5: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

// ������
procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Close;
end;

// ����������
procedure TForm2.Button2Click(Sender: TObject);
var
  pId : string;
  x: word;
  TempBookmark: TBookMark;
begin
 if(Edit1.Text = '') then begin
    ShowMessage('�� �� ������� "������������"');
    Exit;
  end;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'INSERT INTO `�����` (`������������`, `��������`) '
    + ' VALUES(:Name, :About)';
  ADOQuery1.Parameters.ParamByName('Name').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('About').Value := Memo1.Text;
  ADOQuery1.ExecSQL;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM `�����` '
    + ' WHERE `������������` = :Name AND `��������` = :About';
  ADOQuery1.Parameters.ParamByName('Name').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('About').Value := Memo1.Text;
  ADOQuery1.Open;

  pId := ADOQuery1.Fields[0].AsString; // ID ����� ������

  // ���������� �������
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'INSERT INTO `�����_�������` (`��� �����`, `������`) '
    + ' VALUES(:pId, :Recipe)';
  ADOQuery1.Parameters.ParamByName('pId').Value := pId;
  ADOQuery1.Parameters.ParamByName('Recipe').Value := Memo2.Text;
  ADOQuery1.ExecSQL;

  // ���������� ����������� (� ���������� ����� ����� �������� �����������! SQL ������ ������������ �� ����� �����, �.�. ����� ������ ����� - 1 ������ �� ������)
  DBGrid1.Datasource.Dataset.DisableControls;
  with DBgrid1.SelectedRows do
    if Count <> 0 then
    begin
      TempBookmark := DBGrid1.Datasource.Dataset.GetBookmark;
      for x := 0 to Count - 1 do
      begin
        if IndexOf(Items[x]) > -1 then
        begin
          DBGrid1.Datasource.Dataset.Bookmark := Items[x];
          //showmessage(DBGrid1.Datasource.Dataset.Fields[0].AsString);
          ADOQuery1.Close;
          ADOQuery1.SQL.Text := 'INSERT INTO `�����_�����������` (`��� �����`, `��� �����������`, `����������`) '
            + ' VALUES(:pId, :pIngredient, :pCount)';
          ADOQuery1.Parameters.ParamByName('pId').Value := pId;
          ADOQuery1.Parameters.ParamByName('pIngredient').Value := DBGrid1.Datasource.Dataset.Fields[0].AsString;
          ADOQuery1.Parameters.ParamByName('pCount').Value := 1;
          ADOQuery1.ExecSQL;
        end;
      end;
    end;
  DBGrid1.Datasource.Dataset.GotoBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.FreeBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.EnableControls;

  // �������� �����������
  if (FileExists(Edit2.Text)) then
    CopyFile(PChar(Edit2.Text), PChar('C:/Users/Revalto/Desktop/kursovay/src/images/' + pId + '.jpg'), false); // �������� ���� �� ����

  // ������������ ������� �� Form1
  Form1.ADOTable1.Active := False;
  Form1.ADOTable1.Active := True;

  // ���������
  Form2.Close;
end;

procedure TForm2.Button3Click(Sender: TObject);
var openDialog : TOpenDialog;
begin
  openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := 'C:\';
  openDialog.Options := [ofFileMustExist];

  // �����
  openDialog.Filter := 'All files (*.jpg)|*.jpg';

  // �������� �� ������ ����
  if openDialog.Execute then
    Edit2.Text := openDialog.FileName // ���������� � Edit2
  else
    ShowMessage('Open file was cancelled');

  // �� ���� �����
  openDialog.Free;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  x: word;
  TempBookmark: TBookMark;
begin
  // ��������� �������� ������
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'UPDATE `�����` SET `������������` = :Name, `��������` = :About '
    + ' WHERE `���` = :Key';
  ADOQuery1.Parameters.ParamByName('Name').Value := Edit1.Text;
  ADOQuery1.Parameters.ParamByName('About').Value := Memo1.Text;
  ADOQuery1.Parameters.ParamByName('Key').Value := Label6.Caption;
  ADOQuery1.ExecSQL;

  // ���������� �������
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'UPDATE `�����_�������` SET `������` = :Recipe '
    + ' WHERE `��� �����` = :Key';
  ADOQuery1.Parameters.ParamByName('Recipe').Value := Memo2.Text;
  ADOQuery1.Parameters.ParamByName('Key').Value := Label6.Caption;
  ADOQuery1.ExecSQL;

  // DELETE ALl ingredients and save new (REWRITE)
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'DELETE FROM `�����_�����������` '
    + ' WHERE `��� �����` = :Key';
  ADOQuery1.Parameters.ParamByName('Key').Value := Label6.Caption;
  ADOQuery1.ExecSQL;

  DBGrid1.Datasource.Dataset.DisableControls;
  with DBgrid1.SelectedRows do
    if Count <> 0 then
    begin
      TempBookmark := DBGrid1.Datasource.Dataset.GetBookmark;
      for x := 0 to Count - 1 do
      begin
        if IndexOf(Items[x]) > -1 then
        begin
          DBGrid1.Datasource.Dataset.Bookmark := Items[x];
          //showmessage(DBGrid1.Datasource.Dataset.Fields[0].AsString);
          ADOQuery1.Close;
          ADOQuery1.SQL.Text := 'INSERT INTO `�����_�����������` (`��� �����`, `��� �����������`, `����������`) '
            + ' VALUES(:pId, :pIngredient, :pCount)';
          ADOQuery1.Parameters.ParamByName('pId').Value := Label6.Caption;
          ADOQuery1.Parameters.ParamByName('pIngredient').Value := DBGrid1.Datasource.Dataset.Fields[0].AsString;
          ADOQuery1.Parameters.ParamByName('pCount').Value := 1;
          ADOQuery1.ExecSQL;
        end;
      end;
    end;
  DBGrid1.Datasource.Dataset.GotoBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.FreeBookmark(TempBookmark);
  DBGrid1.Datasource.Dataset.EnableControls;

  // CopyFile
  if (FileExists(Edit2.Text)) then
    CopyFile(PChar(Edit2.Text), PChar('C:/Users/Revalto/Desktop/kursovay/src/images/' + Label6.Caption + '.jpg'), false); // �������� ���� �� ����

  // ������������ ������� �� Form1
  Form1.ADOTable1.Active := False;
  Form1.ADOTable1.Active := True;

  // ���������
  Form2.Close;
end;

end.
