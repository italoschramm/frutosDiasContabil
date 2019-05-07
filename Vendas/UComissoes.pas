unit UComissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.Win.ADODB, UComissoes_Calculo,
  RpDefine, RpRave, RpCon, RpConDS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tf_vendas_comissoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btpesquisar: TBitBtn;
    tb_tela: TADOTable;
    DataSource1: TDataSource;
    q_limpa: TADOQuery;
    Label1: TLabel;
    cbmes: TComboBox;
    Label2: TLabel;
    cbano: TComboBox;
    q_inserir: TADOQuery;
    q_update: TADOQuery;
    btimprimir: TButton;
    rv_comissao: TRvProject;
    q_comissao: TADOQuery;
    q_comissaoDATA_VENDA: TWideStringField;
    q_comissaoCLIENTE: TStringField;
    q_comissaoCOD: TStringField;
    q_comissaoVEICULO_DESC: TStringField;
    q_comissaoVALOR_NF: TFloatField;
    dt1: TRvDataSetConnection;
    q_vendedores: TADOQuery;
    dt2: TRvDataSetConnection;
    q_vendedoresVENDEDOR_NOME: TStringField;
    q_comissaoVENDEDOR: TStringField;
    q_vendedoresVENDEDOR: TStringField;
    q_vendedoresTOTAL: TFloatField;
    q_vendedoresMES_ANO: TStringField;
    q_comissaoMARGEM_LIQUIDA: TFloatField;
    q_vendedoresTOTAL_MARGEM: TFloatField;
    q_vendedoresTOTAL1: TFloatField;
    q_vendedoresQUANTIDADE: TIntegerField;
    q_vendedoresP_LIQUIDA: TBCDField;
    q_vendedoresPM_LIQUIDA: TIntegerField;
    q_vendedoresTOTAL2: TFloatField;
    q_vendedoresTOTAL3: TFloatField;
    q_vendedoresTOTAL4: TFloatField;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    q_vendedoresACESSORIOS: TFloatField;
    q_vendedoresP_ACESSORIO: TIntegerField;
    q_vendedoresVALOR_ACESSORIOS: TFloatField;
    dt3: TRvDataSetConnection;
    q_copia: TADOQuery;
    q_deleta: TADOQuery;
    tb_vendas_tela: TADOTable;
    tb_telaDATA_VENDA: TWideStringField;
    tb_telaVEICULO_DESC: TStringField;
    tb_telaVENDEDOR: TStringField;
    tb_telaVENDEDOR_NOME: TStringField;
    tb_telaCHASSI: TStringField;
    tb_telaCHASSI_RESUMIDO: TStringField;
    tb_telaNF: TStringField;
    tb_telaVALOR_NF: TFloatField;
    tb_telaDATA_NF_VENDA: TStringField;
    tb_telaVALOR_NF_COMPRA: TFloatField;
    tb_telaLUCRO_BRUTO: TFloatField;
    tb_telaFI_RETORNO_BRUTO: TFloatField;
    tb_telaTOTAL_FI: TFloatField;
    tb_telaBONUS_GM: TFloatField;
    tb_telaBONUS_PERFOMANCE: TFloatField;
    tb_telaN_DOCUMENTO: TStringField;
    tb_telaTOTAL_INCENTIVO: TFloatField;
    tb_telaDESCONTO_COMERCIAL: TFloatField;
    tb_telaDESPESA_FIXA: TFloatField;
    tb_telaFINANCEIRA: TStringField;
    tb_telaCORTESIA_DESC: TStringField;
    tb_telaCUSTO_CORTESIA: TFloatField;
    tb_telaTOTAL_DESPESA: TFloatField;
    tb_telaMARGEM: TFloatField;
    tb_telaPERCENTUAL: TFloatField;
    tb_telaCLIENTE: TStringField;
    tb_telaMES_ANO: TStringField;
    tb_telaACESSORIOS: TFloatField;
    tb_vendas_telaVENDEDOR_NOME: TStringField;
    tb_vendas_telaVENDEDOR: TStringField;
    tb_vendas_telaMES_ANO: TStringField;
    tb_vendas_telaTOTAL: TFloatField;
    tb_vendas_telaTOTAL_MARGEM: TFloatField;
    tb_vendas_telaTOTAL1: TFloatField;
    tb_vendas_telaQUANTIDADE: TIntegerField;
    tb_vendas_telaP_LIQUIDA: TFloatField;
    tb_vendas_telaPM_LIQUIDA: TFloatField;
    tb_vendas_telaTOTAL2: TFloatField;
    tb_vendas_telaTOTAL3: TFloatField;
    tb_vendas_telaP_ACESSORIO: TFloatField;
    tb_vendas_telaTOTAL4: TFloatField;
    tb_vendas_telaVALOR_ACESSORIOS: TFloatField;
    tb_vendas_telaACESSORIOS: TFloatField;
    q_totalizar: TADOQuery;
    q_total: TADOQuery;
    q_vendedoresVALOR_EMPLACAMENTO: TFloatField;
    q_vendedoresVALOR_SEGURO: TFloatField;
    q_vendedoresVALOR_SPM: TFloatField;
    q_vendedoresVALOR_CAMPANHA_TRACKER: TFloatField;
    q_vendedoresVALOR_LEAD_OPV: TFloatField;
    q_vendedoresVALOR_PERFOMANCE: TFloatField;
    q_vendedoresEMPLACAMENTO: TFloatField;
    q_vendedoresSEGURO: TFloatField;
    q_vendedoresSPM: TFloatField;
    q_vendedoresCAMPANHA_TRACKER: TFloatField;
    q_vendedoresLEAD_OPV: TFloatField;
    q_vendedoresPREMIACAO_PERFOMANCE: TFloatField;
    q_vendedoresTOTAL_BONIFICACAO: TFloatField;
    Button1: TButton;
    tb_telaCUSTO_CORTESIA_ADC: TFloatField;
    tb_telaP_ACESSORIOS: TFloatField;
    tb_telaEMPLACAMENTO: TFloatField;
    tb_telaP_EMPLACAMENTO: TFloatField;
    tb_telaSEGURO: TFloatField;
    tb_telaP_SEGURO: TFloatField;
    tb_telaSPM: TFloatField;
    tb_telaP_SPM: TFloatField;
    tb_telaCAMPANHA_TRACKER: TFloatField;
    tb_telaLEAD_OPV: TFloatField;
    tb_telaP_LEAD_OPV: TFloatField;
    tb_telaPREMIACAO_PERFOMANCE: TFloatField;
    q_pesquisa1: TFDQuery;
    q_busca_os: TFDQuery;
    q_busca_fi: TFDQuery;
    q_acessorios: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btpesquisarClick(Sender: TObject);
    procedure data;
    procedure btimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure total;
  private
    { Private declarations }
  public
  data_inicial, data_final : string;
  objcomissoes : comissoes;
    { Public declarations }
  end;

