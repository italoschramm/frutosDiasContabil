unit cadastrar_processo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage;

type
  Tf_cadastrar_processo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Tabela: TPageControl;
    tbcadastrar: TTabSheet;
    cbtipo_processo: TComboBox;
    Label1: TLabel;
    edprocesso: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edreclamante: TEdit;
    Label5: TLabel;
    edreclamado: TEdit;
    Label6: TLabel;
    edjuizo: TEdit;
    edjuiz: TEdit;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    dataaudiencia: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    edhora_audiencia: TMaskEdit;
    cbtipo_audiencia: TComboBox;
    Label10: TLabel;
    btincluir_audiencia: TButton;
    btremover_audiencia: TButton;
    tbrelacionados: TTabSheet;
    edpreposto_nome: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edpreposto_email: TEdit;
    DBGrid2: TDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtestemunha_nome: TEdit;
    Label20: TLabel;
    edtestemunha_email: TEdit;
    DBGrid3: TDBGrid;
    Label21: TLabel;
    Label22: TLabel;
    edadvogado_nome: TEdit;
    Label23: TLabel;
    edadvogado_email: TEdit;
    DBGrid4: TDBGrid;
    btinserir_preposto: TButton;
    btremover_preposto: TButton;
    btinserir_testemunha: TButton;
    btexcluir_testemunha: TButton;
    btinserir_advogado: TButton;
    btexcluir_advogado: TButton;
    tbdepositos_judiciais: TTabSheet;
    data_debito_depositos: TDateTimePicker;
    Label24: TLabel;
    Label25: TLabel;
    edvalor_deposito: TEdit;
    Label26: TLabel;
    edbanco_deposito: TEdit;
    Label27: TLabel;
    edagencia_deposito: TEdit;
    Label28: TLabel;
    edconta_deposito: TEdit;
    Label29: TLabel;
    data_levantamento_deposito: TDateTimePicker;
    edcorrecao_deposito: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    edpagamento_deposito: TEdit;
    Label32: TLabel;
    edobservacao_deposito: TEdit;
    DBGrid5: TDBGrid;
    btinserir_depositos: TButton;
    btexcluir_depositos: TButton;
    edvalor_levantamento_deposito: TEdit;
    Label33: TLabel;
    tbbloqueios: TTabSheet;
    Label34: TLabel;
    data_bloqueio: TDateTimePicker;
    Label35: TLabel;
    edvalor_bloqueio: TEdit;
    Label36: TLabel;
    edbanco_bloqueio: TEdit;
    Label37: TLabel;
    edagencia_bloqueio: TEdit;
    Label38: TLabel;
    edconta_bloqueio: TEdit;
    Label39: TLabel;
    data_desbloqueio: TDateTimePicker;
    Label40: TLabel;
    edvalor_desbloqueio: TEdit;
    Label41: TLabel;
    edvalor_pagamento: TEdit;
    Label42: TLabel;
    edsaldo_bloqueio: TEdit;
    Label43: TLabel;
    edobservacao_bloqueio: TEdit;
    DBGrid6: TDBGrid;
    btinserir_bloqueio: TButton;
    btexcluir_bloqueios: TButton;
    edvalor_solicitado_bloqueio: TEdit;
    Label44: TLabel;
    tbpenhoras: TTabSheet;
    Label45: TLabel;
    data_mandado_penhora: TDateTimePicker;
    Label46: TLabel;
    edbens_penhora: TEdit;
    Label47: TLabel;
    edvalor_penhora: TEdit;
    Label55: TLabel;
    edobservacao_penhora: TEdit;
    DBGrid7: TDBGrid;
    btinserir_penhora: TButton;
    btexcluir_penhora: TButton;
    data_indicacao: TDateTimePicker;
    Label56: TLabel;
    tboutros: TTabSheet;
    Label48: TLabel;
    data_deposito_outros: TDateTimePicker;
    Label50: TLabel;
    edvalor_depositado: TEdit;
    Label51: TLabel;
    edbanco_outros: TEdit;
    Label52: TLabel;
    edobservacao_outros: TEdit;
    DBGrid8: TDBGrid;
    btinserir_outros: TButton;
    btexcluir_outros: TButton;
    cbfinalidade_outros: TComboBox;
    Label49: TLabel;
    Label53: TLabel;
    edagencia_outros: TEdit;
    Label54: TLabel;
    edconta_outros: TEdit;
    btsalvar: TButton;
    btcancelar: TButton;
    btatualizar: TButton;
    smtp: TIdSMTP;
    msg: TIdMessage;
    q_atualiza_email: TFDQuery;
    procedure btincluir_audienciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btremover_audienciaClick(Sender: TObject);
    procedure btinserir_prepostoClick(Sender: TObject);
    procedure btremover_prepostoClick(Sender: TObject);
    procedure btinserir_testemunhaClick(Sender: TObject);
    procedure btexcluir_testemunhaClick(Sender: TObject);
    procedure btinserir_advogadoClick(Sender: TObject);
    procedure btexcluir_advogadoClick(Sender: TObject);
    procedure btinserir_depositosClick(Sender: TObject);
    procedure btexcluir_depositosClick(Sender: TObject);
    procedure btinserir_bloqueioClick(Sender: TObject);
    procedure btexcluir_bloqueiosClick(Sender: TObject);
    procedure btinserir_penhoraClick(Sender: TObject);
    procedure btexcluir_penhoraClick(Sender: TObject);
    procedure btinserir_outrosClick(Sender: TObject);
    procedure btexcluir_outrosClick(Sender: TObject);
    procedure edvalor_depositoExit(Sender: TObject);
    procedure edvalor_levantamento_depositoExit(Sender: TObject);
    procedure edcorrecao_depositoExit(Sender: TObject);
    procedure edvalor_solicitado_bloqueioExit(Sender: TObject);
    procedure edvalor_bloqueioExit(Sender: TObject);
    procedure edvalor_desbloqueioExit(Sender: TObject);
    procedure edvalor_pagamentoExit(Sender: TObject);
    procedure edsaldo_bloqueioExit(Sender: TObject);
    procedure edvalor_penhoraExit(Sender: TObject);
    procedure edvalor_depositadoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btcancelarClick(Sender: TObject);
    procedure btsalvarClick(Sender: TObject);
    procedure enviar_email;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_cadastrar_processo: Tf_cadastrar_processo;

