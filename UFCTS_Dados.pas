unit UFCTS_Dados;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
    fcts_dados = class
    private
    usados : array[1..42] of extended;
    pecas : array[1..42] of extended;
    funilaria : array[1..42] of extended;
    oficina : array[1..42] of extended;
    administracao : array[1..42] of extended;
    posto : array[1..42] of extended;
    compartilhada : array[1..42] of extended;
    novos_matriz : array[1..42] of extended;
    novos_filial : array[1..42] of extended;
    data1, data2, mes, ano, mes1, ano1 : string;
    public
    constructor criar;
    destructor destruir;
    procedure inserir_dados;
    procedure consultar_data;
    procedure limpar;
    procedure salvar;
    procedure salvar2;
    procedure salvar3;
    procedure salvar4;
    procedure saldo_anterior;
    procedure total;
    end;

implementation

uses UFcts, data_module, f_cagerrando, data_module_facts;


constructor  fcts_dados.criar;
begin

end;

destructor fcts_dados.destruir;
begin

end;

procedure fcts_dados.inserir_dados;
var
i : integer;

begin

            f_carregar.lbcarregando.Caption := 'Aguarde...';
            f_carregar.ProgressBar1.position := 20;
            application.ProcessMessages;

            //consulta a data

            consultar_data;


            //limpa o mes da tabela fcts

            limpar;

            //Saldo Anterior



            //Consulta no Banco NBS

            f_carregar.lbcarregando.Caption := 'Consultando Banco NBS...';
            f_carregar.ProgressBar1.position := 40;
            application.ProcessMessages;

            dm.q_consulta.Close;
            dm.q_consulta.Params.ParamByName('data1').Value := data1;
            dm.q_consulta.params.ParamByName('data2').Value := data2;
            dm.q_consulta.Open;

            dm_facts.q_consulta_os.Close;
            dm_facts.q_consulta_os.Params.ParamByName('data1').Value := data1;
            dm_facts.q_consulta_os.Params.ParamByName('data2').Value := data2;
            dm_facts.q_consulta_os.Params.ParamByName('data3').Value := data1;
            dm_facts.q_consulta_os.Params.ParamByName('data4').Value := data2;
            dm_facts.q_consulta_os.Params.ParamByName('data5').Value := data1;
            dm_facts.q_consulta_os.Params.ParamByName('data6').Value := data2;
            dm_facts.q_consulta_os.Params.ParamByName('data7').Value := data1;
            dm_facts.q_consulta_os.Params.ParamByName('data8').Value := data2;
            dm_facts.q_consulta_os.Params.ParamByName('data9').Value := data1;
            dm_facts.q_consulta_os.Params.ParamByName('data10').Value := data2;
            dm_facts.q_consulta_os.Open;

            dm_facts.q_consulta_os.First;

            dm.q_consulta.First;

            //Grava na tabela FCTS do sistema Frutos Dias

            f_carregar.lbcarregando.Caption := 'Inserindo dados...';
            f_carregar.ProgressBar1.position := 60;
            application.ProcessMessages;
            sleep(2000);

            while dm.q_consulta.Eof = false do
            begin
                  if (dm.q_consulta.FieldByName('CCUSTO_DEBITO').ASINTEGER <> 0) and
                     (dm.q_consulta.FieldByName('CCUSTO_DEBITO').ASINTEGER <> null)



                  then
                  begin

                  //Receita Novos ------------------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 400)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 401)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 402)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 403)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 404)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 405)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 406)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 407)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 408)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 409)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 410)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 411)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 412)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 413)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 414)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 415)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 416)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 417)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 418)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 419)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 420)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 421)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 422)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 423)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 424)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 425)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 426)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 427)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 428)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 429)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 430)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 431)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 432)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 433)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 434)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 435)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 436)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 437)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 438)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 439)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 440)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 441)

                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 400;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else
                        //Custos Novos ------------------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 602)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 611)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 626)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 610)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 613)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 615)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 617)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 616)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 608)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 626)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 406)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 601)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 423)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 629)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 624)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 603)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 630)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 625)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 609) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 605)
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 602;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else


                        // Receita Usados -----------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 446) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 446;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimleft(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        // Custo Usados -----------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 646) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 647) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 650)
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 646;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Oficina Mecanica -------------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 460) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 461) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 462) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 463) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 464)) and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3))
                             then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 460;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custo Oficina Mecanica -------------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 660) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 666))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3))
                             then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 660;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        // Receita Funilaria e Pintura ----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 470) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 471) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 472) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 473) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 476) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 479))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3)) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 470;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        // Custos Funilaria e Pintura ----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 670) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 676))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3)) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 670;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else


                        //Receita Pe�as e Acessorios -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 480) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 467) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 468) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 478) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 477) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 481) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 482) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 483) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 484) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 490) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 491) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 492))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 480;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custos Pe�as e Acessorios -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 680) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 682) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 683) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 690) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 684) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 688) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 668) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 667) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 678) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 672))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 3))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 680;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Mecanica P6 -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 460))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 460;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custo Receita Mecanica P6 ------------------------------

                         if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 660))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 660;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else
                         if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 669) OR
                            (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 679)
                            and (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger <> 0) )
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 61;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end

                        //Ocasional



                        //Else -------------------------------

                        else
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end;
                  end;




                  //////////////// -----------------------------------------



                  if (dm.q_consulta.FieldByName('CCUSTO_CREDITO').ASINTEGER <> 0) and
                     (dm.q_consulta.FieldByName('CCUSTO_CREDITO').ASINTEGER <> null) AND
                     (dm.q_consulta.FieldByName('CCUSTO_DEBITO').ASINTEGER <>
                     dm.q_consulta.FieldByName('CCUSTO_CREDITO').ASINTEGER)

                  then
                  begin

                         //Receita Novos ------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 400)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 401)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 402)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 403)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 404)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 405)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 406)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 407)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 408)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 409)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 410)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 411)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 412)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 413)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 414)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 415)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 416)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 417)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 418)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 419)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 420)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 421)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 422)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 423)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 424)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 425)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 426)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 427)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 428)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 429)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 430)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 431)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 432)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 433)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 434)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 435)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 436)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 437)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 438)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 439)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 440)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 441)
                            then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 400;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value :=  -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;

                        end
                        else

                        //Custos Novos-----------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 602)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 611)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 626)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 610)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 613)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 615)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 617)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 616)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 608)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 626)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 406)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 601)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 423)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 629)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 624)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 603)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 630)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 625)  or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 609) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 605)
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 602;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Usados-----------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 446) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 446;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custos Usados--------------------------------------------

                        if (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 646) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 647) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 650)
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 646;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimleft(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Oficina Mecanica ---------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 460) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 461) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 462) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 463) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 464))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3))
                         then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 460;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custos Oficina Mecanica --------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 660) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 666))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3))
                             then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 660;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Funilaria Pintura ---------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 470) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 471) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 472) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 473) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 476) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 479))
                           and
                            ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3))then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 470;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        // Custos Funilaria e Pintura ----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 670) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 676))
                           and
                            ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3)) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 670;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Receita Pe�as e Acessorios -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 480) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 467) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 468) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 478) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 477) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 481) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 482) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 483) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 484) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 490) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 491) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 492))
                           and
                            ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3)) then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 480;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custos Pe�as e Acessorios -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 680) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 682) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 683) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 690) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 684) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 688) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 668) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 667) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 678) or
                           (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 677))
                           and
                            ((dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 5) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 4) or
                           (dm.q_consulta.fieldbyname('CCUSTO_CREDITO').AsInteger = 3))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 680;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                          //Receita Mecanica P6 -----------------------------------

                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 460))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 460;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else

                        //Custo Receita Mecanica P6 ------------------------------

                         if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 660))
                           and
                           ((dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5))  then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 660;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end
                        else
                        //Ocasional
                        if ((dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 669) or
                            (dm.q_consulta.FieldByName('COD_FABRICA').asinteger = 679)
                            and (dm.q_consulta.fieldbyname('CCUSTO_DEBITO').AsInteger = 5))
                        then
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := 61;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_DEBITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value := -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end


                        //ELSE ---------------------------------------------
                        else
                        begin
                              dm_facts.q_inserir.close;
                              dm_facts.q_inserir.Parameters.ParamByName('conta').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('conta2').Value := dm.q_consulta.FieldByName('COD_FABRICA').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('cod_centro_custo').Value := dm.q_consulta.FieldByName('CCUSTO_CREDITO').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('valor').Value :=  -dm.q_consulta.FieldByName('VALOR').asinteger;
                              dm_facts.q_inserir.Parameters.ParamByName('data').Value := data1;
                              dm_facts.q_inserir.Parameters.ParamByName('conta_a').Value := trimright(dm.q_consulta.FieldByName('COD_FABRICA_A').asstring);
                              dm_facts.q_inserir.ExecSQL;
                        end;
                  end;

                  dm.q_consulta.Next;
            end;

            //Busca e faz o select SUM na tabela FCTS




            f_carregar.lbcarregando.Caption := 'Totalizando...';
            f_carregar.ProgressBar1.position := 90;
            sleep(2000);
            application.ProcessMessages;



            dm_facts.q_buscar.Close;
            dm_facts.q_buscar.Parameters.ParamByName('data').Value := data1;
            dm_facts.q_buscar.Open;

            dm_facts.q_buscar.First;



            while dm_facts.q_buscar.eof = false do
            begin
            salvar;
            dm_facts.q_buscar.Next;
            end;



            dm_facts.q_buscar2.Close;
            dm_facts.q_buscar2.Parameters.ParamByName('data').Value := data1;
            dm_facts.q_buscar2.Open;


            dm_facts.q_buscar2.First;



            while dm_facts.q_buscar2.Eof = false do
            begin
                 salvar2;
                 dm_facts.q_buscar2.Next;
            end;



            while dm_facts.q_consulta_os.Eof = false do
            begin
                 salvar3;
                 dm_facts.q_consulta_os.Next;
            end;



            salvar4;



            //Quantidade - Receita Usados --------------------------------------

            dm_facts.q_buscar_usados.Close;
            dm_facts.q_buscar_usados.Params.ParamByName('data1').Value := data1;
            dm_facts.q_buscar_usados.Params.ParamByName('data2').Value := data2;
            dm_facts.q_buscar_usados.Open;



            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade WHERE CONTA = 4462');
            dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_usados.FieldByName('QUANTIDADE').AsInteger;
            dm_facts.q_salvar.ExecSQL();



            f_fcts.atualiza_tela;


            saldo_anterior;



            f_fcts.libera;


            f_fcts.calcular;


            total;

            f_fcts.bloqueia;






