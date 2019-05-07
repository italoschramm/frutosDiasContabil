unit UNovo;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
      novo = class
        public
        valor : extended;
        m, i : integer;
        constructor criar;
        destructor destruir;
        procedure inserir;
      end;



implementation

uses principal, balancete;

constructor novo.criar;
begin

end;

destructor novo.destruir;
begin

end;

procedure novo.inserir;
begin


            valor := 0;
            m := 0;
            i := 1;

            while i <= 51 do
            begin


            case i of

            1 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = '+ QuotedStr('3710010011'));
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;

                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.First;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

             //2----------------------------------------------------------------

             2 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = '+ QuotedStr('3710010013'));
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


                //3----------------------------------------------------------------

             3 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = '+ QuotedStr('3710010015'));
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;



            //4----------------------------------------------------------------

             4 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


            //5----------------------------------------------------------------

             5 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = '+ QuotedStr('3710020021'));
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //6----------------------------------------------------------------

             6 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = '+ QuotedStr('3710020023'));
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

             //7----------------------------------------------------------------

             7 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //8----------------------------------------------------------------

             8 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710020024') + 'or A.CONTA_DEBITO = ' +  QuotedStr('3710020033') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //9----------------------------------------------------------------

             9 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710020025')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.Params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.Params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;


            //10----------------------------------------------------------------

             10 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710020032')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //11----------------------------------------------------------------

             11 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710020027') + 'or A.CONTA_DEBITO = ' +  QuotedStr('3710020028') + 'or A.CONTA_DEBITO = ' +  QuotedStr('3710020029') + 'or A.CONTA_DEBITO = ' +  QuotedStr('3710020031') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //12----------------------------------------------------------------

             12 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030073')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

             //13----------------------------------------------------------------

             13 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030051')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

           //14----------------------------------------------------------------

             14 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030060')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //15----------------------------------------------------------------

             15 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710030096') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030061') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710040093') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin

                           showmessage(floattostr(f_balancete.q_consulta2.FieldByName('VALOR').AsExtended));
                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //16----------------------------------------------------------------

             16 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030065')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //17----------------------------------------------------------------

             17 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //18----------------------------------------------------------------

             18 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


            //19----------------------------------------------------------------

             19 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030068')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //20----------------------------------------------------------------

             20 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710030069') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030085') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030086') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030094') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030095') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030089') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //21----------------------------------------------------------------

             21 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030070')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //22----------------------------------------------------------------

             22 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030081')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //23----------------------------------------------------------------

             23 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030072')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

             //24----------------------------------------------------------------

             24 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710030074') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030089') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //25----------------------------------------------------------------

             25 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030075')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //26----------------------------------------------------------------

             26 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030080')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //27----------------------------------------------------------------

             27 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030079')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

             //28----------------------------------------------------------------

             28 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710030076')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //29----------------------------------------------------------------

             29 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //30----------------------------------------------------------------

             30 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710030087') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710030088') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //31----------------------------------------------------------------

             31 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710040080')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

             //32----------------------------------------------------------------

             32 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  A.CONTA_DEBITO = ' + QuotedStr('3710040083')  );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

             end;

            //33----------------------------------------------------------------

             33 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040082') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710040093') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


            //34----------------------------------------------------------------

             34 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //35----------------------------------------------------------------

             35 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040084') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


            //36----------------------------------------------------------------

             36 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710030083') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //37----------------------------------------------------------------

             37 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040085') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710040094') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //38----------------------------------------------------------------

             38 : begin


                    valor := 0;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //39----------------------------------------------------------------

             39 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040087') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //40----------------------------------------------------------------

             40 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040085') + ' or A.CONTA_DEBITO = ' +  QuotedStr('3710040094') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;




                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //41----------------------------------------------------------------

             41 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040089') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;


                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //42----------------------------------------------------------------

             42 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040090') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;


                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //43----------------------------------------------------------------

             43 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040091') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;


                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;

            //44----------------------------------------------------------------

             44 : begin

                    f_balancete.q_consulta2.Close;
                    f_balancete.q_consulta2.SQL.Clear;
                    f_balancete.q_consulta2.SQL.Add('SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VALOR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA FROM LANCAMENTO_CONTABIL A');
                    f_balancete.q_consulta2.SQL.Add('WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC = 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0)');
                    f_balancete.q_consulta2.sql.add('and (A.CCUSTO_DEBITO = 1 OR A.CCUSTO_DEBITO = 11) AND  (A.CONTA_DEBITO = ' + QuotedStr('3710040092') + ')' );
                    f_balancete.q_consulta2.SQL.Add('group by (A.CONTA_DEBITO, A.CONTA_CREDITO,  A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, A.DATA)');
                    f_balancete.q_consulta2.params.ParamByName('data1').Value := formatdatetime('DD/MM/YYYY',f_balancete.date1.Date);
                    f_balancete.q_consulta2.params.ParamByName('data2').Value := formatdatetime('DD/MM/YYYY',f_balancete.date2.Date);
                    f_balancete.q_consulta2.open;


                    f_balancete.q_consulta2.first;
                    valor := 0;


                     while f_balancete.q_consulta2.Eof = false do
                      begin


                           valor := valor + f_balancete.q_consulta2.FieldByName('VALOR').AsExtended;
                           f_balancete.q_consulta2.Next;


                      end;

                    f_balancete.dataset1.Next;

                    f_balancete.dataset1.Edit;
                    f_balancete.dataset1.FieldByName('NOVO').AsFloat := valor;
                    f_balancete.dataset1.Post;

                end;


            end;

            i := i + 1;

            end;



end;

end.