implementation

{$R *.dfm}

uses data_module, data_processos, f_processos;

procedure Tf_cadastrar_processo.btcancelarClick(Sender: TObject);
begin
      f_cadastrar_processo.Close;
end;

procedure Tf_cadastrar_processo.btexcluir_advogadoClick(Sender: TObject);
begin
      dm_processos.cds_advogados.Delete;
end;

procedure Tf_cadastrar_processo.btexcluir_depositosClick(Sender: TObject);
begin
    dm_processos.cds_deposito_judiciais.Delete;
end;

procedure Tf_cadastrar_processo.btexcluir_outrosClick(Sender: TObject);
begin
     dm_processos.cds_outros.Delete;
end;

procedure Tf_cadastrar_processo.btexcluir_penhoraClick(Sender: TObject);
begin
     dm_processos.cds_penhoras.Delete;
end;

procedure Tf_cadastrar_processo.btexcluir_testemunhaClick(Sender: TObject);
begin
      dm_processos.cds_testemunhas.Delete;
end;

procedure Tf_cadastrar_processo.btincluir_audienciaClick(Sender: TObject);
begin

        dm_processos.cds_audiencias.Append;
        dm_processos.cds_audiencias.FieldByName('DATA_AUDIENCIA').Value := dataaudiencia.Date;
        dm_processos.cds_audiencias.FieldByName('HORA_AUDIENCIA').Value := edhora_audiencia.Text;
        dm_processos.cds_audiencias.FieldByName('TIPO_AUDIENCIA').Value := cbtipo_audiencia.Text;
        dm_processos.cds_audiencias.Post;

        dataaudiencia.DateTime := now;
        edhora_audiencia.Clear;
        cbtipo_audiencia.Text := '';

end;

procedure Tf_cadastrar_processo.btinserir_advogadoClick(Sender: TObject);
begin
      dm_processos.cds_advogados.Append;
      dm_processos.cds_advogados.FieldByName('NOME').Value := edadvogado_nome.Text;
      dm_processos.cds_advogados.FieldByName('EMAIL').Value := edadvogado_email.Text;
      dm_processos.cds_advogados.Post;

      edadvogado_nome.Clear;
      edadvogado_email.Clear;
