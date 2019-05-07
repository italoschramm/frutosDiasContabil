unit UBancos_Entradas;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math, UDias, DateUtils;

type
    bancos_entradas = class(dias)
    private
    procedure consulta;
    public
    conta : array[1..14] of string;
    tela : array[1..56,1..15] of extended;
    procedure calcular;
    procedure saldo;
    procedure entradas_conta;
    procedure entradas_cheque;
    procedure entradas_seminovos;
    procedure entradas_cartao_credito;
    procedure entradas_transferencias;
    procedure entradas_transferencias_mutuo;
    procedure entradas_totais;
    procedure entradas_financiamento_gmac;
    procedure entradas_financiamento_outros;
    procedure entradas_consorcio_gmac;
    procedure entradas_consorcio_outros;
    procedure entradas_comissao;
    procedure entradas_seguradora;
    procedure entradas_boletos;
    procedure saidas_fornecedor;
    procedure saidas_clientes;
    procedure saidas_salarios;
    procedure saidas_pj;
    procedure saidas_ferias;
    procedure saidas_rescisoes;
    procedure saidas_aluguel;
    procedure saidas_semi_novos;
    procedure saidas_pecas;
    procedure saidas_judiciais;
    procedure saidas_imposto;
    procedure saidas_cheque_devolvido;
    procedure saidas_veiculos;
    procedure saidas_venda_direta;
    procedure saidas_acionistas;
    procedure saidas_seguro;
    procedure saidas_consorcio;
    procedure saidas_juros;
    procedure saidas_tarifas;
    procedure saidas_emplacamento;
    procedure saidas_transferencias_mutuo;
    procedure saidas_rj;
    procedure saidas_transferencias;
    end;

implementation

uses previsao_fluxo, data_module;

procedure bancos_entradas.calcular;
begin

     conta[1] := '528';
     conta[2] := '474';
     conta[3] := '480';
     conta[4] := '501';
     conta[5] := '482';
     conta[6] := '526';
     conta[7] := '538';
     conta[8] := '584';
     conta[9] := '634';
     conta[10] := '633';
     conta[11] := '600';
     conta[12] := '546';
     conta[13] := '531';
     conta[14] := '0';

     consulta;
     saldo;
     entradas_conta;
     entradas_cheque;
     entradas_cartao_credito;
     entradas_transferencias;
     entradas_transferencias_mutuo;
     entradas_totais;
     entradas_seminovos;
     entradas_financiamento_gmac;
     entradas_financiamento_outros;
     entradas_consorcio_gmac;
     entradas_consorcio_outros;
     entradas_comissao;
     entradas_seguradora;
     entradas_boletos;
     saidas_fornecedor;
     saidas_clientes;
     saidas_pj;
     saidas_ferias;
     saidas_rescisoes;
     saidas_aluguel;
     saidas_semi_novos;
     saidas_pecas;
     saidas_judiciais;
     saidas_salarios;
     saidas_imposto;
     saidas_cheque_devolvido;
     saidas_veiculos;
     saidas_venda_direta;
     saidas_acionistas;
     saidas_seguro;
     saidas_consorcio;
     saidas_juros;
     saidas_tarifas;
     saidas_emplacamento;
     saidas_transferencias_mutuo;
     saidas_rj;
     saidas_transferencias;

end;

