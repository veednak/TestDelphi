unit MainAddFormPerson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    EditIban: TEdit;
    PanelBottom: TPanel;
    ButtonAdd: TButton;
    ButtonClose: TButton;
    GroupBox2: TGroupBox;
    LabelCeh: TLabel;
    LabelDr: TLabel;
    Labelfio: TLabel;
    Labeln1: TLabel;
    Labeln2: TLabel;
    Labeln3: TLabel;
    Labeln4: TLabel;
    Labeln5: TLabel;
    Labeln6: TLabel;
    LabelNCeh: TLabel;
    LabelPost: TLabel;
    LabelProf: TLabel;
    ImageList1: TImageList;
    EditNumber: TEdit;
    LabelBY: TLabel;
    LabelBPS: TLabel;
    procedure RAdd;
    procedure EditIbanChange(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure EditNumberChange(Sender: TObject);
    procedure onCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Main, MainAdd;

procedure TForm4.RAdd;
begin
  with Form1.ADOQuery1 do
  begin
    Insert;
    FieldByName('b_iban').Value :=  Form4.LabelBY.Caption + Form4.EditIban.Text + Form4.LabelBPS.Caption + Form4.EditNumber.Text;
    FieldByName('b_post').Value := Form2.ADOQuery1.FieldByName('k_post').Value;
    FieldByName('b_fio').Value := Trim(Form2.ADOQuery1.FieldByName('k_fam').Value) +
    ' ' + Trim(Form2.ADOQuery1.FieldByName('k_imj').Value) + ' ' + Trim(Form2.ADOQuery1.FieldByName('k_otc').Value);
    FieldByName('b_ceh').Value := Form2.ADOQuery1.FieldByName('k_nceh').Value;
    //FieldByName('b_nceh').Value := Form2.ADOQuery1.FieldByName('NAIPODK').Value;
    FieldByName('b_prof').Value := Form2.ADOQuery1.FieldByName('n_prof').Value;
    FieldByName('b_dr').Value := Form2.ADOQuery1.FieldByName('k_dr').Value;
    Post;
  end;
  Form4.Close;
end;
procedure TForm4.ButtonAddClick(Sender: TObject);
begin
  RAdd;
  EditIban.Clear;
end;

procedure TForm4.ButtonCloseClick(Sender: TObject);
begin
  EditIban.Clear;
  EditNumber.Clear;
  Form4.Close;
end;

var Test1:Integer;
var Test2:Integer;

procedure TForm4.EditIbanChange(Sender: TObject);
begin
  EditIban.MaxLength:=2;
  var s:String;
  var i, l:Integer;
  s := EditIban.Text;
  i := 1;
  l := 0;
// Проверка на недопустимые символы
  while ((i <= length(s)) and (l = 0)) do
  begin
    if s[i] in ['.',',',';',':','-','!','?','#','@','$',' ','%','*','"',''''] then l := 1;
    i := i + 1;
  end;
  if(l = 1) then
  begin
    showMessage('Введены недопустимые символы');
    EditIban.Clear;
  end;
  begin
    if (Length(Form4.EditIban.Text) = 2)     then
    begin
      EditNumber.SetFocus;
      Test1 := 1;
      if (Test2 = 1) then begin
        ButtonAdd.Enabled := True;
      end;
    end
    else
    begin
     ButtonAdd.Enabled := False;
    end;
  end;
end;



procedure TForm4.EditNumberChange(Sender: TObject);
begin
  EditNumber.MaxLength:=8;
  var s:String;
  var i, l:Integer;
  s := EditNumber.Text;
  i := 1;
  l := 0;

// Проверка на недопустимые символы
  while ((i <= length(s)) and (l = 0)) do
  begin
    if s[i] in ['.',',',';',':','-','!','?','#','@','$',' ','%','*','"',''''] then l := 1;
    i := i + 1;
  end;
  if(l = 1) then
  begin
    showMessage('Введены недопустимые символы');
    EditNumber.Clear;
  end;
  begin
    if (Length(Form4.EditNumber.Text) = 8)  then
    begin
      Test2 := 1;
      if (Test1 = 1) then begin
        ButtonAdd.Enabled := True;
      end;
    end
    else if (Length(Form4.EditNumber.Text) = 0) then
    begin
      try
        EditIban.SetFocus;
        ButtonAdd.Enabled := False;
        EditIban.SelStart:=length(EditIban.Text)+1;
        except
      end;
    end
    else
    begin
     ButtonAdd.Enabled := False;
    end;
  end;
end;


procedure TForm4.onCreate(Sender: TObject);
begin
  ActiveControl:=EditIban;
end;

end.
