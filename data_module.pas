unit data_module;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.DBXOdbc,
  Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.Comp.Client, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  Tdm = class(TDataModule)
    ds_schemas: TDataSource;
    conexao: TADOConnection;
    conexao_sql: TADOConnection;
    q_pagos: TADOQuery;
    q_historico: TADOQuery;
    q_acesso: TADOQuery;
    q_schemas: TFDQuery;
    q_aux: TFDQuery;
    q_schemasSCHEMA_NAME: TStringField;
    q_schemasDESCRIPTION: TStringField;
    q_schemasPRINCIPAL: TStringField;
    conexao_oracle: TFDConnection;
    q_consulta: TFDQuery;
    q_consultaCONTA_DEBITO: TStringField;
    q_consultaCONTA_CREDITO: TStringField;
    q_consultaVALOR: TFMTBCDField;
    q_consultaCCUSTO_DEBITO: TBCDField;
    q_consultaCCUSTO_CREDITO: TBCDField;
    q_consultaCOD_FABRICA: TBCDField;
    q_consultaNATUREZA: TStringField;
    q_consultaCOD_FABRICA_A: TStringField;
    q_realizado_saida_diversos: TFDQuery;
    q_saida_diversos: TFDQuery;
    q_realizado_saida_consorcio: TFDQuery;
    q_saida_consorcio: TFDQuery;
    q_realizado_media_saida_diversos: TFDQuery;
    q_realizado_saida_venda_direta: TFDQuery;
    q_saida_venda_direta: TFDQuery;
    q_realizado_saida_fornecedor_diversos: TFDQuery;
    q_saida_fornecedor_diversos: TFDQuery;
    q_realizado_saida_semi_novos: TFDQuery;
    q_saida_semi_novos: TFDQuery;
    q_realizado_media_saida_semi_novos: TFDQuery;
    q_realizado_saida_veiculos: TFDQuery;
    q_saida_veiculos: TFDQuery;
    q_realizado_media_saida_veiculos: TFDQuery;
    q_realizado_saida_luz: TFDQuery;
    q_saida_luz: TFDQuery;
    q_saida_luz2: TFDQuery;
    q_historico_saida_luz: TFDQuery;
    q_realizado_saida_aluguel: TFDQuery;
    q_saida_aluguel: TFDQuery;
    q_historico_saida_aluguel: TFDQuery;
    q_realizado_saida_impostos: TFDQuery;
    q_saida_impostos: TFDQuery;
    q_realizado_saida_transferencias: TFDQuery;
    q_saida_transferencias: TFDQuery;
    q_realizado_saida_outros: TFDQuery;
    q_realizado_saida_emprestimos: TFDQuery;
    q_saida_emprestimos: TFDQuery;
    q_historico_saida_emprestimos: TFDQuery;
    q_realizado_saida_pecas: TFDQuery;
    q_saida_pecas: TFDQuery;
    q_historico_saida_pecas: TFDQuery;
    q_realizado_saida_salarios: TFDQuery;
    q_saida_salarios: TFDQuery;
    q_historico_saida_salarios: TFDQuery;
    q_realizado_saida_rescisao: TFDQuery;
    q_saida_rescisao: TFDQuery;
    q_realizado_saida_socios: TFDQuery;
    q_saida_socios: TFDQuery;
    q_saldo_diario: TFDQuery;
    q_entradas_diaria_d: TFDQuery;
    q_historico_vendas_veic: TFDQuery;
    q_entradas_gm: TFDQuery;
    q_entradas_diaria_c: TFDQuery;
    q_entradas_bancos_seminovos: TFDQuery;
    q_cartoes: TFDQuery;
    q_entradas_comissao: TFDQuery;
    q_entradas_boleto: TFDQuery;
    q_vendas_dinheiro: TFDQuery;
    q_historico_vendas: TFDQuery;
    q_historico_saidas: TFDQuery;
    q_realizado_entradas_transferencias: TFDQuery;
    q_vendas_saidas: TFDQuery;
    q_vendas_veic: TFDQuery;
    q_entradas_transferencias: TFDQuery;
    q_vendas_cartoes: TFDQuery;
    q_entradas_cartao: TFDQuery;
    q_saidas_bancos: TFDQuery;
    q_entradas: TFDQuery;
    q_entradas_bancos: TFDQuery;
    q_saidas_bancos_fornecedor: TFDQuery;
    q_saidas_bancos_transferencias2: TFDQuery;
    q_saidas_bancos_transferencias: TFDQuery;
    q_saidas_bancos_salarios: TFDQuery;
    q_entradas_bancos_transferencias2: TFDQuery;
    q_entradas_bancos_transferencias: TFDQuery;
    q_saidas_bancos_aluguel: TFDQuery;
    q_saidas_bancos_seguro: TFDQuery;
    q_saidas_bancos_veiculos: TFDQuery;
    q_saidas_bancos_imposto: TFDQuery;
    q_saidas_bancos_pecas: TFDQuery;
    q_saidas_bancos_acionistas: TFDQuery;
    q_saidas_bancos_semi_novos: TFDQuery;
    q_saidas_bancos_venda_direta: TFDQuery;
    q_saidas_bancos_consorcio: TFDQuery;
    q_saidas_bancos_tarifas: TFDQuery;
    q_saidas_bancos_clientes: TFDQuery;
    q_saidas_bancos_juros: TFDQuery;
    q_entradas_financiamento_gmac: TFDQuery;
    q_entradas_financiamento_outros: TFDQuery;
    q_entradas_seguradora: TFDQuery;
    q_entradas_boletos: TFDQuery;
    q_entradas_consorcio_gmac: TFDQuery;
    q_entradas_consorcio_outros: TFDQuery;
    q_saidas_bancos_pj: TFDQuery;
    q_saidas_bancos_ferias: TFDQuery;
    q_saidas_bancos_rescisoes: TFDQuery;
    q_saidas_bancos_emplacamento: TFDQuery;
    q_saidas_bancos_judiciais: TFDQuery;
    q_saidas_bancos_cheque: TFDQuery;
    conexao_banco: TFDConnection;
    q_entradas_bancos_comissao: TFDQuery;
    q_saidas_bancos_rj: TFDQuery;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
