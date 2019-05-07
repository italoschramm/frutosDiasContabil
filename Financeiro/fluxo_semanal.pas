unit fluxo_semanal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,  UPrevisao_Saidas, UPrevisao_Entradas,
  URealizado_Entradas, URealizado_Saidas, USaldo_Diario, UPrevisao_Semanal;

type
  Tf_fluxo_semanal = class(TForm)
    Panel1: TPanel;
    btfiltrar: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    q_limpa_tela: TADOQuery;
    q_atualizar_tela: TADOQuery;
    tb_tela: TADOTable;
    tb_telaID: TIntegerField;
    tb_telaDESCRICAO: TStringField;
    tb_telaC1: TFloatField;
    tb_telaC2: TFloatField;
    tb_telaC3: TFloatField;
    tb_telaC4: TFloatField;
    tb_telaC5: TFloatField;
    tb_telaC6: TFloatField;
    tb_telaC7: TFloatField;
    tb_telaC8: TFloatField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btfiltrarClick(Sender: TObject);
    procedure limpa_tela;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure total;
  private
  data_hoje, data_inicial : tdatetime;
  ObjPrevisao_Semanal : previsao_semanal;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_fluxo_semanal: Tf_fluxo_semanal;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_fluxo_semanal.btfiltrarClick(Sender: TObject);
var
i , j, l : integer;
begin

      data_hoje := now;
      j := 0;
      i := 1;

      while i <= 7 do
      begin
            dbgrid1.Columns[i].Title.caption := formatdatetime('DD/MM', now + j);
            i := i + 1;
            j := j + 1;
      end;

      ObjPrevisao_Semanal := previsao_semanal.criar;
      ObjPrevisao_Semanal.calcular;

      j := 1;
      l := strtoint(formatdatetime('DD', now));
      i := 1;

      while j <= 7 do
      begin
            i:=1;

            while i <= 16 do
            begin
                  l := strtoint(formatdatetime('DD', now));
                  if l <= 31 then
                  begin

                        q_atualizar_tela.Close;
                        q_atualizar_tela.SQL.Clear;
                        q_atualizar_tela.SQL.Add
                        ('UPDATE FLX_FLUXO_SEMANAL SET C'+inttostr(j) + ' = :valor where ID = :id');
                        q_atualizar_tela.Parameters.ParamByName('valor').Value :=
                        ObjPrevisao_Semanal.previsao_semanal[i,j];
                        q_atualizar_tela.Parameters.ParamByName('id').Value :=
                        formatfloat('00', i);
                        q_atualizar_tela.ExecSQL;
                        l := l + 1;
                  end;

                  i := i + 1;

            end;
            j := j + 1;

      end;

      total;

      tb_tela.Close;
      tb_tela.Open;

      ObjPrevisao_Semanal.destruir;

end;

procedure Tf_fluxo_semanal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

      If (tb_tela.FieldByName('ID').Asinteger = 1) then
      dbgrid1.canvas.brush.color := clcream
      else
      if (tb_tela.FieldByName('ID').Asinteger > 1)
      AND (tb_tela.FieldByName('ID').Asinteger < 7)
       then
      dbgrid1.canvas.brush.color := clskyblue
      else
      if (tb_tela.FieldByName('ID').Asinteger = 7) then
      dbgrid1.canvas.brush.color := clcream
      else
      if (tb_tela.FieldByName('ID').Asinteger = 15) then
      dbgrid1.canvas.brush.color := clcream
      else
      if (tb_tela.FieldByName('ID').Asinteger = 16) then
      dbgrid1.canvas.brush.color := clcream
      else
      dbgrid1.canvas.brush.color := clMoneygreen;

       DBGrid1.Canvas.FillRect(Rect);
      dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tf_fluxo_semanal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

      q_limpa_tela.Close;
      q_limpa_tela.ExecSQL;
      action := cafree;

end;

procedure tf_fluxo_semanal.limpa_tela;
begin
      q_limpa_tela.Close;
      q_limpa_tela.ExecSQL;

end;

procedure tf_fluxo_semanal.total;
var
soma : array[1..8] of extended;
soma2 : array[1..8] of extended;
saldo : array[1..8] of extended;
i : integer;
j : extended;

begin

     tb_tela.Close;
     tb_tela.Open;

     tb_tela.First;

     while tb_tela.Eof = false do
     begin
           tb_tela.Edit;
           tb_tela.FieldByName('C8').value := tb_tela.FieldByName('C1').AsFloat +
                                              tb_tela.FieldByName('C2').ASFLOAT +
                                              tb_tela.FieldByName('C3').AsFloat +
                                              tb_tela.FieldByName('C4').AsFloat +
                                              tb_tela.FieldByName('C5').AsFloat +
                                              tb_tela.FieldByName('C6').AsFloat +
                                              tb_tela.FieldByName('C7').AsFloat;
           tb_tela.Post;
           tb_tela.Next;
     end;

     tb_tela.First;

     while tb_tela.Eof = false do
     begin
            i := 1;
            if tb_tela.FieldByName('ID').AsInteger = 2 then
            begin
                  while i <= 8 do
                  begin
                        soma[i] := soma[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 3 then
            begin
                  while i <= 8 do
                  begin
                        soma[i] := soma[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 4 then
            begin
                  while i <= 8 do
                  begin
                        soma[i] := soma[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 5 then
            begin
                  while i <= 8 do
                  begin
                        soma[i] := soma[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 6 then
            begin
                  while i <= 8 do
                  begin
                        soma[i] := soma[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 7 then
            begin
                  while i <= 8 do
                  begin
                        tb_tela.Edit;
                        tb_tela.FieldByName('C'+inttostr(i)).value := soma[i];
                        tb_tela.Post;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 8 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 9 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 10 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 11 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 12 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 13 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 14 then
            begin
                  while i <= 8 do
                  begin
                        soma2[i] := soma2[i] + tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 15 then
            begin
                  while i <= 8 do
                  begin
                        tb_tela.Edit;
                        tb_tela.FieldByName('C'+inttostr(i)).value := soma2[i];
                        tb_tela.Post;
                        i := i + 1;
                  end;
            end;

            if tb_tela.FieldByName('ID').AsInteger = 16 then
            begin
                  j := 0;
                  while i <= 8 do
                  begin
                        tb_tela.Edit;
                        tb_tela.FieldByName('C'+inttostr(i)).value := j + (soma[i] - soma2[i]);
                        tb_tela.Post;
                        j := tb_tela.FieldByName('C'+inttostr(i)).AsFloat;
                        saldo[i] := j;
                        i := i + 1;
                  end;
            end;

            tb_tela.Next;
     end;

     //SALDO DIARIO ------------------------

     tb_tela.First;

     while tb_tela.Eof = false do
     begin
           if tb_tela.FieldByName('ID').AsInteger = 1 then
           begin
                i := 2;
                while i <= 8 do
                begin
                      tb_tela.edit;
                      tb_tela.FieldByName('C'+inttostr(i)).Value := saldo[i-1];
                      tb_tela.Post;
                      i := i + 1;
                end;
           end;

           tb_tela.Next;
     end;

end;

end.