procedure bancos_entradas.saldo;
var
j : integer;
dia_anterior : string;
begin

      dia_anterior := formatdatetime('DD/MM/YYYY', IncDay(strtodate(data_pesquisa), -1));

      j := 1;

      while j <= 14 do
      begin
                  dm.q_saldo_diario.Close;
                  dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data').Value := dia_anterior;
                  dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data2').Value := dia_anterior;
                  dm.q_saldo_diario.Params.ParamByName('data3').Value := dia_anterior;
                  dm.q_saldo_diario.Open;

                  if j = 5 then
                  begin
                        tela[2,j] := dm.q_saldo_diario.FieldByName('SALDO').AsFloat;
                        dm.q_saldo_diario.Close;
                        dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('data').Value := dia_anterior;
                        dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('data2').Value := dia_anterior;
                        dm.q_saldo_diario.Params.ParamByName('data3').Value := dia_anterior;
                        dm.q_saldo_diario.Open;
                        tela[2,j] := tela[2,j] + dm.q_saldo_diario.FieldByName('SALDO').AsFloat;
                  end
                  else
                        tela[2,j] := dm.q_saldo_diario.FieldByName('SALDO').AsFloat;



                  j := j + 1;
            end;

    { j := 1;

      while j <= 14 do
      begin
                  dm.q_saldo_diario.Close;
                  dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data').Value := data_pesquisa;
                  dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data2').Value := data_pesquisa;
                  dm.q_saldo_diario.Params.ParamByName('data3').Value := data_pesquisa;
                  dm.q_saldo_diario.Open;

                  if j = 5 then
                  begin
                        tela[54,j] := dm.q_saldo_diario.FieldByName('SALDO').AsFloat;
                        dm.q_saldo_diario.Close;
                        dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('data').Value := data_pesquisa;
                        dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[13];
                        dm.q_saldo_diario.Params.ParamByName('data2').Value := data_pesquisa;
                        dm.q_saldo_diario.Params.ParamByName('data3').Value := data_pesquisa;
                        dm.q_saldo_diario.Open;
                        tela[54,j] := tela[54,j] + dm.q_saldo_diario.FieldByName('SALDO').AsFloat;
                  end
                  else
                        tela[54,j] := dm.q_saldo_diario.FieldByName('SALDO').AsFloat;

                  j := j + 1;
            end; }
end;

procedure bancos_entradas.consulta;
begin

    dm.q_entradas_bancos.Close;
    dm.q_entradas_bancos.Params.ParamByName('data').Value := data_pesquisa;
    dm.q_entradas_bancos.Open;

end;

procedure bancos_entradas.entradas_conta;
begin

    dm.q_entradas.close;
    dm.q_entradas.Params.ParamByName('data').Value := data_pesquisa;
    dm.q_entradas.Open;

    dm.q_entradas.First;

    while dm.q_entradas.Eof = false do
    begin
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[3,1] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[3,2] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[3,3] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[3,4] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[3,5] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[3,6] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[3,7] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[3,8] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[3,9] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[3,10] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[3,11] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[3,12] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[3,13] := dm.q_entradas.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[3,14] := dm.q_entradas.FieldByName('VALOR').AsFloat;

                  dm.q_entradas.next;

    end;



end;

procedure bancos_entradas.entradas_cheque;
begin

     dm.q_entradas_bancos.First;

      while dm.q_entradas_bancos.Eof = false do
      begin

            if dm.q_entradas_bancos.FieldByName('COD_ORIGEM_LANC').AsInteger = 15 then
            begin
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[4,1] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[4,2] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[4,3] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[4,4] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[4,5] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[4,6] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[4,7] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[4,8] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[4,9] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[4,10] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[4,11] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[4,12] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[4,13] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[4,14] := dm.q_entradas_bancos.FieldByName('VALOR').AsFloat;


            end;
            dm.q_entradas_bancos.Next;
      end;

end;

procedure bancos_entradas.entradas_financiamento_gmac;
begin
     dm.q_entradas_financiamento_gmac.close;
     dm.q_entradas_financiamento_gmac.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_financiamento_gmac.Params.ParamByName('data2').Value := data_pesquisa;
     dm.q_entradas_financiamento_gmac.Open;

     dm.q_entradas_financiamento_gmac.First;

    while dm.q_entradas_financiamento_gmac.Eof = false do
    begin
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[5,1] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[5,2] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[5,3] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[5,4] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[5,5] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[5,6] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[5,7] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[5,8] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[5,9] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[5,10] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[5,11] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[5,12] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[5,13] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[5,14] := dm.q_entradas_financiamento_gmac.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_financiamento_gmac.next;

    end;
end;

procedure bancos_entradas.entradas_consorcio_gmac;
begin
     dm.q_entradas_consorcio_gmac.close;
     dm.q_entradas_consorcio_gmac.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_consorcio_gmac.Open;

     dm.q_entradas_consorcio_gmac.First;

    while dm.q_entradas_consorcio_gmac.Eof = false do
    begin
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[6,1] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[6,2] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[6,3] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[6,4] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[6,5] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[6,6] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[6,7] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[6,8] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[6,9] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[6,10] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[6,11] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[6,12] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[6,13] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_gmac.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[6,14] := dm.q_entradas_consorcio_gmac.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_consorcio_gmac.next;

    end;