end;

procedure fcts_dados.salvar;
var
centro_custo1, centro_custo2, conta, texto : string;

begin


       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 1 then
       begin
            centro_custo1 := 'NOVOS';
            centro_custo2 := '_NOVOS';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 2 then
       begin
            centro_custo1 := 'VEICULOS_USADOS';
            centro_custo2 := '';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 3 then
       begin
            centro_custo1 := 'PECAS_ACESSORIOS';
            centro_custo2 := '_PECAS';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 4 then
       begin
            centro_custo1 := 'FUNILARIA_PINTURA';
            centro_custo2 := '';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5 then
       begin
            centro_custo1 := 'OFICINA_MECANICA';
            centro_custo2 := '';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 6 then
       begin
            centro_custo1 := 'NOVOS';
            centro_custo2 := '_CONSORCIO';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 7 then
       begin
            centro_custo1 := 'ADMINISTRACAO';
            centro_custo2 := '_ADM';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 8 then
       begin
            centro_custo1 := 'NOVOS';
            centro_custo2 := '_FI';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 9 then
       begin
            centro_custo1 := 'NOVOS';
            centro_custo2 := '_DIRETAS';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 10 then
       begin
            centro_custo1 := 'PECAS_ACESSORIOS';
            centro_custo2 := '_POSTO';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 11 then
       begin
            centro_custo1 := 'NOVOS';
            centro_custo2 := '_FILIAL';
       end;

       if dm_facts.q_buscar.FieldByName('COD_CENTRO_CUSTO').AsInteger = 12 then
       begin
            centro_custo1 := 'ADMINISTRACAO';
            centro_custo2 := '_COMP';
       end;

       dm_facts.q_salvar.Close;
       dm_facts.q_salvar.SQL.Clear;
       dm_facts.q_salvar.SQL.Add('UPDATE FCTS_' + centro_custo1 +' SET MES'+ centro_custo2 + '= :valor WHERE CONTA = ' + inttostr(dm_facts.q_buscar.FieldByName('CONTA').AsInteger));
       dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_buscar.FieldByName('VALOR').AsFLOAT;
       dm_facts.q_salvar.ExecSQL;


