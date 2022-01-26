program contacts;

uses
  Vcl.Forms,
  main in 'main.pas' {Contacts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TContacts, main.Contacts);
  Application.Run;
end.
