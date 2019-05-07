unit data_processos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient;

type
  Tdm_processos = class(TDataModule)
    cds_advogados: TClientDataSet;
    cds_advogadosNOME: TStringField;
    cds_advogadosEMAIL: TStringField;
    DataSource3: TDataSource;
    cds_testemunhas: TClientDataSet;
    cds_testemunhasNOME: TStringField;
    cds_testemunhasEMAIL: TStringField;
    DataSource2: TDataSource;
    cds_preposto: TClientDataSet;
    cds_prepostoNOME: TStringField;
    cds_prepostoEMAIL: TStringField;
    DataSource1: TDataSource;
    cds_audiencias: TClientDataSet;
    cds_audienciasDATA_AUDIENCIA: TDateField;
    cds_audienciasHORA_AUDIENCIA: TTimeField;
    cds_audienciasTIPO_AUDIENCIA: TStringField;
    cds_deposito_judiciais: TClientDataSet;
    cds_deposito_judiciaisDATA_DEBITO: TDateTimeField;
    cds_deposito_judiciaisVALOR_DEPOSITO: TFloatField;
    cds_deposito_judiciaisAGENCIA: TStringField;
    cds_deposito_judiciaisBANCO: TStringField;
    cds_deposito_judiciaisCONTA: TStringField;
    cds_deposito_judiciaisDATA_LEVANTAMENTO: TDateField;
    cds_deposito_judiciaisVALOR_LEVANTAMENTO: TFloatField;
    cds_deposito_judiciaisCORRECAO: TFloatField;
    cds_deposito_judiciaisPAGAMENTO: TStringField;
    cds_deposito_judiciaisOBSERVACAO: TStringField;
    DataSource5: TDataSource;
    cds_bloqueios: TClientDataSet;
    cds_bloqueiosDATA_BLOQUEIO: TDateField;
    cds_bloqueiosVALOR_SOLICITADO: TFloatField;
    cds_bloqueiosVALOR_BLOQUEADO: TFloatField;
    cds_bloqueiosBANCO: TStringField;
    cds_bloqueiosAGENCIA: TStringField;
    cds_bloqueiosCONTA: TStringField;
    cds_bloqueiosDATA_DESBLOQUEIO: TDateField;
    cds_bloqueiosVALOR_DESBLOQUEIO: TFloatField;
    cds_bloqueiosVALOR_DADO_PAGAMENTO: TFloatField;
    cds_bloqueiosSALDO: TFloatField;
    cds_bloqueiosOBS: TStringField;
    DataSource6: TDataSource;
    cds_penhoras: TClientDataSet;
    cds_penhorasDATA_MANDADO_PENHORA: TDateField;
    cds_penhorasDATA_INDICACAO: TDateField;
    cds_penhorasVALOR_PENHORA: TFloatField;
    cds_penhorasBENS_PENHORADO: TStringField;
    cds_penhorasOBSERVACAO: TStringField;
    DataSource7: TDataSource;
    DataSource4: TDataSource;
    q_salvar_audiencias: TFDQuery;
    q_aux: TFDQuery;
    q_salvar: TFDQuery;
    DataSource8: TDataSource;
    cds_outros: TClientDataSet;
    cds_outrosFINALIDADE: TStringField;
    cds_outrosDATA_DEPOSITO: TDateField;
    cds_outrosVALOR_DEPOSITO: TFloatField;
    cds_outrosBANCO: TStringField;
    cds_outrosAGENCIA: TStringField;
    cds_outrosCONTA: TStringField;
    cds_outrosOBSERVACAO: TStringField;
    q_salvar_preposto: TFDQuery;
    q_salvar_testemunhas: TFDQuery;
    q_salvar_advogados: TFDQuery;
    q_salvar_deposito: TFDQuery;
    q_salvar_bloqueios: TFDQuery;
    q_salvar_penhoras: TFDQuery;
    q_salvar_outros: TFDQuery;
    cds_audienciasFECHADO: TBooleanField;
    q_buscar_processo: TFDQuery;
    q_buscar_processoIDPROCESSO: TFDAutoIncField;
    q_buscar_processoTIPO: TWideStringField;
    q_buscar_processoPROCESSO: TWideStringField;
    q_buscar_processoRECLAMANTE_AUTOR: TWideStringField;
    q_buscar_processoRECLAMADO_REU: TWideStringField;
    q_buscar_processoJUIZO_VARA: TWideStringField;
    q_buscar_processoNOME_JUIZ: TWideStringField;
    q_buscar_processo_audiencia: TFDQuery;
    q_buscar_processo_audienciaIDPROCESSO: TIntegerField;
    q_buscar_processo_audienciaDATA_AUDIENCIA: TDateField;
    q_buscar_processo_audienciaHORA_AUDIENCIA: TTimeField;
    q_buscar_processo_audienciaTIPO_AUDIENCIA: TWideStringField;
    q_buscar_processo_preposto: TFDQuery;
    q_buscar_processo_prepostoIDPROCESSO: TIntegerField;
    q_buscar_processo_prepostoNOME: TStringField;
    q_buscar_processo_prepostoEMAIL: TStringField;
    q_buscar_processo_testemunhas: TFDQuery;
    q_buscar_processo_advogados: TFDQuery;
    q_buscar_processo_testemunhasIDPROCESSO: TIntegerField;
    q_buscar_processo_testemunhasNOME: TStringField;
    q_buscar_processo_testemunhasEMAIL: TStringField;
    q_buscar_processo_advogadosIDPROCESSO: TIntegerField;
    q_buscar_processo_advogadosADVOGADO: TStringField;
    q_buscar_processo_advogadosEMAIL: TStringField;
    q_buscar_processo_depositos_judiciais: TFDQuery;
    q_buscar_processo_depositos_judiciaisIDPROCESSO: TIntegerField;
    q_buscar_processo_depositos_judiciaisDATA_DEBITO: TDateField;
    q_buscar_processo_depositos_judiciaisVALOR_DEPOSITADO: TFloatField;
    q_buscar_processo_depositos_judiciaisBANCO: TWideStringField;
    q_buscar_processo_depositos_judiciaisAGENCIA: TWideStringField;
    q_buscar_processo_depositos_judiciaisCONTA: TWideStringField;
    q_buscar_processo_depositos_judiciaisDATA_LEVANTAMENTO: TDateField;
    q_buscar_processo_depositos_judiciaisVALOR_LEVANTAMENTO: TFloatField;
    q_buscar_processo_depositos_judiciaisCORRECAO: TFloatField;
    q_buscar_processo_depositos_judiciaisPAGAMENTO: TWideStringField;
    q_buscar_processo_depositos_judiciaisOBSERVACAO: TStringField;
    q_buscar_processo_bloqueios: TFDQuery;
    q_buscar_processo_bloqueiosIDPROCESSO: TIntegerField;
    q_buscar_processo_bloqueiosDATA_BLOQUEIO: TDateField;
    q_buscar_processo_bloqueiosVALOR_SOLICITADO: TFloatField;
    q_buscar_processo_bloqueiosVALOR_BLOQUEIO: TFloatField;
    q_buscar_processo_bloqueiosBANCO: TWideStringField;
    q_buscar_processo_bloqueiosAGENCIA: TWideStringField;
    q_buscar_processo_bloqueiosCONTA: TWideStringField;
    q_buscar_processo_bloqueiosDATA_DESBLOQUEIO: TDateField;
    q_buscar_processo_bloqueiosVALOR_DESBLOQUEIO: TFloatField;
    q_buscar_processo_bloqueiosVALOR_DADO_PAGAMENTO: TFloatField;
    q_buscar_processo_bloqueiosSALDO: TFloatField;
    q_buscar_processo_bloqueiosOBSERVACAO: TWideStringField;
    q_buscar_processo_penhoras: TFDQuery;
    q_buscar_processo_penhorasIDPROCESSO: TIntegerField;
    q_buscar_processo_penhorasDATA_MANDADO_PENHORA: TDateField;
    q_buscar_processo_penhorasDATA_INDICACAO: TDateField;
    q_buscar_processo_penhorasVALOR_PENHORA: TFloatField;
    q_buscar_processo_penhorasBENS_PENHORADOS: TWideStringField;
    q_buscar_processo_penhorasOBSERVACAO: TWideStringField;
    q_buscar_processo_outros: TFDQuery;
    q_buscar_processo_outrosIDPROCESSO: TIntegerField;
    q_buscar_processo_outrosFINALIDADE: TWideStringField;
    q_buscar_processo_outrosDATA_DEPOSITO: TDateField;
    q_buscar_processo_outrosVALOR_DEPOSITADO: TFloatField;
    q_buscar_processo_outrosBANCO: TWideStringField;
    q_buscar_processo_outrosAGENCIA: TWideStringField;
    q_buscar_processo_outrosCONTA: TWideStringField;
    q_buscar_processo_outrosOBSERVACAO: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_processos: Tdm_processos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses data_module;

{$R *.dfm}

end.