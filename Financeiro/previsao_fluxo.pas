unit previsao_fluxo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, UDias, UPrevisao_Saidas, Vcl.Buttons,
  UPrevisao_Saidas_Excel;

type
  Tf_previsao_fluxo = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    cbmes: TComboBox;
    Label1: TLabel;
    btfiltrar: TButton;
    Label2: TLabel;
    cbano: TComboBox;
    tb_tela: TADOTable;
    q_atualizar_tela: TADOQuery;
    q_limpa_tela: TADOQuery;
    tb_telaDIA: TWideStringField;
    tb_telaC1: TFloatField;
    tb_telaC2: TFloatField;
    tb_telaC3: TFloatField;
    tb_telaC4: TFloatField;
    tb_telaC5: TFloatField;
    tb_telaC6: TFloatField;
    tb_telaC7: TFloatField;
    tb_telaC8: TFloatField;
    tb_telaC9: TFloatField;
    tb_telaC10: TFloatField;
    tb_telaC11: TFloatField;
    tb_telaC12: TFloatField;
    tb_telaC13: TFloatField;
    tb_telaC14: TFloatField;
    tb_telaC15: TFloatField;
    tb_telaC16: TFloatField;
    tb_telaC17: TFloatField;
    tb_telaC18: TFloatField;
    tb_telaC19: TFloatField;
    tb_telaC20: TFloatField;
    tb_telaC21: TFloatField;
    tb_telaTOTAL: TFloatField;
    q_util: TADOQuery;
    DBGrid1: TDBGrid;
    tb_telaDIA_UTEL: TIntegerField;
    btexcel: TButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure limpa_tela;
    procedure atualiza_tela;
    procedure tela_total;
    procedure data;
    procedure dia_util;
    procedure btexcelClick(Sender: TObject);
  private

   ObjDias : dias;
  ObjSaidas : previsao;
  mes_hoje, ano_hoje : string;
  ObjSaidas_Excel : previsao_saidas_excel;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  f_previsao_fluxo: Tf_previsao_fluxo;

implementation

{$R *.dfm}

uses data_module, inserir_realizado;

procedure Tf_previsao_fluxo.btexcelClick(Sender: TObject);
begin

    ObjSaidas_Excel := previsao_saidas_excel.criar;
    ObjSaidas_Excel.exportar_dados;
    ObjSaidas_Excel.destruir;

end;

procedure Tf_previsao_fluxo.btfiltrarClick(Sender: TObject);
var
i, j : integer;
begin

      ObjSaidas := previsao.criar;

      limpa_tela;
      data;
      ObjSaidas.calcular;
      dia_util;
      //ObjSaidas.media;
      //ObjSaidas.realizado_dia;

      j := 1;

      while j <= 21 do
      begin
            i := 1;
            while i <= 31 do
            begin

                        q_atualizar_tela.Close;
                        q_atualizar_tela.SQL.Clear;
                        q_atualizar_tela.SQL.Add('UPDATE FLX_FLUXO SET C'+inttostr(j) + ' = :valor where DIA = :dia');
                        q_atualizar_tela.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('0.00',ObjSaidas.previsao_saida_dia[i,j]));
                        q_atualizar_tela.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                        q_atualizar_tela.ExecSQL;

                        i := i + 1;

            end;
            j := j + 1;

      end;



      {j := 1;

      while j <= 21 do
      begin
            i := 1;
            while i <= 31 do
            begin
                  if copy(ObjPrevisao.vetor_dia[i],3,1) <> '-' then
                  begin
                        f_previsao_fluxo.q_atualizar_tela.Close;
                        f_previsao_fluxo.q_atualizar_tela.SQL.Clear;
                        f_previsao_fluxo.q_atualizar_tela.SQL.Add('UPDATE FLX_FLUXO SET C'+inttostr(j) + ' = :valor where DIA = :dia');
                        f_previsao_fluxo.q_atualizar_tela.Parameters.ParamByName('valor').Value := ObjPrevisao.previsao_saida_dia[i,j];
                        f_previsao_fluxo.q_atualizar_tela.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                        f_previsao_fluxo.q_atualizar_tela.ExecSQL;

                        i := i + 1;
                  end
             else
                  begin
                        f_previsao_fluxo.q_utel.Close;
                        f_previsao_fluxo.q_utel.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                        f_previsao_fluxo.q_utel.ExecSQL;
                        i := i + 1;
                  end;

            end;
            j := j + 1;

      end;  }
      tela_total;

      atualiza_tela;
      ObjSaidas.destruir;

