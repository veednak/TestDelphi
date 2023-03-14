unit MainEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TForm3 = class(TForm)
    ButtonClose: TButton;
    ButtonEdit: TButton;
    EditIban: TEdit;
    LabelIban: TLabel;
    PanelTop: TPanel;
    Labeln1: TLabel;
    LabelPost: TLabel;
    Labeln2: TLabel;
    Labelfio: TLabel;
    Labeln3: TLabel;
    LabelCeh: TLabel;
    Labeln5: TLabel;
    LabelProf: TLabel;
    Labeln6: TLabel;
    LabelDr: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    ImageList1: TImageList;
    procedure ButtonEditClick(Sender: TObject);
    procedure EditIbanChange(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure RSallEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Main;

procedure TForm3.ButtonCloseClick(Sender: TObject);
begin
  EditIban.Clear;
  Form3.Close;
end;

procedure TForm3.ButtonEditClick(Sender: TObject);
begin
  RSallEdit;
  EditIban.Clear;
  Form3.Close;
end;

procedure TForm3.RSallEdit;
var Res: Integer;
begin
  Res :=  MessageBox(Form1.Handle,
  PChar('Вы действительно хотите изменить запись?'),
  PChar('Предупреждение!'),MB_ICONQUESTION + MB_YESNO);
  case Res of
    IDYES : begin
      with Form1.ADOQuery1 do
      begin
        Edit;
        FieldByName('b_iban').Value := Form3.EditIban.Text;
        Post;
      end;
    end;
    end;
end;

procedure TForm3.EditIbanChange(Sender: TObject);
begin
  EditIban.SelLength:=0;
  EditIban.MaxLength:=28;
  var s:String;
  var i, l:Integer;
  s := EditIban.Text;
  i := 1;
  l := 0;
  // Проверка на недопустимые символы
  while ((i <= length(s)) and (l = 0)) do
  begin
    if s[i] in ['А'..'Я','а'..'я','.',',',';',':','-','!','?','#','@','$',' ','%','*','"',''''] then l := 1;
    i := i + 1;
  end;
  if(l = 1) then
  begin
    showMessage('Введены недопустимые символы');
    EditIban.Clear;
  end;
  if Length(Form3.EditIban.Text) <> 0 then
  begin
    ButtonEdit.Enabled := True;
  end
  else
  begin
    ButtonEdit.Enabled := False;
  end;
  if Length(Form3.EditIban.Text) < 28 then
  begin
    ButtonEdit.Enabled := True;
  end;
end;

end.
