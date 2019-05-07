unit UDados;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
      dados = class
        public
        valor : array[1..44,1..9] of extended;

        m, i, j : integer;
        constructor criar;
        destructor destruir;
        procedure inserir;
      end;



implementation

uses principal, balancete;

constructor dados.criar;
begin

end;

destructor dados.destruir;
begin

end;

procedure dados.inserir;
begin

            f_balancete.q_consulta2.Close;
            f_balancete.q_consulta2.Parameters.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
            f_balancete.q_consulta2.Parameters.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
            f_balancete.q_consulta2.Open;

            f_balancete.q_consulta2.First;

            while f_balancete.q_consulta2.Eof = false do
            begin

                  if (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 11)
                  and ((f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710010011') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710010011'))
                   then
                  begin


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[1,1] := valor[1,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[1,2] := valor[1,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[1,3] := valor[1,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[1,4] := valor[1,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[1,5] := valor[1,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[1,6] := valor[1,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[1,7] := valor[1,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[1,8] := valor[1,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[1,9] := valor[1,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------




                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[1,1] := valor[1,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[1,2] := valor[1,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[1,3] := valor[1,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[1,4] := valor[1,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[1,5] := valor[1,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[1,6] := valor[1,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[1,7] := valor[1,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[1,8] := valor[1,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[1,9] := valor[1,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  if (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 13)
                   and ((f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710010013') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710010013') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3626950002') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3626950002'))

                   then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[2,1] := valor[2,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[2,2] := valor[2,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[2,3] := valor[2,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[2,4] := valor[2,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[2,5] := valor[2,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[2,6] := valor[2,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[2,7] := valor[2,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[2,8] := valor[2,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[2,9] := valor[2,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[2,1] := valor[2,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[2,2] := valor[2,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[2,3] := valor[2,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[2,4] := valor[2,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[2,5] := valor[2,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[2,6] := valor[2,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[2,7] := valor[2,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[2,8] := valor[2,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[2,9] := valor[2,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  if (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 15)
                  and ((f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710010015') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710010015'))

                   then
                  begin

                       if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[3,1] := valor[3,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[3,2] := valor[3,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[3,3] := valor[3,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[3,4] := valor[3,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[3,5] := valor[3,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[3,6] := valor[3,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[3,7] := valor[3,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[3,8] := valor[3,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[3,9] := valor[3,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[3,1] := valor[3,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[3,2] := valor[3,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[3,3] := valor[3,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[3,4] := valor[3,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[3,5] := valor[3,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[3,6] := valor[3,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[3,7] := valor[3,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[3,8] := valor[3,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[3,9] := valor[3,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //5-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 21 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[5,1] := valor[5,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[5,2] := valor[5,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[5,3] := valor[5,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[5,4] := valor[5,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[5,5] := valor[5,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[5,6] := valor[5,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[5,7] := valor[5,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[5,8] := valor[5,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[5,9] := valor[5,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[5,1] := valor[5,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[5,2] := valor[5,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[5,3] := valor[5,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[5,4] := valor[5,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[5,5] := valor[5,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[5,6] := valor[5,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[5,7] := valor[5,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[5,8] := valor[5,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[5,9] := valor[5,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //6-----------------------------------------------------------------------



                  if ((f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 11) or
                     (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 22) or
                     (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 23))
                  and ((f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710020023') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710020022') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710010012') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710010030') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710020023') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710020022') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710010012') or
                  (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710010030'))
                   then
                  begin
                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[6,1] := valor[6,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[6,2] := valor[6,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[6,3] := valor[6,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[6,4] := valor[6,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[6,5] := valor[6,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[6,6] := valor[6,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[6,7] := valor[6,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[6,8] := valor[6,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[6,9] := valor[6,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[6,1] := valor[6,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[6,2] := valor[6,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[6,3] := valor[6,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[6,4] := valor[6,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[6,5] := valor[6,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[6,6] := valor[6,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[6,7] := valor[6,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[6,8] := valor[6,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[6,9] := valor[6,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //8-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 24 then
                  begin
                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[8,1] := valor[8,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[8,2] := valor[8,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[8,3] := valor[8,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[8,4] := valor[8,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[8,5] := valor[8,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[8,6] := valor[8,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[8,7] := valor[8,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[8,8] := valor[8,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[8,9] := valor[8,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[8,1] := valor[8,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[8,2] := valor[8,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[8,3] := valor[8,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[8,4] := valor[8,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[8,5] := valor[8,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[8,6] := valor[8,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[8,7] := valor[8,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[8,8] := valor[8,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[8,9] := valor[8,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //9-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 25 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[9,1] := valor[9,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[9,2] := valor[9,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[9,3] := valor[9,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[9,4] := valor[9,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[9,5] := valor[9,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[9,6] := valor[9,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[9,7] := valor[9,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[9,8] := valor[9,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[9,9] := valor[9,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[9,1] := valor[9,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[9,2] := valor[9,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[9,3] := valor[9,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[9,4] := valor[9,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[9,5] := valor[9,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[9,6] := valor[9,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[9,7] := valor[9,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[9,8] := valor[9,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[9,9] := valor[9,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //10-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 29 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[10,1] := valor[10,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[10,2] := valor[10,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[10,3] := valor[10,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[10,4] := valor[10,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[10,5] := valor[10,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[10,6] := valor[10,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[10,7] := valor[10,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[10,8] := valor[10,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[10,9] := valor[10,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[10,1] := valor[10,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[10,2] := valor[10,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[10,3] := valor[10,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[10,4] := valor[10,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[10,5] := valor[10,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[10,6] := valor[10,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[10,7] := valor[10,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[10,8] := valor[10,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[10,9] := valor[10,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                   //11-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 27 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[11,1] := valor[11,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[11,2] := valor[11,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[11,3] := valor[11,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[11,4] := valor[11,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[11,5] := valor[11,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[11,6] := valor[11,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[11,7] := valor[11,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[11,8] := valor[11,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[11,9] := valor[11,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[11,1] := valor[11,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[11,2] := valor[11,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[11,3] := valor[11,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[11,4] := valor[11,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[11,5] := valor[11,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[11,6] := valor[11,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[11,7] := valor[11,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[11,8] := valor[11,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[11,9] := valor[11,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                   //12-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 33 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[12,1] := valor[12,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[12,2] := valor[12,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[12,3] := valor[12,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[12,4] := valor[12,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[12,5] := valor[12,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[12,6] := valor[12,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[12,7] := valor[12,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[12,8] := valor[12,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[12,9] := valor[12,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[12,1] := valor[12,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[12,2] := valor[12,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[12,3] := valor[12,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[12,4] := valor[12,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[12,5] := valor[12,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[12,6] := valor[12,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[12,7] := valor[12,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[12,8] := valor[12,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[12,9] := valor[12,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //13-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 51 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[13,1] := valor[13,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[13,2] := valor[13,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[13,3] := valor[13,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[13,4] := valor[13,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[13,5] := valor[13,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[13,6] := valor[13,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[13,7] := valor[13,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[13,8] := valor[13,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[13,9] := valor[13,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[13,1] := valor[13,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[13,2] := valor[13,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[13,3] := valor[13,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[13,4] := valor[13,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[13,5] := valor[13,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[13,6] := valor[13,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[13,7] := valor[13,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[13,8] := valor[13,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[13,9] := valor[13,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                   //14-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 60 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[14,1] := valor[14,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[14,2] := valor[14,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[14,3] := valor[14,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[14,4] := valor[14,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[14,5] := valor[14,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[14,6] := valor[14,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[14,7] := valor[14,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[14,8] := valor[14,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[14,9] := valor[14,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[14,1] := valor[14,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[14,2] := valor[14,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[14,3] := valor[14,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[14,4] := valor[14,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[14,5] := valor[14,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[14,6] := valor[14,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[14,7] := valor[14,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[14,8] := valor[14,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[14,9] := valor[14,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //15-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 61 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[15,1] := valor[15,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[15,2] := valor[15,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[15,3] := valor[15,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[15,4] := valor[15,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[15,5] := valor[15,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[15,6] := valor[15,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[15,7] := valor[15,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[15,8] := valor[15,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[15,9] := valor[15,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[15,1] := valor[15,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[15,2] := valor[15,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[15,3] := valor[15,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[15,4] := valor[15,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[15,5] := valor[15,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[15,6] := valor[15,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[15,7] := valor[15,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[15,8] := valor[15,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[15,9] := valor[15,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //16-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 65 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[16,1] := valor[16,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[16,2] := valor[16,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[16,3] := valor[16,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[16,4] := valor[16,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[16,5] := valor[16,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[16,6] := valor[16,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[16,7] := valor[16,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[16,8] := valor[16,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[16,9] := valor[16,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[16,1] := valor[16,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[16,2] := valor[16,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[16,3] := valor[16,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[16,4] := valor[16,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[16,5] := valor[16,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[16,6] := valor[16,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[16,7] := valor[16,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[16,8] := valor[16,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[16,9] := valor[16,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  // 18 --------------------------------------------------------

                   if   ((f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3626950004') or
                        (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3626950004'))
                   then

                      begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[16,1] := valor[16,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[16,2] := valor[16,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[16,3] := valor[16,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[16,4] := valor[16,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[16,5] := valor[16,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[16,6] := valor[16,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[16,7] := valor[16,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[16,8] := valor[16,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[16,9] := valor[16,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[16,1] := valor[16,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[16,2] := valor[16,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[16,3] := valor[16,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[16,4] := valor[16,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[16,5] := valor[16,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[16,6] := valor[16,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[16,7] := valor[16,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[16,8] := valor[16,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[16,9] := valor[16,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //19-----------------------------------------------------------------------

                  if (f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 68) or
                      (f_balancete.q_consulta2.FieldByName('CONTA_DEBITO').asstring = '3710030073') or
                      (f_balancete.q_consulta2.FieldByName('CONTA_CREDITO').asstring = '3710030073')
                   then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[19,1] := valor[19,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[19,2] := valor[19,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[19,3] := valor[19,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[19,4] := valor[19,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[19,5] := valor[19,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[19,6] := valor[19,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[19,7] := valor[19,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[19,8] := valor[19,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[19,9] := valor[19,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[19,1] := valor[19,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[19,2] := valor[19,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[19,3] := valor[19,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[19,4] := valor[19,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[19,5] := valor[19,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[19,6] := valor[19,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[19,7] := valor[19,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[19,8] := valor[19,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[19,9] := valor[19,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                   //20-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 69 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[20,1] := valor[20,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[20,2] := valor[20,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[20,3] := valor[20,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[20,4] := valor[20,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[20,5] := valor[20,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[20,6] := valor[20,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[20,7] := valor[20,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[20,8] := valor[20,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[20,9] := valor[20,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[20,1] := valor[20,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[20,2] := valor[20,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[20,3] := valor[20,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[20,4] := valor[20,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[20,5] := valor[20,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[20,6] := valor[20,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[20,7] := valor[20,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[20,8] := valor[20,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[20,9] := valor[20,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //21-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 70 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[21,1] := valor[21,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[21,2] := valor[21,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[21,3] := valor[21,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[21,4] := valor[21,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[21,5] := valor[21,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[21,6] := valor[21,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[21,7] := valor[21,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[21,8] := valor[21,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[21,9] := valor[21,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[21,1] := valor[21,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[21,2] := valor[21,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[21,3] := valor[21,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[21,4] := valor[21,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[21,5] := valor[21,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[21,6] := valor[21,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[21,7] := valor[21,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[21,8] := valor[21,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[21,9] := valor[21,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                   //22-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 71 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[22,1] := valor[22,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[22,2] := valor[22,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[22,3] := valor[22,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[22,4] := valor[22,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[22,5] := valor[22,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[22,6] := valor[22,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[22,7] := valor[22,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[22,8] := valor[22,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[22,9] := valor[22,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[22,1] := valor[22,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[22,2] := valor[22,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[22,3] := valor[22,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[22,4] := valor[22,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[22,5] := valor[22,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[22,6] := valor[22,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[22,7] := valor[22,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[22,8] := valor[22,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[22,9] := valor[22,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //23-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 72 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[23,1] := valor[23,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[23,2] := valor[23,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[23,3] := valor[23,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[23,4] := valor[23,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[23,5] := valor[23,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[23,6] := valor[23,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[23,7] := valor[23,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[23,8] := valor[23,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[23,9] := valor[23,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[23,1] := valor[23,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[23,2] := valor[23,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[23,3] := valor[23,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[23,4] := valor[23,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[23,5] := valor[23,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[23,6] := valor[23,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[23,7] := valor[23,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[23,8] := valor[23,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[23,9] := valor[23,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                   //24-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 74 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[24,1] := valor[24,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[24,2] := valor[24,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[24,3] := valor[24,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[24,4] := valor[24,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[24,5] := valor[24,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[24,6] := valor[24,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[24,7] := valor[24,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[24,8] := valor[24,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[24,9] := valor[24,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[24,1] := valor[24,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[24,2] := valor[24,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[24,3] := valor[24,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[24,4] := valor[24,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[24,5] := valor[24,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[24,6] := valor[24,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[24,7] := valor[24,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[24,8] := valor[24,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[24,9] := valor[24,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //25-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 75 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[25,1] := valor[25,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[25,2] := valor[25,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[25,3] := valor[25,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[25,4] := valor[25,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[25,5] := valor[25,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[25,6] := valor[25,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[25,7] := valor[25,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[25,8] := valor[25,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[25,9] := valor[25,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[25,1] := valor[25,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[25,2] := valor[25,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[25,3] := valor[25,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[25,4] := valor[25,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[25,5] := valor[25,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[25,6] := valor[25,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[25,7] := valor[25,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[25,8] := valor[25,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[25,9] := valor[25,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //26-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 76 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[26,1] := valor[26,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[26,2] := valor[26,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[26,3] := valor[26,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[26,4] := valor[26,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[26,5] := valor[26,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[26,6] := valor[26,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[26,7] := valor[26,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[26,8] := valor[26,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[26,9] := valor[26,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[26,1] := valor[26,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[26,2] := valor[26,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[26,3] := valor[26,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[26,4] := valor[26,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[26,5] := valor[26,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[26,6] := valor[26,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[26,7] := valor[26,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[26,8] := valor[26,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[26,9] := valor[26,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                 //27-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 78 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[27,1] := valor[27,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[27,2] := valor[27,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[27,3] := valor[27,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[27,4] := valor[27,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[27,5] := valor[27,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[27,6] := valor[27,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[27,7] := valor[27,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[27,8] := valor[27,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[27,9] := valor[27,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[27,1] := valor[27,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[27,2] := valor[27,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[27,3] := valor[27,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[27,4] := valor[27,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[27,5] := valor[27,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[27,6] := valor[27,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[27,7] := valor[27,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[27,8] := valor[27,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[27,9] := valor[27,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //28-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 79 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[28,1] := valor[28,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[28,2] := valor[28,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[28,3] := valor[28,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[28,4] := valor[28,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[28,5] := valor[28,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[28,6] := valor[28,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[28,7] := valor[28,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[28,8] := valor[28,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[28,9] := valor[28,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[28,1] := valor[28,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[28,2] := valor[28,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[28,3] := valor[28,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[28,4] := valor[28,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[28,5] := valor[28,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[28,6] := valor[28,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[28,7] := valor[28,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[28,8] := valor[28,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[28,9] := valor[28,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //30-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 77 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[30,1] := valor[30,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[30,2] := valor[30,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[30,3] := valor[30,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[30,4] := valor[30,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[30,5] := valor[30,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[30,6] := valor[30,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[30,7] := valor[30,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[30,8] := valor[30,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[30,9] := valor[30,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[30,1] := valor[30,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[30,2] := valor[30,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[30,3] := valor[30,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[30,4] := valor[30,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[30,5] := valor[30,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[30,6] := valor[30,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[30,7] := valor[30,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[30,8] := valor[30,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[30,9] := valor[30,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //31-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 80 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[31,1] := valor[31,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[31,2] := valor[31,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[31,3] := valor[31,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[31,4] := valor[31,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[31,5] := valor[31,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[31,6] := valor[31,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[31,7] := valor[31,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[31,8] := valor[31,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[31,9] := valor[31,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[31,1] := valor[31,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[31,2] := valor[31,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[31,3] := valor[31,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[31,4] := valor[31,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[31,5] := valor[31,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[31,6] := valor[31,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[31,7] := valor[31,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[31,8] := valor[31,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[31,9] := valor[31,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                   //32-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 83 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[32,1] := valor[32,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[32,2] := valor[32,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[32,3] := valor[32,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[32,4] := valor[32,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[32,5] := valor[32,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[32,6] := valor[32,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[32,7] := valor[32,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[32,8] := valor[32,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[32,9] := valor[32,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[32,1] := valor[32,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[32,2] := valor[32,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[32,3] := valor[32,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[32,4] := valor[32,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[32,5] := valor[32,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[32,6] := valor[32,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[32,7] := valor[32,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[32,8] := valor[32,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[32,9] := valor[32,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                //33-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 82 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[33,1] := valor[33,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[33,2] := valor[33,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[33,3] := valor[33,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[33,4] := valor[33,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[33,5] := valor[33,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[33,6] := valor[33,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[33,7] := valor[33,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[33,8] := valor[33,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[33,9] := valor[33,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[33,1] := valor[33,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[33,2] := valor[33,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[33,3] := valor[33,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[33,4] := valor[33,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[33,5] := valor[33,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[33,6] := valor[33,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[33,7] := valor[33,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[33,8] := valor[33,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[33,9] := valor[33,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //35-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 84 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[35,1] := valor[35,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[35,2] := valor[35,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[35,3] := valor[35,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[35,4] := valor[35,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[35,5] := valor[35,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[35,6] := valor[35,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[35,7] := valor[35,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[35,8] := valor[35,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[35,9] := valor[35,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[35,1] := valor[35,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[35,2] := valor[35,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[35,3] := valor[35,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[35,4] := valor[35,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[35,5] := valor[35,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[35,6] := valor[35,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[35,7] := valor[35,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[35,8] := valor[35,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[35,9] := valor[35,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //36-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 88 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[36,1] := valor[36,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[36,2] := valor[36,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[36,3] := valor[36,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[36,4] := valor[36,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[36,5] := valor[36,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[36,6] := valor[36,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[36,7] := valor[36,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[36,8] := valor[36,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[36,9] := valor[36,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[36,1] := valor[36,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[36,2] := valor[36,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[36,3] := valor[36,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[36,4] := valor[36,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[36,5] := valor[36,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[36,6] := valor[36,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[36,7] := valor[36,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[36,8] := valor[36,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[36,9] := valor[36,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //37-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 85 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[37,1] := valor[37,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[37,2] := valor[37,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[37,3] := valor[37,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[37,4] := valor[37,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[37,5] := valor[37,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[37,6] := valor[37,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[37,7] := valor[37,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[37,8] := valor[37,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[37,9] := valor[37,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[37,1] := valor[37,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[37,2] := valor[37,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[37,3] := valor[37,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[37,4] := valor[37,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[37,5] := valor[37,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[37,6] := valor[37,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[37,7] := valor[37,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[37,8] := valor[37,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[37,9] := valor[37,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //39-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 87 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[39,1] := valor[39,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[39,2] := valor[39,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[39,3] := valor[39,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[39,4] := valor[39,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[39,5] := valor[39,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[39,6] := valor[39,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[39,7] := valor[39,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[39,8] := valor[39,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[39,9] := valor[39,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[39,1] := valor[39,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[39,2] := valor[39,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[39,3] := valor[39,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[39,4] := valor[39,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[39,5] := valor[39,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[39,6] := valor[39,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[39,7] := valor[39,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[39,8] := valor[39,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[39,9] := valor[39,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //40-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 85 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[40,1] := valor[40,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[40,2] := valor[40,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[40,3] := valor[40,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[40,4] := valor[40,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[40,5] := valor[40,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[40,6] := valor[40,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[40,7] := valor[40,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[40,8] := valor[40,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[40,9] := valor[40,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[40,1] := valor[40,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[40,2] := valor[40,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[40,3] := valor[40,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[40,4] := valor[40,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[40,5] := valor[40,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[40,6] := valor[40,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[40,7] := valor[40,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[40,8] := valor[40,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[40,9] := valor[40,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  //41-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 89 then
                  begin

                         if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[41,1] := valor[41,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[41,2] := valor[41,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[41,3] := valor[41,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[41,4] := valor[41,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[41,5] := valor[41,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[41,6] := valor[41,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[41,7] := valor[41,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[41,8] := valor[41,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[41,9] := valor[41,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[41,1] := valor[41,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[41,2] := valor[41,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[41,3] := valor[41,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[41,4] := valor[41,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[41,5] := valor[41,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[41,6] := valor[41,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[41,7] := valor[41,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[41,8] := valor[41,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[41,9] := valor[41,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //42-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 90 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[42,1] := valor[42,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[42,2] := valor[42,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[42,3] := valor[42,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[42,4] := valor[42,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[42,5] := valor[42,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[42,6] := valor[42,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[42,7] := valor[42,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[42,8] := valor[42,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[42,9] := valor[42,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[42,1] := valor[42,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[42,2] := valor[42,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[42,3] := valor[42,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[42,4] := valor[42,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[42,5] := valor[42,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[42,6] := valor[42,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[42,7] := valor[42,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[42,8] := valor[42,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[42,9] := valor[42,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //43-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 91 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[43,1] := valor[43,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[43,2] := valor[43,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[43,3] := valor[43,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[43,4] := valor[43,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[43,5] := valor[43,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[43,6] := valor[43,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[43,7] := valor[43,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[43,8] := valor[43,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[43,9] := valor[43,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[43,1] := valor[43,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[43,2] := valor[43,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[43,3] := valor[43,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[43,4] := valor[43,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[43,5] := valor[43,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[43,6] := valor[43,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[43,7] := valor[43,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[43,8] := valor[43,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[43,9] := valor[43,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;

                  //44-----------------------------------------------------------------------

                  if f_balancete.q_consulta2.FieldByName('COD_FABRICA').Asinteger = 92 then
                  begin

                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 11) then
                        begin
                        valor[44,1] := valor[44,1] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 9 then
                        begin
                        valor[44,2] := valor[44,2] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 6 then
                        begin
                        valor[44,3] := valor[44,3] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 2 then
                        begin
                        valor[44,4] := valor[44,4] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 3 then
                        begin
                        valor[44,5] := valor[44,5] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 5 then
                        begin
                        valor[44,6] := valor[44,6] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 4 then
                        begin
                        valor[44,7] := valor[44,7] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 10 then
                        begin
                        valor[44,8] := valor[44,8] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_DEBITO').AsInteger = 7 then
                        begin
                        valor[44,9] := valor[44,9] + f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;


                        //CREDITO-----------------------------------------------


                        if (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 1) or (f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 11) then
                        begin
                        valor[44,1] := valor[44,1] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 9 then
                        begin
                        valor[44,2] := valor[44,2] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 6 then
                        begin
                        valor[44,3] := valor[44,3] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 2 then
                        begin
                        valor[44,4] := valor[44,4] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 3 then
                        begin
                        valor[44,5] := valor[44,5] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 5 then
                        begin
                        valor[44,6] := valor[44,6] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 4 then
                        begin
                        valor[44,7] := valor[44,7] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 10 then
                        begin
                        valor[44,8] := valor[44,8] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                        if f_balancete.q_consulta2.FieldByName('CCUSTO_CREDITO').AsInteger = 7 then
                        begin
                        valor[44,9] := valor[44,9] - f_balancete.q_consulta2.fieldbyname('VALOR').ASEXTENDED;
                        end;

                  end;


                  f_balancete.q_consulta2.Next;

            end;

            //preenchendo a primeira coluna ------------------------------------

            f_balancete.dataset1.First;
            i := 1;


            while f_balancete.dataset1.Eof = false do
            begin

            m := 2;
            j := 1;

                  while m <= 10 do
                  begin

                        f_balancete.dataset1.Edit;
                        f_balancete.dataset1.Fields[m].AsExtended := valor[i,j];
                        f_balancete.dataset1.Post;

                        j := j + 1;
                        m := m + 1;

                  end;

            i := i + 1;
            f_balancete.dataset1.Next;

            end;

            //preenchendo a segunda coluna -------------------------------------

            f_balancete.dataset1.First;

            while f_balancete.dataset1.Eof = false do
            begin

            m := 10;
            j := 1;

                  while m <= 19 do
                  begin

                        f_balancete.dataset1.Edit;
                        f_balancete.dataset1.Fields[m].AsExtended := 0.00;
                        f_balancete.dataset1.Post;


                        m := m + 1;

                  end;


            f_balancete.dataset1.Next;

            end;



end;

end.