end;

procedure fcts_dados.salvar2;
begin
          if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 400) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 401) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 402) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 403) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 404) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 405) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 406) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 407) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 408) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 409) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 410) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 411) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 412) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 413) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 414) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 415) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 416) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 417) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 418) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 419) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 420) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 421) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 422) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 423) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 424) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 425) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 426) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 427) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 428) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 429) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 430) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 431) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 432) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 433) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 434) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 435) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 436) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 437) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 438) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 439) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 440) or
          (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 441)
          then
          begin
               dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C2 = :valor WHERE CONTA_R = ' + inttostr(dm_facts.q_buscar2.FieldByName('CONTA2').AsInteger));
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value := - dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
               dm_facts.q_salvar.ExecSQL;
          end;


           if (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 602)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 611)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 626)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 610)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 613)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 615)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 617)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 616)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 608)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 626)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 406)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 601)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 629)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 624)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 603)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 630)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 625)  or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 609) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 605)
           then
           begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C3 = :valor WHERE CONTA_D = ' + inttostr(dm_facts.q_buscar2.FieldByName('CONTA2').AsInteger));
                  dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                  dm_facts.q_salvar.ExecSQL;
           end;


           //-------------------------------------------------------------


           if ((dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 464) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 465) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 469) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 466) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 471) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 472) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 473) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 675) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 476) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 479) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 480) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 467) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 468) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 478) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 477) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 481) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 482) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 483) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 484) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 687) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 688) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 490) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 491) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 492) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 450) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 448) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 649) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 452) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 653) or
              (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 456))

          then
          begin
               dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C2 = :valor WHERE CONTA = ' + inttostr(dm_facts.q_buscar2.FieldByName('CONTA2').AsInteger));
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value := - dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
               dm_facts.q_salvar.ExecSQL;
          end;


           if (dm_facts.q_buscar2.FieldByName('CONTA2').asinteger = 660)
           and (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5)
           then
           begin
               dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA2 = ' + inttostr(dm_facts.q_buscar2.FieldByName('CONTA2').AsInteger));
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
               dm_facts.q_salvar.ExecSQL;
           end;



           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 446) AND
              (dm_facts.q_buscar2.FieldByName('CONTA_A').Asstring = 'A') AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 2)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C2 = :valor WHERE CONTA = 4461');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value := - dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;


           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 446) AND
              (dm_facts.q_buscar2.FieldByName('CONTA_A').Asstring = 'B') AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 2)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C2 = :valor WHERE CONTA = 4462');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  - dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 646) AND
              (dm_facts.q_buscar2.FieldByName('CONTA_A').Asstring = 'A') AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 2)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 4461');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 646) AND
              (dm_facts.q_buscar2.FieldByName('CONTA_A').Asstring = 'B') AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 2)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 4462');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 680) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 480');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 667) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 467');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 668) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 468');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 678) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 5)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 478');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 677) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 4)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 477');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

            if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 682) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 3)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 482');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 683) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 3)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 483');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 684) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 3)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 484');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;

           if (dm_facts.q_buscar2.FieldByName('CONTA2').Asinteger = 690) AND
              (dm_facts.q_buscar2.FieldByName('COD_CENTRO_CUSTO').AsInteger = 3)
           then
           begin
                dm_facts.q_salvar.Close;
                dm_facts.q_salvar.SQL.Clear;
                dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C3 = :valor WHERE CONTA = 490');
                dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_buscar2.FieldByName('VALOR').AsFLOAT;
                dm_facts.q_salvar.ExecSQL;
           end;
