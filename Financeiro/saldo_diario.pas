unit saldo_diario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, USaldo_Diario;

type
  Tf_saldo_diario = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tb_tela: TADOTable;
    tb_telaDIA: TWideStringField;
    tb_telaC1: TFloatField;
    tb_telaC2: TFloatField;
    tb_telaC3: TFloatField;
    tb_telaC4: TFloatField;
    tb_telaC5: TFloatField;
    tb_telaC6: TFloatField;
    tb_telaC7: TFloatField;
    tb_telaC8: TFloatField;
    tb_telaC9: TFloatField;
    tb_telaC10: TFloatField;
    tb_telaC11: TFloatField;
    tb_telaC12: TFloatField;
    tb_telaC13: TFloatField;
    tb_telaTOTAL: TFloatField;
    Label1: TLabel;
    cbmes: TComboBox;
    Label2: TLabel;
    cbano: TComboBox;
    btfiltrar: TButton;
    btexcel: TButton;
    q_limpa_tela: TADOQuery;
    q_atualizar_tela: TADOQuery;
    procedure limpa_tela;
    procedure total;
    procedure data;
    procedure btfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  ObjSaldo_Diario : saldo_contas;
  i, j : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_saldo_diario: Tf_saldo_diario;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_saldo_diario.btfiltrarClick(Sender: TObject);
begin

      ObjSaldo_Diario := saldo_contas.criar;

      limpa_tela;
      data;
      ObjSaldo_Diario.calcular;

      j := 1;

      while j <= 13 do
      begin
            i := 1;
            while i <= 31 do
            begin

                        q_atualizar_tela.Close;
                        q_atualizar_tela.SQL.Clear;
                        q_atualizar_tela.SQL.Add('UPDATE FLX_CONTAS_SALDO SET C'+inttostr(j) + ' = :valor where DIA = :dia');
                        q_atualizar_tela.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('0.00',ObjSaldo_Diario.saldo_dia[i,j]));
                        q_atualizar_tela.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                        q_atualizar_tela.ExecSQL;

                        i := i + 1;

            end;
            j := j + 1;

      end;

      total;

      tb_tela.Close;
      tb_tela.Open;
      ObjSaldo_Diario.destruir;

end;

procedure tf_saldo_diario.total;
begin

     tb_tela.Close;
     tb_tela.Open;

     tb_tela.First;

     while tb_tela.Eof = false do
     begin

     tb_tela.Edit;
     tb_tela.FieldByName('TOTAL').value :=
     tb_tela.FieldByName('C1').AsFloat +
     tb_tela.FieldByName('C2').AsFloat +
     tb_tela.FieldByName('C3').AsFloat +
     tb_tela.FieldByName('C4').AsFloat +
     tb_tela.FieldByName('C5').AsFloat +
     tb_tela.FieldByName('C6').AsFloat +
     tb_tela.FieldByName('C7').AsFloat +
     tb_tela.FieldByName('C8').AsFloat +
     tb_tela.FieldByName('C9').AsFloat +
     tb_tela.FieldByName('C10').AsFloat +
     tb_tela.FieldByName('C11').AsFloat +
     tb_tela.FieldByName('C12').AsFloat +
     tb_tela.FieldByName('C13').AsFloat;
     tb_tela.Post;

     tb_tela.Next;
     end;

end;

procedure tf_saldo_diario.limpa_tela;
begin
      q_limpa_tela.Close;
      q_limpa_tela.ExecSQL;

end;

procedure tf_saldo_diario.data;
begin

       if cbmes.Text = 'JANEIRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/01/' + cbano.text;
      End;

      if cbmes.Text = 'FEVEREIRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/02/' + cbano.text;
      End;

      if cbmes.Text = 'MAR�O' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/03/' + cbano.text;
      End;

      if cbmes.Text = 'ABRIL' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/04/' + cbano.text;
      End;

      if cbmes.Text = 'MAIO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/05/' + cbano.text;
      End;

      if cbmes.Text = 'JUNHO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/06/' + cbano.text;
      End;

      if cbmes.Text = 'JULHO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/07/' + cbano.text;
      End;

      if cbmes.Text = 'AGOSTO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/08/' + cbano.text;
      End;

      if cbmes.Text = 'SETEMBRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/09/' + cbano.text;
      End;

      if cbmes.Text = 'OUTUBRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/10/' + cbano.text;
      End;

      if cbmes.Text = 'NOVEMBRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/11/' + cbano.text;
      End;

      if cbmes.Text = 'DEZEMBRO' then
      Begin
            ObjSaldo_Diario.data_pesquisa := '01/12/' + cbano.text;
      End;

end;

procedure Tf_saldo_diario.FormClose(Sender: TObject; var Action: TCloseAction);
begin

      limpa_tela;
      Action := Cafree;

end;

end.
