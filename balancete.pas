unit balancete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, UNovo, UDados, ComObj, UCalculo, Clipbrd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tf_balancete = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    date1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Date2: TDateTimePicker;
    DataSource1: TDataSource;
    q_consulta: TADOQuery;
    q_consultaCONTA_DEBITO: TStringField;
    q_consultaCONTA_CREDITO: TStringField;
    q_consultaVALOR: TBCDField;
    q_consultaCCUSTO_DEBITO: TIntegerField;
    q_consultaCCUSTO_CREDITO: TIntegerField;
    q_consultaDATA: TDateTimeField;
    btgerar: TButton;
    dataset: TADODataSet;
    datasetCONTA: TStringField;
    datasetVALOR: TFloatField;
    datasetCUSTO: TIntegerField;
    dataset1: TADODataSet;
    dataset1DESPESA: TStringField;
    dataset1NOVO: TFloatField;
    dataset1VENDAS_DIRETA: TFloatField;
    dataset1CONSORCIO: TFloatField;
    dataset1USADOS: TFloatField;
    dataset1PECAS: TFloatField;
    dataset1MECANICA: TFloatField;
    dataset1FUNILARIA: TFloatField;
    dataset1POSTO_LAVAGEM: TFloatField;
    dataset1ADMINISTRACAO: TFloatField;
    dataset1ID: TIntegerField;
    q_consulta_data: TADOQuery;
    DataSource2: TDataSource;
    btexcel: TButton;
    dataset1NOVO1: TFloatField;
    dataset1VENDAS_DIRETA1: TFloatField;
    dataset1CONSORCIO1: TFloatField;
    dataset1USADOS1: TFloatField;
    dataset1PECAS1: TFloatField;
    dataset1MECANICA1: TFloatField;
    dataset1FUNILARIA1: TFloatField;
    dataset1POSTO_LAVAGEM1: TFloatField;
    dataset1ADMINISTRACAO1: TFloatField;
    btcalcular: TButton;
    dataset1NOVO_TOTAL: TFloatField;
    dataset1VENDAS_DIRETA_TOTAL: TFloatField;
    dataset1CONSORCIO_TOTAL: TFloatField;
    dataset1USADOS_TOTAL: TFloatField;
    dataset1PECAS_TOTAL: TFloatField;
    dataset1MECANICA_TOTAL: TFloatField;
    dataset1FUNILARIA_TOTAL: TFloatField;
    dataset1POSTO_LAVAGEM_TOTAL: TFloatField;
    dataset1ADMINISTRACAO_TOTAL: TFloatField;
    q_consulta2: TFDQuery;
    procedure btgerarClick(Sender: TObject);
    procedure inserir_linhas;
    procedure btexcelClick(Sender: TObject);
    procedure btcalcularClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public

  vetor : array[1..50] of string;
i, j, m : integer;
valor, valor_antigo : extended;
ObjDados : dados;
ObjCalculo : calculo;

    { Public declarations }
  end;

var
  f_balancete: Tf_balancete;

implementation

{$R *.dfm}

uses data_module, login;

procedure Tf_balancete.btcalcularClick(Sender: TObject);
begin

      ObjCalculo := calculo.criar;
      ObjCalculo.calcular;
      ObjCalculo.destruir;

      Showmessage('Cálculo realizado com sucesso!');

      btexcel.Enabled := true;

end;

procedure Tf_balancete.btexcelClick(Sender: TObject);

var linha, coluna : integer;
var planilha : variant;
var valorcampo : string;

begin

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  dataset1.Open;
  dataset1.First;

  for linha := 0 to dataset1.RecordCount - 1 do
  begin
    for coluna := 1 to dataset1.FieldCount do
    begin

      valorcampo := dataset1.Fields[coluna - 1].AsString;

      if coluna = 2 then
      begin
      planilha.cells[linha + 2,coluna] := valorCampo;
      planilha.cells[linha + 2,coluna].Numberformat :=  'Text';
      planilha.cells[linha + 2,coluna].Borders.LineStyle := 9;
      end
      else
      begin
      planilha.cells[linha + 2,coluna] := valorCampo;
      planilha.cells[linha + 2,coluna].Numberformat :=  '0,00';
      planilha.cells[linha + 2,coluna].HorizontalAlignment := 4;
      planilha.cells[linha + 2,coluna].Borders.LineStyle := 9;
      end;
    end;
   dataset1.Next;
  end;
  for coluna := 1 to dataset1.FieldCount do
  begin
    valorcampo := dataset1.Fields[coluna - 1].DisplayLabel;
    planilha.cells(1,coluna) := valorcampo;
    planilha.cells[1,coluna].Font.Bold := True;
    planilha.cells[linha + 2,coluna].Borders.LineStyle := 9;

  end;
  planilha.columns.Autofit;

