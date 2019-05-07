unit posicao_bancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, UBancos_Entradas, USaldo_Diario, UFcts_excel,
  Datasnap.DBClient, UBanco_Entradas_Mes, Midas, Midaslib;

type
  Tf_posicao_bancos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    tb_tela1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    tb_tela1DESCRICAO: TStringField;
    tb_tela1CC1: TBCDField;
    tb_tela1CC2: TBCDField;
    tb_tela1CC3: TBCDField;
    tb_tela1CC4: TBCDField;
    tb_tela1CC5: TBCDField;
    tb_tela1CC6: TBCDField;
    tb_tela1CC7: TBCDField;
    tb_tela1CC8: TBCDField;
    tb_tela1CC9: TBCDField;
    tb_tela1CC10: TBCDField;
    tb_tela1CC11: TBCDField;
    tb_tela1CC12: TBCDField;
    tb_tela1CC13: TBCDField;
    tb_tela1CC14: TBCDField;
    tb_tela1TOTAL: TBCDField;
    tb_tela1ID: TIntegerField;
    cbdia: TComboBox;
    Label1: TLabel;
    cbmes: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cbano: TComboBox;
    btpesquisar: TBitBtn;
    q_atualizar_tela: TADOQuery;
    q_limpa_tela: TADOQuery;
    btcalcular: TBitBtn;
    btgerar: TButton;
    cdtela: TClientDataSet;
    cdtelaID: TIntegerField;
    cdtelaDESCRICAO: TStringField;
    cdtelaCC1: TFloatField;
    cdtelaCC2: TFloatField;
    cdtelaCC3: TFloatField;
    cdtelaCC4: TFloatField;
    cdtelaCC5: TFloatField;
    cdtelaCC6: TFloatField;
    cdtelaCC7: TFloatField;
    cdtelaCC8: TFloatField;
    cdtelaCC9: TFloatField;
    cdtelaCC10: TFloatField;
    cdtelaCC11: TFloatField;
    cdtelaCC12: TFloatField;
    cdtelaCC13: TFloatField;
    cdtelaCC14: TFloatField;
    cdtelaTOTAL: TFloatField;
    q_salvar: TADOQuery;
    q_limpar: TADOQuery;
    btsalvar: TButton;
    btabrir: TButton;
    q_consulta: TADOQuery;
    q_fixo: TADOQuery;
    q_salvar2: TADOQuery;
    rbdia: TRadioButton;
    rbmes: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btpesquisarClick(Sender: TObject);
    procedure data;
    procedure limpa_tela;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btcalcularClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btgerarClick(Sender: TObject);
    procedure inserir_tela;
    procedure btsalvarClick(Sender: TObject);
    procedure btabrirClick(Sender: TObject);
    procedure rbdiaClick(Sender: TObject);
    procedure rbmesClick(Sender: TObject);
  private
      ObjBancos_Entradas : bancos_entradas;
      ObjBancos_Entradas_Mes : bancos_entradas_mes;
      ObjSaldo_Diario : saldo_contas;
      ObjExcel : fcts_excel;
      data_para_pesquisa, data_mes_inicio, data_mes_fim : string;
      i, j :integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_posicao_bancos: Tf_posicao_bancos;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_posicao_bancos.btabrirClick(Sender: TObject);
begin

      data;



      j := 1;

      while j <= 14 do
      begin
            i := 1;
            cdtela.First;
            while i <= 56 do
            begin
                       q_consulta.close;
                       q_consulta.Parameters.ParamByName('data').Value :=  data_para_pesquisa;
                       q_consulta.Parameters.ParamByName('id').Value := i;
                       q_consulta.Parameters.ParamByName('cc').Value := j;
                       q_consulta.Open;

                       cdtela.Edit;
                       cdtela.Fields[j+1].Value := q_consulta.FieldByName('VALOR').AsFloat;
                       cdtela.Post;

                       i := i + 1;
                       cdtela.Next;

            end;
            j := j + 1;

      end;



      btcalcularclick(sender);

      showmessage('Conclu�do!');

end;

