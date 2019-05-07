unit UComissoes_Oficina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.Win.ADODB, UComissoes_Produtivo,
  RpDefine, RpRave, RpCon, RpConDS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tf_comissoes_oficina = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    btpesquisar: TBitBtn;
    cbmes: TComboBox;
    cbano: TComboBox;
    btimprimir: TButton;
    Button1: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    q_inserir: TADOQuery;
    q_deleta: TADOQuery;
    q_pesquisa2: TADOQuery;
    q_pesquisa3: TADOQuery;
    q_inserir2: TADOQuery;
    q_pesquisa4: TADOQuery;
    q_inserir3: TADOQuery;
    q_pesquisa5: TADOQuery;
    q_pesquisa_simples: TADOQuery;
    q_inserir4: TADOQuery;
    q_aux: TADOQuery;
    q_tela1: TADOQuery;
    q_inserir_tela: TADOQuery;
    q_tela1MES_ANO: TStringField;
    q_tela1COD_TECNICO: TIntegerField;
    q_tela1NOME: TStringField;
    q_tela1VALOR: TFloatField;
    q_tela2: TADOQuery;
    q_atualiza_tela: TADOQuery;
    tb_tela: TADOTable;
    tb_telaMES_ANO: TStringField;
    tb_telaCOD_TECNICO: TIntegerField;
    tb_telaNOME_TECNICO: TStringField;
    tb_telaVALOR_MDO: TFloatField;
    tb_telaVALOR_PECAS: TFloatField;
    rv_comissao: TRvProject;
    q_rel1: TADOQuery;
    dt1: TRvDataSetConnection;
    q_rel1MES_ANO: TStringField;
    q_rel1NOME_TECNICO: TStringField;
    q_rel1VALOR_MDO: TFloatField;
    q_rel1VALOR_PECAS: TFloatField;
    q_rel1TOTAL: TFloatField;
    q_rel1PERCENTUAL: TBCDField;
    q_rel1TOTAL2: TFloatField;
    q_rel: TADOQuery;
    q_relMES_ANO: TStringField;
    q_relNOME_TECNICO: TStringField;
    dt: TRvDataSetConnection;
    q_pesquisa1: TFDQuery;
    q_pesquisa_franquia: TFDQuery;
    q_pesquisa_pecas: TFDQuery;
    q_aux1: TFDQuery;
    q_aux2: TFDQuery;
    q_aux3: TFDQuery;
    procedure data;
    procedure btpesquisarClick(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
      ObjProdutivo : comissoes_produtivo;
    { Private declarations }
  public
   data_inicial, data_final : string;
    { Public declarations }
  end;

var
  f_comissoes_oficina: Tf_comissoes_oficina;

implementation

{$R *.dfm}

uses data_module, f_load;

procedure Tf_comissoes_oficina.btimprimirClick(Sender: TObject);
begin

      q_rel.Close;
      q_rel.Parameters.ParamByName('mes_ano').Value :=  cbmes.Text + '/' + cbano.Text;
      q_rel.Open;

      q_rel1.Close;
      q_rel1.Open;
      rv_comissao.execute;
end;

procedure Tf_comissoes_oficina.btpesquisarClick(Sender: TObject);
begin

      tb_tela.Close;

      fload := tfload.Create(self);

      fload.lbload.caption := 'Aguarde...';
      fload.ProgressBar1.position := 5;
      application.ProcessMessages;

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_COMISSOES_PRODUTIVOS WHERE MES_ANO = :mes_ano');
      q_deleta.Parameters.ParamByName('mes_ano').Value := cbmes.Text + '/' + cbano.Text;
      q_deleta.ExecSQL;

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_PRODUTIVOS WHERE MES_ANO = :mes_ano');
      q_deleta.parameters.ParamByName('mes_ano').Value := cbmes.Text + '/' + cbano.Text;
      q_deleta.ExecSQL;

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_PRODUTIVOS_PECAS WHERE MES_ANO = :mes_ano');
      q_deleta.parameters.ParamByName('mes_ano').Value := cbmes.Text + '/' + cbano.Text;
      q_deleta.ExecSQL;

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_PRODUTIVOS_RESUMO WHERE MES_ANO = :mes_ano');
      q_deleta.parameters.ParamByName('mes_ano').Value := cbmes.Text + '/' + cbano.Text;
      q_deleta.ExecSQL;

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_PRODUTIVOS_TELA');
      q_deleta.ExecSQL;

      data;
      ObjProdutivo := comissoes_produtivo.criar;
      ObjProdutivo.pesquisar;
      ObjProdutivo.destruir;
      btimprimir.Enabled := true;



      tb_tela.Open;

      showmessage('Gerado com sucesso!');

      fload.Close;


end;

procedure Tf_comissoes_oficina.Button1Click(Sender: TObject);
begin

      q_deleta.Close;
      q_deleta.SQL.Clear;
      q_deleta.SQL.Add('DELETE FROM VENDAS_PRODUTIVOS_TELA');
      q_deleta.ExecSQL;

     f_comissoes_oficina.q_tela1.Close;
     f_comissoes_oficina.q_tela1.Parameters.ParamByName('mes_ano').value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
     f_comissoes_oficina.q_tela1.Open;

     f_comissoes_oficina.q_tela1.First;

     while f_comissoes_oficina.q_tela1.Eof = false do
     begin
           f_comissoes_oficina.q_inserir_tela.Close;
           f_comissoes_oficina.q_inserir_tela.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.q_tela1.FieldByName('MES_ANO').ASSTRING;
           f_comissoes_oficina.q_inserir_tela.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_tela1.FieldByName('COD_TECNICO').asinteger;
           f_comissoes_oficina.q_inserir_tela.Parameters.ParamByName('nome_tecnico').Value := f_comissoes_oficina.q_tela1.FieldByName('NOME').ASSTRING;
           f_comissoes_oficina.q_inserir_tela.Parameters.ParamByName('valor_mdo').Value := f_comissoes_oficina.q_tela1.FieldByName('VALOR').ASfloat;
           f_comissoes_oficina.q_inserir_tela.ExecSQL();

           f_comissoes_oficina.q_tela1.Next;

     end;

     f_comissoes_oficina.q_tela2.Close;
     f_comissoes_oficina.q_tela2.Parameters.ParamByName('mes_ano').value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
     f_comissoes_oficina.q_tela2.Open;

     f_comissoes_oficina.q_tela2.First;

     while f_comissoes_oficina.q_tela2.Eof = false do
     begin
           f_comissoes_oficina.q_atualiza_tela.Close;
           f_comissoes_oficina.q_atualiza_tela.Parameters.ParamByName('valor_pecas').Value := f_comissoes_oficina.q_tela2.FieldByName('VALOR').AsFloat;
           f_comissoes_oficina.q_atualiza_tela.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_tela2.FieldByName('COD_TECNICO').Asinteger;
           f_comissoes_oficina.q_atualiza_tela.Parameters.ParamByName('MES_ANO').Value := f_comissoes_oficina.q_tela2.FieldByName('MES_ANO').ASSTRING;
           f_comissoes_oficina.q_atualiza_tela.ExecSQL();
          f_comissoes_oficina.q_tela2.next;
     end;

     tb_tela.Open;
     btimprimir.Enabled := true;
end;

procedure tf_comissoes_oficina.data;
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

end.