end;

procedure Tf_balancete.btgerarClick(Sender: TObject);


begin

      inserir_linhas;

      ObjDados := dados.criar;
      ObjDados.inserir;
      ObjDados.destruir;

      showmessage('Dados Gerados!');


end;

procedure Tf_balancete.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := cafree;
end;

procedure Tf_balancete.inserir_linhas;

var

vetor1 : array[1..44] of string;
l : integer;

begin
      vetor1[1] := 'VENDEDORES DE VEÍCULOS';
      vetor1[2] := 'PREP. ENTREGA/REVISÃO';
      vetor1[3] := 'DESP.DIVERSAS C/VENDAS VC/VU';
      vetor1[4] := 'REMUNER. DIREGENTES';
      vetor1[5] := 'SALÁRIO GERENTE/SUPERV.';
      vetor1[6] :=  'SALÁRIO FUNCIONÁRIOS';
      vetor1[7] :=  'OUTROS SALÁRIOS/ORDEN.';
      vetor1[8] :=  'PROVISÃO DE FÉRIAS E 13º. SAL.';
      vetor1[9] :=  'ENCARGOS SOCIAIS';
      vetor1[10] := 'RESCISAO/ APOSENTADORIA';
      vetor1[11] := 'BENEFICIOS P/ EMPREGADOS';
      vetor1[12] := 'MANUT. VEÍCS. USADOS';
      vetor1[13] := 'VEIC. EM OPERAÇÃO';
      vetor1[14] := 'IMP. E ART. ESCRITÓRIO';
      vetor1[15] := 'MATERIAIS DIVERSOS';
      vetor1[16] := 'PROP./PROM. VENDAS';
      vetor1[17] := 'CONTRIB. E DOAÇÕES';
      vetor1[18] := 'DESP.C/ VENDAS PEÇAS/SERVS.';
      vetor1[19] := 'SERV.EXT.PROC. DADOS';
      vetor1[20] := 'SERV.EXT.OUTROS';
      vetor1[21] := 'VIAGENS/HOSPITAL.';
      vetor1[22] := 'PUBL.ASSIN.ASSOCIA.';
      vetor1[23] := 'LEGAIS E AUDITORIA';
      vetor1[24] := 'TELEFONE';
      vetor1[25] := 'DESP.TREINAMENTO';
      vetor1[26] := 'Juros Floor Plan';
      vetor1[27] := 'Creditos Juros Flooor Plan';
      vetor1[28] := 'JUROS/TIT. A PAGAR';
      vetor1[29] := 'DESP.MISCELÂNEAS';
      vetor1[30] := 'Outras Despesas operacionais';
      vetor1[31] := 'ALUGUÉIS';
      vetor1[32] := 'DEPRECIAÇÃO BENFEITORIAS';
      vetor1[33] := 'MANUT. IMÓVEIS';
      vetor1[34] := 'RATEIO CENTRO ADM';
      vetor1[35] := 'IMPOSTOS E TAXAS';
      vetor1[36] := 'Taxas Bancaria';
      vetor1[37] := 'SEGUROS PRÉDIOS/BEN';
      vetor1[38] := 'IRPJ E CSLL';
      vetor1[39] := 'AGUA, LUZ E FORÇA';
      vetor1[40] := 'SEGUROS DIVERSOS';
      vetor1[41] := 'OUTROS IMPOSTOS/TAX';
      vetor1[42] := 'MANUTENÇÃO EQTOS.';
      vetor1[43] := 'DEPRECIAÇÃO EQTOS.';
      vetor1[44] := 'ALUG.ARREND.EQTOS';

      l := 1;

      while l <= 44 do
      begin

      dataset1.Append;
      dataset1.FieldByName('ID').AsInteger := l;
      dataset1.FieldByName('DESPESA').ASsTRING :=vetor1[l];
      dataset1.post;


      l := l + 1;

      end;





end;


end.
