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
  UFCTS_Dados in 'UFCTS_Dados.pas',
  UFcts_Excel in 'UFcts_Excel.pas',
  UPrevisao_Saidas in 'Financeiro\UPrevisao_Saidas.pas',
  cadastra_previsao in 'Financeiro\cadastra_previsao.pas' {f_cadastrar_despesa},
  inserir_realizado in 'Financeiro\inserir_realizado.pas' {f_inserir_realizado},
  fluxo_caixa in 'Financeiro\fluxo_caixa.pas' {f_fluxo_caixa},
  previsao_entrada in 'Financeiro\previsao_entrada.pas' {f_previsao_entradas},
  UPrevisao_Entradas in 'Financeiro\UPrevisao_Entradas.pas',
  URealizado_Entradas in 'Financeiro\URealizado_Entradas.pas',
  URealizado_Saidas in 'Financeiro\URealizado_Saidas.pas',
  UPrevisao_Saidas_Excel in 'Financeiro\UPrevisao_Saidas_Excel.pas',
  saldo_diario in 'Financeiro\saldo_diario.pas' {f_saldo_diario},
  USaldo_Diario in 'Financeiro\USaldo_Diario.pas',
  realizado_saidas_tela in 'Financeiro\realizado_saidas_tela.pas' {f_realizado_saidas},
  fluxo_semanal in 'Financeiro\fluxo_semanal.pas' {f_fluxo_semanal},
  UPrevisao_Semanal in 'Financeiro\UPrevisao_Semanal.pas',
  posicao_bancos in 'Financeiro\posicao_bancos.pas' {f_posicao_bancos},
  UBancos_Entradas in 'Financeiro\UBancos_Entradas.pas',
  f_cagerrando in 'f_cagerrando.pas' {f_carregar},
  uthread in 'uthread.pas',
  versao in 'versao.pas' {f_versao},
  data_module_facts in 'data_module_facts.pas' {dm_facts: TDataModule},
  mamonas in 'mamonas.pas' {f_mamonas},
  f_acessos in 'f_acessos.pas' {f_acesso},
  UComissoes in 'Vendas\UComissoes.pas' {f_vendas_comissoes},
  UComissoes_Calculo in 'Vendas\UComissoes_Calculo.pas',
  UAltera_Comissoes in 'Vendas\UAltera_Comissoes.pas' {f_vendas_altera},
  UComissoes_Oficina in 'Vendas\UComissoes_Oficina.pas' {f_comissoes_oficina},
  UComissoes_Produtivo in 'Vendas\UComissoes_Produtivo.pas',
  f_load in 'Vendas\f_load.pas' {fload},
  UBanco_Entradas_Mes in 'Financeiro\UBanco_Entradas_Mes.pas',
  data_module3 in 'data_module3.pas' {dm3: TDataModule},
  f_processos in 'Juridico\f_processos.pas' {form_processos},
  cadastrar_processo in 'Juridico\cadastrar_processo.pas' {f_cadastrar_processo},
  data_processos in 'Juridico\data_processos.pas' {dm_processos: TDataModule},
  UExportar_Csv in 'UExportar_Csv.pas' {f_exportar_csv};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cont�bil';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tf_login, f_login);
  Application.CreateForm(Tdm_facts, dm_facts);
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(Tdm3, dm3);
  Application.CreateForm(Tdm_processos, dm_processos);
  //Application.CreateForm(Tf_exportar_csv, f_exportar_csv);
  Application.Run;
end.