end;

procedure Tf_cadastrar_processo.btinserir_prepostoClick(Sender: TObject);
begin
      dm_processos.cds_preposto.Append;
      dm_processos.cds_preposto.FieldByName('NOME').Value := edpreposto_nome.Text;
      dm_processos.cds_preposto.FieldByName('EMAIL').Value := edpreposto_email.Text;
      dm_processos.cds_preposto.Post;

      edpreposto_nome.Clear;
      edpreposto_email.Clear;
end;

procedure Tf_cadastrar_processo.btinserir_testemunhaClick(Sender: TObject);
begin
      dm_processos.cds_testemunhas.Append;
      dm_processos.cds_testemunhas.FieldByName('NOME').Value := edtestemunha_nome.Text;
      dm_processos.cds_testemunhas.FieldByName('EMAIL').Value := edtestemunha_email.Text;
      dm_processos.cds_testemunhas.Post;

      edtestemunha_nome.Clear;
      edtestemunha_email.Clear;
end;

procedure Tf_cadastrar_processo.btremover_audienciaClick(Sender: TObject);
begin
     dm_processos.cds_audiencias.Delete;
end;

procedure Tf_cadastrar_processo.btremover_prepostoClick(Sender: TObject);
begin
      dm_processos.cds_preposto.Delete;
end;

