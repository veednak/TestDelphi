unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGridEh;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    ButtonAdd: TButton;
    ButtonEdit: TButton;
    ButtonDelete: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    EditSearch: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ADOQuery2: TADOQuery;
    procedure ButtonEditClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure RSallAdd;
    procedure ButtonEnabled;
    procedure RSallEdit;
    procedure RSallDelete;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Moved(Sender: TObject; FromIndex, ToIndex: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

uses MainAdd, MainEdit, MainAddFormPerson;

procedure TForm1.ButtonAddClick(Sender: TObject);
begin
  RSallAdd;
end;

procedure TForm1.ButtonDeleteClick(Sender: TObject);
begin
  RSallDelete;
end;

procedure TForm1.ButtonEditClick(Sender: TObject);
begin
  RSallEdit;
end;

procedure TForm1.EditSearchChange(Sender: TObject);
begin
  if Length(EditSearch.Text) <> 0 then begin
    with ADOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM [Zarplata].[dbo].[bpsRSall] ' +
              'WHERE b_fio LIKE '''+EditSearch.Text+'%'' ' +
              'OR  b_post LIKE '''+EditSearch.Text+'%'' ' +
              'ORDER BY b_fio ');
      Open;
    end;
    ButtonEnabled;
  end
  else
  begin
    with ADOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM [Zarplata].[dbo].[bpsRSall] ' +
              'ORDER BY b_fio ');
      Open;
    end;
    ButtonEnabled;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var HM: THandle;
begin
  HM := OpenMutex(MUTEX_ALL_ACCESS, false, 'vipiski');
  if (HM <> 0) then begin
    ShowMessage('Приложение запушено');
    Application.Terminate;
  end;
  if HM = 0 then
    HM := CreateMutex(nil, false, 'vipiski');
end;

procedure TForm1.Moved(Sender: TObject; FromIndex, ToIndex: Integer);
begin
  DBGrid1.Columns[ToIndex].Index := FromIndex;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  RSallAdd;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  RSallEdit;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  RSallDelete;
end;

procedure TForm1.RSallAdd;
begin
  Form2.ShowModal;
end;

procedure TForm1.ButtonEnabled;
begin
    if ADOQuery1.RecordCount <> 0 then
    begin
      ButtonEdit.Enabled := True;
      ButtonDelete.Enabled := True;
      N2.Enabled := True;
      N3.Enabled := True;
    end
    else
    begin
      ButtonEdit.Enabled := False;
      ButtonDelete.Enabled := False;
      N2.Enabled := False;
      N3.Enabled := False;
    end;
end;

procedure TForm1.RSallEdit;
begin
  with Form3 do
  begin
    EditIban.Text := TrimRight(Form1.ADOQuery1.FieldByName('b_iban').Value);
    Form3.EditIban.SelStart:=Length(Form3.EditIban.Text);
    LabelPost.Caption := Form1.ADOQuery1.FieldByName('b_post').Value;
    LabelFio.Caption := Form1.ADOQuery1.FieldByName('b_fio').Value;
    LabelCeh.Caption := Form1.ADOQuery1.FieldByName('b_ceh').Value;
    //LabelNCeh.Caption := Form1.ADOQuery1.FieldByName('b_nceh').Value;
    LabelProf.Caption := Form1.ADOQuery1.FieldByName('b_prof').Value;
    LabelDr.Caption := Form1.ADOQuery1.FieldByName('b_dr').Value;
  end;

  Form3.ShowModal;
end;

procedure TForm1.RSallDelete;
var Res: Integer;
begin
  Res :=  MessageBox(Form1.Handle,
  PChar('Вы действительно хотите удалить запись?'),
  PChar('Предупреждение!'),MB_ICONQUESTION + MB_YESNO);
  case Res of
    IDYES : begin
      if ADOQuery1.RecordCount <> 0 then
      begin
        ADOQuery1.Delete;
      end
      else begin
        ButtonDelete.Enabled := False;
        N3.Enabled := False;
      end;
    end;
    end;
end;
end.
