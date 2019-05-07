unit UContas_Pagar;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
    contas_pagar = class
    private
    data1, data2, data_aux : string;
    public
    constructor criar;
    destructor destruir;
    procedure inserir_valores;
    procedure get_data;
    procedure compara_data;
    end;

implementation

uses previsao_fluxo;

constructor  contas_pagar.criar;
begin

end;

destructor contas_pagar.destruir;
begin

end;

procedure contas_pagar.inserir_valores;
var
i : integer;

begin

      get_data;

      f_previsao_fluxo.q_contas_pagar.Close;
      f_previsao_fluxo.q_contas_pagar.Parameters.ParamByName('data1').value := data1;
      f_previsao_fluxo.q_contas_pagar.Parameters.ParamByName('data2').value := data2;
      f_previsao_fluxo.q_contas_pagar.Open;


      f_previsao_fluxo.dataset.First;


end;

procedure contas_pagar.compara_data;
var
i : integer;
begin

    f_previsao_fluxo.dataset.First;

    i := 1;

    while i <= 33 do
    begin
          if data_aux = f_previsao_fluxo.dataset.fields[0].asstring then
          begin
            i := 35;
          end
          else
          begin
          f_previsao_fluxo.dataset.next;
          i := i + 1;
          end;
    end;



end;


procedure contas_pagar.get_data;
begin
      if f_previsao_fluxo.cbmes.Text = 'JANEIRO' then
      Begin
            data1 := '01/01/' + f_previsao_fluxo.cbano.text;
            data2 := '31/01/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'FEVEREIRO' then
      Begin
            data1 := '01/02/' + f_previsao_fluxo.cbano.text;
            data2 := '29/02/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'MARÇO' then
      Begin
            data1 := '01/03/' + f_previsao_fluxo.cbano.text;
            data2 := '31/03/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'ABRIL' then
      Begin
            data1 := '01/04/' + f_previsao_fluxo.cbano.text;
            data2 := '30/04/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'MAIO' then
      Begin
            data1 := '01/05/' + f_previsao_fluxo.cbano.text;
            data2 := '31/05/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'JUNHO' then
      Begin
            data1 := '01/06/' + f_previsao_fluxo.cbano.text;
            data2 := '30/06/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'JULHO' then
      Begin
            data1 := '01/07/' + f_previsao_fluxo.cbano.text;
            data2 := '31/07/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'AGOSTO' then
      Begin
            data1 := '01/08/' + f_previsao_fluxo.cbano.text;
            data2 := '31/08/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'SETEMBRO' then
      Begin
            data1 := '01/09/' + f_previsao_fluxo.cbano.text;
            data2 := '30/09/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'OUTUBRO' then
      Begin
            data1 := '01/10/' + f_previsao_fluxo.cbano.text;
            data2 := '31/10/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'NOVEMBRO' then
      Begin
            data1 := '01/11/' + f_previsao_fluxo.cbano.text;
            data2 := '30/11/' + f_previsao_fluxo.cbano.text;
      End;

      if f_previsao_fluxo.cbmes.Text = 'DEZEMBRO' then
      Begin
            data1 := '01/12/' + f_previsao_fluxo.cbano.text;
            data2 := '31/12/' + f_previsao_fluxo.cbano.text;
      End;

      showmessage(data1 +' '+ data2);

end;


end.