procedure Tf_cadastrar_processo.btsalvarClick(Sender: TObject);
begin


      dm_processos.q_salvar.Close;
      dm_processos.q_salvar.Params.ParamByName('tipo').Value := cbtipo_processo.Text;
      dm_processos.q_salvar.Params.ParamByName('processo').Value := edprocesso.Text;
      dm_processos.q_salvar.Params.ParamByName('reclamante_autor').Value := edreclamante.Text;
      dm_processos.q_salvar.Params.ParamByName('reclamado_reu').Value := edreclamado.Text;
      dm_processos.q_salvar.Params.ParamByName('juizo_vara').Value := edjuizo.Text;
      dm_processos.q_salvar.Params.ParamByName('nome_juiz').Value := edjuiz.Text;
      dm_processos.q_salvar.ExecSQL();

      dm_processos.q_aux.Close;
      dm_processos.q_aux.Open();

      dm_processos.cds_audiencias.First;

      while dm_processos.cds_audiencias.Eof = false do
      begin

            dm_processos.q_salvar_audiencias.Close;
            dm_processos.q_salvar_audiencias.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_audiencias.Params.ParamByName('data_audiencia').Value := dm_processos.cds_audiencias.FieldByName('DATA_AUDIENCIA').AsDateTime;
            dm_processos.q_salvar_audiencias.Params.ParamByName('hora_audiencia').Value := dm_processos.cds_audiencias.FieldByName('HORA_AUDIENCIA').AsDateTime;
            dm_processos.q_salvar_audiencias.Params.ParamByName('tipo_audiencia').Value := dm_processos.cds_audiencias.FieldByName('TIPO_AUDIENCIA').AsString;
            dm_processos.q_salvar_audiencias.Params.ParamByName('email').Value := false;;
            dm_processos.q_salvar_audiencias.ExecSQL();

            dm_processos.cds_audiencias.Next;

      end;

      dm_processos.cds_preposto.First;

      while dm_processos.cds_preposto.Eof = false do
      begin
            dm_processos.q_salvar_preposto.Close;
            dm_processos.q_salvar_preposto.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_preposto.Params.ParamByName('nome').Value := dm_processos.cds_preposto.FieldByName('NOME').AsString;
            dm_processos.q_salvar_preposto.Params.ParamByName('email').Value := dm_processos.cds_preposto.FieldByName('EMAIL').AsString;
            dm_processos.q_salvar_preposto.ExecSQL();

            dm_processos.cds_preposto.Next;

      end;

      dm_processos.cds_testemunhas.First;

      while dm_processos.cds_testemunhas.Eof = false do
      begin
            dm_processos.q_salvar_testemunhas.Close;
            dm_processos.q_salvar_testemunhas.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_testemunhas.Params.ParamByName('nome').Value := dm_processos.cds_testemunhas.FieldByName('NOME').AsString;
            dm_processos.q_salvar_testemunhas.Params.ParamByName('email').Value := dm_processos.cds_testemunhas.FieldByName('EMAIL').AsString;
            dm_processos.q_salvar_testemunhas.ExecSQL();

            dm_processos.cds_testemunhas.Next;

      end;

      dm_processos.cds_advogados.First;

      while dm_processos.cds_advogados.Eof = false do
      begin
            dm_processos.q_salvar_advogados.Close;
            dm_processos.q_salvar_advogados.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_advogados.Params.ParamByName('nome').Value := dm_processos.cds_advogados.FieldByName('NOME').AsString;
            dm_processos.q_salvar_advogados.Params.ParamByName('email').Value := dm_processos.cds_advogados.FieldByName('EMAIL').AsString;
            dm_processos.q_salvar_advogados.ExecSQL();

            dm_processos.cds_advogados.Next;

      end;

      dm_processos.cds_deposito_judiciais.First;

      while dm_processos.cds_deposito_judiciais.Eof = false do
      begin
            dm_processos.q_salvar_deposito.close;
            dm_processos.q_salvar_deposito.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_deposito.Params.ParamByName('data_debito').Value := dm_processos.cds_deposito_judiciais.FieldByName('DATA_DEBITO').AsDateTime;
            dm_processos.q_salvar_deposito.Params.ParamByName('valor_depositado').Value := dm_processos.cds_deposito_judiciais.FieldByName('VALOR_DEPOSITO').AsFloat;
            dm_processos.q_salvar_deposito.Params.ParamByName('banco').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('BANCO').AsString;
            dm_processos.q_salvar_deposito.Params.ParamByName('agencia').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('AGENCIA').AsString;
            dm_processos.q_salvar_deposito.Params.ParamByName('conta').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('CONTA').AsString;
            dm_processos.q_salvar_deposito.Params.ParamByName('data_levantamento').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('DATA_LEVANTAMENTO').AsDateTime;
            dm_processos.q_salvar_deposito.Params.ParamByName('valor_levantamento').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('VALOR_LEVANTAMENTO').asfloat;
            dm_processos.q_salvar_deposito.Params.ParamByName('correcao').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('CORRECAO').AsFloat;
            dm_processos.q_salvar_deposito.Params.ParamByName('pagamento').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('PAGAMENTO').AsString;
            dm_processos.q_salvar_deposito.Params.ParamByName('observacao').Value :=  dm_processos.cds_deposito_judiciais.FieldByName('OBSERVACAO').AsString;
            dm_processos.q_salvar_deposito.ExecSQL();

            dm_processos.cds_deposito_judiciais.next;

      end;

      dm_processos.cds_bloqueios.First;

      while dm_processos.cds_bloqueios.Eof = false do
      begin
            dm_processos.q_salvar_bloqueios.close;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('data_bloqueio').Value := dm_processos.cds_bloqueios.FieldByName('DATA_BLOQUEIO').AsDateTime;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('valor_solicitado').Value := dm_processos.cds_bloqueios.FieldByName('VALOR_SOLICITADO').AsFloat;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('valor_bloqueio').Value := dm_processos.cds_bloqueios.FieldByName('VALOR_BLOQUEADO').AsFloat;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('banco').Value :=  dm_processos.cds_bloqueios.FieldByName('BANCO').AsString;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('agencia').Value :=  dm_processos.cds_bloqueios.FieldByName('AGENCIA').AsString;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('conta').Value :=  dm_processos.cds_bloqueios.FieldByName('CONTA').AsString;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('data_desbloqueio').Value :=  dm_processos.cds_bloqueios.FieldByName('DATA_DESBLOQUEIO').AsDateTime;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('valor_desbloqueio').Value :=  dm_processos.cds_bloqueios.FieldByName('VALOR_DESBLOQUEIO').asfloat;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('valor_dado_pagamento').Value :=  dm_processos.cds_bloqueios.FieldByName('VALOR_DADO_PAGAMENTO').AsFloat;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('saldo').Value :=  dm_processos.cds_bloqueios.FieldByName('SALDO').AsString;
            dm_processos.q_salvar_bloqueios.Params.ParamByName('observacao').Value :=  dm_processos.cds_bloqueios.FieldByName('OBS').AsString;
            dm_processos.q_salvar_bloqueios.ExecSQL();

            dm_processos.cds_bloqueios.next;

      end;


      dm_processos.cds_penhoras.First;

      while dm_processos.cds_penhoras.Eof = false do
      begin
            dm_processos.q_salvar_penhoras.close;
            dm_processos.q_salvar_penhoras.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_penhoras.Params.ParamByName('data_mandado_penhora').Value := dm_processos.cds_penhoras.FieldByName('DATA_MANDADO_PENHORA').AsDateTime;
            dm_processos.q_salvar_penhoras.Params.ParamByName('data_indicacao').Value := dm_processos.cds_penhoras.FieldByName('DATA_INDICACAO').AsDateTime;
            dm_processos.q_salvar_penhoras.Params.ParamByName('valor_penhora').Value := dm_processos.cds_penhoras.FieldByName('VALOR_PENHORA').AsFloat;
            dm_processos.q_salvar_penhoras.Params.ParamByName('bens_penhorados').Value :=  dm_processos.cds_penhoras.FieldByName('BENS_PENHORADO').AsString;
            dm_processos.q_salvar_penhoras.Params.ParamByName('observacao').Value :=  dm_processos.cds_penhoras.FieldByName('OBSERVACAO').AsString;
            dm_processos.q_salvar_penhoras.ExecSQL();

            dm_processos.cds_penhoras.next;

      end;

      dm_processos.cds_outros.First;

      while dm_processos.cds_outros.Eof = false do
      begin
            dm_processos.q_salvar_outros.close;
            dm_processos.q_salvar_outros.Params.ParamByName('idprocesso').Value := dm_processos.q_aux.FieldByName('IDPROCESSO').AsInteger;
            dm_processos.q_salvar_outros.Params.ParamByName('finalidade').Value := dm_processos.cds_outros.FieldByName('FINALIDADE').Asstring;
            dm_processos.q_salvar_outros.Params.ParamByName('data_deposito').Value := dm_processos.cds_outros.FieldByName('DATA_DEPOSITO').AsDateTime;
            dm_processos.q_salvar_outros.Params.ParamByName('valor_deposito').Value := dm_processos.cds_outros.FieldByName('VALOR_DEPOSITO').AsFloat;
            dm_processos.q_salvar_outros.Params.ParamByName('banco').Value :=  dm_processos.cds_outros.FieldByName('BANCO').AsString;
            dm_processos.q_salvar_outros.Params.ParamByName('agencia').Value :=  dm_processos.cds_outros.FieldByName('AGENCIA').AsString;
            dm_processos.q_salvar_outros.Params.ParamByName('conta').Value :=  dm_processos.cds_outros.FieldByName('CONTA').AsString;
            dm_processos.q_salvar_outros.Params.ParamByName('observacao').Value :=  dm_processos.cds_outros.FieldByName('OBSERVACAO').AsString;
            dm_processos.q_salvar_outros.ExecSQL();

            dm_processos.cds_outros.next;

      end;

      enviar_email;

      btsalvar.Enabled := false;
      btatualizar.Enabled := true;

      form_processos.atualizar_tela;

      showmessage('Processo Salvo com Sucesso!');
      f_cadastrar_processo.Close;
