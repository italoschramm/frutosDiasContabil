program Project1;

uses
  Vcl.Forms,
  balancete in 'balancete.pas' {f_balancete},
  data_module in 'data_module.pas' {dm: TDataModule},
  login in 'login.pas' {f_login},
  u_schemas in 'u_schemas.pas' {F_schemas},
  UDados in 'UDados.pas',
  UCalculo in 'UCalculo.pas',
  principal in 'principal.pas' {f_principal},
  UFcts in 'UFcts.pas' {f_fcts},
  previsao_fluxo in 'Financeiro\previsao_fluxo.pas' {f_previsao_fluxo},
  UDias in 'Financeiro\UDias.pas',
  UContas_Pagar in 'Financeiro\UContas_Pagar.pas',
  UFCTS_Dados in 'UFCTS_Dados.pas',
  UFcts_Excel in 'UFcts_Excel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Contábil';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tf_login, f_login);
  Application.CreateForm(Tf_principal, f_principal);
  Application.Run;
end.
