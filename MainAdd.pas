unit MainAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.Win.ADODB, Vcl.Menus,
  Vcl.ToolWin, Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TForm2 = class(TForm)
    PanelBottom: TPanel;
    ButtonAdd: TButton;
    ButtonClose: TButton;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    GroupBox2: TGroupBox;
    EditSearch: TEdit;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonEnabled;
    procedure ButtonCloseClick(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure Form2Create(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure onClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Main, MainEdit, MainAddFormPerson;



procedure TForm2.ButtonAddClick(Sender: TObject);
begin
  with Form1.ADOQuery2 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT *   FROM [Zarplata].[dbo].[bpsRSall] '+
            'WHERE b_fio LIKE '''+Trim(Form2.ADOQuery1.FieldByName('k_fam').Value) +
            ' ' + Trim(Form2.ADOQuery1.FieldByName('k_imj').Value) +
            ' ' + Trim(Form2.ADOQuery1.FieldByName('k_otc').Value)+''' ' );
    Open;
  end;
  if(Form1.ADOQuery2.RecordCount =0) then begin
  with Form4 do
    begin
      LabelPost.Caption := Form2.ADOQuery1.FieldByName('k_post').Value;
      LabelFio.Caption := Trim(Form2.ADOQuery1.FieldByName('k_fam').Value) + ' ' +
      Trim(Form2.ADOQuery1.FieldByName('k_imj').Value)+ ' ' +
      Trim(Form2.ADOQuery1.FieldByName('k_otc').Value);
      LabelCeh.Caption := Form2.ADOQuery1.FieldByName('k_nceh').Value;
      //LabelNCeh.Caption := Form2.ADOQuery1.FieldByName('NAIPODK').Value;
      LabelProf.Caption := Form2.ADOQuery1.FieldByName('n_prof').Value;
      LabelDr.Caption := Form2.ADOQuery1.FieldByName('k_dr').Value;
    end;
    Form4.showModal;
    EditSearch.Clear;
    Form4.EditIban.Clear;
    Form4.EditNumber.Clear;
  end
  else begin
    MessageBox(0,PChar(Form2.ADOQuery1.FieldByName('k_post').asString + ' ' +  Trim(Form2.ADOQuery1.FieldByName('k_fam').asString) + ' ' +
    Trim(Form2.ADOQuery1.FieldByName('k_imj').asString)+ ' ' +
    Trim(Form2.ADOQuery1.FieldByName('k_otc').asString)+ ' уже есть в таблице'),
    'Внимание!' ,MB_OK + MB_ICONWARNING);
    with Form1.ADOQuery2 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM [Zarplata].[dbo].[bpsRSall] ' +
              'WHERE b_fio LIKE '''+Form2.ADOQuery1.FieldByName('k_fam').Value+'%'' ' +
              'ORDER BY b_fio ');
      Open;
    end;

  end;

end;

procedure TForm2.ButtonCloseClick(Sender: TObject);
begin
  EditSearch.Clear;
  Form2.Close;
end;

procedure TForm2.ButtonEnabled;
begin
    if ADOQuery1.RecordCount <> 0 then
    begin
      ButtonAdd.Enabled := True;
    end
    else begin
      ButtonAdd.Enabled := False;
    end;
end;

procedure TForm2.ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
begin
  DBGridEh1.Columns[ToIndex].Index := FromIndex;
end;

procedure TForm2.DBGridEh1DblClick(Sender: TObject);
begin
  ButtonAdd.Click;
end;

procedure TForm2.EditSearchChange(Sender: TObject);
begin
if Length(EditSearch.Text) <> 0 then begin
    with ADOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT [k_post] ,[k_fam],[k_imj],[k_otc],[k_dr],[k_nceh] , Kadr.[k_prof], n_prof  ' +
              'FROM [KADR].[dbo].[kadr] AS KADR ' +
              'INNER JOIN [KADR].[dbo].[kl_Prof]  ' +
              'ON KADR.k_prof = [KADR].[dbo].[kl_Prof].k_prof ' +
              'WHERE k_fam LIKE '''+EditSearch.Text+'%'' ' +
              'OR  k_post LIKE '''+EditSearch.Text+'%''  ');
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
      SQL.Add('SELECT [k_post] ,[k_fam],[k_imj],[k_otc],[k_dr],[k_nceh] , Kadr.[k_prof], n_prof  ' +
              'FROM [KADR].[dbo].[kadr] AS KADR ' +
              'INNER JOIN [KADR].[dbo].[kl_Prof]  ' +
              'ON KADR.k_prof = [KADR].[dbo].[kl_Prof].k_prof');
      Open;
    end;
  end;
  ButtonEnabled;
end;

procedure TForm2.Form2Create(Sender: TObject);
begin
  EditSearch.Clear;
end;
procedure TForm2.onClose(Sender: TObject; var Action: TCloseAction);
begin
  EditSearch.Clear;
end;

end.