end;

procedure Tf_cadastrar_processo.btexcluir_bloqueiosClick(Sender: TObject);
begin
     dm_processos.cds_bloqueios.Delete;
end;

procedure Tf_cadastrar_processo.btinserir_outrosClick(Sender: TObject);
begin
      dm_processos.cds_outros.Append;
      dm_processos.cds_outros.FieldByName('FINALIDADE').Value :=  cbfinalidade_outros.text;
      dm_processos.cds_outros.FieldByName('DATA_DEPOSITO').Value :=  data_deposito_outros.date;
      dm_processos.cds_outros.FieldByName('VALOR_DEPOSITO').Value :=  edvalor_depositado.text;
      dm_processos.cds_outros.FieldByName('BANCO').Value :=  edbanco_outros.text;
      dm_processos.cds_outros.FieldByName('AGENCIA').Value :=  edagencia_outros.text;
      dm_processos.cds_outros.FieldByName('CONTA').Value :=  edconta_outros.text;
      dm_processos.cds_outros.FieldByName('OBSERVACAO').Value :=  edobservacao_outros.text;
      dm_processos.cds_outros.Post;

      cbfinalidade_outros.text := '';
      data_deposito_outros.Date := now;
      edvalor_depositado.clear;
      edbanco_outros.Clear;
      edagencia_outros.clear;
      edconta_outros.Clear;
      edobservacao_outros.Clear;;
