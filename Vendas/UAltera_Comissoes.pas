unit UAltera_Comissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  Tf_vendas_altera = class(TForm)
    tb_tela_altera: TADOTable;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tb_tela_alteraDATA_VENDA: TWideStringField;
    cusc: TStringField;
    tb_tela_alteraVENDEDOR: TStringField;
    tb_tela_alteraVENDEDOR_NOME: TStringField;
    tb_tela_alteraCHASSI: TStringField;
    tb_tela_alteraCHASSI_RESUMIDO: TStringField;
    tb_tela_alteraNF: TStringField;
    tb_tela_alteraVALOR_NF: TFloatField;
    tb_tela_alteraDATA_NF_VENDA: TStringField;
    tb_tela_alteraVALOR_NF_COMPRA: TFloatField;
    tb_tela_alteraLUCRO_BRUTO: TFloatField;
    tb_tela_alteraFI_RETORNO_BRUTO: TFloatField;
    tb_tela_alteraTOTAL_FI: TFloatField;
    tb_tela_alteraBONUS_GM: TFloatField;
    tb_tela_alteraBONUS_PERFOMANCE: TFloatField;
    tb_tela_alteraN_DOCUMENTO: TStringField;
    tb_tela_alteraTOTAL_INCENTIVO: TFloatField;
    tb_tela_alteraDESCONTO_COMERCIAL: TFloatField;
    tb_tela_alteraDESPESA_FIXA: TFloatField;
    tb_tela_alteraFINANCEIRA: TStringField;
    tb_tela_alteraCORTESIA_DESC: TStringField;
    tb_tela_alteraCUSTO_CORTESIA: TFloatField;
    tb_tela_alteraTOTAL_DESPESA: TFloatField;
    tb_tela_alteraMARGEM: TFloatField;
    tb_tela_alteraPERCENTUAL: TFloatField;
    tb_tela_alteraCLIENTE: TStringField;
    tb_tela_alteraMES_ANO: TStringField;
    tb_tela_alteraACESSORIOS: TFloatField;
    Label1: TLabel;
    lbvendedor: TLabel;
    btsalvar: TButton;
    tb_tela_alteraCUSTO_CORTESIA_ADC: TFloatField;
    edemplacamento: TEdit;
    Label2: TLabel;
    edseguro: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edpremiacao: TEdit;
    Label5: TLabel;
    edcampanha: TEdit;
    Label6: TLabel;
    edleads: TEdit;
    Label7: TLabel;
    edspm: TEdit;
    q_salvar: TADOQuery;
    btfechar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btsalvarClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_vendas_altera: Tf_vendas_altera;

implementation

{$R *.dfm}

uses data_module, UComissoes;

procedure Tf_vendas_altera.btfecharClick(Sender: TObject);
begin
        f_vendas_altera.Close;
end;

procedure Tf_vendas_altera.btsalvarClick(Sender: TObject);
begin
       q_salvar.Close;
       q_salvar.Parameters.ParamByName('emplacamento').Value := strtofloat(edemplacamento.Text);
       q_salvar.Parameters.ParamByName('seguro').Value := strtofloat(edseguro.Text);
       q_salvar.Parameters.ParamByName('spm').Value := strtofloat(edspm.Text);
       q_salvar.Parameters.ParamByName('campanha_tracker').Value := strtofloat(edcampanha.Text);
       q_salvar.Parameters.ParamByName('lead_opv').Value := strtofloat(edleads.text);
       q_salvar.Parameters.ParamByName('premiacao_perfomance').Value := strtofloat(edpremiacao.Text);
       q_salvar.Parameters.ParamByName('vendedor').Value := tb_tela_altera.FieldByName('VENDEDOR').AsString;
       q_salvar.ExecSQL();

       f_vendas_comissoes.q_vendedores.Close;
       f_vendas_comissoes.q_vendedores.Parameters.ParamByName('mes_ano').Value := f_vendas_comissoes.cbmes.text + '/' + f_vendas_comissoes.cbano.Text;
       f_vendas_comissoes.q_vendedores.Open;

       showmessage('Salvo com sucesso!');

end;

procedure Tf_vendas_altera.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


      if odd(TDBGrid(Sender).DataSource.DataSet.RecNo) then
      begin
          TDBGrid(Sender).Canvas.Font.Color:= clBlack;
          TDBGrid(Sender).Canvas.Brush.Color:= clMoneyGreen;
    end
  else
    begin
      TDBGrid(Sender).Canvas.Font.Color:= clBlack;
      TDBGrid(Sender).Canvas.Brush.Color:= clInfoBk;
    end;
  TDBGrid(Sender).Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);





end;

procedure Tf_vendas_altera.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

    if Key = #13 then
    begin

      if DBGrid1.Columns.Grid.SelectedIndex < DBGrid1.Columns.Count - 1 then
        begin

              tb_tela_altera.Edit;
              tb_tela_altera.fields[21].Value := tb_tela_altera.Fields[21].AsFloat + tb_tela_altera.Fields[22].AsFloat;
              tb_tela_altera.Post;

              tb_tela_altera.Edit;
              tb_tela_altera.fields[23].Value := tb_tela_altera.Fields[21].AsFloat + tb_tela_altera.Fields[18].AsFloat + tb_tela_altera.Fields[17].AsFloat;
              tb_tela_altera.Post;

              tb_tela_altera.Edit;
              tb_tela_altera.fields[24].Value :=  (tb_tela_altera.Fields[16].AsFloat + tb_tela_altera.Fields[12].AsFloat + tb_tela_altera.Fields[10].AsFloat)
                                                  - tb_tela_altera.Fields[21].AsFloat;
              tb_tela_altera.Post;

              tb_tela_altera.Edit;
              tb_tela_altera.fields[25].Value :=  (tb_tela_altera.Fields[24].AsFloat / tb_tela_altera.Fields[7].AsFloat) * 100;
              tb_tela_altera.Post;


              tb_tela_altera.Next;

        end
      else begin

        DBGrid1.DataSource.DataSet.Next;
        DBGrid1.Columns[0].Field.FocusControl;
      end;

      f_vendas_comissoes.q_vendedores.Close;
      f_vendas_comissoes.q_vendedores.Parameters.ParamByName('mes_ano').Value := f_vendas_comissoes.cbmes.text + '/' + f_vendas_comissoes.cbano.Text;
      f_vendas_comissoes.q_vendedores.Open;

   end;



end;

procedure Tf_vendas_altera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := cafree;
end;

end.