procedure Tf_posicao_bancos.btcalcularClick(Sender: TObject);
var
total_entradas : array[1..6,1..15] of extended;
i, j, l : integer;
begin


              i := 1;
              while i <= 6 do
              begin
                    j := 1;
                    while j <= 15 do
                    begin
                         total_entradas[i,j] := 0;
                         j := j + 1;
                    end;
                    i := i + 1;
              end;

              j := 3;



              cdtela.first;
              while (cdtela.Eof = false)  do
              begin

                    if  (cdtela.Fields[0].asinteger = 2) then
                    begin
                          i := 1;
                          l := 2;
                          while i <= 15 do
                          begin
                                total_entradas[5,i] := total_entradas[5,i] + cdtela.Fields[l].AsFloat;
                                i := i + 1;
                                l := l + 1;

                          end;

                    end;

                    if (cdtela.Fields[0].asinteger = 3) or (cdtela.Fields[0].asinteger = 4)
                    or (cdtela.Fields[0].asinteger = 5) or (cdtela.Fields[0].asinteger = 6)
                    or (cdtela.Fields[0].asinteger = 7) or (cdtela.Fields[0].asinteger = 8)
                    or (cdtela.Fields[0].asinteger = 9) or (cdtela.Fields[0].asinteger = 10)
                    or (cdtela.Fields[0].asinteger = 11) or (cdtela.Fields[0].asinteger = 12)
                    or (cdtela.Fields[0].asinteger = 13) or (cdtela.Fields[0].asinteger = 14)
                    or (cdtela.Fields[0].asinteger = 15) or (cdtela.Fields[0].asinteger = 16)
                    or (cdtela.Fields[0].asinteger = 17) or (cdtela.Fields[0].asinteger = 18)
                    then
                    begin
                          i := 1;
                          l := 2;
                          while i <= 15 do
                          begin
                                total_entradas[1,i] := total_entradas[1,i] + cdtela.Fields[l].AsFloat;
                                i := i + 1;
                                l := l + 1;

                          end;

                    end;


                    if (cdtela.Fields[0].asinteger = 20)
                    then
                    begin
                          i := 1;
                          l := 2;
                          while i <= 15 do
                          begin
                                total_entradas[2,i] := total_entradas[2,i] + cdtela.Fields[l].AsFloat;
                                i := i + 1;
                                l := l + 1;
                          end;

                    end;


                    if (cdtela.Fields[0].asinteger = 44)
                    or (cdtela.Fields[0].asinteger = 22) or (cdtela.Fields[0].asinteger = 23)
                    or (cdtela.Fields[0].asinteger = 24) or (cdtela.Fields[0].asinteger = 25)
                    or (cdtela.Fields[0].asinteger = 26) or (cdtela.Fields[0].asinteger = 27)
                    or (cdtela.Fields[0].asinteger = 28) or (cdtela.Fields[0].asinteger = 29)
                    or (cdtela.Fields[0].asinteger = 30) or (cdtela.Fields[0].asinteger = 31)
                    or (cdtela.Fields[0].asinteger = 32) or (cdtela.Fields[0].asinteger = 33)
                    or (cdtela.Fields[0].asinteger = 34) or (cdtela.Fields[0].asinteger = 35)
                    or (cdtela.Fields[0].asinteger = 36) or (cdtela.Fields[0].asinteger = 37)
                    or (cdtela.Fields[0].asinteger = 38) or (cdtela.Fields[0].asinteger = 39)
                    or (cdtela.Fields[0].asinteger = 40) or (cdtela.Fields[0].asinteger = 41)
                    or (cdtela.Fields[0].asinteger = 42) or (cdtela.Fields[0].asinteger = 43)
                    or (cdtela.Fields[0].asinteger = 44) or (cdtela.Fields[0].asinteger = 45)
                    or (cdtela.Fields[0].asinteger = 46) or (cdtela.Fields[0].asinteger = 47)
                    or (cdtela.Fields[0].asinteger = 48)
                    then
                    begin
                          i := 1;
                          l := 2;
                          while i <= 15 do
                          begin
                                total_entradas[3,i] := total_entradas[3,i] + cdtela.Fields[l].AsFloat;
                                i := i + 1;
                                l := l + 1;
                          end;

                    end;


                    if
                       (cdtela.Fields[0].asinteger = 50)
                    or (cdtela.Fields[0].asinteger = 51)
                    or (cdtela.Fields[0].asinteger = 52)
                    then
                    begin
                          i := 1;
                          l := 2;
                          while i <= 15 do
                          begin
                                total_entradas[4,i] := total_entradas[4,i] + cdtela.Fields[l].AsFloat;
                                i := i + 1;
                                l := l + 1;
                          end;

                    end;


                    cdtela.Edit;
                    cdtela.Fields[16].Value :=  cdtela.Fields[2].AsFloat +  cdtela.Fields[3].AsFloat +
                    cdtela.Fields[4].AsFloat + cdtela.Fields[5].AsFloat + cdtela.Fields[6].AsFloat +
                    cdtela.Fields[7].AsFloat + cdtela.Fields[8].AsFloat + cdtela.Fields[9].AsFloat +
                    cdtela.Fields[10].AsFloat + cdtela.Fields[11].AsFloat + cdtela.Fields[12].AsFloat +
                    cdtela.Fields[13].AsFloat + cdtela.Fields[14].AsFloat + cdtela.Fields[15].AsFloat;
                    cdtela.post;

                    cdtela.Next;
              end;

              cdtela.First;
              while cdtela.Eof = false do
              begin
                   if cdtela.Fields[0].asinteger = 19 then
                   begin
                        cdtela.edit;
                        cdtela.Fields[2].Value := total_entradas[1,1];
                        cdtela.Fields[3].Value := total_entradas[1,2];
                        cdtela.Fields[4].Value := total_entradas[1,3];
                        cdtela.Fields[5].Value := total_entradas[1,4];
                        cdtela.Fields[6].Value := total_entradas[1,5];
                        cdtela.Fields[7].Value := total_entradas[1,6];
                        cdtela.Fields[8].Value := total_entradas[1,7];
                        cdtela.Fields[9].Value := total_entradas[1,8];
                        cdtela.Fields[10].Value := total_entradas[1,9];
                        cdtela.Fields[11].Value := total_entradas[1,10];
                        cdtela.Fields[12].Value := total_entradas[1,11];
                        cdtela.Fields[13].Value := total_entradas[1,12];
                        cdtela.Fields[14].Value := total_entradas[1,13];
                        cdtela.Fields[15].Value := total_entradas[1,14];
                        cdtela.Post;
                   end;

                   if cdtela.Fields[0].asinteger = 21 then
                   begin
                        cdtela.edit;
                        cdtela.Fields[2].Value := total_entradas[2,1] + total_entradas[1,1];
                        cdtela.Fields[3].Value := total_entradas[2,2] + total_entradas[1,2];
                        cdtela.Fields[4].Value := total_entradas[2,3] + total_entradas[1,3];
                        cdtela.Fields[5].Value := total_entradas[2,4] + total_entradas[1,4];
                        cdtela.Fields[6].Value := total_entradas[2,5] + total_entradas[1,5];
                        cdtela.Fields[7].Value := total_entradas[2,6] + total_entradas[1,6];
                        cdtela.Fields[8].Value := total_entradas[2,7] + total_entradas[1,7];
                        cdtela.Fields[9].Value := total_entradas[2,8] + total_entradas[1,8];
                        cdtela.Fields[10].Value := total_entradas[2,9] + total_entradas[1,9];
                        cdtela.Fields[11].Value := total_entradas[2,10] + total_entradas[1,10];
                        cdtela.Fields[12].Value := total_entradas[2,11] + total_entradas[1,11];
                        cdtela.Fields[13].Value := total_entradas[2,12] + total_entradas[1,12];
                        cdtela.Fields[14].Value := total_entradas[2,13] + total_entradas[1,13];
                        cdtela.Fields[15].Value := total_entradas[2,14] + total_entradas[1,14];
                        cdtela.Post;
                   end;

                  if cdtela.Fields[0].asinteger = 49 then
                   begin
                        cdtela.edit;
                        cdtela.Fields[2].Value := total_entradas[3,1];
                        cdtela.Fields[3].Value := total_entradas[3,2];
                        cdtela.Fields[4].Value := total_entradas[3,3];
                        cdtela.Fields[5].Value := total_entradas[3,4];
                        cdtela.Fields[6].Value := total_entradas[3,5];
                        cdtela.Fields[7].Value := total_entradas[3,6];
                        cdtela.Fields[8].Value := total_entradas[3,7];
                        cdtela.Fields[9].Value := total_entradas[3,8];
                        cdtela.Fields[10].Value := total_entradas[3,9];
                        cdtela.Fields[11].Value := total_entradas[3,10];
                        cdtela.Fields[12].Value := total_entradas[3,11];
                        cdtela.Fields[13].Value := total_entradas[3,12];
                        cdtela.Fields[14].Value := total_entradas[3,13];
                        cdtela.Fields[15].Value := total_entradas[3,14];
                        cdtela.Post;
                   end;


                    if cdtela.Fields[0].asinteger = 53 then
                   begin
                        cdtela.edit;
                        cdtela.Fields[2].Value := total_entradas[4,1] + total_entradas[3,1];
                        cdtela.Fields[3].Value := total_entradas[4,2] + total_entradas[3,2];
                        cdtela.Fields[4].Value := total_entradas[4,3] + total_entradas[3,3];
                        cdtela.Fields[5].Value := total_entradas[4,4] + total_entradas[3,4];
                        cdtela.Fields[6].Value := total_entradas[4,5] + total_entradas[3,5];
                        cdtela.Fields[7].Value := total_entradas[4,6] + total_entradas[3,6];
                        cdtela.Fields[8].Value := total_entradas[4,7] + total_entradas[3,7];
                        cdtela.Fields[9].Value := total_entradas[4,8] + total_entradas[3,8];
                        cdtela.Fields[10].Value := total_entradas[4,9] + total_entradas[3,9];
                        cdtela.Fields[11].Value := total_entradas[4,10] + total_entradas[3,10];
                        cdtela.Fields[12].Value := total_entradas[4,11] + total_entradas[3,11];
                        cdtela.Fields[13].Value := total_entradas[4,12] + total_entradas[3,12];
                        cdtela.Fields[14].Value := total_entradas[4,13] + total_entradas[3,13];
                        cdtela.Fields[15].Value := total_entradas[4,14] + total_entradas[3,14];
                        cdtela.Post;
                   end;

                   if cdtela.Fields[0].AsInteger = 54 then
                   begin
                        cdtela.edit;
                        cdtela.Fields[2].Value := (total_entradas[5,1] + total_entradas[2,1] + total_entradas[1,1]) - (total_entradas[4,1] + total_entradas[3,1]);
                        cdtela.Fields[3].Value := (total_entradas[5,2] + total_entradas[2,2] + total_entradas[1,2]) -(total_entradas[4,2] + total_entradas[3,2]);
                        cdtela.Fields[4].Value := (total_entradas[5,3] + total_entradas[2,3] + total_entradas[1,3]) -(total_entradas[4,3] + total_entradas[3,3]);
                        cdtela.Fields[5].Value := (total_entradas[5,4] + total_entradas[2,4] + total_entradas[1,4]) -(total_entradas[4,4] + total_entradas[3,4]);
                        cdtela.Fields[6].Value := (total_entradas[5,5] + total_entradas[2,5] + total_entradas[1,5]) -(total_entradas[4,5] + total_entradas[3,5]);
                        cdtela.Fields[7].Value := (total_entradas[5,6] + total_entradas[2,6] + total_entradas[1,6]) -(total_entradas[4,6] + total_entradas[3,6]);
                        cdtela.Fields[8].Value := (total_entradas[5,7] + total_entradas[2,7] + total_entradas[1,7]) -(total_entradas[4,7] + total_entradas[3,7]);
                        cdtela.Fields[9].Value := (total_entradas[5,8] + total_entradas[2,8] + total_entradas[1,8]) -(total_entradas[4,8] + total_entradas[3,8]);
                        cdtela.Fields[10].Value := (total_entradas[5,9] + total_entradas[2,9] + total_entradas[1,9]) -(total_entradas[4,9] + total_entradas[3,9]);
                        cdtela.Fields[11].Value := (total_entradas[5,10] + total_entradas[2,10] + total_entradas[1,10]) -(total_entradas[4,10] + total_entradas[3,10]);
                        cdtela.Fields[12].Value := (total_entradas[5,11] + total_entradas[2,11] + total_entradas[1,11]) - (total_entradas[4,11] + total_entradas[3,11]);
                        cdtela.Fields[13].Value := (total_entradas[5,12] + total_entradas[2,12] + total_entradas[1,12]) -(total_entradas[4,12] + total_entradas[3,12]);
                        cdtela.Fields[14].Value := (total_entradas[5,13] + total_entradas[2,13] + total_entradas[1,13]) -(total_entradas[4,13] + total_entradas[3,13]);
                        cdtela.Fields[15].Value := (total_entradas[5,14] + total_entradas[2,14] + total_entradas[1,14]) -(total_entradas[4,14] + total_entradas[3,14]);
                        cdtela.Post;

                   end;

                   cdtela.Next;

              end;