end;

procedure Tf_cadastrar_processo.btinserir_penhoraClick(Sender: TObject);
begin
      dm_processos.cds_penhoras.Append;
      dm_processos.cds_penhoras.FieldByName('DATA_MANDADO_PENHORA').Value :=  data_mandado_penhora.Date;
      dm_processos.cds_penhoras.FieldByName('DATA_INDICACAO').Value :=  data_indicacao.date;
      dm_processos.cds_penhoras.FieldByName('VALOR_PENHORA').Value :=  edvalor_penhora.text;
      dm_processos.cds_penhoras.FieldByName('BENS_PENHORADO').Value :=  edbens_penhora.text;
      dm_processos.cds_penhoras.FieldByName('OBSERVACAO').Value :=  edobservacao_penhora.text;
      dm_processos.cds_penhoras.Post;

      data_mandado_penhora.Date := now;
      data_indicacao.date := now;
      edvalor_penhora.Clear;
      edbens_penhora.Clear;
      edobservacao_penhora.Clear;
end;

procedure Tf_cadastrar_processo.btinserir_bloqueioClick(Sender: TObject);
begin
      dm_processos.cds_bloqueios.Append;
      dm_processos.cds_bloqueios.FieldByName('DATA_BLOQUEIO').Value :=  data_bloqueio.Date;
      dm_processos.cds_bloqueios.FieldByName('VALOR_SOLICITADO').Value :=  edvalor_solicitado_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('VALOR_BLOQUEADO').Value :=  edvalor_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('BANCO').Value :=  edbanco_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('AGENCIA').Value :=  edagencia_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('CONTA').Value :=  edconta_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('DATA_DESBLOQUEIO').Value :=  data_desbloqueio.Date;
      dm_processos.cds_bloqueios.FieldByName('VALOR_DESBLOQUEIO').Value :=  edvalor_desbloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('VALOR_DADO_PAGAMENTO').Value :=  edvalor_pagamento.text;
      dm_processos.cds_bloqueios.FieldByName('SALDO').Value :=  edsaldo_bloqueio.text;
      dm_processos.cds_bloqueios.FieldByName('OBS').Value :=  edobservacao_bloqueio.text;
      dm_processos.cds_bloqueios.Post;

      data_bloqueio.Date := now;
      edvalor_solicitado_bloqueio.Clear;
      edvalor_bloqueio.Clear;
      edbanco_bloqueio.Clear;
      edagencia_bloqueio.Clear;
      edconta_bloqueio.Clear;
      data_desbloqueio.Date := now;
      edvalor_desbloqueio.Clear;
      edvalor_pagamento.Clear;
      edsaldo_bloqueio.Clear;
      edobservacao_bloqueio.Clear;

end;

procedure Tf_cadastrar_processo.edcorrecao_depositoExit(Sender: TObject);
begin
      edcorrecao_deposito.Text := formatfloat('###,##0.00', strtofloat(edcorrecao_deposito.Text));
end;

procedure Tf_cadastrar_processo.edsaldo_bloqueioExit(Sender: TObject);
begin
      edsaldo_bloqueio.Text := formatfloat('###,##0.00', strtofloat(edsaldo_bloqueio.Text));
end;

procedure Tf_cadastrar_processo.edvalor_bloqueioExit(Sender: TObject);
begin
      edvalor_bloqueio.Text := formatfloat('###,##0.00', strtofloat(edvalor_bloqueio.Text));
end;

procedure Tf_cadastrar_processo.edvalor_depositadoExit(Sender: TObject);
begin
      edvalor_depositado.Text := formatfloat('###,##0.00', strtofloat(edvalor_depositado.Text));
end;

procedure Tf_cadastrar_processo.edvalor_depositoExit(Sender: TObject);
begin
      edvalor_deposito.Text := formatfloat('###,##0.00', strtofloat(edvalor_deposito.Text));
end;

procedure Tf_cadastrar_processo.edvalor_desbloqueioExit(Sender: TObject);
begin
      edvalor_desbloqueio.Text := formatfloat('###,##0.00', strtofloat(edvalor_desbloqueio.Text));
