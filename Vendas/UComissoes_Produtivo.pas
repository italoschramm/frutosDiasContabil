unit UComissoes_Produtivo;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math, DateUtils;

type
    comissoes_produtivo = class
    public
    valor_cortesia : extended;
    desc_cortesia : string;
    constructor criar;
    destructor destruir;
    procedure pesquisar;
    end;

implementation

uses  UComissoes, UComissoes_Oficina, f_load;

constructor  comissoes_produtivo.criar;
begin

end;

destructor comissoes_produtivo.destruir;
begin

end;

procedure comissoes_produtivo.pesquisar;


begin

      fload.lbload.caption := 'Consultando Banco (MDO)';
      fload.ProgressBar1.position := 30;
      application.ProcessMessages;

      f_comissoes_oficina.q_pesquisa1.Close;
      f_comissoes_oficina.q_pesquisa1.Params.ParamByName('data1').Value := f_comissoes_oficina.data_inicial;
      f_comissoes_oficina.q_pesquisa1.Params.ParamByName('data2').Value := f_comissoes_oficina.data_final;
      f_comissoes_oficina.q_pesquisa1.Open;

      f_comissoes_oficina.q_pesquisa1.First;

      while f_comissoes_oficina.q_pesquisa1.Eof = false do
      begin


            f_comissoes_oficina.q_inserir.close;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('NUMERO_OS').AsInteger;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('nome').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('NOME').Asstring;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('cod_servico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_SERVICO').Asstring;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('#0.00', f_comissoes_oficina.q_pesquisa1.FieldByName('VALOR').Asfloat));
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_TECNICO').AsInteger;
            f_comissoes_oficina.q_inserir.Parameters.ParamByName('franquia').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('franquia').AsInteger;
            f_comissoes_oficina.q_inserir.ExecSQL;

            f_comissoes_oficina.q_pesquisa1.Next;
            application.ProcessMessages;
      end;

       f_comissoes_oficina.q_pesquisa1.First;

      while f_comissoes_oficina.q_pesquisa1.Eof = false do
      begin
            if f_comissoes_oficina.q_pesquisa1.FieldByName('FRANQUIA').AsInteger <> 0 then
            begin
                  f_comissoes_oficina.q_pesquisa_franquia.Close;
                  f_comissoes_oficina.q_pesquisa_franquia.Params.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('FRANQUIA').AsString;
                  f_comissoes_oficina.q_pesquisa_franquia.Params.ParamByName('cod_servico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_SERVICO').AsString;
                  f_comissoes_oficina.q_pesquisa_franquia.Open;

                  f_comissoes_oficina.q_inserir.close;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('NUMERO_OS').AsInteger;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('nome').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('NOME').Asstring;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('cod_servico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_SERVICO').Asstring;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('#0.00', f_comissoes_oficina.q_pesquisa_franquia.FieldByName('PRECO_VENDA').Asfloat));
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_TECNICO').AsInteger;
                  f_comissoes_oficina.q_inserir.Parameters.ParamByName('franquia').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('franquia').AsInteger;
                  f_comissoes_oficina.q_inserir.ExecSQL;

            end;
           f_comissoes_oficina.q_pesquisa1.Next;
           application.ProcessMessages;
      end;

      f_comissoes_oficina.q_pesquisa2.Close;
      f_comissoes_oficina.q_pesquisa2.Parameters.ParamByName('mes_ano').value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
      f_comissoes_oficina.q_pesquisa2.Open;

      f_comissoes_oficina.q_pesquisa2.First;

      while f_comissoes_oficina.q_pesquisa2.Eof = false do
      begin

            f_comissoes_oficina.q_pesquisa3.close;
            f_comissoes_oficina.q_pesquisa3.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa2.FieldByName('NUMERO_OS').AsInteger;
            f_comissoes_oficina.q_pesquisa3.Open;

            f_comissoes_oficina.q_pesquisa3.First;

            while f_comissoes_oficina.q_pesquisa3.Eof = false do
            begin

                  f_comissoes_oficina.q_pesquisa4.close;
                  f_comissoes_oficina.q_pesquisa4.Parameters.ParamByName('numero_os1').Value := f_comissoes_oficina.q_pesquisa3.FieldByName('NUMERO_OS').AsInteger;
                  f_comissoes_oficina.q_pesquisa4.Parameters.ParamByName('cod_servico1').Value := f_comissoes_oficina.q_pesquisa3.FieldByName('COD_SERVICO').Asstring;
                  f_comissoes_oficina.q_pesquisa4.Parameters.ParamByName('numero_os2').Value := f_comissoes_oficina.q_pesquisa3.FieldByName('NUMERO_OS').AsInteger;
                  f_comissoes_oficina.q_pesquisa4.Parameters.ParamByName('cod_servico2').Value := f_comissoes_oficina.q_pesquisa3.FieldByName('COD_SERVICO').Asstring;
                  f_comissoes_oficina.q_pesquisa4.Open;

                  f_comissoes_oficina.q_pesquisa4.First;

                  while f_comissoes_oficina.q_pesquisa4.Eof = false do
                  begin

                        f_comissoes_oficina.q_inserir2.Close;
                        f_comissoes_oficina.q_inserir2.Parameters.ParamByName('cod_tecnico').Value :=  f_comissoes_oficina.q_pesquisa4.FieldByName('COD_TECNICO').AsInteger;
                        f_comissoes_oficina.q_inserir2.Parameters.ParamByName('nome').Value :=  f_comissoes_oficina.q_pesquisa4.FieldByName('NOME').Asstring;
                        f_comissoes_oficina.q_inserir2.Parameters.ParamByName('valor').Value := strtofloat( formatfloat('#0.00', (f_comissoes_oficina.q_pesquisa4.FieldByName('VALOR').Asfloat)/(f_comissoes_oficina.q_pesquisa4.FieldByName('QUANTIDADE').AsInteger)));
                        f_comissoes_oficina.q_inserir2.Parameters.ParamByName('mes_ano').Value :=  f_comissoes_oficina.q_pesquisa4.FieldByName('MES_ANO').Asstring;
                        f_comissoes_oficina.q_inserir2.Parameters.ParamByName('numero_os').Value :=  f_comissoes_oficina.q_pesquisa4.FieldByName('NUMERO_OS').asinteger;
                        f_comissoes_oficina.q_inserir2.ExecSQL;

                        f_comissoes_oficina.q_pesquisa4.Next;
                        application.ProcessMessages;
                  end;

                  f_comissoes_oficina.q_pesquisa3.Next;
                  application.ProcessMessages;
            end;
           f_comissoes_oficina.q_pesquisa2.Next;
           application.ProcessMessages;
      end;

      // -------Come�a Pe�as----------------------------------------------------


      {f_comissoes_oficina.q_pesquisa1.First;

      while f_comissoes_oficina.q_pesquisa1.Eof = false do
      begin
            f_comissoes_oficina.q_pesquisa_pecas.Close;
            f_comissoes_oficina.q_pesquisa_pecas.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_TECNICO').Asinteger;
            f_comissoes_oficina.q_pesquisa_pecas.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('NUMERO_OS').Asinteger;
            f_comissoes_oficina.q_pesquisa_pecas.Parameters.ParamByName('cod_servico').Value := f_comissoes_oficina.q_pesquisa1.FieldByName('COD_SERVICO').AsString;
            f_comissoes_oficina.q_pesquisa_pecas.open;

            f_comissoes_oficina.q_pesquisa_pecas.First;

            while f_comissoes_oficina.q_pesquisa_pecas.Eof = false do
            begin
                  f_comissoes_oficina.q_inserir3.Close;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_pesquisa_pecas.FieldByName('NUMERO_OS').AsInteger;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('nome').Value := f_comissoes_oficina.q_pesquisa_pecas.FieldByName('NOME').Asstring;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('cod_servico').Value := f_comissoes_oficina.q_pesquisa_pecas.FieldByName('COD_SERVICO').Asstring;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('0.00',f_comissoes_oficina.q_pesquisa_pecas.FieldByName('VALOR').Asfloat));
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa_pecas.FieldByName('COD_TECNICO').Asinteger;
                  f_comissoes_oficina.q_inserir3.Parameters.ParamByName('cod_item').Value := f_comissoes_oficina.q_pesquisa_pecas.FieldByName('COD_ITEM').Asstring;
                  f_comissoes_oficina.q_inserir3.ExecSQL();

                  f_comissoes_oficina.q_pesquisa_pecas.Next;
            end;

            f_comissoes_oficina.q_pesquisa1.Next;

      end;


     f_comissoes_oficina.q_pesquisa_simples.Close;
     f_comissoes_oficina.q_pesquisa_simples.Parameters.ParamByName('mes_ano').value :=  f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
     f_comissoes_oficina.q_pesquisa_simples.Open;

     f_comissoes_oficina.q_pesquisa_simples.First;

     while f_comissoes_oficina.q_pesquisa_simples.eof = false do
     begin
           f_comissoes_oficina.q_pesquisa5.close;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('numero_os1').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('NUMERO_OS').AsInteger;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_servico1').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_SERVICO').Asstring;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('numero_os2').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('NUMERO_OS').AsInteger;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_servico2').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_SERVICO').Asstring;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_TECNICO').Asinteger;
           f_comissoes_oficina.q_pesquisa5.Open;

           f_comissoes_oficina.q_pesquisa5.First;

           while f_comissoes_oficina.q_pesquisa5.Eof = false do
                  begin

                        f_comissoes_oficina.q_inserir4.Close;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('cod_tecnico').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('COD_TECNICO').AsInteger;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('nome').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('NOME').Asstring;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('valor').Value := strtofloat( formatfloat('#0.00', (f_comissoes_oficina.q_pesquisa5.FieldByName('VALOR').Asfloat)/(f_comissoes_oficina.q_pesquisa5.FieldByName('QUANTIDADE').AsInteger)));
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('mes_ano').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('MES_ANO').Asstring;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('numero_os').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('NUMERO_OS').asinteger;
                        f_comissoes_oficina.q_inserir4.ExecSQL;

                        f_comissoes_oficina.q_pesquisa5.Next;
                  end;

           f_comissoes_oficina.q_pesquisa_simples.Next;
     end;

            showmessage('OK'); }


      fload.lbload.caption := 'Consultando Banco (Pe�as)';
      fload.ProgressBar1.position := 60;
      application.ProcessMessages;

      f_comissoes_oficina.q_aux.Close;
      f_comissoes_oficina.q_aux.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
      f_comissoes_oficina.q_aux.Open;

      f_comissoes_oficina.q_aux.First;

      while f_comissoes_oficina.q_aux.eof = false do
      begin
            f_comissoes_oficina.q_aux1.Close;
            f_comissoes_oficina.q_aux1.Params.ParamByName('numero_os').Value := f_comissoes_oficina.q_aux.FieldByName('NUMERO_OS').AsINTEGER;
            f_comissoes_oficina.q_aux1.Open;

            f_comissoes_oficina.q_aux1.First;



            while f_comissoes_oficina.q_aux1.Eof = false do
            begin
                  f_comissoes_oficina.q_aux2.close;
                  f_comissoes_oficina.q_aux2.Params.ParamByName('numero_os').Value := f_comissoes_oficina.q_aux1.FieldByName('NUMERO_OS').AsInteger;
                  f_comissoes_oficina.q_aux2.Params.ParamByName('cod_item').Value :=  f_comissoes_oficina.q_aux1.FieldByName('ITEM').AsInteger;
                  f_comissoes_oficina.q_aux2.Params.ParamByName('cod_servico').Value :=  f_comissoes_oficina.q_aux1.FieldByName('COD_SERVICO').AsSTRING;
                  f_comissoes_oficina.q_aux2.Open;

                  f_comissoes_oficina.q_aux2.first;


                  while f_comissoes_oficina.q_aux2.Eof = false do
                  begin
                        f_comissoes_oficina.q_aux3.close;
                        f_comissoes_oficina.q_aux3.Params.ParamByName('numero_os').Value := f_comissoes_oficina.q_aux1.FieldByName('NUMERO_OS').AsInteger;
                        f_comissoes_oficina.q_aux3.Params.ParamByName('cod_item').Value :=  f_comissoes_oficina.q_aux1.FieldByName('ITEM').AsInteger;
                        f_comissoes_oficina.q_aux3.Params.ParamByName('cod_servico').Value :=  f_comissoes_oficina.q_aux1.FieldByName('COD_SERVICO').AsSTRING;
                        f_comissoes_oficina.q_aux3.Open;


                        f_comissoes_oficina.q_inserir3.Close;
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('mes_ano').Value := f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('numero_os').Value := f_comissoes_oficina.q_aux1.FieldByName('NUMERO_OS').AsInteger;
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('nome').Value := f_comissoes_oficina.q_aux2.FieldByName('NOME').Asstring;
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('cod_servico').Value := f_comissoes_oficina.q_aux1.FieldByName('COD_SERVICO').Asstring;
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('0.00',f_comissoes_oficina.q_aux3.FieldByName('VALOR').Asfloat));
                        f_comissoes_oficina.q_inserir3.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_aux2.FieldByName('COD_TECNICO').Asinteger;
                        f_comissoes_oficina.q_inserir3.ExecSQL();


                        f_comissoes_oficina.q_aux2.next;

                         application.ProcessMessages;


                  end;
                 f_comissoes_oficina.q_aux1.Next;
                 application.ProcessMessages;
            end;

           f_comissoes_oficina.q_aux.Next;
           application.ProcessMessages;
      end;

     f_comissoes_oficina.q_pesquisa_simples.Close;
     f_comissoes_oficina.q_pesquisa_simples.Parameters.ParamByName('mes_ano').value :=  f_comissoes_oficina.cbmes.Text + '/' + f_comissoes_oficina.cbano.Text;
     f_comissoes_oficina.q_pesquisa_simples.Open;

     f_comissoes_oficina.q_pesquisa_simples.First;

     while f_comissoes_oficina.q_pesquisa_simples.eof = false do
     begin
           f_comissoes_oficina.q_pesquisa5.close;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('numero_os1').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('NUMERO_OS').AsInteger;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_servico1').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_SERVICO').Asstring;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('numero_os2').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('NUMERO_OS').AsInteger;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_servico2').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_SERVICO').Asstring;
           f_comissoes_oficina.q_pesquisa5.Parameters.ParamByName('cod_tecnico').Value := f_comissoes_oficina.q_pesquisa_simples.FieldByName('COD_TECNICO').Asinteger;
           f_comissoes_oficina.q_pesquisa5.Open;

           f_comissoes_oficina.q_pesquisa5.First;

           while f_comissoes_oficina.q_pesquisa5.Eof = false do
                  begin

                        f_comissoes_oficina.q_inserir4.Close;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('cod_tecnico').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('COD_TECNICO').AsInteger;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('nome').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('NOME').Asstring;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('valor').Value := strtofloat( formatfloat('#0.00', (f_comissoes_oficina.q_pesquisa5.FieldByName('VALOR').Asfloat)/(f_comissoes_oficina.q_pesquisa5.FieldByName('QUANTIDADE').AsInteger)));
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('mes_ano').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('MES_ANO').Asstring;
                        f_comissoes_oficina.q_inserir4.Parameters.ParamByName('numero_os').Value :=  f_comissoes_oficina.q_pesquisa5.FieldByName('NUMERO_OS').asinteger;
                        f_comissoes_oficina.q_inserir4.ExecSQL;

                        f_comissoes_oficina.q_pesquisa5.Next;
                  end;

           f_comissoes_oficina.q_pesquisa_simples.Next;
     end;


     fload.lbload.caption := 'Calculando Valores';
     fload.ProgressBar1.position := 90;
     application.ProcessMessages;

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

end;

end.