end;

procedure fcts_dados.salvar3;
begin
      if dm_facts.q_consulta_os.FieldByName('TIPO').AsString = 'V1' then
      begin
            dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade, C2 = :valor WHERE CONTA = :conta');
               dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value :=  dm_facts.q_consulta_os.FieldByName('QUANTIDADE').AsFLOAT;
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_consulta_os.FieldByName('VALOR').Asinteger;
               dm_facts.q_salvar.parameters.ParamByName('conta').Value := 460;
               dm_facts.q_salvar.ExecSQL;
      end;

      if dm_facts.q_consulta_os.FieldByName('TIPO').AsString = 'V2' then
      begin
            dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade, C2 = :valor WHERE CONTA = :conta');
               dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value :=  dm_facts.q_consulta_os.FieldByName('QUANTIDADE').AsFLOAT;
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_consulta_os.FieldByName('VALOR').Asinteger;
               dm_facts.q_salvar.parameters.ParamByName('conta').Value := 462;
               dm_facts.q_salvar.ExecSQL;
      end;

      if dm_facts.q_consulta_os.FieldByName('TIPO').AsString = 'V3' then
      begin
            dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade, C2 = :valor WHERE CONTA = :conta');
               dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value :=  dm_facts.q_consulta_os.FieldByName('QUANTIDADE').AsFLOAT;
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_consulta_os.FieldByName('VALOR').Asinteger;
               dm_facts.q_salvar.parameters.ParamByName('conta').Value := 464;
               dm_facts.q_salvar.ExecSQL;
      end;

      if dm_facts.q_consulta_os.FieldByName('TIPO').AsString = 'DS' then
      begin
            dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade, C2 = :valor WHERE CONTA = :conta');
               dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value :=  dm_facts.q_consulta_os.FieldByName('QUANTIDADE').AsFLOAT;
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_consulta_os.FieldByName('VALOR').Asinteger;
               dm_facts.q_salvar.parameters.ParamByName('conta').Value := 463;
               dm_facts.q_salvar.ExecSQL;
      end;

      if dm_facts.q_consulta_os.FieldByName('TIPO').AsString = 'V4' then
      begin
            dm_facts.q_salvar.Close;
               dm_facts.q_salvar.SQL.Clear;
               dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = :quantidade, C2 = :valor WHERE CONTA = :conta');
               dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value :=  dm_facts.q_consulta_os.FieldByName('QUANTIDADE').AsFLOAT;
               dm_facts.q_salvar.Parameters.ParamByName('valor').Value :=  dm_facts.q_consulta_os.FieldByName('VALOR').Asinteger;
               dm_facts.q_salvar.parameters.ParamByName('conta').Value := 470;
               dm_facts.q_salvar.ExecSQL;
      end;