end;

procedure Tf_posicao_bancos.btgerarClick(Sender: TObject);
begin
      ObjExcel := fcts_excel.criar;
      ObjExcel.exportar_bancos;
      ObjExcel.destruir;


end;

procedure Tf_posicao_bancos.btpesquisarClick(Sender: TObject);
begin



      if rbdia.Checked= true then
      begin

      ObjBancos_Entradas := bancos_entradas.criar;
      ObjSaldo_Diario := saldo_contas.criar;
      Data;
      ObjBancos_Entradas.data_pesquisa := data_para_pesquisa;
      ObjBancos_Entradas.calcular;


      //zerar tabela --------------------

      cdtela.EmptyDataSet;
      inserir_tela;


      j := 1;

      while j <= 14 do
      begin
            i := 1;
            cdtela.First;
            while i <= 56 do
            begin
                        if i = 51 then
                        begin
                              q_fixo.Close;
                              q_fixo.Parameters.ParamByName('cc').Value := j;
                              q_fixo.Open;
                              cdtela.Edit;
                              cdtela.Fields[j+1].Value := q_fixo.FieldByName('VALOR').AsFloat;
                              cdtela.Post;
                        end
                        else
                        begin
                              cdtela.Edit;
                              cdtela.Fields[j+1].Value := ObjBancos_Entradas.tela[i,j];
                              cdtela.Post;
                        end;

                        i := i + 1;
                        cdtela.Next;

            end;
            j := j + 1;

      end;


      end;

      if rbmes.Checked = true then
      begin
             ObjBancos_Entradas_Mes := bancos_entradas_mes.criar;
             Data;
             ObjBancos_Entradas_Mes.data_pesquisa := data_mes_inicio;
             ObjBancos_Entradas_Mes.data_pesquisa2 := data_mes_fim;
             ObjBancos_Entradas_Mes.calcular;

             //zerar tabela --------------------

      cdtela.EmptyDataSet;
      inserir_tela;


      j := 1;

      while j <= 14 do
      begin
            i := 1;
            cdtela.First;
            while i <= 56 do
            begin
                        if i = 48 then
                        begin
                              q_fixo.Close;
                              q_fixo.Parameters.ParamByName('cc').Value := j;
                              q_fixo.Open;
                              cdtela.Edit;
                              cdtela.Fields[j+1].Value := q_fixo.FieldByName('VALOR').AsFloat;
                              cdtela.Post;
                        end
                        else
                        begin
                              cdtela.Edit;
                              cdtela.Fields[j+1].Value := ObjBancos_Entradas_Mes.tela[i,j];
                              cdtela.Post;
                        end;

                        i := i + 1;
                        cdtela.Next;

            end;
            j := j + 1;

      end;

      end;
      btcalcularclick(sender);

      showmessage('Calculado!');