end;

procedure bancos_entradas.entradas_financiamento_outros;
begin
      dm.q_entradas_financiamento_outros.close;
      dm.q_entradas_financiamento_outros.Params.ParamByName('data1').Value := data_pesquisa;
      dm.q_entradas_financiamento_outros.Open;

      dm.q_entradas_financiamento_outros.First;

      while dm.q_entradas_financiamento_outros.Eof = false do
      begin
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[7,1] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[7,2] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[7,3] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[7,4] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[7,5] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[7,6] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[7,7] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[7,8] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[7,9] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[7,10] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[7,11] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[7,12] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[7,13] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_financiamento_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[7,14] := dm.q_entradas_financiamento_outros.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_financiamento_outros.next;

      end;
end;

procedure bancos_entradas.entradas_consorcio_outros;
begin
       dm.q_entradas_consorcio_outros.close;
     dm.q_entradas_consorcio_outros.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_consorcio_outros.Open;

     dm.q_entradas_consorcio_outros.First;

    while dm.q_entradas_consorcio_outros.Eof = false do
    begin
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[8,1] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[8,2] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[8,3] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[8,4] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[8,5] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[8,6] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[8,7] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[8,8] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[8,9] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[8,10] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[8,11] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[8,12] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[8,13] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_consorcio_outros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[8,14] := dm.q_entradas_consorcio_outros.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_consorcio_outros.next;

    end;
end;

procedure bancos_entradas.entradas_comissao;
begin
     dm.q_entradas_bancos_comissao.close;
     dm.q_entradas_bancos_comissao.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_bancos_comissao.Params.ParamByName('data2').Value := data_pesquisa;
     dm.q_entradas_bancos_comissao.Open;

     dm.q_entradas_bancos_comissao.First;

    while dm.q_entradas_bancos_comissao.Eof = false do
    begin
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[10,1] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[10,2] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[10,3] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[10,4] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[10,5] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[10,6] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[10,7] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[10,8] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[10,9] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[10,10] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[10,11] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[10,12] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[10,13] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_comissao.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[10,14] := dm.q_entradas_bancos_comissao.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_bancos_comissao.next;

    end;
end;

procedure bancos_entradas.entradas_seguradora;
begin

     dm.q_entradas_seguradora.close;
     dm.q_entradas_seguradora.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_seguradora.Open;

     dm.q_entradas_seguradora.First;

    while dm.q_entradas_seguradora.Eof = false do
    begin
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[9,1] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[9,2] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[9,3] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[9,4] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[9,5] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[9,6] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[9,7] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[9,8] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[9,9] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[9,10] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[9,11] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[9,12] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[9,13] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_seguradora.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[9,14] := dm.q_entradas_seguradora.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_seguradora.next;

    end;

end;

procedure bancos_entradas.entradas_seminovos;
begin

     dm.q_entradas_bancos_seminovos.Close;
     dm.q_entradas_bancos_seminovos.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_bancos_seminovos.Params.ParamByName('data2').Value := data_pesquisa;
     dm.q_entradas_bancos_seminovos.Open;

     dm.q_entradas_bancos_seminovos.First;

     while dm.q_entradas_bancos_seminovos.Eof = false do
     begin

                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[12,1] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[12,2] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[12,3] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[12,4] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[12,5] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[12,6] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[12,7] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[12,8] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[12,9] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[12,10] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[12,11] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[12,12] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[12,13] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_bancos_seminovos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[12,14] := dm.q_entradas_bancos_seminovos.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_bancos_seminovos.Next;

     end;
end;