end;

procedure fcts_dados.salvar4;
begin
       dm_facts.q_buscar_novos.Close;
       dm_facts.q_buscar_novos.Params.ParamByName('data1').Value := data1;
       dm_facts.q_buscar_novos.Params.ParamByName('data2').Value := data2;
       dm_facts.q_buscar_novos.Open;

       dm_facts.q_buscar_novos.First;

       while dm_facts.q_buscar_novos.Eof = false do
       begin
            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20183 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 416');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20122 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 429');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 424');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20184 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 408');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20184 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 402');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20186 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 426');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20178 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 404');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20179 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 430');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

             if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20149 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 431');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

             if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20189 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 425');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

             if dm_facts.q_buscar_novos.FieldByName('COD_PRODUTO').AsInteger = 20188 then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = :quantidade WHERE CONTA_R = 403');
                  dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_buscar_novos.FieldByName('QUANTIDADE').AsInteger;
                  dm_facts.q_salvar.ExecSQL();
            end;

            dm_facts.q_buscar_novos.Next;
       end;
end;

procedure fcts_dados.consultar_data;
begin

      ano := f_fcts.cbano.Text;

      if f_fcts.cbmes.Text = 'JANEIRO' then
      begin
            data1 := '01/01/' + f_fcts.cbano.Text;
            data2 := '31/01/' + f_fcts.cbano.Text;
            mes := '12';
            ano := inttostr(strtoint(ano) - 1);
            mes1 := '1';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'FEVEREIRO' then
      begin
            data1 := '01/02/' + f_fcts.cbano.Text;
            data2 := '28/02/' + f_fcts.cbano.Text;
            mes := '1';
            mes1 := '2';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'MAR�O' then
      begin
            data1 := '01/03/' + f_fcts.cbano.Text;
            data2 := '31/03/' + f_fcts.cbano.Text;
            mes := '2';
            mes1 := '3';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'ABRIL' then
      begin
            data1 := '01/04/' + f_fcts.cbano.Text;
            data2 := '30/04/' + f_fcts.cbano.Text;
            mes := '3';
            mes1 := '4';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'MAIO' then
      begin
            data1 := '01/05/' + f_fcts.cbano.Text;
            data2 := '31/05/' + f_fcts.cbano.Text;
            mes := '4';
            mes1 := '5';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'JUNHO' then
      begin
            data1 := '01/06/' + f_fcts.cbano.Text;
            data2 := '30/06/' + f_fcts.cbano.Text;
            mes := '5';
            mes1 := '6';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'JULHO' then
      begin
            data1 := '01/07/' + f_fcts.cbano.Text;
            data2 := '31/07/' + f_fcts.cbano.Text;
            mes := '6';
            mes1 := '7';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'AGOSTO' then
      begin
            data1 := '01/08/' + f_fcts.cbano.Text;
            data2 := '31/08/' + f_fcts.cbano.Text;
            mes := '7';
            mes1 := '8';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'SETEMBRO' then
      begin
            data1 := '01/09/' + f_fcts.cbano.Text;
            data2 := '30/09/' + f_fcts.cbano.Text;
            mes := '8';
            mes1 := '9';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'OUTUBRO' then
      begin
            data1 := '01/10/' + f_fcts.cbano.Text;
            data2 := '31/10/' + f_fcts.cbano.Text;
            mes := '9';
            mes1 := '10';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'NOVEMBRO' then
      begin
            data1 := '01/11/' + f_fcts.cbano.Text;
            data2 := '30/11/' + f_fcts.cbano.Text;
            mes := '10';
            mes1 := '11';
            ano1 :=  f_fcts.cbano.Text;
      end;

      if f_fcts.cbmes.Text = 'DEZEMBRO' then
      begin
            data1 := '01/12/' + f_fcts.cbano.Text;
            data2 := '31/12/' + f_fcts.cbano.Text;
            mes := '11';
            mes1 := '12';
            ano1 :=  f_fcts.cbano.Text;
      end;



