unit UFcts_Excel;

interface

uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, ComObj,
  Data.Bind.Components, Data.Bind.DBScope;

type
    fcts_excel = class
    private
    linha, coluna : integer;
    planilha : variant;
    valorcampo, data1, ano, mes, dia : string;
    valorcampo2 : extended;
    public
    constructor criar;
    destructor destruir;
    procedure exportar_dados;
    procedure exportar_bancos;
    procedure exportar1;
    procedure exportar2;
    procedure exportar3;
    procedure exportar4;
    procedure exportar5;
    procedure exportar6;
    procedure exportar7;
    procedure exportar8;
    procedure data;
    end;

implementation

uses UFcts, data_module, data_module_facts, posicao_bancos;


constructor  fcts_excel.criar;
begin

end;

destructor fcts_excel.destruir;
begin

end;

procedure fcts_excel.exportar_bancos;
begin

     ano := f_posicao_bancos.cbano.text;
     mes := f_posicao_bancos.cbmes.text;
     dia := f_posicao_bancos.cbdia.text;

     planilha:= CreateoleObject('Excel.Application');
     planilha.WorkBooks.add(1);
     planilha.caption := 'Exportando dados do dbGrid para o Excel';
     planilha.visible := true;

     //-------------------------------------------------------------------------

        planilha.range['A1:B1'].Mergecells := True;
        planilha.cells[1,1] := dia + ' ' + mes + ' ' + ano;
        planilha.cells[1,1].Font.size := '15';
        planilha.cells[1,1].font.bold := true;
        planilha.cells[1,1].font.color := clblue;
        planilha.cells[1,1].Numberformat :=  'Text';
        planilha.cells[1,1].VerticalAlignment := 3;
        planilha.cells[1,1].HorizontalAlignment := 3;
        planilha.cells[1,1].Borders.LineStyle := 7;
        planilha.cells[1,2].Borders.LineStyle := 7;

        planilha.range['C1:G1'].Mergecells := True;
        planilha.cells[1,3] := 'Posi��o Financeira - Bancos';
        planilha.cells[1,3].Font.size := '15';
        planilha.cells[1,3].font.bold := true;
        planilha.cells[1,3].Interior.Color := clyellow;
        planilha.cells[1,3].VerticalAlignment := 3;
        planilha.cells[1,3].HorizontalAlignment := 3;
        planilha.cells[1,3].Borders.LineStyle := 7;
        planilha.cells[1,4].Borders.LineStyle := 7;
        planilha.cells[1,5].Borders.LineStyle := 7;
        planilha.cells[1,6].Borders.LineStyle := 7;
        planilha.cells[1,7].Borders.LineStyle := 7;


        //cabecalho-------------------------------------------------------------------


        planilha.cells[2,1] := 'Descri��o';
        planilha.cells[2,2] := 'BB 251.009-X 3429-0';
        planilha.cells[2,3] := 'Itau C/C 00045-1';
        planilha.cells[2,4] := 'Caixa 000387-3/0063';
        planilha.cells[2,5] := 'Bradesco 372-7 AG 2864';
        planilha.cells[2,6] := 'Bradesco 11083-3/2864-9';
        planilha.cells[2,7] := 'Santander 13-000381-9/4669';
        planilha.cells[2,8] := 'Itau - 16429-9(cart�o)';
        planilha.cells[2,9] := 'Itau 31284-9(cart�o)';
        planilha.cells[2,10] := 'Itau 33345-6(cart�o)';
        planilha.cells[2,11] := 'Itau 31508-1(cobran�a)';
        planilha.cells[2,12] := 'Safra AG 00800 206231-5';
        planilha.cells[2,13] := 'Daycoval AG. 00019 C/C 7169843';
        planilha.cells[2,14] := 'Daycoval AG. 0019 C/C 0009066073';
        planilha.cells[2,15] := 'Banco do Nordeste';
        planilha.cells[2,16] := 'TOTAL';
        planilha.range['A2:P2'].font.bold := true;
        planilha.cells[4,1].font.bold := true;
        planilha.range['A2','P2'].interior.color := clmoneygreen;
        planilha.range['A3','P3'].interior.color := clmoneygreen;
        planilha.range['A2:P2'].VerticalAlignment := 3;
        planilha.range['A2:P2'].HorizontalAlignment := 3;
        planilha.range['A2:P2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------




        planilha.range['A21'].font.bold := True;
        planilha.range['A23'].font.bold := True;
        planilha.range['A51'].font.bold := True;
        planilha.range['A55'].font.bold  := True;
        planilha.range['A56'].font.bold  := True;


        f_posicao_bancos.cdtela.First;


        linha := 3;
        coluna := 1;


        while linha <= 56 do
        begin
             coluna := 1;
             while coluna <=16 do
             begin



                   if (coluna = 1)  then
                   begin
                        valorcampo := f_posicao_bancos.cdtela.Fields[coluna].AsString;
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        valorcampo2 := f_posicao_bancos.cdtela.Fields[coluna].AsFloat;
                        planilha.cells[linha,coluna] := valorCampo2;
                        planilha.cells[linha,coluna].Numberformat :=  '#.##0,00';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;

                   end;
                   {else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].NumberformatLocal :=  '#.##0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end; }

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_posicao_bancos.cdtela.Next;
        end;


        planilha.cells[21,1].font.bold := true;
        planilha.cells['23,1'].font.bold := true;
        planilha.cells[51,1].font.bold := true;
        planilha.cells[55,1].font.bold := true;
        planilha.cells[56,1].font.bold := true;
        planilha.range['A21','P21'].interior.color := clgray;
        planilha.range['A23','P23'].interior.color := clgray;
        planilha.range['A51','P51'].interior.color := clgray;
        planilha.range['A55','P55'].interior.color := clgray;
        planilha.range['A56','P56'].interior.color := clgray;


        planilha.columns.Autofit;

end;


procedure fcts_excel.exportar_dados;
begin

  data;

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  exportar1;
  exportar2;
  exportar3;
  exportar4;
  exportar5;
  exportar6;
  exportar7;
  exportar8;


end;

procedure fcts_excel.exportar1;
begin

        planilha.range['A1:B1'].Mergecells := True;
        planilha.cells[1,1] := data1 + ' ' + ano;
        planilha.cells[1,1].Font.size := '15';
        planilha.cells[1,1].font.bold := true;
        planilha.cells[1,1].font.color := clblue;
        planilha.cells[1,1].Numberformat :=  'Text';
        planilha.cells[1,1].VerticalAlignment := 3;
        planilha.cells[1,1].HorizontalAlignment := 3;
        planilha.cells[1,1].Borders.LineStyle := 7;
        planilha.cells[1,2].Borders.LineStyle := 7;

        planilha.range['C1:G1'].Mergecells := True;
        planilha.cells[1,3] := 'VE�CULOS USADOS';
        planilha.cells[1,3].Font.size := '15';
        planilha.cells[1,3].font.bold := true;
        planilha.cells[1,3].Interior.Color := clyellow;
        planilha.cells[1,3].VerticalAlignment := 3;
        planilha.cells[1,3].HorizontalAlignment := 3;
        planilha.cells[1,3].Borders.LineStyle := 7;
        planilha.cells[1,4].Borders.LineStyle := 7;
        planilha.cells[1,5].Borders.LineStyle := 7;
        planilha.cells[1,6].Borders.LineStyle := 7;
        planilha.cells[1,7].Borders.LineStyle := 7;


        //cabecalho-------------------------------------------------------------------

        planilha.cells[2,1] := 'Despesas Totais';
        planilha.cells[2,2] := 'Conta';
        planilha.cells[2,3] := 'Saldo Anterior';
        planilha.cells[2,4] := 'M�s';
        planilha.cells[2,5] := 'Saldo Atual';
        planilha.cells[2,6] := 'Ajustes';
        planilha.cells[2,7] := 'Total';
        planilha.range['A2:G2'].font.bold := true;
        planilha.range['A2:G2'].font.color := clblue;
        planilha.range['A2:G2'].VerticalAlignment := 3;
        planilha.range['A2:G2'].HorizontalAlignment := 3;
        planilha.range['A2:G2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------

        planilha.range['A9:B9'].Mergecells := True;
        planilha.range['A16:B16'].Mergecells := True;
        planilha.range['A31:B31'].Mergecells := True;
        planilha.range['A37:B37'].Mergecells := True;
        planilha.range['A43:B43'].Mergecells := True;
        planilha.range['A44:B44'].Mergecells := True;
        planilha.range['A9:B9'].font.bold := True;
        planilha.range['A16:B16'].font.bold := True;
        planilha.range['A31:B31'].font.bold := True;
        planilha.range['A38:B38'].font.bold := True;
        planilha.range['A44:B44'].font.bold  := True;
        planilha.range['A45:B45'].font.bold  := True;

        dm_facts.tb_usados.First;


        linha := 3;
        coluna := 1;


        while linha <= 45 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                   valorcampo := dm_facts.tb_usados.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_usados.Next;
        end;


        planilha.range['A9:B9'].font.color := clblue;
        planilha.range['A16:B16'].font.color := clblue;
        planilha.range['A31:B31'].font.color := clblue;
        planilha.range['A37:B37'].font.color := clblue;
        planilha.range['A43:B43'].font.color := clblue;
        planilha.range['A44:B44'].font.color := clblue;

        planilha.columns.Autofit;

end;

procedure fcts_excel.exportar2;
begin

  planilha.Workbooks[1].Sheets.Add;

  //Titulo ---------------------------------------------------------------------

  planilha.range['A1:C1'].Mergecells := True;
  planilha.cells[1,1] := data1 + ' ' + ano;
  planilha.cells[1,1].Font.size := '15';
  planilha.cells[1,1].font.bold := true;
  planilha.cells[1,1].font.color := clblue;
  planilha.cells[1,1].Numberformat :=  'Text';
  planilha.cells[1,1].VerticalAlignment := 3;
  planilha.cells[1,1].HorizontalAlignment := 3;
  planilha.cells[1,1].Borders.LineStyle := 7;
  planilha.cells[1,2].Borders.LineStyle := 7;

  planilha.range['D1'].Mergecells := True;
  planilha.cells[1,4] := 'PE�AS E ACESS�RIOS';
  planilha.cells[1,4].Font.size := '15';
  planilha.cells[1,4].font.bold := true;
  planilha.cells[1,4].Interior.Color := clyellow;
  planilha.cells[1,4].VerticalAlignment := 3;
  planilha.cells[1,4].HorizontalAlignment := 3;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;

  planilha.range['E1'].Mergecells := True;
  planilha.cells[1,5] := 'POSTO LAVAGEM';
  planilha.cells[1,5].Font.size := '15';
  planilha.cells[1,5].font.bold := true;
  planilha.cells[1,5].Interior.Color := clgreen;
  planilha.cells[1,5].VerticalAlignment := 3;
  planilha.cells[1,5].HorizontalAlignment := 3;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;

  //cabecalho-------------------------------------------------------------------

  planilha.cells[2,1] := 'Despesas Totais';
  planilha.cells[2,2] := 'Conta';
  planilha.cells[2,3] := 'Saldo Anterior';
  planilha.cells[2,4] := 'M�s';
  planilha.cells[2,5] := 'M�s';
  planilha.cells[2,6] := 'Saldo Atual';
  planilha.cells[2,7] := 'Ajustes';
  planilha.cells[2,8] := 'Total';
  planilha.range['A2:H2'].font.bold := true;
  planilha.range['A2:H2'].font.color := clblue;
  planilha.range['A2:H2'].VerticalAlignment := 3;
  planilha.range['A2:H2'].HorizontalAlignment := 3;
  planilha.range['A2:H2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A12:B12'].Mergecells := True;
  planilha.range['A29:B29'].Mergecells := True;
  planilha.range['A35:B35'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A42:B42'].Mergecells := True;
  planilha.range['A12:B12'].font.bold := True;
  planilha.range['A29:B29'].font.bold := True;
  planilha.range['A35:B35'].font.bold := True;
  planilha.range['A41:B41'].font.bold := True;
  planilha.range['A42:B42'].font.bold  := True;
  planilha.range['A12:B12'].font.color := clblue;
  planilha.range['A29:B29'].font.color := clblue;
  planilha.range['A36:B36'].font.color := clblue;
  planilha.range['A42:B42'].font.color := clblue;
  planilha.range['A43:B43'].font.color := clblue;

  dm_facts.tb_pecas.First;


  linha := 3;
  coluna := 1;

        while linha <= 43 do
        begin
             coluna := 1;
             while coluna <=8 do
             begin

                  valorcampo := dm_facts.tb_pecas.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_pecas.Next;
        end;

  planilha.columns.Autofit;


end;

procedure fcts_excel.exportar3;
begin


  planilha.Workbooks[1].Sheets.Add;

  //Titulo ---------------------------------------------------------------------

  planilha.range['A1:B1'].Mergecells := True;
  planilha.cells[1,1] := data1 + ' ' + ano;
  planilha.cells[1,1].Font.size := '15';
  planilha.cells[1,1].font.bold := true;
  planilha.cells[1,1].font.color := clblue;
  planilha.cells[1,1].Numberformat :=  'Text';
  planilha.cells[1,1].VerticalAlignment := 3;
  planilha.cells[1,1].HorizontalAlignment := 3;
  planilha.cells[1,1].Borders.LineStyle := 7;
  planilha.cells[1,2].Borders.LineStyle := 7;

  planilha.range['C1:G1'].Mergecells := True;
  planilha.cells[1,3] := 'FUNILARIA E PINTURA';
  planilha.cells[1,3].Font.size := '15';
  planilha.cells[1,3].font.bold := true;
  planilha.cells[1,3].Interior.Color := clyellow;
  planilha.cells[1,3].VerticalAlignment := 3;
  planilha.cells[1,3].HorizontalAlignment := 3;
  planilha.cells[1,3].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;


  //cabecalho-------------------------------------------------------------------

  planilha.cells[2,1] := 'Despesas Totais';
  planilha.cells[2,2] := 'Conta';
  planilha.cells[2,3] := 'Saldo Anterior';
  planilha.cells[2,4] := 'M�s';
  planilha.cells[2,5] := 'Saldo Atual';
  planilha.cells[2,6] := 'Ajustes';
  planilha.cells[2,7] := 'Total';
  planilha.range['A2:G2'].font.bold := true;
  planilha.range['A2:G2'].font.color := clblue;
  planilha.range['A2:G2'].VerticalAlignment := 3;
  planilha.range['A2:G2'].HorizontalAlignment := 3;
  planilha.range['A2:G2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A12:B12'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A39:B39'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A12:B12'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A39:B39'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A12:B12'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A35:B35'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;


  dm_facts.tb_funilaria.First;


  linha := 3;
  coluna := 1;


        while linha <= 41 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                  valorcampo := dm_facts.tb_funilaria.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;
             linha := linha + 1;
             dm_facts.tb_funilaria.Next;
        end;



  planilha.columns.Autofit;


end;

procedure fcts_excel.exportar4;
begin


  planilha.Workbooks[1].Sheets.Add;

  //Titulo ---------------------------------------------------------------------

  planilha.range['A1:B1'].Mergecells := True;
  planilha.cells[1,1] := data1 + ' ' + ano;
  planilha.cells[1,1].Font.size := '15';
  planilha.cells[1,1].font.bold := true;
  planilha.cells[1,1].font.color := clblue;
  planilha.cells[1,1].Numberformat :=  'Text';
  planilha.cells[1,1].VerticalAlignment := 3;
  planilha.cells[1,1].HorizontalAlignment := 3;
  planilha.cells[1,1].Borders.LineStyle := 7;
  planilha.cells[1,2].Borders.LineStyle := 7;

  planilha.range['C1:G1'].Mergecells := True;
  planilha.cells[1,3] := 'OFICINA MEC�NICA';
  planilha.cells[1,3].Font.size := '15';
  planilha.cells[1,3].font.bold := true;
  planilha.cells[1,3].Interior.Color := clyellow;
  planilha.cells[1,3].VerticalAlignment := 3;
  planilha.cells[1,3].HorizontalAlignment := 3;
  planilha.cells[1,3].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;


  //cabecalho-------------------------------------------------------------------

  planilha.cells[2,1] := 'Despesas Totais';
  planilha.cells[2,2] := 'Conta';
  planilha.cells[2,3] := 'Saldo Anterior';
  planilha.cells[2,4] := 'M�s';
  planilha.cells[2,5] := 'Saldo Atual';
  planilha.cells[2,6] := 'Ajustes';
  planilha.cells[2,7] := 'Total';
  planilha.range['A2:G2'].font.bold := true;
  planilha.range['A2:G2'].font.color := clblue;
  planilha.range['A2:G2'].VerticalAlignment := 3;
  planilha.range['A2:G2'].HorizontalAlignment := 3;
  planilha.range['A2:G2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A12:B12'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A12:B12'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold := True;
  planilha.range['A41:B41'].font.bold  := True;
  planilha.range['A12:B12'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A35:B35'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;
  planilha.range['A42:B42'].font.color := clblue;

  dm_facts.tb_oficina.First;


  linha := 3;
  coluna := 1;


        while linha <= 42 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                  valorcampo := dm_facts.tb_oficina.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_oficina.Next;
        end;



  planilha.columns.Autofit;




end;

procedure fcts_excel.exportar5;
begin


  planilha.Workbooks[1].Sheets.Add;

  //Titulo ---------------------------------------------------------------------
  planilha.range['A1:C1'].Mergecells := True;
  planilha.cells[1,1] := data1 + ' ' + ano;
  planilha.cells[1,1].Font.size := '15';
  planilha.cells[1,1].font.bold := true;
  planilha.cells[1,1].font.color := clblue;
  planilha.cells[1,1].Numberformat :=  'Text';
  planilha.cells[1,1].VerticalAlignment := 3;
  planilha.cells[1,1].HorizontalAlignment := 3;
  planilha.cells[1,1].Borders.LineStyle := 7;
  planilha.cells[1,2].Borders.LineStyle := 7;

  planilha.range['D1'].Mergecells := True;
  planilha.cells[1,4] := 'ADMINISTRA��O';
  planilha.cells[1,4].Font.size := '15';
  planilha.cells[1,4].font.bold := true;
  planilha.cells[1,4].Interior.Color := clyellow;
  planilha.cells[1,4].VerticalAlignment := 3;
  planilha.cells[1,4].HorizontalAlignment := 3;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;

  planilha.range['E1'].Mergecells := True;
  planilha.cells[1,5] := 'ADM COMPARTILHADA';
  planilha.cells[1,5].Font.size := '15';
  planilha.cells[1,5].font.bold := true;
  planilha.cells[1,5].Interior.Color := clgreen;
  planilha.cells[1,5].VerticalAlignment := 3;
  planilha.cells[1,5].HorizontalAlignment := 3;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;

  //cabecalho-------------------------------------------------------------------

  planilha.cells[2,1] := 'Despesas Totais';
  planilha.cells[2,2] := 'Conta';
  planilha.cells[2,3] := 'Saldo Anterior';
  planilha.cells[2,4] := 'M�s';
  planilha.cells[2,5] := 'M�s';
  planilha.cells[2,6] := 'Saldo Atual';
  planilha.cells[2,7] := 'Ajustes';
  planilha.cells[2,8] := 'Total';
  planilha.range['A2:H2'].font.bold := true;
  planilha.range['A2:H2'].font.color := clblue;
  planilha.range['A2:H2'].VerticalAlignment := 3;
  planilha.range['A2:H2'].HorizontalAlignment := 3;
  planilha.range['A2:H2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A30:B30'].Mergecells := True;
  planilha.range['A37:B37'].Mergecells := True;
  planilha.range['A43:B43'].Mergecells := True;
  planilha.range['A44:B44'].Mergecells := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A30:B30'].font.bold := True;
  planilha.range['A37:B37'].font.bold := True;
  planilha.range['A43:B43'].font.bold := True;
  planilha.range['A44:B44'].font.bold  := True;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A30:B30'].font.color := clblue;
  planilha.range['A37:B37'].font.color := clblue;
  planilha.range['A43:B43'].font.color := clblue;
  planilha.range['A44:B44'].font.color := clblue;


  dm_facts.tb_administracao.First;


  linha := 3;
  coluna := 1;

       while linha <= 44 do
        begin
             coluna := 1;
             while coluna <=8 do
             begin

                  valorcampo := dm_facts.tb_administracao.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_administracao.Next;
        end;

  planilha.columns.Autofit;



end;

procedure fcts_excel.exportar6;
begin

        // Pagina 6

  planilha.Workbooks[1].Sheets.Add;

  //Titulo ---------------------------------------------------------------------

  planilha.range['A1:C1'].Mergecells := True;
  planilha.cells[1,1] := data1 + ' ' + ano;
  planilha.cells[1,1].Font.size := '15';
  planilha.cells[1,1].font.bold := true;
  planilha.cells[1,1].font.color := clblue;
  planilha.cells[1,1].Numberformat :=  'Text';
  planilha.cells[1,1].VerticalAlignment := 3;
  planilha.cells[1,1].HorizontalAlignment := 3;
  planilha.cells[1,1].Borders.LineStyle := 7;
  planilha.cells[1,2].Borders.LineStyle := 7;

  planilha.range['D1'].Mergecells := True;
  planilha.cells[1,4] := 'NOVOS MATRIZ';
  planilha.cells[1,4].Font.size := '15';
  planilha.cells[1,4].font.bold := true;
  planilha.cells[1,4].Interior.Color := clyellow;
  planilha.cells[1,4].VerticalAlignment := 3;
  planilha.cells[1,4].HorizontalAlignment := 3;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;
  planilha.cells[1,4].Borders.LineStyle := 7;

  planilha.range['E1'].Mergecells := True;
  planilha.cells[1,5] := 'NOVOS FILIAIS';
  planilha.cells[1,5].Font.size := '15';
  planilha.cells[1,5].font.bold := true;
  planilha.cells[1,5].Interior.Color := clgreen;
  planilha.cells[1,5].VerticalAlignment := 3;
  planilha.cells[1,5].HorizontalAlignment := 3;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;
  planilha.cells[1,5].Borders.LineStyle := 7;

  planilha.range['F1'].Mergecells := True;
  planilha.cells[1,6] := 'CONS�RCIO';
  planilha.cells[1,6].Font.size := '15';
  planilha.cells[1,6].font.bold := true;
  planilha.cells[1,6].Interior.Color := clblue;
  planilha.cells[1,6].VerticalAlignment := 3;
  planilha.cells[1,6].HorizontalAlignment := 3;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;
  planilha.cells[1,6].Borders.LineStyle := 7;

  planilha.range['G1'].Mergecells := True;
  planilha.cells[1,7] := 'VENDAS DIRETAS';
  planilha.cells[1,7].Font.size := '15';
  planilha.cells[1,7].font.bold := true;
  planilha.cells[1,7].Interior.Color := claqua;
  planilha.cells[1,7].VerticalAlignment := 3;
  planilha.cells[1,7].HorizontalAlignment := 3;
  planilha.cells[1,7].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;
  planilha.cells[1,7].Borders.LineStyle := 7;

  planilha.range['H1'].Mergecells := True;
  planilha.cells[1,8] := 'F&I';
  planilha.cells[1,8].Font.size := '15';
  planilha.cells[1,8].font.bold := true;
  planilha.cells[1,8].Interior.Color := clfuchsia;
  planilha.cells[1,8].VerticalAlignment := 3;
  planilha.cells[1,8].HorizontalAlignment := 3;
  planilha.cells[1,8].Borders.LineStyle := 7;
  planilha.cells[1,8].Borders.LineStyle := 7;
  planilha.cells[1,8].Borders.LineStyle := 7;
  planilha.cells[1,8].Borders.LineStyle := 7;
  planilha.cells[1,8].Borders.LineStyle := 7;

  //cabecalho-------------------------------------------------------------------

  planilha.cells[2,1] := 'Despesas Totais';
  planilha.cells[2,2] := 'Conta';
  planilha.cells[2,3] := 'Saldo Anterior';
  planilha.cells[2,4] := 'M�s';
  planilha.cells[2,5] := 'M�s';
  planilha.cells[2,6] := 'M�s';
  planilha.cells[2,7] := 'M�s';
  planilha.cells[2,8] := 'M�s';
  planilha.cells[2,9] := 'Saldo Total';
  planilha.cells[2,10] := 'Ajustes';
  planilha.cells[2,11] := 'Total';
  planilha.range['A2:K2'].font.bold := true;
  planilha.range['A2:K2'].font.color := clblue;
  planilha.range['A2:K2'].VerticalAlignment := 3;
  planilha.range['A2:K2'].HorizontalAlignment := 3;
  planilha.range['A2:K2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A9:B9'].Mergecells := True;
  planilha.range['A18:B18'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A48:B48'].Mergecells := True;
  planilha.range['A54:B54'].Mergecells := True;
  planilha.range['A55:B55'].Mergecells := True;
  planilha.range['A9:B9'].font.bold := True;
  planilha.range['A18:B18'].font.bold := True;
  planilha.range['A40:B40'].font.bold := True;
  planilha.range['A48:B48'].font.bold := True;
  planilha.range['A54:B54'].font.bold  := True;
  planilha.range['A55:B55'].font.bold  := True;
  planilha.range['A9:B9'].font.color := clblue;
  planilha.range['A18:B18'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A48:B48'].font.color := clblue;
  planilha.range['A54:B54'].font.color := clblue;
  planilha.range['A55:B55'].font.color := clblue;


  dm_facts.tb_novos.First;


  linha := 3;
  coluna := 1;

      while linha <= 55 do
        begin
             coluna := 1;
             while coluna <=11 do
             begin

                  valorcampo := dm_facts.tb_novos.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_novos.Next;
        end;


  planilha.columns.Autofit;


end;

procedure fcts_excel.exportar7;
begin

        // Pagina 6

        planilha.Workbooks[1].Sheets.Add;

        //Titulo

        planilha.range['A1:B1'].Mergecells := True;
        planilha.cells[1,1] := data1 + ' ' + ano;
        planilha.cells[1,1].Font.size := '15';
        planilha.cells[1,1].font.bold := true;
        planilha.cells[1,1].font.color := clblue;
        planilha.cells[1,1].Numberformat :=  'Text';
        planilha.cells[1,1].VerticalAlignment := 3;
        planilha.cells[1,1].HorizontalAlignment := 3;
        planilha.cells[1,1].Borders.LineStyle := 7;
        planilha.cells[1,2].Borders.LineStyle := 7;

        planilha.range['C1:J1'].Mergecells := True;
        planilha.cells[1,3] := 'RECEITAS E LUCRO - Ve�culos Usados';
        planilha.cells[1,3].Font.size := '15';
        planilha.cells[1,3].font.bold := true;
        planilha.cells[1,3].Interior.Color := clyellow;
        planilha.cells[1,3].VerticalAlignment := 3;
        planilha.cells[1,3].HorizontalAlignment := 3;
        planilha.cells[1,3].Borders.LineStyle := 7;
        planilha.cells[1,4].Borders.LineStyle := 7;
        planilha.cells[1,5].Borders.LineStyle := 7;
        planilha.cells[1,6].Borders.LineStyle := 7;
        planilha.cells[1,7].Borders.LineStyle := 7;


        //cabecalho-------------------------------------------------------------------

        planilha.cells[2,1] := 'Despesas Totais';
        planilha.cells[2,2] := 'Conta R';
        planilha.cells[2,3] := 'Conta D';
        planilha.cells[2,4] := 'M�s - Unid. Vend.';
        planilha.cells[2,5] := 'M�s - Vendas Liq.';
        planilha.cells[2,6] := 'M�s - Custo das Vendas';
        planilha.cells[2,7] := 'M�s - Lucro Bruto';
        planilha.cells[2,8] := 'Acum. - Unid. Vend.';
        planilha.cells[2,9] := 'Acum. - Vendas Liq.';
        planilha.cells[2,10] := 'Acum. - Acum. - Custo das Vendas';
        planilha.cells[2,11] := 'Acum. - Lucro Bruto';
        planilha.range['A2:J2'].font.bold := true;
        planilha.range['A2:J2'].font.color := clblue;
        planilha.range['A2:J2'].VerticalAlignment := 3;
        planilha.range['A2:J2'].HorizontalAlignment := 3;
        planilha.range['A2:J2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------

        planilha.range['A9:B9'].Mergecells := True;
        planilha.range['A14:B14'].Mergecells := True;
        planilha.range['A16:B16'].Mergecells := True;
        planilha.range['A17:B17'].Mergecells := True;
        planilha.range['A18:B18'].Mergecells := True;
        planilha.range['A19:B19'].Mergecells := True;
        planilha.range['A28:B28'].Mergecells := True;
        planilha.range['A31:B31'].Mergecells := True;
        planilha.range['A37:B37'].Mergecells := True;
        planilha.range['A40:B40'].Mergecells := True;
        planilha.range['A41:B41'].Mergecells := True;
        planilha.range['A48:B48'].Mergecells := True;
        planilha.range['A57:B57'].Mergecells := True;
        planilha.range['A58:B58'].Mergecells := True;
        planilha.range['A59:B59'].Mergecells := True;
        planilha.range['A60:B60'].Mergecells := True;
        planilha.range['A9:B9'].font.bold := True;
        planilha.range['A14:B14'].font.bold := True;
        planilha.range['A16:B16'].font.bold := True;
        planilha.range['A17:B17'].font.bold := True;
        planilha.range['A18:B18'].font.bold  := True;
        planilha.range['A19:B19'].font.bold  := True;
        planilha.range['A28:B28'].font.bold  := True;
        planilha.range['A31:B31'].font.bold  := True;
        planilha.range['A37:B37'].font.bold  := True;
        planilha.range['A40:B40'].font.bold  := True;
        planilha.range['A41:B41'].font.bold  := True;
        planilha.range['A48:B48'].font.bold  := True;
        planilha.range['A57:B57'].font.bold  := True;
        planilha.range['A58:B58'].font.bold  := True;
        planilha.range['A59:B59'].font.bold  := True;
        planilha.range['A60:B60'].font.bold  := True;


        dm_facts.tb_receita_usados.First;


        linha := 3;
        coluna := 1;


        while linha <= 60 do
        begin
             coluna := 1;
             while coluna <=11 do
             begin

                   valorcampo := dm_facts.tb_receita_usados.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_receita_usados.Next;
        end;


        planilha.range['A9:B9'].font.color := clblue;
        planilha.range['A14:B14'].font.color := clblue;
        planilha.range['A16:B16'].font.color := clblue;
        planilha.range['A17:B17'].font.color := clblue;
        planilha.range['A18:B18'].font.color := clblue;
        planilha.range['A19:B19'].font.color := clblue;
        planilha.range['A28:B28'].font.color := clblue;
        planilha.range['A31:B31'].font.color := clblue;
        planilha.range['A37:B37'].font.color := clblue;
        planilha.range['A40:B40'].font.color := clblue;
        planilha.range['A41:B41'].font.color := clblue;
        planilha.range['A48:B48'].font.color := clblue;
        planilha.range['A57:B57'].font.color := clblue;
        planilha.range['A58:B58'].font.color := clblue;
        planilha.range['A59:B59'].font.color := clblue;
        planilha.range['A60:B60'].font.color := clblue;

        planilha.columns.Autofit;


end;

procedure fcts_excel.exportar8;
begin
      // Pagina 6

        planilha.Workbooks[1].Sheets.Add;

        //Titulo

        planilha.range['A1:B1'].Mergecells := True;
        planilha.cells[1,1] := data1 + ' ' + ano;
        planilha.cells[1,1].Font.size := '15';
        planilha.cells[1,1].font.bold := true;
        planilha.cells[1,1].font.color := clblue;
        planilha.cells[1,1].Numberformat :=  'Text';
        planilha.cells[1,1].VerticalAlignment := 3;
        planilha.cells[1,1].HorizontalAlignment := 3;
        planilha.cells[1,1].Borders.LineStyle := 7;
        planilha.cells[1,2].Borders.LineStyle := 7;

        planilha.range['C1:M1'].Mergecells := True;
        planilha.cells[1,3] := 'RECEITAS E LUCRO - Veiculos Novos';
        planilha.cells[1,3].Font.size := '15';
        planilha.cells[1,3].font.bold := true;
        planilha.cells[1,3].Interior.Color := clyellow;
        planilha.cells[1,3].VerticalAlignment := 3;
        planilha.cells[1,3].HorizontalAlignment := 3;
        planilha.cells[1,3].Borders.LineStyle := 7;
        planilha.cells[1,4].Borders.LineStyle := 7;
        planilha.cells[1,5].Borders.LineStyle := 7;
        planilha.cells[1,6].Borders.LineStyle := 7;
        planilha.cells[1,7].Borders.LineStyle := 7;


        //cabecalho-------------------------------------------------------------------

        planilha.cells[2,1] := 'Despesas Totais';
        planilha.cells[2,2] := 'Conta_R';
        planilha.cells[2,3] := 'Conta_C';
        planilha.cells[2,4] := 'M�s - Unid. Vend.';
        planilha.cells[2,5] := 'M�s - Vendas Liq.';
        planilha.cells[2,6] := 'M�s - Custo das Vendas';
        planilha.cells[2,7] := 'M�s - Lucro Bruto';
        planilha.cells[2,8] := 'M�s - P/Unid. Vend.';
        planilha.cells[2,9] := 'Acum. - Unid. Vend.';
        planilha.cells[2,10] := 'Acum. - Vendas Liq.';
        planilha.cells[2,11] := 'Acum. - Acum. - Custo das Vendas';
        planilha.cells[2,12] := 'Acum. - Lucro Bruto';
        planilha.cells[2,13] := 'Acum. - P/Unid. Vend.';
        planilha.range['A2:M2'].font.bold := true;
        planilha.range['A2:M2'].font.color := clblue;
        planilha.range['A2:M2'].VerticalAlignment := 3;
        planilha.range['A2:M2'].HorizontalAlignment := 3;
        planilha.range['A2:M2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------

        planilha.range['A22:B22'].Mergecells := True;
        planilha.range['A26:B26'].Mergecells := True;
        planilha.range['A43:B43'].Mergecells := True;
        planilha.range['A47:B47'].Mergecells := True;
        planilha.range['A50:B50'].Mergecells := True;
        planilha.range['A22:B22'].font.bold := True;
        planilha.range['A26:B26'].font.bold := True;
        planilha.range['A43:B43'].font.bold := True;
        planilha.range['A47:B47'].font.bold := True;
        planilha.range['A50:B50'].font.bold := True;


        dm_facts.tb_receita_novos.First;


        linha := 3;
        coluna := 1;


        while linha <= 50 do
        begin
             coluna := 1;
             while coluna <=13 do
             begin

                   valorcampo := dm_facts.tb_receita_novos.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  'Text';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   if (coluna = 2) then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        //planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             dm_facts.tb_receita_novos.Next;
        end;


        planilha.range['A22:B22'].font.color := clblue;
        planilha.range['A26:B26'].font.color := clblue;
        planilha.range['A43:B43'].font.color := clblue;
        planilha.range['A47:B47'].font.color := clblue;
        planilha.range['A50:B50'].font.color := clblue;

        planilha.columns.Autofit;


end;

procedure fcts_excel.data;
begin

      data1 := f_fcts.cbmes.Text;
      ano := f_fcts.cbano.Text;


end;

end.

