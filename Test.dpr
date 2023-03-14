program Test;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  MainAdd in 'MainAdd.pas' {Form2},
  MainEdit in 'MainEdit.pas' {Form3},
  MainAddFormPerson in 'MainAddFormPerson.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
