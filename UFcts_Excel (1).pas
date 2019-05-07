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
    valorcampo, data1, ano : string;
    public
    constructor criar;
    destructor destruir;
    procedure exportar_dados;
    procedure exportar1;
    procedure exportar2;
    procedure exportar3;
    procedure exportar4;
    procedure exportar5;
    procedure exportar6;
    procedure data;
    end;

implementation

uses UFcts, data_module;


constructor  fcts_excel.criar;
begin

end;

destructor fcts_excel.destruir;
begin

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
        planilha.cells[1,3] := 'VEÍCULOS USADOS';
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
        planilha.cells[2,4] := 'Mês';
        planilha.cells[2,5] := 'Saldo Atual';
        planilha.cells[2,6] := 'Ajustes';
        planilha.cells[2,7] := 'Total';
        planilha.range['A2:G2'].font.bold := true;
        planilha.range['A2:G2'].font.color := clblue;
        planilha.range['A2:G2'].VerticalAlignment := 3;
        planilha.range['A2:G2'].HorizontalAlignment := 3;
        planilha.range['A2:G2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------

        planilha.range['A6:B6'].Mergecells := True;
        planilha.range['A13:B13'].Mergecells := True;
        planilha.range['A28:B28'].Mergecells := True;
        planilha.range['A34:B34'].Mergecells := True;
        planilha.range['A40:B40'].Mergecells := True;
        planilha.range['A41:B41'].Mergecells := True;
        planilha.range['A6:B6'].font.bold := True;
        planilha.range['A13:B13'].font.bold := True;
        planilha.range['A28:B28'].font.bold := True;
        planilha.range['A34:B34'].font.bold := True;
        planilha.range['A40:B40'].font.bold  := True;
        planilha.range['A41:B41'].font.bold  := True;

        f_fcts.tb_usados.First;


        linha := 3;
        coluna := 1;


        while linha <= 39 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                   valorcampo := f_fcts.tb_usados.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_fcts.tb_usados.Next;
        end;


        planilha.range['A6:B6'].font.color := clblue;
        planilha.range['A13:B13'].font.color := clblue;
        planilha.range['A28:B28'].font.color := clblue;
        planilha.range['A34:B34'].font.color := clblue;
        planilha.range['A40:B40'].font.color := clblue;
        planilha.range['A41:B41'].font.color := clblue;

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
  planilha.cells[1,4] := 'PEÇAS E ACESSÓRIOS';
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
  planilha.cells[2,4] := 'Mês';
  planilha.cells[2,5] := 'Mês';
  planilha.cells[2,6] := 'Saldo Atual';
  planilha.cells[2,7] := 'Ajustes';
  planilha.cells[2,8] := 'Total';
  planilha.range['A2:H2'].font.bold := true;
  planilha.range['A2:H2'].font.color := clblue;
  planilha.range['A2:H2'].VerticalAlignment := 3;
  planilha.range['A2:H2'].HorizontalAlignment := 3;
  planilha.range['A2:H2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A6:B6'].Mergecells := True;
  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A6:B6'].font.bold := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A41:B41'].font.bold  := True;

  f_fcts.tb_pecas.First;


  linha := 3;
  coluna := 1;

        while linha <= 37 do
        begin
             coluna := 1;
             while coluna <=8 do
             begin

                  valorcampo := f_fcts.tb_pecas.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_fcts.tb_pecas.Next;
        end;

  planilha.range['A6:B6'].font.color := clblue;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A34:B34'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;

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
  planilha.cells[2,4] := 'Mês';
  planilha.cells[2,5] := 'Saldo Atual';
  planilha.cells[2,6] := 'Ajustes';
  planilha.cells[2,7] := 'Total';
  planilha.range['A2:G2'].font.bold := true;
  planilha.range['A2:G2'].font.color := clblue;
  planilha.range['A2:G2'].VerticalAlignment := 3;
  planilha.range['A2:G2'].HorizontalAlignment := 3;
  planilha.range['A2:G2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A6:B6'].Mergecells := True;
  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A6:B6'].font.bold := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A41:B41'].font.bold  := True;

  f_fcts.tb_funilaria.First;


  linha := 3;
  coluna := 1;


        while linha <= 35 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                  valorcampo := f_fcts.tb_funilaria.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;
             linha := linha + 1;
             f_fcts.tb_funilaria.Next;
        end;

  planilha.range['A6:B6'].font.color := clblue;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A34:B34'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;

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
  planilha.cells[1,3] := 'OFICINA MECÂNICA';
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
  planilha.cells[2,4] := 'Mês';
  planilha.cells[2,5] := 'Saldo Atual';
  planilha.cells[2,6] := 'Ajustes';
  planilha.cells[2,7] := 'Total';
  planilha.range['A2:G2'].font.bold := true;
  planilha.range['A2:G2'].font.color := clblue;
  planilha.range['A2:G2'].VerticalAlignment := 3;
  planilha.range['A2:G2'].HorizontalAlignment := 3;
  planilha.range['A2:G2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A6:B6'].Mergecells := True;
  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A6:B6'].font.bold := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A41:B41'].font.bold  := True;

  f_fcts.tb_oficina.First;


  linha := 3;
  coluna := 1;


        while linha <= 36 do
        begin
             coluna := 1;
             while coluna <=7 do
             begin

                  valorcampo := f_fcts.tb_oficina.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_fcts.tb_oficina.Next;
        end;

  planilha.range['A6:B6'].font.color := clblue;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A34:B34'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;

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
  planilha.cells[1,4] := 'ADMINISTRAÇÃO';
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
  planilha.cells[2,4] := 'Mês';
  planilha.cells[2,5] := 'Mês';
  planilha.cells[2,6] := 'Saldo Atual';
  planilha.cells[2,7] := 'Ajustes';
  planilha.cells[2,8] := 'Total';
  planilha.range['A2:H2'].font.bold := true;
  planilha.range['A2:H2'].font.color := clblue;
  planilha.range['A2:H2'].VerticalAlignment := 3;
  planilha.range['A2:H2'].HorizontalAlignment := 3;
  planilha.range['A2:H2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A6:B6'].Mergecells := True;
  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A6:B6'].font.bold := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A41:B41'].font.bold  := True;

  f_fcts.tb_administracao.First;


  linha := 3;
  coluna := 1;

       while linha <= 39 do
        begin
             coluna := 1;
             while coluna <=8 do
             begin

                  valorcampo := f_fcts.tb_administracao.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_fcts.tb_administracao.Next;
        end;

  planilha.range['A6:B6'].font.color := clblue;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A34:B34'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;

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
  planilha.cells[1,6] := 'CONSÓRCIO';
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
  planilha.cells[2,4] := 'Mês';
  planilha.cells[2,5] := 'Mês';
  planilha.cells[2,6] := 'Mês';
  planilha.cells[2,7] := 'Mês';
  planilha.cells[2,8] := 'Mês';
  planilha.cells[2,9] := 'Saldo Total';
  planilha.cells[2,10] := 'Ajustes';
  planilha.cells[2,11] := 'Total';
  planilha.range['A2:K2'].font.bold := true;
  planilha.range['A2:K2'].font.color := clblue;
  planilha.range['A2:K2'].VerticalAlignment := 3;
  planilha.range['A2:K2'].HorizontalAlignment := 3;
  planilha.range['A2:K2'].Borders.LineStyle := 7;

  //TOTAIS ---------------------------------------------------------------------

  planilha.range['A6:B6'].Mergecells := True;
  planilha.range['A13:B13'].Mergecells := True;
  planilha.range['A28:B28'].Mergecells := True;
  planilha.range['A34:B34'].Mergecells := True;
  planilha.range['A40:B40'].Mergecells := True;
  planilha.range['A41:B41'].Mergecells := True;
  planilha.range['A6:B6'].font.bold := True;
  planilha.range['A13:B13'].font.bold := True;
  planilha.range['A28:B28'].font.bold := True;
  planilha.range['A34:B34'].font.bold := True;
  planilha.range['A40:B40'].font.bold  := True;
  planilha.range['A41:B41'].font.bold  := True;


  f_fcts.tb_novos.First;


  linha := 3;
  coluna := 1;

      while linha <= 50 do
        begin
             coluna := 1;
             while coluna <=11 do
             begin

                  valorcampo := f_fcts.tb_novos.Fields[coluna - 1].AsString;

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
                        planilha.cells[linha,coluna].Numberformat :=  '0,00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_fcts.tb_novos.Next;
        end;

  planilha.range['A6:B6'].font.color := clblue;
  planilha.range['A13:B13'].font.color := clblue;
  planilha.range['A28:B28'].font.color := clblue;
  planilha.range['A34:B34'].font.color := clblue;
  planilha.range['A40:B40'].font.color := clblue;
  planilha.range['A41:B41'].font.color := clblue;

  planilha.columns.Autofit;


end;

procedure fcts_excel.data;
begin

      data1 := f_fcts.cbmes.Text;
      ano := f_fcts.cbano.Text;


end;

end.