end;

procedure Tf_posicao_bancos.btsalvarClick(Sender: TObject);
begin

      q_limpar.Close;
      q_limpar.Parameters.ParamByName('data').value := data_para_pesquisa;
      q_limpar.ExecSQL();

      cdtela.first;
      i := 1;
      j := 1;


      while cdtela.Eof = false do
      begin
            j := 1;
            while j <= 14 do
            begin
                  if i = 48 then
                  begin
                        q_salvar.Close;
                        q_salvar.Parameters.ParamByName('id').Value := i;
                        q_salvar.Parameters.ParamByName('cc').Value := j;
                        q_salvar.Parameters.ParamByName('valor').Value := cdtela.Fields[j+1].AsFloat;
                        q_salvar.Parameters.ParamByName('id2').Value := i;
                        q_salvar.Parameters.ParamByName('cc2').Value := j;
                        q_salvar.ExecSQL();
                  end;
                        q_salvar2.Close;
                        q_salvar2.Parameters.ParamByName('id').Value := i;
                        q_salvar2.Parameters.ParamByName('cc').Value := j;
                        q_salvar2.Parameters.ParamByName('valor').Value := cdtela.Fields[j+1].AsFloat;
                        q_salvar2.Parameters.ParamByName('data').Value := data_para_pesquisa;
                        q_salvar2.ExecSQL();


                  j := j + 1;
            end;
            i := i + 1;
            cdtela.Next;
      end;

      cdtela.first;

      showmessage('Salvo com sucesso!');