var
  f_vendas_comissoes: Tf_vendas_comissoes;

implementation

{$R *.dfm}

uses data_module, UAltera_Comissoes;

procedure Tf_vendas_comissoes.btpesquisarClick(Sender: TObject);
begin

      data;
      q_limpa.Close;
      q_limpa.ExecSQL();
      objcomissoes := comissoes.criar;
      objcomissoes.pesquisar;
      objcomissoes.destruir;

      //total;

      q_comissao.close;
      q_comissao.Open;

      q_total.Close;
      q_total.Parameters.ParamByName('mes_ano').Value := cbmes.text + '/' + cbano.Text;
      q_total.Open;

      q_deleta.Close;
      q_deleta.Parameters.ParamByName('mes_ano').Value :=  cbmes.text + '/' + cbano.Text;
      q_deleta.ExecSQL();

      q_copia.Close;
      q_copia.Parameters.ParamByName('mes_ano').Value :=  cbmes.text + '/' + cbano.Text;
      q_copia.ExecSQL();

      q_totalizar.Close;
      q_totalizar.ExecSQL();


      lb2.Caption := formatfloat('#.00', q_total.FieldByName('TOTAL_NF').ASFLOAT);
      lb4.Caption := inttostr(q_total.FieldByName('QUANTIDADE').ASinteger);
      lb1.Visible := true;
      lb2.Visible := true;
      lb3.Visible := true;
      lb4.Visible := true;

      q_vendedores.Close;
      q_vendedores.Parameters.ParamByName('mes_ano').Value := cbmes.text + '/' + cbano.Text;
      q_vendedores.Open;

      Showmessage('Gerado com Sucesso!');
      btimprimir.enabled := true;