end;

procedure Tf_cadastrar_processo.edvalor_levantamento_depositoExit(
  Sender: TObject);
begin
      edvalor_levantamento_deposito.Text := formatfloat('###,##0.00', strtofloat(edvalor_levantamento_deposito.Text));
end;

procedure Tf_cadastrar_processo.edvalor_pagamentoExit(Sender: TObject);
begin
      edvalor_pagamento.Text := formatfloat('###,##0.00', strtofloat(edvalor_pagamento.Text));
end;

procedure Tf_cadastrar_processo.edvalor_penhoraExit(Sender: TObject);
begin
      edvalor_penhora.Text := formatfloat('###,##0.00', strtofloat(edvalor_penhora.Text));
end;

procedure Tf_cadastrar_processo.edvalor_solicitado_bloqueioExit(
  Sender: TObject);
begin
      edvalor_solicitado_bloqueio.Text := formatfloat('###,##0.00', strtofloat(edvalor_solicitado_bloqueio.Text));
end;

procedure Tf_cadastrar_processo.btinserir_depositosClick(Sender: TObject);
begin
      dm_processos.cds_deposito_judiciais.Append;
      dm_processos.cds_deposito_judiciais.FieldByName('DATA_DEBITO').Value :=  data_debito_depositos.Date;
      dm_processos.cds_deposito_judiciais.FieldByName('VALOR_DEPOSITO').Value :=  edvalor_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('BANCO').Value :=  edbanco_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('AGENCIA').Value :=  edagencia_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('CONTA').Value :=  edconta_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('DATA_LEVANTAMENTO').Value :=  data_levantamento_deposito.Date;
      dm_processos.cds_deposito_judiciais.FieldByName('VALOR_LEVANTAMENTO').Value :=  edvalor_levantamento_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('CORRECAO').Value :=  edcorrecao_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('PAGAMENTO').Value :=  edpagamento_deposito.text;
      dm_processos.cds_deposito_judiciais.FieldByName('OBSERVACAO').Value :=  edobservacao_deposito.text;
      dm_processos.cds_deposito_judiciais.Post;

      data_debito_depositos.Date := now;
      edvalor_deposito.Clear;
      edbanco_deposito.Clear;
      edagencia_deposito.Clear;
      edconta_deposito.Clear;
      data_levantamento_deposito.Date := now;
      edvalor_levantamento_deposito.Clear;
      edcorrecao_deposito.Clear;
      edpagamento_deposito.Clear;
      edobservacao_deposito.Clear;

end;

procedure Tf_cadastrar_processo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := cafree;
end;

procedure Tf_cadastrar_processo.FormCreate(Sender: TObject);
begin
      dataaudiencia.Datetime := now;
      data_debito_depositos.DateTime := now;
      data_levantamento_deposito.DateTime := now;
      data_bloqueio.DateTime := now;
      data_desbloqueio.DateTime := now;
      data_mandado_penhora.DateTime := now;
      data_indicacao.DateTime := now;
      data_deposito_outros.DateTime := now;
end;

