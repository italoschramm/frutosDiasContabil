unit data_module_facts;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm_facts = class(TDataModule)
    q_total_lucro: TADOQuery;
    DataSource4: TDataSource;
    tb_novos: TADOTable;
    tb_novosDESPESAS_TOTAIS: TStringField;
    tb_novosCONTA: TIntegerField;
    tb_novosSALDO_ANTERIOR_NOVOS: TFloatField;
    tb_novosMES_NOVOS: TFloatField;
    tb_novosMES_FILIAL: TFloatField;
    tb_novosMES_CONSORCIO: TFloatField;
    tb_novosMES_DIRETAS: TFloatField;
    tb_novosMES_FI: TFloatField;
    tb_novosTOTAL_ANTERIOR: TFloatField;
    tb_novosAJUSTES: TFloatField;
    tb_novosTOTAL: TFloatField;
    tb_usados: TADOTable;
    tb_usadosDESPESAS_TOTAIS: TStringField;
    tb_usadosCONTA: TIntegerField;
    tb_usadosSALDO_ANTERIOR: TFloatField;
    tb_usadosMES: TFloatField;
    tb_usadosSALDO_ATUAL: TFloatField;
    tb_usadosAJUSTES: TFloatField;
    tb_usadosTOTAL: TFloatField;
    q_consulta_mes_veiculos_usados: TADOQuery;
    q_consulta_mes_veiculos_usadosIDSALDO: TAutoIncField;
    q_consulta_mes_veiculos_usadosMES: TWideStringField;
    q_consulta_mes_veiculos_usadosANO: TWideStringField;
    q_consulta_mes_veiculos_usadosCONTA: TIntegerField;
    q_consulta_mes_veiculos_usadosSALDO: TFloatField;
    q_limpa_mes: TADOQuery;
    q_consulta_mes: TADOQuery;
    q_finaliza_mes: TADOQuery;
    q_buscar2: TADOQuery;
    q_inserir: TADOQuery;
    q_buscar: TADOQuery;
    q_limpar: TADOQuery;
    q_zerar: TADOQuery;
    q_salvar: TADOQuery;
    q_buscar_total: TADOQuery;
    tb_pecas: TADOTable;
    tb_pecasDESPESAS_TOTAIS: TStringField;
    tb_pecasCONTA: TIntegerField;
    tb_pecasSALDO_ANTERIOR_PECAS: TFloatField;
    tb_pecasMES_PECAS: TFloatField;
    tb_pecasMES_POSTO: TFloatField;
    tb_pecasTOTAL_ANTERIOR: TFloatField;
    tb_pecasAJUSTES: TFloatField;
    tb_pecasTOTAL: TFloatField;
    tb_funilaria: TADOTable;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    tb_oficina: TADOTable;
    tb_oficinaDESPESAS_TOTAIS: TStringField;
    tb_oficinaCONTA: TIntegerField;
    tb_oficinaSALDO_ANTERIOR: TFloatField;
    tb_oficinaMES: TFloatField;
    tb_oficinaSALDO_ATUAL: TFloatField;
    tb_oficinaAJUSTES: TFloatField;
    tb_oficinaTOTAL: TFloatField;
    tb_administracao: TADOTable;
    tb_administracaoDESPESAS_TOTAIS: TStringField;
    tb_administracaoCONTA: TIntegerField;
    tb_administracaoSALDO_ANTERIOR_ADM: TFloatField;
    tb_administracaoMES_ADM: TFloatField;
    tb_administracaoMES_COMP: TFloatField;
    tb_administracaoTOTAL_ANTERIOR: TFloatField;
    tb_administracaoAJUSTES: TFloatField;
    tb_administracaoTOTAL: TFloatField;
    tb_total: TADOTable;
    tb_totalDESPESAS_TOTAIS: TStringField;
    tb_totalCONTA: TIntegerField;
    tb_totalC1: TFloatField;
    tb_totalC2: TFloatField;
    tb_totalC3: TFloatField;
    tb_totalC4: TFloatField;
    tb_totalC5: TFloatField;
    tb_totalC6: TFloatField;
    tb_totalC7: TFloatField;
    tb_totalC8: TFloatField;
    tb_totalC9: TFloatField;
    tb_totalC10: TFloatField;
    tb_totalC11: TFloatField;
    tb_totalC12: TFloatField;
    tb_totalC13: TFloatField;
    tb_totalC14: TFloatField;
    tb_receita_novos: TADOTable;
    tb_receita_novosDESPESAS_TOTAIS: TStringField;
    tb_receita_novosCONTA_R: TIntegerField;
    tb_receita_novosCONTA_D: TIntegerField;
    tb_receita_novosC1: TIntegerField;
    tb_receita_novosC2: TFloatField;
    tb_receita_novosC3: TFloatField;
    tb_receita_novosC4: TFloatField;
    tb_receita_novosC5: TFloatField;
    tb_receita_novosC6: TIntegerField;
    tb_receita_novosC7: TFloatField;
    tb_receita_novosC8: TFloatField;
    tb_receita_novosC9: TFloatField;
    tb_receita_novosC10: TFloatField;
    q_total_pecas: TADOQuery;
    DataSource8: TDataSource;
    DataSource7: TDataSource;
    DataSource6: TDataSource;
    DataSource5: TDataSource;
    q_total_administracao: TADOQuery;
    q_total_novos: TADOQuery;
    q_total_funilaria: TADOQuery;
    q_total_oficina: TADOQuery;
    q_total_usados: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    tb_receita_usados: TADOTable;
    DataSource9: TDataSource;
    q_total_receita_usados: TADOQuery;
    tb_receita_usadosDESPESAS: TStringField;
    tb_receita_usadosCONTA: TIntegerField;
    tb_receita_usadosCONTA2: TIntegerField;
    tb_receita_usadosC1: TIntegerField;
    tb_receita_usadosC2: TFloatField;
    tb_receita_usadosC3: TFloatField;
    tb_receita_usadosC4: TFloatField;
    tb_receita_usadosC5: TFloatField;
    tb_receita_usadosC6: TFloatField;
    tb_receita_usadosC7: TFloatField;
    tb_receita_usadosC8: TFloatField;
    q_total_receita_novos: TADOQuery;
    q_consulta_os: TFDQuery;
    q_buscar_usados: TFDQuery;
    q_buscar_novos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_facts: Tdm_facts;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses data_module;

{$R *.dfm}

end.