end;

procedure Tf_posicao_bancos.data;
begin
       if cbmes.Text = 'JANEIRO' then
  Begin
        data_mes_inicio := '01/01/'+ cbano.Text;
        data_mes_fim := '31/01/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/01/' + cbano.Text;
  End;

  if cbmes.Text = 'FEVEREIRO' then
  Begin
      data_mes_inicio := '01/02/'+ cbano.Text;
      data_mes_fim := '28/02/'+ cbano.Text;
      data_para_pesquisa := cbdia.text +'/02/' + cbano.Text;
  End;

  if cbmes.Text = 'MAR�O' then
  Begin
        data_mes_inicio := '01/03/'+ cbano.Text;
        data_mes_fim := '31/03/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/03/' + cbano.Text;
  End;

  if cbmes.Text = 'ABRIL' then
  Begin
        data_mes_inicio := '01/04/'+ cbano.Text;
        data_mes_fim := '30/04/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/04/' + cbano.Text;
  End;

  if cbmes.Text = 'MAIO' then
  Begin
      data_mes_inicio := '01/05/'+ cbano.Text;
        data_mes_fim := '31/05/'+ cbano.Text;
    data_para_pesquisa := cbdia.text +'/05/' + cbano.Text;
  End;

  if cbmes.Text = 'JUNHO' then
  Begin
  data_mes_inicio := '01/06/'+ cbano.Text;
        data_mes_fim := '30/06/'+ cbano.Text;
    data_para_pesquisa := cbdia.text +'/06/' + cbano.Text;
  End;

  if cbmes.Text = 'JULHO' then
  Begin
        data_mes_inicio := '01/07/'+ cbano.Text;
        data_mes_fim := '31/07/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/07/' + cbano.Text;
  End;

  if cbmes.Text = 'AGOSTO' then
  Begin
        data_mes_inicio := '01/08/'+ cbano.Text;
        data_mes_fim := '31/08/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/08/' + cbano.Text;
  End;

  if cbmes.Text = 'SETEMBRO' then
  Begin
        data_mes_inicio := '01/09/'+ cbano.Text;
        data_mes_fim := '30/09/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/09/' + cbano.Text;
  End;

  if cbmes.Text = 'OUTUBRO' then
  Begin

        data_mes_inicio := '01/10/'+ cbano.Text;
        data_mes_fim := '31/10/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/10/' + cbano.Text;
  End;

  if cbmes.Text = 'NOVEMBRO' then
  Begin

        data_mes_inicio := '01/11/'+ cbano.Text;
        data_mes_fim := '30/11/'+ cbano.Text;
        data_para_pesquisa := cbdia.text +'/11/' + cbano.Text;
  End;

  if cbmes.Text = 'DEZEMBRO' then
  Begin
        data_mes_inicio := '01/12/'+ cbano.Text;
        data_mes_fim := '31/12/'+ cbano.Text;
    data_para_pesquisa := cbdia.text +'/12/' + cbano.Text;
  End;