procedure bancos_entradas.entradas_cartao_credito;
begin

      dm.q_entradas_cartao.Close;
      dm.q_entradas_cartao.Params.ParamByName('data').Value := data_pesquisa;
      dm.q_entradas_cartao.Open;

      dm.q_entradas_cartao.First;

      while dm.q_entradas_cartao.Eof = false do
      begin


                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 528 then
                  tela[14,1] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 474 then
                  tela[14,2] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 480 then
                  tela[14,3] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 501 then
                  tela[14,4] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 482 then
                  tela[14,5] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 526 then
                  tela[14,6] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 538 then
                  tela[14,7] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 584 then
                  tela[14,8] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 634 then
                  tela[14,9] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 533 then
                  tela[14,10] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 600 then
                  tela[14,11] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 546 then
                  tela[14,12] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 0 then
                  tela[14,13] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_cartao.FieldByName('CONTA_BAIXA').AsInteger = 0 then
                  tela[14,14] := dm.q_entradas_cartao.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_cartao.Next;
      end;

end;

procedure bancos_entradas.entradas_boletos;
begin
     dm.q_entradas_boletos.close;
     dm.q_entradas_boletos.Params.ParamByName('data1').Value := data_pesquisa;
     dm.q_entradas_boletos.Open;

     dm.q_entradas_boletos.First;

    while dm.q_entradas_boletos.Eof = false do
    begin
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[15,1] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[15,2] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[15,3] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[15,4] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[15,5] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[15,6] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[15,7] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[15,8] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[15,9] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[15,10] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[15,11] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[15,12] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[15,13] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;
                  if dm.q_entradas_boletos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[15,14] := dm.q_entradas_boletos.FieldByName('VALOR').AsFloat;

                  dm.q_entradas_boletos.next;

    end;
end;

procedure bancos_entradas.entradas_transferencias_mutuo;
var
j : integer;
begin
      j := 1;

      while j <= 14 do
      begin
            dm.q_entradas_bancos_transferencias.Close;
            dm.q_entradas_bancos_transferencias.Params.ParamByName('data').Value := data_pesquisa;
            dm.q_entradas_bancos_transferencias.Params.ParamByName('conta').Value := conta[j];
            dm.q_entradas_bancos_transferencias.Open;

            tela[16,j] := dm.q_entradas_bancos_transferencias.FieldByName('VALOR').AsFloat;

            j := j + 1;
      end;
end;

procedure bancos_entradas.entradas_transferencias;
var
j : integer;
begin
         j := 1;

      while j <= 14 do
      begin
            dm.q_entradas_bancos_transferencias2.Close;
            dm.q_entradas_bancos_transferencias2.Params.ParamByName('data').Value := data_pesquisa;
            dm.q_entradas_bancos_transferencias2.Params.ParamByName('conta').Value := conta[j];
            dm.q_entradas_bancos_transferencias2.Open;

            tela[18,j] := dm.q_entradas_bancos_transferencias2.FieldByName('VALOR').AsFloat;

            j := j + 1;
      end;
end;

procedure bancos_entradas.entradas_totais;
var
j : integer;
begin

      j := 1;
      while j <= 14 do
      begin
            tela[19,j] :=  tela[3,j] + tela[4,j] + tela[5,j] + tela[6,j] +
                           tela[7,j] + tela[8,j] + tela[9,j] - tela[10,j] +
                           tela[11,j] + tela[12,j] + tela[13,j] + tela[14,j] +
                           tela[15,j] + tela[16,j] + tela[17,j] + tela[18,j];
            tela[21,j] := tela[19,j] + tela[20,j];

            j := j + 1;
      end;

      j := 1;
      while j <= 14 do
      begin
            tela[19,j] :=  tela[3,j] + tela[4,j] + tela[5,j] + tela[6,j] +
                           tela[7,j] + tela[8,j] + tela[9,j] - tela[10,j] +
                           tela[11,j] + tela[12,j] + tela[13,j] + tela[14,j] +
                           tela[15,j] + tela[16,j] + tela[17,j] + tela[18,j];
            tela[21,j] :=  tela[19,j] + tela[20,j];

            tela[49,j] :=  tela[22,j] + tela[23,j] +
                           tela[24,j] + tela[25,j] + tela[26,j] - tela[27,j] +
                           tela[28,j] + tela[29,j] + tela[30,j] + tela[31,j] +
                           tela[32,j] + tela[33,j] + tela[34,j] + tela[35,j] +
                           tela[36,j] + tela[37,j] + tela[38,j] + tela[39,j] +
                           tela[40,j] + tela[41,j] + tela[42,j] + tela[43,j] +
                           tela[44,j] + tela[45,j] + tela[46,j] + tela[47,j] +
                           tela[48,j];

            tela[53,j] := tela[50,j] + tela[51,j] + tela[52,j] + tela[49,j];

            //tela[50,j] := tela[19,j] - tela[49,j];

            //tela[51,j] := tela[2,j] - tela[50,j];

            j := j + 1;
      end;
