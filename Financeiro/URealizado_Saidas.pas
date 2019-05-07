unit URealizado_Saidas;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math, UDias;

type
    realizado_saidas = class(dias)
    private
    dia : string;
    j : integer;
    procedure total;
    procedure pagamento_consorcio;
    procedure pagamento_novos;
    procedure pagamento_venda_direta;
    procedure pagamento_semi_novos;
    procedure pagamento_pecas;
    procedure pagamento_fornecedor_diversos;
    procedure pagamento_diversos;
    procedure pagamento_luz;
    procedure pagamento_impostos;
    procedure pagamento_aluguel;
    procedure pagamento_transferencias;
    procedure pagamento_outros;
    procedure pagamento_emprestimos;
    procedure pagamento_salarios;
    procedure pagamento_rescisao;
    procedure pagamento_socios;
    public
    realizado_saida_dia : array[1..31,1..22] of extended;
    realizado_saida_dia_total : array[1..31] of extended;
    procedure calcular;
    end;

implementation

uses previsao_fluxo, data_module;



procedure realizado_saidas.calcular;
begin

    inserir_dias;

    pagamento_consorcio;
    pagamento_novos;
    pagamento_venda_direta;
    pagamento_fornecedor_diversos;
    pagamento_semi_novos;
    pagamento_pecas;
    pagamento_impostos;
    pagamento_luz;
    pagamento_aluguel;
    //pagamento_diversos;
    pagamento_transferencias;
    pagamento_outros;
    pagamento_emprestimos;
    pagamento_salarios;
    pagamento_rescisao;
    pagamento_socios;
    total;

end;

procedure realizado_saidas.pagamento_novos;
var
i, q : integer;
datac : tdate;
diaf, diac : string;
begin

      dm.q_realizado_saida_veiculos.Close;
      dm.q_realizado_saida_veiculos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_veiculos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_veiculos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_veiculos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_veiculos.Open;

      dm.q_realizado_saida_veiculos.first;

      while dm.q_realizado_saida_veiculos.Eof = false do
      begin
                  dia := copy(datetostr(dm.q_realizado_saida_veiculos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),3] := realizado_saida_dia[strtoint(dia),3] + dm.q_realizado_saida_veiculos.FieldByName('VALOR').asfloat;

           dm.q_realizado_saida_veiculos.Next;
      end;


end;

procedure realizado_saidas.pagamento_fornecedor_diversos;
var
v_pecas : extended;
i : integer;
begin

      dm.q_realizado_saida_fornecedor_diversos.Close;
      dm.q_realizado_saida_fornecedor_diversos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_fornecedor_diversos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_fornecedor_diversos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_fornecedor_diversos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_fornecedor_diversos.Open;

      dm.q_realizado_saida_fornecedor_diversos.first;

      while dm.q_realizado_saida_fornecedor_diversos.Eof = false do
      begin
                  dia := copy(datetostr(dm.q_realizado_saida_fornecedor_diversos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),15] := realizado_saida_dia[strtoint(dia),15] + dm.q_realizado_saida_fornecedor_diversos.FieldByName('VALOR').asfloat;

           dm.q_realizado_saida_fornecedor_diversos.Next;
      end;

       {dm.q_historico_saidas.Close;
       dm.q_historico_saidas.params.ParamByName('data1').Value := mes_anterior3;
       dm.q_historico_saidas.params.ParamByName('data2').Value := mes_anterior1;
       dm.q_historico_saidas.open;

       i := 1;

       v_pecas := (dm.q_historico_saidas.FieldByName('VALOR').AsFloat / 3) / dias_uteis2;

       while i <= 31 do
       begin
               if (copy(vetor_dia[i],3,1) <> '-') and (copy(vetor_dia[i],3,1) <> '+') then
               previsao_saida_dia[i,6] := v_pecas;
               i := i + 1;

       end;  }

end;