end;

procedure fcts_dados.limpar;
begin


      //Limpa a tabela fcts
      dm_facts.q_limpar.Close;
      dm_facts.q_limpar.parameters.ParamByName('data').Value := data1;
      dm_facts.q_limpar.ExecSQL;

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_ADMINISTRACAO SET SALDO_ANTERIOR =0, MES_ADM = 0, MES_COMP = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_FUNILARIA_PINTURA SET SALDO_ANTERIOR =0, MES = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_NOVOS SET SALDO_ANTERIOR =0, MES_NOVOS = 0, MES_FILIAL = 0, MES_CONSORCIO = 0, MES_DIRETAS = 0 , MES_FI = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_OFICINA_MECANICA SET SALDO_ANTERIOR =0, MES = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_PECAS_ACESSORIOS SET SALDO_ANTERIOR =0, MES_PECAS = 0, MES_POSTO = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_VEICULOS_USADOS SET SALDO_ANTERIOR =0, MES = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_TOTAIS_EMPRESA SET C1 =0, C2 = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C5 = 0, C6 = 0, C7 = 0, C8 = 0, C9 = 0, C10 = 0');
      dm_facts.q_limpa_mes.ExecSQL();

      dm_facts.q_limpa_mes.Close;
      dm_facts.q_limpa_mes.SQL.Clear;
      dm_facts.q_limpa_mes.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C5 = 0, C6 = 0, C7 = 0, C8 = 0');
      dm_facts.q_limpa_mes.ExecSQL();

     dm_facts.q_zerar.Close;
     dm_facts.q_zerar.ExecSQL;

end;