end;

procedure bancos_entradas.saidas_fornecedor;
begin

    dm.q_saidas_bancos_fornecedor.close;
    dm.q_saidas_bancos_fornecedor.Params.ParamByName('data1').Value := data_pesquisa;
    dm.q_saidas_bancos_fornecedor.Params.ParamByName('data2').Value := data_pesquisa;
    dm.q_saidas_bancos_fornecedor.Params.ParamByName('data3').Value := data_pesquisa;
    dm.q_saidas_bancos_fornecedor.Open;

    dm.q_saidas_bancos_fornecedor.First;

    while dm.q_saidas_bancos_fornecedor.Eof = false do
    begin
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[22,1] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[22,2] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[22,3] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[22,4] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[22,5] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[22,6] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[22,7] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[22,8] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[22,9] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[22,10] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[22,11] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[22,12] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[22,13] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_fornecedor.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[22,14] := dm.q_saidas_bancos_fornecedor.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_fornecedor.next;

    end;
end;

procedure bancos_entradas.saidas_clientes;
begin
      dm.q_saidas_bancos_clientes.Close;
      dm.q_saidas_bancos_clientes.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_clientes.Open;

      dm.q_saidas_bancos_clientes.First;

      while dm.q_saidas_bancos_clientes.Eof = false do
      begin

                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[23,1] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[23,2] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[23,3] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[23,4] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[23,5] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[23,6] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[23,7] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[23,8] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[23,9] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[23,10] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[23,11] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[23,12] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[23,13] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_clientes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[23,14] := dm.q_saidas_bancos_clientes.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_clientes.Next;
      end;


end;

procedure bancos_entradas.saidas_salarios;
begin
      dm.q_saidas_bancos_salarios.Close;
      dm.q_saidas_bancos_salarios.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_salarios.Open;

      dm.q_saidas_bancos_salarios.First;

      while dm.q_saidas_bancos_salarios.Eof = false do
      begin


                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[24,1] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[24,2] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[24,3] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[24,4] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[24,5] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[24,6] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[24,7] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[24,8] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[24,9] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[24,10] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[24,11] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[24,12] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[24,13] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_salarios.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[24,14] := dm.q_saidas_bancos_salarios.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_salarios.Next;
      end;
end;

procedure bancos_entradas.saidas_pj;
begin
      dm.q_saidas_bancos_pj.Close;
      dm.q_saidas_bancos_pj.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_pj.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_pj.Open;

      dm.q_saidas_bancos_pj.First;

      while dm.q_saidas_bancos_pj.Eof = false do
      begin


                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[25,1] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[25,2] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[25,3] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[25,4] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[25,5] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[25,6] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[25,7] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[25,8] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[25,9] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[25,10] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[25,11] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[25,12] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[25,13] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[25,14] := dm.q_saidas_bancos_pj.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_pj.Next;
      end;
end;

procedure bancos_entradas.saidas_ferias;
begin
        dm.q_saidas_bancos_ferias.Close;
      dm.q_saidas_bancos_ferias.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_ferias.Open;

      dm.q_saidas_bancos_ferias.First;

      while dm.q_saidas_bancos_ferias.Eof = false do
      begin


                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[26,1] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[26,2] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[26,3] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[26,4] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[26,5] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[26,6] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[26,7] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[26,8] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[26,9] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[26,10] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[26,11] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[26,12] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[26,13] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_ferias.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[26,14] := dm.q_saidas_bancos_ferias.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_ferias.Next;
      end;
end;

procedure bancos_entradas.saidas_rescisoes;
begin
      dm.q_saidas_bancos_rescisoes.Close;
      dm.q_saidas_bancos_rescisoes.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_rescisoes.Open;

      dm.q_saidas_bancos_rescisoes.First;

      while dm.q_saidas_bancos_rescisoes.Eof = false do
      begin


                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[27,1] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[27,2] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[27,3] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[27,4] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[27,5] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[27,6] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[27,7] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[27,8] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[27,9] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[27,10] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[27,11] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[27,12] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[27,13] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rescisoes.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[27,14] := dm.q_saidas_bancos_rescisoes.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_rescisoes.Next;
      end;