end;

procedure Tf_vendas_comissoes.Button1Click(Sender: TObject);
begin

      q_comissao.close;
      q_comissao.Open;

      q_total.Close;
      q_total.Parameters.ParamByName('mes_ano').Value := cbmes.text + '/' + cbano.Text;
      q_total.Open;

      q_deleta.Close;
      q_deleta.ExecSQL();

      q_copia.Close;
      q_copia.Parameters.ParamByName('mes_ano').Value :=  cbmes.text + '/' + cbano.Text;
      q_copia.ExecSQL();

      q_totalizar.Close;
      q_totalizar.ExecSQL();


      lb2.Caption := formatfloat('#.00', q_total.FieldByName('TOTAL_NF').ASFLOAT);
      lb4.Caption := inttostr(q_total.FieldByName('QUANTIDADE').ASinteger);
      lb1.Visible := true;
      lb2.Visible := true;
      lb3.Visible := true;
      lb4.Visible := true;

      q_vendedores.Close;
      q_vendedores.Parameters.ParamByName('mes_ano').Value := cbmes.text + '/' + cbano.Text;
      q_vendedores.Open;

      btimprimir.enabled := true;

end;

procedure Tf_vendas_comissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := cafree;
end;

procedure Tf_vendas_comissoes.FormCreate(Sender: TObject);
begin
      q_vendedores.Close;
      tb_tela.Close;
end;

procedure Tf_vendas_comissoes.btimprimirClick(Sender: TObject);
begin
        dt1.FreeOnRelease;
        q_vendedores.Close;
        q_vendedores.Parameters.ParamByName('mes_ano').Value := cbmes.text + '/' + cbano.Text;
        q_vendedores.Open;
        rv_comissao.execute;
end;

procedure Tf_vendas_comissoes.data;
begin
       if cbmes.Text = 'JANEIRO' then
      Begin
            data_inicial := '01/01/' + cbano.text;
            data_final := '31/01/' + cbano.text;
      End;

      if cbmes.Text = 'FEVEREIRO' then
      Begin
            data_inicial := '01/02/' + cbano.text;
            data_final := '29/02/' + cbano.text;
      End;

      if cbmes.Text = 'MAR�O' then
      Begin
            data_inicial := '01/03/' + cbano.text;
            data_final := '31/03/' + cbano.text;
      End;

      if cbmes.Text = 'ABRIL' then
      Begin
            data_inicial := '01/04/' + cbano.text;
            data_final := '30/04/' + cbano.text;
      End;

      if cbmes.Text = 'MAIO' then
      Begin
            data_inicial := '01/05/' + cbano.text;
            data_final := '31/05/' + cbano.text;
      End;

      if cbmes.Text = 'JUNHO' then
      Begin
            data_inicial := '01/06/' + cbano.text;
            data_final := '30/06/' + cbano.text;
      End;

      if cbmes.Text = 'JULHO' then
      Begin
           data_inicial := '01/07/' + cbano.text;
           data_final := '31/07/' + cbano.text;
      End;

      if cbmes.Text = 'AGOSTO' then
      Begin
            data_inicial := '01/08/' + cbano.text;
            data_final := '31/08/' + cbano.text;
      End;

      if cbmes.Text = 'SETEMBRO' then
      Begin
            data_inicial := '01/09/' + cbano.text;
            data_final := '30/09/' + cbano.text;
      End;

      if cbmes.Text = 'OUTUBRO' then
      Begin
            data_inicial := '01/10/' + cbano.text;
            data_final := '31/10/' + cbano.text;
      End;

      if cbmes.Text = 'NOVEMBRO' then
      Begin
            data_inicial := '01/11/' + cbano.text;
            data_final := '30/11/' + cbano.text;
      End;

      if cbmes.Text = 'DEZEMBRO' then
      Begin
            data_inicial := '01/12/' + cbano.text;
            data_final := '31/12/' + cbano.text;
      End;

