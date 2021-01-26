(*
  @author = Júnior Lira
  @scope  = Apresentar de forma prática como utilizar uma claase generica para
            criar listas enumeradas no Delphi.
  @date   = 25/01/2021
*)

program preencheLista;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {frmPrincipal},
  uSobre in 'view\uSobre.pas' {frmSobre},
  UEnumUtils in 'action\UEnumUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
