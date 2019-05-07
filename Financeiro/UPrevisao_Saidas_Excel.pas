unit UPrevisao_Saidas_Excel;

interface

uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, ComObj,
  Data.Bind.Components, Data.Bind.DBScope;

type
    previsao_saidas_excel = class
    private
    linha, coluna : integer;
    planilha : variant;
    valorcampo, data1, ano : string;
    public
    constructor criar;
    destructor destruir;
    procedure exportar_dados;
    procedure exportar1;
    procedure data;
    end;

implementation

uses previsao_fluxo, data_module;


constructor  previsao_saidas_excel.criar;
begin

end;

destructor previsao_saidas_excel.destruir;
begin

end;

procedure previsao_saidas_excel.exportar_dados;
begin

  data;

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do dbGrid para o Excel';
  planilha.visible := true;

  exportar1;
  {exportar2;
  exportar3;
  exportar4;
  exportar5;
  exportar6;}


end;

procedure previsao_saidas_excel.exportar1;
begin

        planilha.range['A1:B1'].Mergecells := True;
        //planilha.cells[1,1] := data1 + ' ' + ano;
        planilha.cells[1,1].Font.size := '15';
        planilha.cells[1,1].font.bold := true;
        planilha.cells[1,1].font.color := clblue;
        planilha.cells[1,1].Numberformat :=  'Text';
        planilha.cells[1,1].VerticalAlignment := 3;
        planilha.cells[1,1].HorizontalAlignment := 3;
        planilha.cells[1,1].Borders.LineStyle := 7;
        planilha.cells[1,2].Borders.LineStyle := 7;

        planilha.range['C1:W1'].Mergecells := True;
        planilha.cells[1,3] := 'Sa�das - Previs�o';
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

        planilha.cells[2,1] := 'Dia';
        planilha.cells[2,2] := 'Cons�rcio';
        planilha.cells[2,3] := 'Comiss�o';
        planilha.cells[2,4] := 'Ve�culos VN';
        planilha.cells[2,5] := 'Ve�culos VD';
        planilha.cells[2,6] := 'Semi-Novos';
        planilha.cells[2,7] := 'Pe�as GM';
        planilha.cells[2,8] := 'Cart�o de Cr�dito';
        planilha.cells[2,9] := 'Sal. Encargos';
        planilha.cells[2,10] := 'Rescis�o';
        planilha.cells[2,11] := 'Aluguel';
        planilha.cells[2,12] := 'Impsotos';
        planilha.cells[2,13] := '�gua/Luz/Internet/Dados';
        planilha.cells[2,14] := 'Emplacamento';
        planilha.cells[2,15] := 'Leasing/BNDES';
        planilha.cells[2,16] := 'Fornec. Diversos';
        planilha.cells[2,17] := 'S�cios';
        planilha.cells[2,18] := 'Diversos';
        planilha.cells[2,19] := 'Reforma 2014';
        planilha.cells[2,20] := 'Empr�stimos';
        planilha.cells[2,21] := 'Transferencia ME';
        planilha.cells[2,22] := 'Seguro';
        planilha.cells[2,23] := 'Total';
        planilha.range['A2:W2'].font.bold := true;
        planilha.range['A2:W2'].font.color := clblue;
        planilha.range['A2:W2'].VerticalAlignment := 3;
        planilha.range['A2:W2'].HorizontalAlignment := 3;
        planilha.range['A2:W2'].Borders.LineStyle := 7;

        //TOTAIS ---------------------------------------------------------------------

        {planilha.range['A6:B6'].Mergecells := True;
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
        planilha.range['A41:B41'].font.bold  := True; }

        f_previsao_fluxo.tb_tela.First;


        linha := 3;
        coluna := 1;


        while linha <= 33 do
        begin
             coluna := 1;
             while coluna <=23 do
             begin

                   valorcampo := f_previsao_fluxo.tb_tela.Fields[coluna - 1].AsString;

                   if (coluna = 1)  then
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '';
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end
                   else
                   begin
                        planilha.cells[linha,coluna] := valorCampo;
                        planilha.cells[linha,coluna].Numberformat :=  '0.00';
                        planilha.cells[linha,coluna].HorizontalAlignment := 4;
                        planilha.cells[linha,coluna].Borders.LineStyle := 7;
                   end;

                   coluna := coluna + 1;

             end;

             linha := linha + 1;
             f_previsao_fluxo.tb_tela.Next;
        end;

        planilha.columns.Autofit;

end;



procedure previsao_saidas_excel.data;
begin

     { data1 := f_fcts.cbmes.Text;
      ano := f_fcts.cbano.Text; }


end;

end.


