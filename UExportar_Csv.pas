unit UExportar_Csv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient;

type
  Tf_exportar_csv = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edproduto: TEdit;
    btpesquisar: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    btincluir: TButton;
    btremover: TButton;
    Panel5: TPanel;
    btexportar: TButton;
    DataSource1: TDataSource;
    cd: TClientDataSet;
    cdCOD_PRODUTO: TIntegerField;
    cdDESCRICAO: TStringField;
    cdPRECO_VENDA: TFloatField;
    cdTAMANHO_DESC: TStringField;
    cdCOD_BARRAS: TStringField;
    cdCATEGORIA: TStringField;
    DataSource2: TDataSource;
    q_pesquisa_cod: TFDQuery;
    q_pesquisa_codCOD_PRODUTO: TFDAutoIncField;
    q_pesquisa_codDESCRICAO: TWideStringField;
    q_pesquisa_codPRECO_VENDA: TCurrencyField;
    q_pesquisa_codCOD_BARRAS: TWideStringField;
    q_pesquisa_codTAMANHO: TWideStringField;
    q_pesquisa_codCATEGORIA_DESC: TWideStringField;
    q_pesquisa_codCATEGORIA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_exportar_csv: Tf_exportar_csv;

implementation

{$R *.dfm}

procedure Tf_exportar_csv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := Cafree;
end;

end.
