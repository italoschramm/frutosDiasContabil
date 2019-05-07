unit UCalculo;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math;

type
        calculo = class
        public
        valor : array[1..44,1..9] of extended;

        m, i, j : integer;
        constructor criar;
        destructor destruir;
        procedure calcular;
      end;



implementation

uses principal, balancete;

constructor calculo.criar;
begin

end;

destructor calculo.destruir;
begin

end;

procedure calculo.calcular;
begin

      f_balancete.dataset1.First;

      while f_balancete.dataset1.Eof = false do
      begin
            m := 20;

            while m <= 28 do
            begin

                 f_balancete.dataset1.Edit;
                 f_balancete.dataset1.fields[m].asextended := f_balancete.dataset1.Fields[m-9].AsExtended + f_balancete.dataset1.Fields[m-18].AsExtended;
                 f_balancete.dataset1.Post;
                 m := m + 1;

            end;

            f_balancete.dataset1.Next;

      end;


end;

end.