end;

procedure bancos_entradas.saidas_aluguel;
begin
      dm.q_saidas_bancos_aluguel.Close;
      dm.q_saidas_bancos_aluguel.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_aluguel.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_aluguel.Open;

      dm.q_saidas_bancos_aluguel.First;

      while dm.q_saidas_bancos_aluguel.Eof = false do
      begin


                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[28,1] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[28,2] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[28,3] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[28,4] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[28,5] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[28,6] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[28,7] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[28,8] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[28,9] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[28,10] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[28,11] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[28,12] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[28,13] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_aluguel.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[28,14] := dm.q_saidas_bancos_aluguel.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_aluguel.Next;
      end;


end;

procedure bancos_entradas.saidas_acionistas;
begin

      dm.q_saidas_bancos_acionistas.Close;
      dm.q_saidas_bancos_acionistas.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_acionistas.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_acionistas.Open;

      dm.q_saidas_bancos_acionistas.First;

      while dm.q_saidas_bancos_acionistas.Eof = false do
      begin


                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[29,1] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[29,2] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[29,3] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[29,4] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[29,5] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[29,6] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[29,7] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[29,8] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[29,9] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[29,10] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[29,11] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[29,12] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[29,13] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_acionistas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[29,14] := dm.q_saidas_bancos_acionistas.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_acionistas.Next;
      end;

end;

procedure bancos_entradas.saidas_imposto;
begin
      dm.q_saidas_bancos_imposto.Close;
      dm.q_saidas_bancos_imposto.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_imposto.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_imposto.Open;

      dm.q_saidas_bancos_imposto.First;

      while dm.q_saidas_bancos_imposto.Eof = false do
      begin


                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[30,1] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[30,2] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[30,3] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[30,4] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[30,5] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[30,6] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[30,7] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[30,8] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[30,9] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[30,10] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[30,11] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[30,12] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[30,13] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_imposto.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[30,14] := dm.q_saidas_bancos_imposto.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_imposto.Next;
      end;



end;

procedure bancos_entradas.saidas_cheque_devolvido;
begin
      dm.q_saidas_bancos_cheque.Close;
      dm.q_saidas_bancos_cheque.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_cheque.Open;

      dm.q_saidas_bancos_cheque.First;

      while dm.q_saidas_bancos_cheque.Eof = false do
      begin


                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[31,1] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[31,2] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[31,3] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[31,4] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[31,5] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[31,6] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[31,7] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[31,8] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[31,9] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[31,10] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[31,11] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[31,12] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[31,13] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_cheque.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[31,14] := dm.q_saidas_bancos_cheque.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_cheque.Next;
      end;
end;

procedure bancos_entradas.saidas_consorcio;
begin
      dm.q_saidas_bancos_consorcio.Close;
      dm.q_saidas_bancos_consorcio.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_consorcio.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_consorcio.params.ParamByName('data3').Value := data_pesquisa;
      dm.q_saidas_bancos_consorcio.Open;

      dm.q_saidas_bancos_consorcio.First;

      while dm.q_saidas_bancos_consorcio.Eof = false do
      begin


                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[32,1] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[32,2] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[32,3] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[32,4] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[32,5] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[32,6] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[32,7] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[32,8] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[32,9] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[32,10] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[32,11] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[32,12] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[32,13] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_consorcio.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[32,14] := dm.q_saidas_bancos_consorcio.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_consorcio.Next;
      end;


end;

procedure bancos_entradas.saidas_venda_direta;
begin

      dm.q_saidas_bancos_venda_direta.Close;
      dm.q_saidas_bancos_venda_direta.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_venda_direta.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_venda_direta.params.ParamByName('data3').Value := data_pesquisa;
      dm.q_saidas_bancos_venda_direta.Open;

      dm.q_saidas_bancos_venda_direta.First;

      while dm.q_saidas_bancos_venda_direta.Eof = false do
      begin


                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[33,1] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[33,2] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[33,3] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[33,4] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[33,5] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[33,6] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[33,7] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[33,8] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[33,9] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[33,10] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[33,11] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[33,12] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[33,13] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_venda_direta.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[33,14] := dm.q_saidas_bancos_venda_direta.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_venda_direta.Next;
      end;


