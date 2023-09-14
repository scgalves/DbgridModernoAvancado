program DbgridModernoAvancado;

uses
  Vcl.Forms,
  View.Principal in 'Src\View\View.Principal.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