procedure realizado_saidas.pagamento_semi_novos;
begin

      dm.q_realizado_saida_semi_novos.Close;
      dm.q_realizado_saida_semi_novos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_semi_novos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_semi_novos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_semi_novos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_semi_novos.Open;

      dm.q_realizado_saida_semi_novos.first;

      while dm.q_realizado_saida_semi_novos.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_semi_novos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),5] := realizado_saida_dia[strtoint(dia),5] + dm.q_realizado_saida_semi_novos.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_semi_novos.Next;
      end;

end;

procedure realizado_saidas.pagamento_venda_direta;
begin


      dm.q_realizado_saida_venda_direta.Close;
      dm.q_realizado_saida_venda_direta.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_venda_direta.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_venda_direta.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_venda_direta.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_venda_direta.Open;

      dm.q_realizado_saida_venda_direta.first;

      while dm.q_realizado_saida_venda_direta.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_venda_direta.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),4] := realizado_saida_dia[strtoint(dia),4] + dm.q_realizado_saida_venda_direta.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_venda_direta.Next;
      end;



end;

procedure realizado_saidas.pagamento_consorcio;
begin

      dm.q_realizado_saida_consorcio.Close;
      dm.q_realizado_saida_consorcio.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_consorcio.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_consorcio.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_consorcio.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_consorcio.Open;

      dm.q_realizado_saida_consorcio.first;

      while dm.q_realizado_saida_consorcio.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_consorcio.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),1] := realizado_saida_dia[strtoint(dia),1] + dm.q_realizado_saida_consorcio.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_consorcio.Next;
      end;
end;

procedure realizado_saidas.pagamento_luz;
begin

      dm.q_realizado_saida_luz.Close;
      dm.q_realizado_saida_luz.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_luz.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_luz.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_luz.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_luz.Open;

      dm.q_realizado_saida_luz.first;

      while dm.q_realizado_saida_luz.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_luz.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),12] := realizado_saida_dia[strtoint(dia),12] + dm.q_realizado_saida_luz.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_luz.Next;
      end;

end;

procedure realizado_saidas.pagamento_diversos;
begin

      dm.q_realizado_saida_diversos.Close;
      dm.q_realizado_saida_diversos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_diversos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_diversos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_diversos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_diversos.Open;

      dm.q_realizado_saida_diversos.first;

      while dm.q_realizado_saida_diversos.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_diversos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                 realizado_saida_dia[strtoint(dia),17] := realizado_saida_dia[strtoint(dia),17] + dm.q_realizado_saida_diversos.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_diversos.Next;
      end;

end;

procedure realizado_saidas.pagamento_aluguel;
begin

      dm.q_realizado_saida_aluguel.Close;
      dm.q_realizado_saida_aluguel.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_aluguel.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_aluguel.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_aluguel.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_aluguel.Open;

      dm.q_realizado_saida_aluguel.first;

      while dm.q_realizado_saida_aluguel.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_aluguel.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                 realizado_saida_dia[strtoint(dia),10] := realizado_saida_dia[strtoint(dia),10] + dm.q_realizado_saida_aluguel.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_aluguel.Next;
      end;

end;

procedure realizado_saidas.pagamento_impostos;
begin
      dm.q_realizado_saida_impostos.Close;
      dm.q_realizado_saida_impostos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_impostos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_impostos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_impostos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_impostos.Open;

      dm.q_realizado_saida_impostos.first;

      while dm.q_realizado_saida_impostos.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_impostos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),11] := realizado_saida_dia[strtoint(dia),11] + dm.q_realizado_saida_impostos.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_impostos.Next;
      end;


end;

procedure realizado_saidas.pagamento_transferencias;
begin

     dm.q_realizado_saida_transferencias.Close;
      dm.q_realizado_saida_transferencias.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_transferencias.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_transferencias.Open;

      dm.q_realizado_saida_transferencias.first;

      while dm.q_realizado_saida_transferencias.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_transferencias.FieldByName('DATA').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),18] := realizado_saida_dia[strtoint(dia),18] + dm.q_realizado_saida_transferencias.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_transferencias.Next;
      end;

end;