end;

procedure bancos_entradas.saidas_veiculos;
begin
      dm.q_saidas_bancos_veiculos.Close;
      dm.q_saidas_bancos_veiculos.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_veiculos.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_veiculos.Open;

      dm.q_saidas_bancos_veiculos.First;

      while dm.q_saidas_bancos_veiculos.Eof = false do
      begin


                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[34,1] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[34,2] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[34,3] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[34,4] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[34,5] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[34,6] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[34,7] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[34,8] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[34,9] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[34,10] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[34,11] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[34,12] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[34,13] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_veiculos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[34,14] := dm.q_saidas_bancos_veiculos.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_veiculos.Next;
      end;
end;

procedure bancos_entradas.saidas_semi_novos;
begin
      dm.q_saidas_bancos_semi_novos.Close;
      dm.q_saidas_bancos_semi_novos.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_semi_novos.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_semi_novos.Open;

      dm.q_saidas_bancos_semi_novos.First;

      while dm.q_saidas_bancos_semi_novos.Eof = false do
      begin


                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[36,1] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[36,2] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[36,3] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[36,4] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[36,5] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[36,6] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[36,7] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[36,8] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[36,9] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[36,10] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[36,11] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[36,12] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[36,13] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_semi_novos.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[36,14] := dm.q_saidas_bancos_semi_novos.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_semi_novos.Next;
      end;


end;

procedure bancos_entradas.saidas_pecas;
begin
      dm.q_saidas_bancos_pecas.Close;
      dm.q_saidas_bancos_pecas.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_pecas.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_pecas.params.ParamByName('data3').Value := data_pesquisa;
      dm.q_saidas_bancos_pecas.Open;

      dm.q_saidas_bancos_pecas.First;

      while dm.q_saidas_bancos_pecas.Eof = false do
      begin


                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[37,1] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[37,2] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[37,3] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[37,4] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[37,5] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[37,6] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[37,7] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[37,8] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[37,9] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[37,10] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[37,11] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[37,12] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[37,13] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_pecas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[37,14] := dm.q_saidas_bancos_pecas.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_pecas.Next;
      end;
end;

procedure bancos_entradas.saidas_judiciais;
begin
      dm.q_saidas_bancos_judiciais.Close;
      dm.q_saidas_bancos_judiciais.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_judiciais.Open;

      dm.q_saidas_bancos_judiciais.First;

      while dm.q_saidas_bancos_judiciais.Eof = false do
      begin


                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[38,1] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[38,2] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[38,3] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[38,4] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[38,5] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[38,6] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[38,7] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[38,8] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[38,9] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[38,10] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[38,11] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[38,12] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[38,13] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_judiciais.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[38,14] := dm.q_saidas_bancos_judiciais.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_judiciais.Next;
      end;
end;

procedure bancos_entradas.saidas_juros;
begin

      dm.q_saidas_bancos_juros.Close;
      dm.q_saidas_bancos_juros.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_juros.Open;

      dm.q_saidas_bancos_juros.First;

      while dm.q_saidas_bancos_juros.Eof = false do
      begin


                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[41,1] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[41,2] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[41,3] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[41,4] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[41,5] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[41,6] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[41,7] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[41,8] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[41,9] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[41,10] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[41,11] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[41,12] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[41,13] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_juros.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[41,14] := dm.q_saidas_bancos_juros.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_juros.Next;
      end;
end;

procedure bancos_entradas.saidas_seguro;
begin

      dm.q_saidas_bancos_seguro.Close;
      dm.q_saidas_bancos_seguro.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_seguro.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_seguro.Open;

      dm.q_saidas_bancos_seguro.First;

      while dm.q_saidas_bancos_seguro.Eof = false do
      begin


                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[42,1] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[42,2] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[42,3] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[42,4] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[42,5] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[42,6] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[42,7] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[42,8] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[42,9] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[42,10] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[42,11] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[42,12] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[42,13] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_seguro.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[42,14] := dm.q_saidas_bancos_seguro.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_seguro.Next;
      end;