end;

procedure Tf_posicao_bancos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
        if (Column.Field.dataset.FieldbyName('ID').Asinteger = 3)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 4)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 5)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 6)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 7)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 8)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 9)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 10)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 11)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 12)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 13)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 14)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 15)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 16)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 17)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 18)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 20)
        then

        If (gdFocused in State) //Verifica se a c�lula est� no foco.

        then dbgrid1.canvas.brush.color := clwhite

        else dbgrid1.canvas.brush.color := clskyblue;


        If (Column.Field.dataset.FieldbyName('ID').Asinteger = 2)  or
           (Column.Field.dataset.FieldbyName('ID').Asinteger = 19) or
           (Column.Field.dataset.FieldbyName('ID').Asinteger = 21) or
           (Column.Field.dataset.FieldbyName('ID').Asinteger = 49) or
           (Column.Field.Dataset.FieldbyName('ID').Asinteger = 50) or
           (Column.Field.Dataset.FieldbyName('ID').Asinteger = 53) or
           (Column.Field.Dataset.FieldbyName('ID').Asinteger = 54) or
           (Column.Field.Dataset.FieldbyName('ID').Asinteger = 55) or
           (Column.Field.Dataset.FieldbyName('ID').Asinteger = 56)

        then

        If (gdFocused in State) //Verifica se a c�lula est� no foco.

        then dbgrid1.canvas.brush.color := clwhite

        else dbgrid1.canvas.brush.color := clSilver;


        if (Column.Field.dataset.FieldbyName('ID').Asinteger = 1)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 22)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 23)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 24)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 25)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 26)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 27)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 28)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 29)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 30)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 31)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 32)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 33)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 34)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 35)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 36)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 37)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 38)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 39)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 40)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 41)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 42)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 43)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 44)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 45)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 46)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 47)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 48)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 50)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 51)
        or (Column.Field.dataset.FieldbyName('ID').Asinteger = 52)
        then

        If (gdFocused in State) //Verifica se a c�lula est� no foco.

        then dbgrid1.canvas.brush.color := clwhite

        else dbgrid1.canvas.brush.color := clmoneygreen;

        //Agora vamos colorir a c�lula utilizando o m�todo Defaut:

        dbgrid1.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;