procedure realizado_saidas.pagamento_outros;
begin

      dm.q_realizado_saida_outros.Close;
      dm.q_realizado_saida_outros.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_outros.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_outros.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_outros.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_outros.params.ParamByName('data5').Value := mes_inicio;
      dm.q_realizado_saida_outros.params.ParamByName('data6').Value := mes_fim;
      dm.q_realizado_saida_outros.Open;

      dm.q_realizado_saida_outros.first;

      while dm.q_realizado_saida_outros.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_outros.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),22] := realizado_saida_dia[strtoint(dia),22] + dm.q_realizado_saida_outros.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_outros.Next;
      end;

end;

procedure realizado_saidas.pagamento_emprestimos;
begin
      dm.q_realizado_saida_emprestimos.Close;
      dm.q_realizado_saida_emprestimos.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_emprestimos.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_emprestimos.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_emprestimos.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_emprestimos.Open;

      dm.q_realizado_saida_emprestimos.first;

      while dm.q_realizado_saida_emprestimos.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_emprestimos.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),19] := realizado_saida_dia[strtoint(dia),19] + dm.q_realizado_saida_emprestimos.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_emprestimos.Next;
      end;


end;

procedure realizado_saidas.pagamento_pecas;
begin

      dm.q_realizado_saida_pecas.Close;
      dm.q_realizado_saida_pecas.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_pecas.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_pecas.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_pecas.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_pecas.Open;

      dm.q_realizado_saida_pecas.first;

      while dm.q_realizado_saida_pecas.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_pecas.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),6] := realizado_saida_dia[strtoint(dia),6] + dm.q_realizado_saida_pecas.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_pecas.Next;
      end;

end;

procedure realizado_saidas.pagamento_salarios;
begin
      dm.q_realizado_saida_salarios.Close;
      dm.q_realizado_saida_salarios.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_salarios.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_salarios.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_salarios.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_salarios.Open;

      dm.q_realizado_saida_salarios.first;

      while dm.q_realizado_saida_salarios.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_salarios.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),8] := realizado_saida_dia[strtoint(dia),8] + dm.q_realizado_saida_salarios.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_salarios.Next;
      end;
end;

procedure realizado_saidas.pagamento_rescisao;
begin

      dm.q_realizado_saida_rescisao.Close;
      dm.q_realizado_saida_rescisao.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_rescisao.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_rescisao.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_rescisao.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_rescisao.Open;

      dm.q_realizado_saida_rescisao.first;

      while dm.q_realizado_saida_rescisao.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_rescisao.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),9] := realizado_saida_dia[strtoint(dia),9] + dm.q_realizado_saida_rescisao.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_rescisao.Next;
      end;

end;

procedure realizado_saidas.pagamento_socios;
begin

      dm.q_realizado_saida_socios.Close;
      dm.q_realizado_saida_socios.params.ParamByName('data1').Value := mes_inicio;
      dm.q_realizado_saida_socios.params.ParamByName('data2').Value := mes_fim;
      dm.q_realizado_saida_socios.params.ParamByName('data3').Value := mes_inicio;
      dm.q_realizado_saida_socios.params.ParamByName('data4').Value := mes_fim;
      dm.q_realizado_saida_socios.Open;

      dm.q_realizado_saida_socios.first;

      while dm.q_realizado_saida_socios.Eof = false do
      begin

                  dia := copy(datetostr(dm.q_realizado_saida_socios.FieldByName('DATA_QUITACAO').Asdatetime),1,2);
                  realizado_saida_dia[strtoint(dia),16] := realizado_saida_dia[strtoint(dia),16] + dm.q_realizado_saida_socios.FieldByName('VALOR').asfloat;


           dm.q_realizado_saida_socios.Next;
      end;


end;

procedure realizado_saidas.total;
var
i,j : integer;
begin

      i := 1;
      j := 1;

      while j <= 22 do
      begin
            i := 1;
            while i <= 31 do
            begin
                  //showmessage('j='+inttostr(j) + ' i=' + inttostr(i) + ' total=' + floattostr(realizado_saida_dia_total[i]) + ' totaldia=' + floattostr(realizado_saida_dia[i,j]));
                  realizado_saida_dia_total[i] := realizado_saida_dia_total[i] +  realizado_saida_dia[i,j] ;
                  i := i + 1;
            end;
            j := j + 1;
      end;
end;

end.

