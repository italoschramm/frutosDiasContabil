unit realizado_saidas_tela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Data.DB, URealizado_Saidas;

type
  Tf_realizado_saidas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbsaldo: TLabel;
    lbinicial: TLabel;
    Label5: TLabel;
    cbmes: TComboBox;
    cbano: TComboBox;
    btfiltrar: TButton;
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
    tb_telaC14: TFloatField;
    tb_telaC15: TFloatField;
    tb_telaC16: TFloatField;
    tb_telaC17: TFloatField;
    tb_telaC18: TFloatField;
    tb_telaC19: TFloatField;
    tb_telaC20: TFloatField;
    tb_telaC21: TFloatField;
    tb_telaC22: TFloatField;
    tb_telaTOTAL: TFloatField;
    q_util: TADOQuery;
    q_atualizar_tela: TADOQuery;
    q_limpa_tela: TADOQuery;
    procedure data;
    procedure tela_total;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure limpa_tela;
    procedure atualiza_tela;
    procedure btfiltrarClick(Sender: TObject);
  private


    { Private declarations }

    ObjSaidas : realizado_saidas;

  public
    { Public declarations }
  end;

var
  f_realizado_saidas: Tf_realizado_saidas;

implementation

{$R *.dfm}

procedure Tf_realizado_saidas.limpa_tela;
begin

       q_limpa_tela.Close;
       q_limpa_tela.ExecSQL;

end;

procedure Tf_realizado_saidas.atualiza_tela;
begin
       tb_tela.Close;
       tb_tela.open;
end;

procedure Tf_realizado_saidas.btfiltrarClick(Sender: TObject);
var
i, j : integer;
begin

      ObjSaidas := realizado_saidas.criar;

      limpa_tela;
      data;
      ObjSaidas.calcular;



      j := 1;

      while j <= 22 do
      begin
            i := 1;
            while i <= 31 do
            begin

                        q_atualizar_tela.Close;
                        q_atualizar_tela.SQL.Clear;
                        q_atualizar_tela.SQL.Add('UPDATE FLX_REALIZADO_SAIDAS SET C'+inttostr(j) + ' = :valor where DIA = :dia');
                        q_atualizar_tela.Parameters.ParamByName('valor').Value := strtofloat(formatfloat('0.00',ObjSaidas.realizado_saida_dia[i,j]));
                        q_atualizar_tela.Parameters.ParamByName('dia').Value := formatfloat('00',i);
                        q_atualizar_tela.ExecSQL;

                        i := i + 1;

            end;
            j := j + 1;

      end;


      tela_total;

      atualiza_tela;
      ObjSaidas.destruir;

end;

procedure Tf_realizado_saidas.data;
begin

     if cbmes.Text = 'JANEIRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/01/' + cbano.text;
      End;

      if cbmes.Text = 'FEVEREIRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/02/' + cbano.text;
      End;

      if cbmes.Text = 'MAR�O' then
      Begin
            ObjSaidas.data_pesquisa := '01/03/' + cbano.text;
      End;

      if cbmes.Text = 'ABRIL' then
      Begin
            ObjSaidas.data_pesquisa := '01/04/' + cbano.text;
      End;

      if cbmes.Text = 'MAIO' then
      Begin
            ObjSaidas.data_pesquisa := '01/05/' + cbano.text;
      End;

      if cbmes.Text = 'JUNHO' then
      Begin
            ObjSaidas.data_pesquisa := '01/06/' + cbano.text;
      End;

      if cbmes.Text = 'JULHO' then
      Begin
            ObjSaidas.data_pesquisa := '01/07/' + cbano.text;
      End;

      if cbmes.Text = 'AGOSTO' then
      Begin
            ObjSaidas.data_pesquisa := '01/08/' + cbano.text;
      End;

      if cbmes.Text = 'SETEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/09/' + cbano.text;
      End;

      if cbmes.Text = 'OUTUBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/10/' + cbano.text;
      End;

      if cbmes.Text = 'NOVEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/11/' + cbano.text;
      End;

      if cbmes.Text = 'DEZEMBRO' then
      Begin
            ObjSaidas.data_pesquisa := '01/12/' + cbano.text;
      End;

end;

procedure Tf_realizado_saidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        q_limpa_tela.Close;
        q_limpa_tela.ExecSQL;
        action := cafree;

end;

procedure Tf_realizado_saidas.tela_total;
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
     tb_tela.FieldByName('C13').AsFloat +
     tb_tela.FieldByName('C14').AsFloat +
     tb_tela.FieldByName('C15').AsFloat +
     tb_tela.FieldByName('C16').AsFloat +
     tb_tela.FieldByName('C17').AsFloat +
     tb_tela.FieldByName('C18').AsFloat +
     tb_tela.FieldByName('C19').AsFloat +
     tb_tela.FieldByName('C20').AsFloat +
     tb_tela.FieldByName('C21').AsFloat +
     tb_tela.FieldByName('C22').AsFloat ;
     tb_tela.Post;

     tb_tela.Next;
     end;


end;

end.
