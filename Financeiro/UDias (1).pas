unit UDias;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
    dias = class
    private
    mes_ano : string;
    mes : Textfile;
    vetor_dia : array[1..31] of string;
    public
    constructor criar;
    destructor destruir;
    procedure inserir_dias;
    procedure identificar_mes;
    procedure arquivo;
    end;

implementation

uses previsao_fluxo;

constructor  dias.criar;
begin

end;

destructor dias.destruir;
begin

end;

procedure dias.inserir_dias;
var
i : integer;

begin

      identificar_mes;

      arquivo;

      //Se o mês tiver 31 dias



      if (mes_ano = '01') or (mes_ano = '03') or (mes_ano = '05') or (mes_ano = '07') or
      (mes_ano = '08') or (mes_ano = '10') or (mes_ano = '12') then

      begin
            i := 1;
            while i <= 31 do
            begin
                  f_previsao_fluxo.dataset.insert;
                  f_previsao_fluxo.dataset.fields[0].asstring := vetor_dia[i];
                  f_previsao_fluxo.dataset.post;
                  i := i + 1;
            end;

      end;

      //Se o mês tiver 30 dias

      if (mes_ano = '04') or (mes_ano = '06') or (mes_ano = '09') or (mes_ano = '11') then

      begin


            i := 1;
            while i <= 30 do
            begin

                  f_previsao_fluxo.dataset.insert;
                  f_previsao_fluxo.dataset.Fields[0].asstring := vetor_dia[i];
                  f_previsao_fluxo.dataset.post;
                  i := i + 1;

            end;

      end;

      //Se o mês tiver 29 dias

      if (mes_ano = '02') then

      begin
            i := 1;
            while i <= 29 do
            begin
                  f_previsao_fluxo.dataset.insert;
                  f_previsao_fluxo.dataset.fields[0].asstring := vetor_dia[i];
                  f_previsao_fluxo.dataset.post;
                  i := i + 1;
            end;

      end;



end;

procedure dias.identificar_mes;
begin

      mes_ano := formatdatetime('MM', now);

end;

procedure dias.arquivo;
var
dia : string;
i : integer;

begin

      if mes_ano = '01' then
      AssignFile(mes,'Financeiro\01.txt');

      if mes_ano = '02' then
      AssignFile(mes,'Financeiro\02.txt');

      if mes_ano = '03' then
      AssignFile(mes,'Financeiro\03.txt');

      if mes_ano = '04' then
      AssignFile(mes,'Financeiro\04.txt');

      if mes_ano = '05' then
      AssignFile(mes,'Financeiro\05.txt');

      if mes_ano = '06' then
      AssignFile(mes,'Financeiro\06.txt');

      if mes_ano = '07' then
      AssignFile(mes,'Financeiro\07.txt');

      if mes_ano = '08' then
      AssignFile(mes,'Financeiro\08.txt');

      if mes_ano = '09' then
      AssignFile(mes,'Financeiro\09.txt');

      if mes_ano = '10' then
      AssignFile(mes,'Financeiro\10.txt');

      if mes_ano = '11' then
      AssignFile(mes,'Financeiro\11.txt');

      if mes_ano = '12' then
      AssignFile(mes,'Financeiro\12.txt');

      Reset(mes);

      i := 1;
      while i <= 31 do
      begin
            readln(mes, dia);
            vetor_dia[i] := dia;
            i := i + 1;
      end;

      closefile(mes);

end;

end.