end;

procedure bancos_entradas.saidas_tarifas;
begin
      dm.q_saidas_bancos_tarifas.Close;
      dm.q_saidas_bancos_tarifas.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_tarifas.Open;

      dm.q_saidas_bancos_tarifas.First;

      while dm.q_saidas_bancos_tarifas.Eof = false do
      begin


                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[43,1] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[43,2] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[43,3] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[43,4] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[43,5] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[43,6] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[43,7] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[43,8] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[43,9] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[43,10] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[43,11] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[43,12] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[43,13] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_tarifas.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[43,14] := dm.q_saidas_bancos_tarifas.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_tarifas.Next;
      end;


end;

procedure bancos_entradas.saidas_emplacamento;
begin
      dm.q_saidas_bancos_emplacamento.Close;
      dm.q_saidas_bancos_emplacamento.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_emplacamento.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_emplacamento.params.ParamByName('data3').Value := data_pesquisa;
      dm.q_saidas_bancos_emplacamento.params.ParamByName('data4').Value := data_pesquisa;
      dm.q_saidas_bancos_emplacamento.Open;

      dm.q_saidas_bancos_emplacamento.First;

      while dm.q_saidas_bancos_emplacamento.Eof = false do
      begin


                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[44,1] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[44,2] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[44,3] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[44,4] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[44,5] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[44,6] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[44,7] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[44,8] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[44,9] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[44,10] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[44,11] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[44,12] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[44,13] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_emplacamento.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[44,14] := dm.q_saidas_bancos_emplacamento.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_emplacamento.Next;
      end;
end;

procedure bancos_entradas.saidas_transferencias_mutuo;
var
j : integer;
begin
      j := 1;

      while j <= 14 do
      begin
            dm.q_saidas_bancos_transferencias.Close;
            dm.q_saidas_bancos_transferencias.Params.ParamByName('data').Value := data_pesquisa;
            dm.q_saidas_bancos_transferencias.Params.ParamByName('conta').Value := conta[j];
            dm.q_saidas_bancos_transferencias.Open;

            tela[45,j] := dm.q_saidas_bancos_transferencias.FieldByName('VALOR').AsFloat;

            j := j + 1;
      end;


end;

procedure bancos_entradas.saidas_rj;
begin
      dm.q_saidas_bancos_rj.Close;
      dm.q_saidas_bancos_rj.params.ParamByName('data1').Value := data_pesquisa;
      dm.q_saidas_bancos_rj.params.ParamByName('data2').Value := data_pesquisa;
      dm.q_saidas_bancos_rj.Open;

      dm.q_saidas_bancos_rj.First;

      while dm.q_saidas_bancos_rj.Eof = false do
      begin


                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 528 then
                  tela[47,1] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 474 then
                  tela[47,2] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 480 then
                  tela[47,3] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 501 then
                  tela[47,4] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 482 then
                  tela[47,5] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 526 then
                  tela[47,6] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 538 then
                  tela[47,7] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 584 then
                  tela[47,8] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 634 then
                  tela[47,9] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 533 then
                  tela[47,10] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 600 then
                  tela[47,11] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 546 then
                  tela[47,12] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[47,13] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;
                  if dm.q_saidas_bancos_rj.FieldByName('COD_CONTA_CORRENTE').AsInteger = 0 then
                  tela[47,14] := dm.q_saidas_bancos_rj.FieldByName('VALOR').AsFloat;

                  dm.q_saidas_bancos_rj.Next;
      end;
end;

procedure bancos_entradas.saidas_transferencias;
var
j : integer;
begin

     j := 1;

      while j <= 14 do
      begin
            dm.q_saidas_bancos_transferencias2.Close;
            dm.q_saidas_bancos_transferencias2.Params.ParamByName('data').Value := data_pesquisa;
            dm.q_saidas_bancos_transferencias2.Params.ParamByName('conta').Value := conta[j];
            dm.q_saidas_bancos_transferencias2.Open;

            tela[48,j] := dm.q_saidas_bancos_transferencias2.FieldByName('VALOR').AsFloat;

            j := j + 1;
      end;

end;

end.