end;

procedure Tf_previsao_fluxo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
 var
 i : integer;
begin


      If (tb_tela.FieldByName('DIA_UTEL').Asinteger = 1) then
      dbgrid1.canvas.brush.color := clSilver
      else
      if (tb_tela.FieldByName('DIA_UTEL').Asinteger = 2) then
      dbgrid1.canvas.brush.color := clcream
      else
      dbgrid1.canvas.brush.color := clMoneyGreen;



      DBGrid1.Canvas.FillRect(Rect);
      dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);



end;


procedure Tf_previsao_fluxo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        q_limpa_tela.Close;
        q_limpa_tela.ExecSQL;
        action := cafree;
end;

procedure Tf_previsao_fluxo.limpa_tela;
begin
      q_limpa_tela.Close;
      q_limpa_tela.ExecSQL;


end;

procedure Tf_previsao_fluxo.atualiza_tela;
begin

       f_previsao_fluxo.tb_tela.Close;
       f_previsao_fluxo.tb_tela.open;

end;

procedure Tf_previsao_fluxo.tela_total;
begin
      f_previsao_fluxo.tb_tela.Close;
     f_previsao_fluxo.tb_tela.Open;

     f_previsao_fluxo.tb_tela.First;

     while f_previsao_fluxo.tb_tela.Eof = false do
     begin

     f_previsao_fluxo.tb_tela.Edit;
     f_previsao_fluxo.tb_tela.FieldByName('TOTAL').value :=
     f_previsao_fluxo.tb_tela.FieldByName('C1').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C2').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C3').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C4').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C5').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C6').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C7').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C8').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C9').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C10').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C11').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C12').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C13').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C14').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C15').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C16').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C17').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C18').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C19').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C20').AsFloat +
     f_previsao_fluxo.tb_tela.FieldByName('C21').AsFloat ;
     f_previsao_fluxo.tb_tela.Post;

     f_previsao_fluxo.tb_tela.Next;
     end;
end;

procedure tf_previsao_fluxo.data;
begin

      if cbmes.Text = 'JANEIRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/01/' + cbano.text;
      End;

      if cbmes.Text = 'FEVEREIRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/02/' + cbano.text;
      End;

      if cbmes.Text = 'MAR�O' then
      Begin
            ObjSaidas.data_pesquisa := '01/03/' + cbano.text;
      End;

      if cbmes.Text = 'ABRIL' then
      Begin
            ObjSaidas.data_pesquisa := '01/04/' + cbano.text;
      End;

      if cbmes.Text = 'MAIO' then
      Begin
            ObjSaidas.data_pesquisa := '01/05/' + cbano.text;
      End;

      if cbmes.Text = 'JUNHO' then
      Begin
            ObjSaidas.data_pesquisa := '01/06/' + cbano.text;
      End;

      if cbmes.Text = 'JULHO' then
      Begin
            ObjSaidas.data_pesquisa := '01/07/' + cbano.text;
      End;

      if cbmes.Text = 'AGOSTO' then
      Begin
            ObjSaidas.data_pesquisa := '01/08/' + cbano.text;
      End;

      if cbmes.Text = 'SETEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/09/' + cbano.text;
      End;

      if cbmes.Text = 'OUTUBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/10/' + cbano.text;
      End;

      if cbmes.Text = 'NOVEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/11/' + cbano.text;
      End;

      if cbmes.Text = 'DEZEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/12/' + cbano.text;
      End;

end;

procedure tf_previsao_fluxo.dia_util;
var
i : integer;
begin
        i := 1;

      while i <= 31 do
      begin
            if copy(ObjSaidas.vetor_dia[i],3,1) = '-' then
            begin
                  q_util.Close;
                  q_util.SQL.Clear;
                  q_util.SQL.Add('UPDATE FLX_FLUXO SET DIA_UTEL = 1 WHERE DIA = :dia');
                  q_util.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                  q_util.ExecSQL;

            end;

            if copy(ObjSaidas.vetor_dia[i],3,1) = '+' then
            begin
                  q_util.Close;
                  q_util.SQL.Clear;
                  q_util.SQL.Add('UPDATE FLX_FLUXO SET DIA_UTEL = 2 WHERE DIA = :dia');
                  q_util.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                  q_util.ExecSQL;

            end;

            i := i + 1;
      end;


end;

end.
