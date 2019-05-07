unit data_module;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.DBXOdbc,
  Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.Comp.Client, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef;

type
  Tdm = class(TDataModule)
    q_schemas: TADOQuery;
    q_schemasSCHEMA_NAME: TWideStringField;
    q_schemasDESCRIPTION: TWideStringField;
    q_schemasPRINCIPAL: TWideStringField;
    ds_schemas: TDataSource;
    conexao: TADOConnection;
    q_consulta: TADOQuery;
    q_consultaCONTA_DEBITO: TStringField;
    q_consultaCONTA_CREDITO: TStringField;
    q_consultaVALOR: TBCDField;
    q_consultaCCUSTO_DEBITO: TIntegerField;
    q_consultaCCUSTO_CREDITO: TIntegerField;
    q_consultaCOD_FABRICA: TIntegerField;
    q_aux: TADOQuery;
    conexao_sql: TADOConnection;
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