end;

procedure Tf_vendas_comissoes.DBGrid1DblClick(Sender: TObject);
begin
      f_vendas_altera := tf_vendas_altera.create(self);
      f_vendas_altera.tb_tela_altera.Filter := 'VENDEDOR = ' + QUOTEDSTR(q_vendedores.FieldByName('VENDEDOR').AsString);
      f_vendas_altera.tb_tela_altera.Filtered := true;
      f_vendas_altera.tb_tela_altera.Open;

      f_vendas_altera.edemplacamento.Text := floattostr(q_vendedores.FieldByName('EMPLACAMENTO').AsFloat);
      f_vendas_altera.edpremiacao.Text := floattostr(q_vendedores.FieldByName('PREMIACAO_PERFOMANCE').AsFloat);
      f_vendas_altera.edseguro.Text := floattostr(q_vendedores.FieldByName('SEGURO').AsFloat);
      f_vendas_altera.edcampanha.Text := floattostr(q_vendedores.FieldByName('CAMPANHA_TRACKER').AsFloat);
      f_vendas_altera.edleads.Text := floattostr(q_vendedores.FieldByName('LEAD_OPV').AsFloat);
      f_vendas_altera.edspm.Text := floattostr(q_vendedores.FieldByName('SPM').AsFloat);

      f_vendas_altera.lbvendedor.Caption := q_vendedores.FieldByName('VENDEDOR_NOME').AsString;
end;

procedure tf_vendas_comissoes.total;
begin
      f_vendas_comissoes.tb_tela.Close;
      f_vendas_comissoes.tb_tela.open;

      f_vendas_comissoes.tb_tela.First;

      while f_vendas_comissoes.tb_tela.Eof = false do
      begin
            f_vendas_comissoes.tb_tela.Edit;
            f_vendas_comissoes.tb_tela.Fields[15].Value := f_vendas_comissoes.tb_tela.Fields[12].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[13].AsFloat;

            f_vendas_comissoes.tb_tela.fields[21].value :=  f_vendas_comissoes.tb_tela.Fields[16].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[17].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[20].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[28].AsFloat;

            f_vendas_comissoes.tb_tela.Post;



            f_vendas_comissoes.tb_tela.Next;
      end;


      f_vendas_comissoes.tb_tela.Close;
      f_vendas_comissoes.tb_tela.open;

      f_vendas_comissoes.tb_tela.First;

      while f_vendas_comissoes.tb_tela.Eof = false do
      begin

             f_vendas_comissoes.tb_tela.Edit;
             f_vendas_comissoes.tb_tela.fields[22].value := (f_vendas_comissoes.tb_tela.Fields[9].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[11].AsFloat +
                                                           f_vendas_comissoes.tb_tela.Fields[15].AsFloat) -
                                                           f_vendas_comissoes.tb_tela.Fields[21].AsFloat;
             f_vendas_comissoes.tb_tela.post;



            f_vendas_comissoes.tb_tela.Next;
      end;



      f_vendas_comissoes.tb_tela.Close;
      f_vendas_comissoes.tb_tela.open;

      f_vendas_comissoes.tb_tela.First;

      while f_vendas_comissoes.tb_tela.Eof = false do
      begin

             f_vendas_comissoes.tb_tela.Edit;
             f_vendas_comissoes.tb_tela.fields[23].value := f_vendas_comissoes.tb_tela.Fields[22].AsFloat /
                                                             f_vendas_comissoes.tb_tela.Fields[6].AsFloat;

             f_vendas_comissoes.tb_tela.post;



            f_vendas_comissoes.tb_tela.Next;
      end;
end;

end.