procedure Tf_posicao_bancos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin


       if Key = #13 then
       begin

             


       end;

end;

procedure tf_posicao_bancos.limpa_tela;
begin

      q_limpa_tela.Close;
      q_limpa_tela.ExecSQL();

end;

procedure Tf_posicao_bancos.rbdiaClick(Sender: TObject);
begin

      cbdia.Enabled := true;
      btsalvar.Enabled := true;
      btabrir.Enabled := true;
end;

procedure Tf_posicao_bancos.rbmesClick(Sender: TObject);
begin
      cbdia.Enabled := false;
      btsalvar.Enabled := false;
      btabrir.Enabled := false;
end;

procedure Tf_posicao_bancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      limpa_tela;
      Action := cafree;
end;

procedure Tf_posicao_bancos.FormCreate(Sender: TObject);
begin
      cdtela.EmptyDataSet;
      inserir_tela;
      limpa_tela;
end;

procedure Tf_posicao_bancos.inserir_tela;
begin

      cdtela.Append;
      cdtela.Fields[0].Value := 1;
      cdtela.Fields[1].Value := 'CHQ N�O DESCONTADOS/BLOQ.JUDICIAL';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 2;
      cdtela.Fields[1].Value := '(=)SALDO INICIAL DISPONIVEL EM C/C';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 3;
      cdtela.Fields[1].Value := '(+)DEP�SITOS OU CREDITOS EM CONTA';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 4;
      cdtela.Fields[1].Value := '(+)DEP�SITOS EM CHEQUE';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 5;
      cdtela.Fields[1].Value := '(+)FINANCIAMENTO GMAC';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 6;
      cdtela.Fields[1].Value := '(+)CONSORCIO GMAC';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 7;
      cdtela.Fields[1].Value := '(+)FINANCIAMENTO OUTRAS FINANCEIRAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 8;
      cdtela.Fields[1].Value := '(+)CONSORCIO OUTRAS FINANCEIRAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 9;
      cdtela.Fields[1].Value := '(+)SEGURADORA';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 10;
      cdtela.Fields[1].Value := '(+)COMISS�ES';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 11;
      cdtela.Fields[1].Value := '(+)CONTA CORRENTE GM';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 12;
      cdtela.Fields[1].Value := '(+)SEMINOVOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 13;
      cdtela.Fields[1].Value := '(+)RESGATE DE APLICA��O';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 14;
      cdtela.Fields[1].Value := '(+)CART�O DE CR�DITO';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 15;
      cdtela.Fields[1].Value := '(+)COBRAN�A BANCARIA (BOLETOS)';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 16;
      cdtela.Fields[1].Value := '(+)TRANSFERENCIAS ENTRE EMPRESAS(MUTUO)';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 17;
      cdtela.Fields[1].Value := '(+)UTILIZA��O CONTA GARANTIDA';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 18;
      cdtela.Fields[1].Value := '(+)TRANSFER�NCIA MESMA TITULARIDADE';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 19;
      cdtela.Fields[1].Value := 'SUB TOTAL DAS ENTRADAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 20;
      cdtela.Fields[1].Value := '(+)DESBLOQUEIO JUDICIAL';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;



      cdtela.Append;
      cdtela.Fields[0].Value := 21;
      cdtela.Fields[1].Value := '(=)TOTAL DAS ENTRADAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 22;
      cdtela.Fields[1].Value := '(-)TITULOS/FORNECEDORES';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 23;
      cdtela.Fields[1].Value := '(-)DEVOLU��O CLIENTES';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 24;
      cdtela.Fields[1].Value := '(-)SAL�RIOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 25;
      cdtela.Fields[1].Value := '(-)PJ';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 26;
      cdtela.Fields[1].Value := '(-)F�RIAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 27;
      cdtela.Fields[1].Value := '(-)RESCIS�ES';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 28;
      cdtela.Fields[1].Value := '(-)ALUGUEIS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 29;
      cdtela.Fields[1].Value := '(-)ACIONISTAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 30;
      cdtela.Fields[1].Value := '(-)IMPOSTOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 31;
      cdtela.Fields[1].Value := '(-)CHEQUES DEVOLVIDOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 32;
      cdtela.Fields[1].Value := '(-)CONSORCIO/CORRETAGEM/COMISSAO';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 33;
      cdtela.Fields[1].Value := '(-)VENDAS DIRETAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 34;
      cdtela.Fields[1].Value := '(-)VEICULOS NOVOS = F(SMARTLAOO)';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 35;
      cdtela.Fields[1].Value := '(-)VEICULOS NOVOS = C(FIDIC)';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 36;
      cdtela.Fields[1].Value := '(-)QUITA��O VEICULOS SEMINOVO';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 37;
      cdtela.Fields[1].Value := '(-)PE�AS GM';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 38;
      cdtela.Fields[1].Value := '(-)DESPESAS JUDICIAIS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 39;
      cdtela.Fields[1].Value := '(-)CART�O DE CR�DITO';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 40;
      cdtela.Fields[1].Value := '(-)EMPRESTIMOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 41;
      cdtela.Fields[1].Value := '(-)JUROS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 42;
      cdtela.Fields[1].Value := '(-)SEGUROS/DIVERSOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 43;
      cdtela.Fields[1].Value := '(-)TARIFAS BANCARIAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 44;
      cdtela.Fields[1].Value := '(-)EMPLACAMENTOS/MULTAS/VISTORIAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 45;
      cdtela.Fields[1].Value := '(-)TRANSFERENCIAS ENTRE EMPRESAS(MUTUO)';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 46;
      cdtela.Fields[1].Value := '(-)DEVOLU��O CONTA GARANTIDA';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 47;
      cdtela.Fields[1].Value := '(-)DESPESAS RJ';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 48;
      cdtela.Fields[1].Value := '(-)TRANSFER�NCIA MESMA TITULARIDADE';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

       cdtela.Append;
      cdtela.Fields[0].Value := 49;
      cdtela.Fields[1].Value := 'SUB TOTAL DAS SA�DAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 50;
      cdtela.Fields[1].Value := '(-)LIQUIDA��O DE EMPR�STIMO BANC�RIO';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 51;
      cdtela.Fields[1].Value := '(-)BLOQUEIO JUDICIAL';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 52;
      cdtela.Fields[1].Value := '(-)APLICA��O FINANCEIRA';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 53;
      cdtela.Fields[1].Value := '(=)TOTAL DAS SA�DAS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 54;
      cdtela.Fields[1].Value := '(=)SALDO FINAL EM C/C';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 55;
      cdtela.Fields[1].Value := 'CHEQUES EMITIDOS E N�O PROCESSADOS';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;

      cdtela.Append;
      cdtela.Fields[0].Value := 56;
      cdtela.Fields[1].Value := 'SALDO TOTAL DISPONIVEL';
      cdtela.Fields[2].Value := 0;
      cdtela.Fields[3].Value := 0;
      cdtela.Fields[4].Value := 0;
      cdtela.Fields[5].Value := 0;
      cdtela.Fields[6].Value := 0;
      cdtela.Fields[7].Value := 0;
      cdtela.Fields[8].Value := 0;
      cdtela.Fields[9].Value := 0;
      cdtela.Fields[10].Value := 0;
      cdtela.Fields[11].Value := 0;
      cdtela.Fields[12].Value := 0;
      cdtela.Fields[13].Value := 0;
      cdtela.Fields[14].Value := 0;
      cdtela.Fields[15].Value := 0;
      cdtela.Fields[16].Value := 0;
      cdtela.post;



      cdtela.first;

end;

end.