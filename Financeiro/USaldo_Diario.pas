unit USaldo_Diario;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math, UDias, DateUtils;

type
    saldo_contas = class(dias)
    private
    procedure saldo;
    procedure saldo_anterior;
    public
    saldo_dia : array[1..31,1..13] of extended;
    saldo_atual : array[1..13] of extended;
    conta : array[1..13] of string;
    saldo_total_dia : array[1..31] of extended;
    saldo_total, saldo_inicial : extended;
    procedure calcular;
    end;

implementation

uses saldo_diario, data_module;

procedure saldo_contas.calcular;
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
      conta[13] := '0';

      inserir_dias;
      saldo;
      saldo_anterior;

end;


procedure saldo_contas.saldo;
var
i, j, m : integer;
dia, mes, data_aux : string;
begin

      data_aux := formatdatetime('DD', now);

      if copy(mes_inicio,4,2) = copy(data_pesquisa2,4,2) then
      m := strtoint(formatdatetime('DD', now))
      else
      m := 31;

      j := 1;

      while j <= 13 do
      begin

            i := 0;
            mes := formatdatetime('DD/MM/YYYY', Incday(strtodate(mes_inicio),- 1));

            while i <= 30 do
            begin

                  mes := formatdatetime('DD/MM/YYYY', IncDay(strtodate(mes), 1));

                  dm.q_saldo_diario.Close;
                  dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data').Value := mes;
                  dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[j];
                  dm.q_saldo_diario.Params.ParamByName('data2').Value := mes;
                  dm.q_saldo_diario.Params.ParamByName('data3').Value := mes;
                  dm.q_saldo_diario.Open;


                  dia := copy(mes,1,2);


                  saldo_dia[strtoint(dia),j] := dm.q_saldo_diario.FieldByName('SALDO').AsFloat;

                  if (strtoint(dia)) <> m then
                  i := i + 1
                  else
                  i := 50;

            end;

      saldo_atual[j] :=  dm.q_saldo_diario.FieldByName('SALDO').AsFloat;
      j := j + 1;
      end;

      //Total Saldo Atual

      i := 1;
      while i <= 13 do
      begin
            saldo_total := saldo_total + saldo_atual[i];
            i := i + 1;
      end;

      //Total Saldo dia

      i := 1;

      while i <= 31 do
      begin
            j := 1;
            while j <= 13 do
            begin
                  saldo_total_dia[i] := saldo_total_dia[i] + saldo_dia[i,j];
                  j := j + 1;

            end;
            i := i + 1
      end;



end;

procedure saldo_contas.saldo_anterior;
var
i, j : integer;
begin

       j := 1;

       while j <= 13 do
       begin
            dm.q_saldo_diario.Close;
            dm.q_saldo_diario.Params.ParamByName('conta1').Value := conta[j];
            dm.q_saldo_diario.Params.ParamByName('data').Value := mes_anterior1;
            dm.q_saldo_diario.Params.ParamByName('conta2').Value := conta[j];
            dm.q_saldo_diario.Params.ParamByName('conta3').Value := conta[j];
            dm.q_saldo_diario.Params.ParamByName('data2').Value := mes_anterior1;
            dm.q_saldo_diario.Params.ParamByName('data3').Value := mes_anterior1;
            dm.q_saldo_diario.Open;


            saldo_inicial := saldo_inicial + dm.q_saldo_diario.FieldByName('SALDO').AsExtended;

            j := j + 1;
       end;

end;


end.