procedure Tf_cadastrar_processo.enviar_email;
begin

      dm_processos.cds_preposto.First;

      while dm_processos.cds_preposto.Eof = false do
      begin

            with smtp do
            begin
                  smtp.Host := 'smtp.terra.com.br';
                  smtp.Username := 'atendfru@terra.com.br';
                  smtp.Password := 'frutos@123';
                  smtp.Port := 587;
                  smtp.AuthType := satDefault;
                  smtp.ConnectTimeout := 10000;
                  smtp.ReadTimeout := 10000;
            end;


            with msg do
            begin
                  msg.from.Name := 'Frutos Dias - Processo';
                  msg.From.Address := 'atendfru@terra.com.br';
            end;

            msg.CharSet := 'UTF-8';
            msg.Recipients.EMailAddresses := dm_processos.cds_preposto.FieldByName('EMAIL').AsString;
            msg.Subject := 'Audi�ncia Agendada';
            msg.Body.Text := 'Data da Audi�ncia: ' + dm_processos.cds_audiencias.FieldByName('DATA_AUDIENCIA').AsString + sLineBreak + sLineBreak +
                             'Hora da Audi�ncia : ' + dm_processos.cds_audiencias.FieldByName('HORA_AUDIENCIA').AsString + sLineBreak +  sLineBreak;

            // Conectando e enviando
            Try
            SMTP.Connect;
            if SMTP.Connected then
            begin
                  SMTP.Send(Msg);
                  Showmessage('E-mail enviado com sucesso para: '+ dm_processos.cds_preposto.FieldByName('NOME').AsString);
                  SMTP.Disconnect;
            end;
            Except
            on e: Exception do
            begin
                  //ShowMessage('ERRO: ' + e.Message);
                  SMTP.Disconnect;
            end;
      End;

            dm_processos.cds_preposto.Next;
      end;


      dm_processos.cds_testemunhas.First;

      while dm_processos.cds_testemunhas.Eof = false do
      begin

            with smtp do
            begin
                  smtp.Host := 'mail.frutosdias.com.br';
                  smtp.Username := 'no-reply@frutosdias.com.br';
                  smtp.Password := 'fd1853';
                  smtp.Port := 587;
                  smtp.AuthType := satDefault;
                  smtp.ConnectTimeout := 10000;
                  smtp.ReadTimeout := 10000;
            end;


            with msg do
            begin
                  msg.from.Name := 'Frutos Dias - Processo';
                  msg.From.Address := 'no-reply@frutosdias.com.br';
            end;

            msg.CharSet := 'UTF-8';
            msg.Recipients.EMailAddresses := dm_processos.cds_testemunhas.FieldByName('EMAIL').AsString;
            msg.Subject := 'Audi�ncia Agendada';
            msg.Body.Text := 'Data da Audi�ncia: ' + dm_processos.cds_audiencias.FieldByName('DATA_AUDIENCIA').AsString + sLineBreak + sLineBreak +
                             'Hora da Audi�ncia : ' + dm_processos.cds_audiencias.FieldByName('HORA_AUDIENCIA').AsString + sLineBreak +  sLineBreak;

            // Conectando e enviando
            Try
            SMTP.Connect;
            if SMTP.Connected then
            begin
                  SMTP.Send(Msg);
                  Showmessage('E-mail enviado com sucesso para: '+ dm_processos.cds_testemunhas.FieldByName('NOME').AsString);
                  SMTP.Disconnect;
            end;
            Except
            on e: Exception do
            begin
                  //ShowMessage('ERRO: ' + e.Message);
                  SMTP.Disconnect;
            end;
      End;

            dm_processos.cds_testemunhas.Next;
      end;

      dm_processos.cds_advogados.First;

      while dm_processos.cds_advogados.Eof = false do
      begin

            with smtp do
            begin
                  smtp.Host := 'mail.frutosdias.com.br';
                  smtp.Username := 'no-reply@frutosdias.com.br';
                  smtp.Password := 'fd1853';
                  smtp.Port := 587;
                  smtp.AuthType := satDefault;
                  smtp.ConnectTimeout := 10000;
                  smtp.ReadTimeout := 10000;
            end;


            with msg do
            begin
                  msg.from.Name := 'Frutos Dias - Processo';
                  msg.From.Address := 'no-reply@frutosdias.com.br';
            end;

            msg.CharSet := 'UTF-8';
            msg.Recipients.EMailAddresses := dm_processos.cds_advogados.FieldByName('EMAIL').AsString;
            msg.Subject := 'Audi�ncia Agendada';
            msg.Body.Text := 'Data da Audi�ncia: ' + dm_processos.cds_audiencias.FieldByName('DATA_AUDIENCIA').AsString + sLineBreak + sLineBreak +
                             'Hora da Audi�ncia : ' + dm_processos.cds_audiencias.FieldByName('HORA_AUDIENCIA').AsString + sLineBreak +  sLineBreak;

            // Conectando e enviando
            Try
            SMTP.Connect;
            if SMTP.Connected then
            begin
                  SMTP.Send(Msg);
                  Showmessage('E-mail enviado com sucesso para: '+ dm_processos.cds_advogados.FieldByName('NOME').AsString);
                  SMTP.Disconnect;
            end;
            Except
            on e: Exception do
            begin
                  //ShowMessage('ERRO: ' + e.Message);
                  SMTP.Disconnect;
            end;
      End;

            dm_processos.cds_advogados.Next;
      end;

end;

end.