procedure fcts_dados.saldo_anterior;
begin

      dm_facts.tb_usados.first;



      while dm_facts.tb_usados.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_VEICULOS_USADOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_usados.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_VEICULOS_USADOS SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_VEICULOS_USADOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_usados.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_VEICULOS_USADOS SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_usados.Next;
      end;


      dm_facts.tb_novos.first;

      while dm_facts.tb_novos.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_NOVOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_novos.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_NOVOS SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_NOVOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_novos.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_NOVOS SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_novos.Next;
      end;



      dm_facts.tb_pecas.first;

      while dm_facts.tb_pecas.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_PECAS_ACESSORIOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_pecas.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_PECAS_ACESSORIOS SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_PECAS_ACESSORIOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_pecas.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_PECAS_ACESSORIOS SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_pecas.Next;
      end;



       dm_facts.tb_funilaria.first;

      while dm_facts.tb_funilaria.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_FUNILARIA_PINTURA_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_funilaria.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_FUNILARIA_PINTURA SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

             dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_FUNILARIA_PINTURA_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_funilaria.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_FUNILARIA_PINTURA SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_funilaria.Next;
      end;


      dm_facts.tb_oficina.first;

      while dm_facts.tb_oficina.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_OFICINA_MECANICA_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_oficina.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_OFICINA_MECANICA SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

             dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_OFICINA_MECANICA_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_oficina.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_OFICINA_MECANICA SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_oficina.Next;
      end;


      dm_facts.tb_administracao.first;

      while dm_facts.tb_administracao.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_ADMINISTRACAO_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_administracao.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_ADMINISTRACAO SET SALDO_ANTERIOR = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

             dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_ADMINISTRACAO_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_administracao.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_ADMINISTRACAO SET AJUSTES = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_administracao.Next;
      end;

        dm_facts.tb_receita_novos.first;

      while dm_facts.tb_receita_novos.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT ANO, CONTA, SUM(SALDO) AS SALDO, SUM(AJUSTES) AS AJUSTES, SUM(QUANTIDADE) AS QUANTIDADE FROM FCTS_RECEITA_NOVOS_SALDO WHERE MES <= :mes AND ANO = :ano and CONTA = :conta GROUP BY ANO, CONTA');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_receita_novos.FieldByName('CONTA_R').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_NOVOS SET C7 = :valor, C8 = :valor2, C6 = :quantidade WHERE CONTA_R = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('valor2').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_consulta_mes.FieldByName('QUANTIDADE').asinteger;
            dm_facts.q_salvar.ExecSQL();

            dm_facts.tb_receita_novos.Next;
      end;


        dm_facts.tb_receita_usados.first;

      while dm_facts.tb_receita_usados.Eof = false do
      begin
            dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT ANO, CONTA, SUM(SALDO) AS SALDO, SUM(AJUSTES) AS AJUSTES,SUM(QUANTIDADE) AS QUANTIDADE FROM FCTS_RECEITA_USADOS_SALDO WHERE MES <= :mes AND ANO = :ano and CONTA = :conta GROUP BY ANO, CONTA');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano1;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_receita_usados.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;


            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C6 = :valor, C7 = :valor2, C5 = :quantidade WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('SALDO').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('valor2').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.Parameters.ParamByName('quantidade').Value := dm_facts.q_consulta_mes.FieldByName('QUANTIDADE').asinteger;
            dm_facts.q_salvar.ExecSQL();


            {dm_facts.q_consulta_mes.Close;
            dm_facts.q_consulta_mes.SQL.Clear;
            dm_facts.q_consulta_mes.sql.Add('SELECT * FROM  FCTS_RECEITA_USADOS_SALDO WHERE MES = :mes AND ANO = :ano and CONTA = :conta');
            dm_facts.q_consulta_mes.Parameters.ParamByName('mes').Value := mes;
            dm_facts.q_consulta_mes.Parameters.ParamByName('ano').Value := ano;
            dm_facts.q_consulta_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_receita_usados.FieldByName('CONTA').AsInteger;
            dm_facts.q_consulta_mes.open;

            dm_facts.q_salvar.Close;
            dm_facts.q_salvar.SQL.Clear;
            dm_facts.q_salvar.SQL.Add('UPDATE FCTS_RECEITA_USADOS SET C7 = :valor WHERE CONTA = :conta');
            dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_consulta_mes.FieldByName('AJUSTES').ASFLOAT;
            dm_facts.q_salvar.Parameters.ParamByName('conta').Value := dm_facts.q_consulta_mes.FieldByName('CONTA').asinteger;
            dm_facts.q_salvar.ExecSQL();}

            dm_facts.tb_receita_usados.Next;
      end;

end;

procedure fcts_dados.total;
begin
      dm_facts.q_buscar_total.Close;
      dm_facts.q_buscar_total.Open;

      dm_facts.q_buscar_total.First;

      while dm_facts.q_buscar_total.Eof = false do
      begin

            if dm_facts.q_buscar_total.FieldByName('CONTA').AsInteger <> NULL then
            begin
                  dm_facts.q_salvar.Close;
                  dm_facts.q_salvar.SQL.Clear;
                  dm_facts.q_salvar.SQL.Add('UPDATE FCTS_TOTAIS_EMPRESA SET C1 = :valor, C2 = :valor2 WHERE CONTA = ' + inttostr(dm_facts.q_buscar_total.FieldByName('CONTA').AsInteger));
                  dm_facts.q_salvar.Parameters.ParamByName('valor').Value := dm_facts.q_buscar_total.FieldByName('MES').AsFLOAT;
                  dm_facts.q_salvar.Parameters.ParamByName('valor2').Value := dm_facts.q_buscar_total.FieldByName('TOTAL').AsFLOAT;
                  dm_facts.q_salvar.ExecSQL;
            end;

           dm_facts.q_buscar_total.Next;
      end;

      dm_facts.q_total_lucro.Close;
      dm_facts.q_total_lucro.ExecSQL();


end;


end.

