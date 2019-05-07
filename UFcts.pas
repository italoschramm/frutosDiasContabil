unit UFcts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, ComObj, UFCTS_Dados,
  Data.Bind.Components, Data.Bind.DBScope, UFcts_Excel, Uthread;

type
    Tf_fcts = class(TForm)
    PageControl1: TPageControl;
    tbusados: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    DBGrid6: TDBGrid;
    tbpecas: TTabSheet;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    tbfunilaria: TTabSheet;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    tboficina: TTabSheet;
    Panel8: TPanel;
    DBGrid4: TDBGrid;
    tbadministracao: TTabSheet;
    Panel10: TPanel;
    DBGrid5: TDBGrid;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    btgerar: TButton;
    btexportar: TButton;
    cbmes: TComboBox;
    cbano: TComboBox;
    btlimpar: TButton;
    bttotalizar: TButton;
    btcopiar: TButton;
    Panel3: TPanel;
    DBGrid7: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid8: TDBGrid;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Panel7: TPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Panel9: TPanel;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Panel11: TPanel;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Memo2: TMemo;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Panel12: TPanel;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Edit97: TEdit;
    Edit98: TEdit;
    Edit99: TEdit;
    Edit100: TEdit;
    Edit101: TEdit;
    Edit102: TEdit;
    Edit103: TEdit;
    Edit104: TEdit;
    Edit105: TEdit;
    Edit106: TEdit;
    Edit107: TEdit;
    Edit108: TEdit;
    Edit109: TEdit;
    Edit110: TEdit;
    Edit111: TEdit;
    Edit112: TEdit;
    Edit113: TEdit;
    Edit114: TEdit;
    Edit115: TEdit;
    Edit116: TEdit;
    Edit117: TEdit;
    Edit118: TEdit;
    Edit119: TEdit;
    Edit120: TEdit;
    Edit121: TEdit;
    Edit122: TEdit;
    Edit123: TEdit;
    Edit124: TEdit;
    Edit125: TEdit;
    Edit126: TEdit;
    Edit127: TEdit;
    Edit128: TEdit;
    Edit129: TEdit;
    Edit130: TEdit;
    Edit131: TEdit;
    Edit132: TEdit;
    Edit133: TEdit;
    Edit134: TEdit;
    Edit135: TEdit;
    Edit136: TEdit;
    Edit137: TEdit;
    Edit138: TEdit;
    Edit139: TEdit;
    Edit140: TEdit;
    Edit141: TEdit;
    Edit142: TEdit;
    Memo3: TMemo;
    Edit143: TEdit;
    Edit144: TEdit;
    Edit145: TEdit;
    Edit146: TEdit;
    Edit147: TEdit;
    TabSheet5: TTabSheet;
    DBGrid9: TDBGrid;
    procedure btgerarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bloqueia;
    procedure libera;
    procedure atualiza_tela;
    procedure btlimparClick(Sender: TObject);
    procedure calcular;
    procedure FormCreate(Sender: TObject);
    procedure btexportarClick(Sender: TObject);
    procedure bttotalizarClick(Sender: TObject);
    procedure btcopiarClick(Sender: TObject);
    procedure verifica_mes;
    procedure fechar_mes;
    procedure DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid9DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private

  vetor : array[1..39] of string;
  CONTA : array[1..39] of string;
  data1 : string;
  ano, data2, mes : string;
  ObjDados : fcts_dados;
  ObjExcel : fcts_excel;
  ObjThread : thread_carregar;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_fcts: Tf_fcts;

implementation

{$R *.dfm}

uses data_module, f_cagerrando, data_module_facts;
var
i, j : integer;
vetor : array[1..20] of extended;


procedure tf_fcts.fechar_mes;
begin
       verifica_mes;

                //Administra��o ----------------------------------------------------------------



                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_ADMINISTRACAO_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_administracao.first;

                while dm_facts.tb_administracao.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_ADMINISTRACAO_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_administracao.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_administracao.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_administracao.FieldByName('AJUSTES').asinteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_administracao.Next;
                end;

                //Novos ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_NOVOS_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_novos.first;



                while dm_facts.tb_novos.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_NOVOS_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_novos.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_novos.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_novos.FieldByName('AJUSTES').asfloat;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_novos.Next;
                end;

                //OFICINA MECANICA ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_OFICINA_MECANICA_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_oficina.first;

                while dm_facts.tb_oficina.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_OFICINA_MECANICA_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_oficina.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_oficina.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_oficina.FieldByName('AJUSTES').Asinteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_oficina.Next;
                end;

                //PE�AS ACESSORIOS ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_PECAS_ACESSORIOS_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_pecas.first;

                while dm_facts.tb_pecas.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_PECAS_ACESSORIOS_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_pecas.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_pecas.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_pecas.FieldByName('AJUSTES').asinteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_pecas.Next;
                end;

                //VEICULOS USADOS ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_VEICULOS_USADOS_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_usados.first;

                while dm_facts.tb_usados.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_VEICULOS_USADOS_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_usados.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_usados.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_usados.FieldByName('AJUSTES').asinteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_usados.Next;
                end;

                //FUNILARIA----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_FUNILARIA_PINTURA_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_funilaria.first;

                while dm_facts.tb_funilaria.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_FUNILARIA_PINTURA_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_funilaria.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_funilaria.FieldByName('TOTAL').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_funilaria.FieldByName('AJUSTES').AsInteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_funilaria.Next;
                end;

                //Receita Novos ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_RECEITA_NOVOS_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_receita_novos.first;

                while dm_facts.tb_receita_novos.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_RECEITA_NOVOS_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes, :quantidade)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_receita_novos.FieldByName('CONTA_R').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_receita_novos.FieldByName('C2').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_receita_novos.FieldByName('C3').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('quantidade').Value := dm_facts.tb_receita_novos.FieldByName('C1').AsInteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_receita_novos.Next;
                end;


                //Receita Usados ----------------------------------------------------------------

                dm_facts.q_limpa_mes.Close;
                dm_facts.q_limpa_mes.sql.Clear;
                dm_facts.q_limpa_mes.SQL.Add('DELETE FROM FCTS_RECEITA_USADOS_SALDO WHERE MES = :mes AND ANO = :ano');
                dm_facts.q_limpa_mes.Parameters.ParamByName('mes').Value := mes;
                dm_facts.q_limpa_mes.Parameters.ParamByName('ano').Value := ano;
                dm_facts.q_limpa_mes.ExecSQL();

                dm_facts.tb_receita_usados.first;

                while dm_facts.tb_receita_usados.Eof = false do
                begin

                      dm_facts.q_finaliza_mes.Close;
                      dm_facts.q_finaliza_mes.SQL.Clear;
                      dm_facts.q_finaliza_mes.SQL.Add('INSERT INTO FCTS_RECEITA_USADOS_SALDO VALUES (:mes, :ano, :conta, :saldo, :ajustes, :quantidade)');
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('mes').Value := mes;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ano').Value := ano;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('conta').Value := dm_facts.tb_receita_usados.FieldByName('CONTA').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('saldo').Value := dm_facts.tb_receita_usados.FieldByName('C2').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('ajustes').Value := dm_facts.tb_receita_usados.FieldByName('C3').AsInteger;
                      dm_facts.q_finaliza_mes.Parameters.ParamByName('quantidade').Value := dm_facts.tb_receita_usados.FieldByName('C1').AsInteger;
                      dm_facts.q_finaliza_mes.ExecSQL();

                      dm_facts.tb_receita_usados.Next;
                end;



end;

procedure Tf_fcts.verifica_mes;
begin
       if cbmes.Text = 'JANEIRO' then
       mes := '1';

       if cbmes.Text = 'FEVEREIRO' then
       mes := '2';

       if cbmes.Text = 'MAR�O' then
       mes := '3';

       if cbmes.Text = 'ABRIL' then
       mes := '4';

       if cbmes.Text = 'MAIO' then
       mes := '5';

       if cbmes.Text = 'JUNHO' then
       mes := '6';

       if cbmes.Text = 'JULHO' then
       mes := '7';

       if cbmes.Text = 'AGOSTO' then
       mes := '8';

       if cbmes.Text = 'SETEMBRO' then
       mes := '9';

       if cbmes.Text = 'OUTUBRO' then
       mes := '10';

       if cbmes.Text = 'NOVEMBRO' then
       mes := '11';

       if cbmes.Text = 'DEZEMBRO' then
       mes := '12';

       ano := cbano.Text;


end;

procedure Tf_fcts.calcular;
begin

      atualiza_tela;

      dm_facts.tb_usados.First;
      dm_facts.tb_novos.First;
      dm_facts.tb_pecas.First;
      dm_facts.tb_funilaria.First;
      dm_facts.tb_oficina.First;
      dm_facts.tb_administracao.First;
      dm_facts.tb_receita_novos.first;
      dm_facts.tb_receita_usados.First;

      //Usados ----------------------------------------------------------

     while dm_facts.tb_usados.eof = false do
      begin

            dm_facts.tb_usados.Edit;
            dm_facts.tb_usados.Fields[4].Value := dm_facts.tb_usados.Fields[2].AsFloat + dm_facts.tb_usados.Fields[3].AsFloat;
            dm_facts.tb_usados.Fields[6].Value := dm_facts.tb_usados.Fields[4].AsFloat + dm_facts.tb_usados.Fields[5].AsFloat;
            dm_facts.tb_usados.Post;
            dm_facts.tb_usados.Next;
      end;

      dm_facts.q_total_usados.Close;
      dm_facts.q_total_usados.ExecSQL;


      //Novos ----------------------------------------------------------

      while dm_facts.tb_novos.Eof = false do
      begin

            dm_facts.tb_novos.Edit;
            dm_facts.tb_novos.Fields[8].Value := dm_facts.tb_novos.Fields[2].AsFloat + dm_facts.tb_novos.Fields[3].AsFloat +
            dm_facts.tb_novos.Fields[4].AsFloat + dm_facts.tb_novos.Fields[5].AsFloat + dm_facts.tb_novos.Fields[6].AsFloat +
            dm_facts.tb_novos.Fields[7].AsFloat;
            dm_facts.tb_novos.Fields[10].Value := dm_facts.tb_novos.Fields[8].AsFloat + dm_facts.tb_novos.Fields[9].AsFloat;
            dm_facts.tb_novos.Post;
            dm_facts.tb_novos.Next;

      end;

      dm_facts.q_total_novos.Close;
      dm_facts.q_total_novos.ExecSQL;

      //Pe�as ----------------------------------------------------------

      while dm_facts.tb_pecas.Eof = false do
      begin
            dm_facts.tb_pecas.Edit;
            dm_facts.tb_pecas.Fields[5].Value := dm_facts.tb_pecas.Fields[2].AsFloat + dm_facts.tb_pecas.Fields[3].AsFloat +
            dm_facts.tb_pecas.Fields[4].AsFloat;
            dm_facts.tb_pecas.Fields[7].Value := dm_facts.tb_pecas.Fields[5].AsFloat + dm_facts.tb_pecas.Fields[6].AsFloat;
            dm_facts.tb_pecas.Post;
            dm_facts.tb_pecas.Next;
      end;

      dm_facts.q_total_pecas.Close;
      dm_facts.q_total_pecas.ExecSQL;

      //Funiaria ----------------------------------------------------------

      while dm_facts.tb_funilaria.Eof = false do
      begin
            dm_facts.tb_funilaria.Edit;
            dm_facts.tb_funilaria.Fields[4].Value := dm_facts.tb_funilaria.Fields[2].AsFloat + dm_facts.tb_funilaria.Fields[3].AsFloat;
            dm_facts.tb_funilaria.Fields[6].Value := dm_facts.tb_funilaria.Fields[4].AsFloat + dm_facts.tb_funilaria.Fields[5].AsFloat;
            dm_facts.tb_funilaria.Post;
            dm_facts.tb_funilaria.Next;
      end;

      dm_facts.q_total_funilaria.Close;
      dm_facts.q_total_funilaria.ExecSQL;

      //Oficina ----------------------------------------------------------

      while dm_facts.tb_oficina.Eof = false do
      begin
            dm_facts.tb_oficina.Edit;
            dm_facts.tb_oficina.Fields[4].Value := dm_facts.tb_oficina.Fields[2].AsFloat + dm_facts.tb_oficina.Fields[3].AsFloat;
            dm_facts.tb_oficina.Fields[6].Value := dm_facts.tb_oficina.Fields[4].AsFloat + dm_facts.tb_oficina.Fields[5].AsFloat;
            dm_facts.tb_oficina.Post;
            dm_facts.tb_oficina.Next;
      end;

      dm_facts.q_total_oficina.Close;
      dm_facts.q_total_oficina.ExecSQL;

      //Administra��o ----------------------------------------------------------

      while dm_facts.tb_administracao.Eof = false do
      begin
            dm_facts.tb_administracao.Edit;
            dm_facts.tb_administracao.Fields[5].Value := dm_facts.tb_administracao.Fields[2].AsFloat + dm_facts.tb_administracao.Fields[3].AsFloat+
            dm_facts.tb_administracao.Fields[4].AsFloat;
            dm_facts.tb_administracao.Fields[7].Value := dm_facts.tb_administracao.Fields[5].AsFloat + dm_facts.tb_administracao.Fields[6].AsFloat;
            dm_facts.tb_administracao.Post;

            dm_facts.tb_administracao.Next;
      end;

      //Receita Usados ---------------------------------------------------------



      while dm_facts.tb_receita_usados.Eof = false do
      begin
           dm_facts.tb_receita_usados.Edit;
           dm_facts.tb_receita_usados.Fields[6].Value := dm_facts.tb_receita_usados.fields[4].AsFloat - dm_facts.tb_receita_usados.Fields[5].AsFloat;
           dm_facts.tb_receita_usados.Fields[10].Value := dm_facts.tb_receita_usados.fields[8].AsFloat - dm_facts.tb_receita_usados.Fields[9].AsFloat;
           dm_facts.tb_receita_usados.Post;

           dm_facts.tb_receita_usados.Next;
      end;

       dm_facts.q_total_receita_usados.Close;
      dm_facts.q_total_receita_usados.ExecSQL();


      //Receita Novos ----------------------------------------------------------

     { while dm_facts.tb_receita_novos.Eof = false do
      begin
            dm_facts.tb_receita_novos.Edit;
            dm_facts.tb_receita_novos.Fields[6].Value := dm_facts.tb_receita_novos.Fields[4].AsFloat - dm_facts.tb_receita_novos.Fields[5].AsFloat;
            dm_facts.tb_receita_novos.Post;

            dm_facts.tb_receita_novos.Edit;
            dm_facts.tb_receita_novos.Fields[11].Value := dm_facts.tb_receita_novos.Fields[9].AsFloat - dm_facts.tb_receita_novos.Fields[10].AsFloat;
            dm_facts.tb_receita_novos.Post;

            dm_facts.tb_receita_novos.Edit;
            dm_facts.tb_receita_novos.Fields[7].Value := trunc(dm_facts.tb_receita_novos.Fields[6].AsFloat) / dm_facts.tb_receita_novos.Fields[3].Asinteger;
            dm_facts.tb_receita_novos.Post;

            dm_facts.tb_receita_novos.Edit;
            dm_facts.tb_receita_novos.Fields[12].Value := trunc(dm_facts.tb_receita_novos.Fields[11].AsFloat) / dm_facts.tb_receita_novos.Fields[8].Asinteger;
            dm_facts.tb_receita_novos.Post;

            dm_facts.tb_receita_novos.Next;
      end;}

      dm_facts.q_total_receita_novos.Close;
      dm_facts.q_total_receita_novos.ExecSQL();

      dm_facts.q_total_administracao.Close;
      dm_facts.q_total_administracao.ExecSQL;


end;

procedure Tf_fcts.atualiza_tela;
begin

            dm_facts.tb_usados.close;
            dm_facts.tb_usados.Open;

            dm_facts.tb_novos.close;
            dm_facts.tb_novos.Open;

            dm_facts.tb_pecas.Close;
            dm_facts.tb_pecas.open;

            dm_facts.tb_funilaria.close;
            dm_facts.tb_funilaria.Open;

            dm_facts.tb_oficina.close;
            dm_facts.tb_oficina.open;

            dm_facts.tb_administracao.close;
            dm_facts.tb_administracao.open;

            dm_facts.tb_total.Close;
            dm_facts.tb_total.Open;

            dm_facts.tb_receita_novos.Close;
            dm_facts.tb_receita_novos.Open;

            dm_facts.tb_receita_usados.Close;
            dm_facts.tb_receita_usados.Open;

end;

procedure Tf_fcts.libera;
begin

       dbgrid1.Fields[2].ReadOnly := false;
       dbgrid1.Fields[3].ReadOnly := false;
       dbgrid1.Fields[4].ReadOnly := false;
       dbgrid1.Fields[6].ReadOnly := false;

       dbgrid2.Fields[2].ReadOnly := false;
       dbgrid2.Fields[3].ReadOnly := false;
       dbgrid2.Fields[4].ReadOnly := false;
       dbgrid2.Fields[5].ReadOnly := false;
       dbgrid2.Fields[6].ReadOnly := false;
       dbgrid2.Fields[7].ReadOnly := false;
       dbgrid2.Fields[8].ReadOnly := false;
       dbgrid2.Fields[10].ReadOnly := false;

       dbgrid3.Fields[2].ReadOnly := false;
       dbgrid3.Fields[3].ReadOnly := false;
       dbgrid3.Fields[4].ReadOnly := false;
       dbgrid3.Fields[5].ReadOnly := false;
       dbgrid3.Fields[7].ReadOnly := false;

       dbgrid4.Fields[2].ReadOnly := false;
       dbgrid4.Fields[3].ReadOnly := false;
       dbgrid4.Fields[4].ReadOnly := false;
       dbgrid4.Fields[6].ReadOnly := false;

       dbgrid5.Fields[2].ReadOnly := false;
       dbgrid5.Fields[3].ReadOnly := false;
       dbgrid5.Fields[4].ReadOnly := false;
       dbgrid5.Fields[6].ReadOnly := false;

       dbgrid6.Fields[2].ReadOnly := false;
       dbgrid6.Fields[3].ReadOnly := false;
       dbgrid6.Fields[4].ReadOnly := false;
       dbgrid6.Fields[5].ReadOnly := false;
       dbgrid6.Fields[7].ReadOnly := false;

end;

procedure Tf_fcts.bloqueia;
begin

       dbgrid1.Fields[2].ReadOnly := true;
       dbgrid1.Fields[3].ReadOnly := true;
       dbgrid1.Fields[4].ReadOnly := true;
       dbgrid1.Fields[6].ReadOnly := true;

       dbgrid2.Fields[2].ReadOnly := true;
       dbgrid2.Fields[3].ReadOnly := true;
       dbgrid2.Fields[4].ReadOnly := true;
       dbgrid2.Fields[5].ReadOnly := true;
       dbgrid2.Fields[6].ReadOnly := true;
       dbgrid2.Fields[7].ReadOnly := true;
       dbgrid2.Fields[8].ReadOnly := true;
       dbgrid2.Fields[10].ReadOnly := true;

       dbgrid3.Fields[2].ReadOnly := true;
       dbgrid3.Fields[3].ReadOnly := true;
       dbgrid3.Fields[4].ReadOnly := true;
       dbgrid3.Fields[5].ReadOnly := true;
       dbgrid3.Fields[7].ReadOnly := true;

       dbgrid4.Fields[2].ReadOnly := true;
       dbgrid4.Fields[3].ReadOnly := true;
       dbgrid4.Fields[4].ReadOnly := true;
       dbgrid4.Fields[6].ReadOnly := true;

       dbgrid5.Fields[2].ReadOnly := true;
       dbgrid5.Fields[3].ReadOnly := true;
       dbgrid5.Fields[4].ReadOnly := true;
       dbgrid5.Fields[6].ReadOnly := true;

       dbgrid6.Fields[2].ReadOnly := true;
       dbgrid6.Fields[3].ReadOnly := true;
       dbgrid6.Fields[4].ReadOnly := true;
       dbgrid6.Fields[5].ReadOnly := true;
       dbgrid6.Fields[7].ReadOnly := true;


end;

procedure Tf_fcts.btcopiarClick(Sender: TObject);
begin


      if (cbmes.Text <> '') and (cbano.text <> '') then
      begin

      if messagedlg('Confirma fechamento de m�s?', mtConfirmation, [mbYes,MbNo],0)=mrYes then
          begin

                fechar_mes;
                Showmessage('Finalizado com sucesso!');

          end;

      end
      else
      showmessage('Favor selecionar m�s e ano!');

end;

procedure Tf_fcts.btexportarClick(Sender: TObject);
begin

      ObjExcel := fcts_excel.criar;
      ObjExcel.exportar_dados;
      ObjExcel.destruir;

      Showmessage('Dados Exportado com Sucesso!');

end;

procedure Tf_fcts.btgerarClick(Sender: TObject);
begin

            f_carregar := tf_carregar.Create(self);

            ObjDados := fcts_dados.criar;
            ObjDados.inserir_dados;
            ObjDados.destruir;
            

            atualiza_tela;

            showmessage('Dados Gerados!');

            f_carregar.Close;



end;

procedure Tf_fcts.btlimparClick(Sender: TObject);
begin

       if messagedlg('Deseja excluir todos os dados?', mtConfirmation, [mbYes,MbNo],0)=mrYes then
          begin
                   dm_facts.q_zerar.Close;
                   dm_facts.q_zerar.ExecSQL;

                   atualiza_tela;
                   showmessage('Dados zerados!');

          end;
end;

procedure Tf_fcts.bttotalizarClick(Sender: TObject);
begin
      libera;
      calcular;
      bloqueia;
      atualiza_tela;
end;

procedure Tf_fcts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := cafree;
end;

procedure Tf_fcts.FormCreate(Sender: TObject);
begin
      libera;
      calcular;
      bloqueia;
      atualiza_tela;
      
end;

procedure Tf_fcts.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin

If
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')

then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid1.canvas.brush.color := clWhite

else dbgrid1.canvas.brush.color := clSilver;

//Agora vamos colorir a c�lula utilizando o m�todo Defaut:

dbgrid1.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    begin

      if DBGrid1.Columns.Grid.SelectedIndex < DBGrid1.Columns.Count - 1 then
        begin
        //DBGrid1.Columns[DBGrid1.Columns.Grid.SelectedIndex + 1].Field.FocusControl;
      libera;



      dm_facts.tb_usados.Edit;
      dm_facts.tb_usados.Fields[4].Value := dm_facts.tb_usados.Fields[2].AsFloat + dm_facts.tb_usados.Fields[3].AsFloat;
      dm_facts.tb_usados.Fields[6].Value := dm_facts.tb_usados.Fields[4].AsFloat + dm_facts.tb_usados.Fields[5].AsFloat;
      dm_facts.tb_usados.Post;


      bloqueia;

      dm_facts.tb_usados.Next;

        end
      else begin

        DBGrid1.DataSource.DataSet.Next;
        DBGrid1.Columns[0].Field.FocusControl;
      end;
   end;

end;

procedure Tf_fcts.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  // fixar a primeira coluna do dbgrid

   TDrawGrid( DBGrid2 ).FixedCols := 1;  // fixa a primeira coluna


   If
    (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid2.canvas.brush.color := clWhite

else dbgrid2.canvas.brush.color := clSilver;

//Agora vamos colorir a c�lula utilizando o m�todo Defaut:

dbgrid2.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    begin

      if DBGrid2.Columns.Grid.SelectedIndex < DBGrid2.Columns.Count - 1 then
        begin

              libera;

              dm_facts.tb_novos.Edit;
              dm_facts.tb_novos.Fields[8].Value := dm_facts.tb_novos.Fields[2].AsFloat + dm_facts.tb_novos.Fields[3].AsFloat +
              dm_facts.tb_novos.Fields[4].AsFloat + dm_facts.tb_novos.Fields[5].AsFloat + dm_facts.tb_novos.Fields[6].AsFloat +
              dm_facts.tb_novos.Fields[7].AsFloat;
              dm_facts.tb_novos.Fields[10].Value := dm_facts.tb_novos.Fields[8].AsFloat + dm_facts.tb_novos.Fields[9].AsFloat;
              dm_facts.tb_novos.Post;

              bloqueia;

              dm_facts.tb_novos.Next;

        end
      else begin

        DBGrid2.DataSource.DataSet.Next;
        DBGrid2.Columns[0].Field.FocusControl;
      end;
   end;

end;

procedure Tf_fcts.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

    if
     (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
    (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid3.canvas.brush.color := clWhite

else dbgrid3.canvas.brush.color := clSilver;

//Agora vamos colorir a c�lula utilizando o m�todo Defaut:

dbgrid3.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin

    if Key = #13 then
    begin

      if DBGrid3.Columns.Grid.SelectedIndex < DBGrid3.Columns.Count - 1 then
        begin

      libera;

      dm_facts.tb_pecas.Edit;
      dm_facts.tb_pecas.Fields[5].Value := dm_facts.tb_pecas.Fields[2].AsFloat + dm_facts.tb_pecas.Fields[3].AsFloat +
      dm_facts.tb_pecas.Fields[4].AsFloat;
      dm_facts.tb_pecas.Fields[7].Value := dm_facts.tb_pecas.Fields[5].AsFloat + dm_facts.tb_pecas.Fields[6].AsFloat;
      dm_facts.tb_pecas.Post;


      bloqueia;

      dm_facts.tb_pecas.Next;

        end
      else begin

        DBGrid3.DataSource.DataSet.Next;
        DBGrid3.Columns[0].Field.FocusControl;
      end;
   end;
end;

procedure Tf_fcts.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if
 (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
(Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid4.canvas.brush.color := clWhite

else dbgrid4.canvas.brush.color := clSilver;

//Agora vamos colorir a c�lula utilizando o m�todo Defaut:

dbgrid4.DefaultDrawColumnCell(rect,DataCol,Column,State)


end;

procedure Tf_fcts.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin

    if Key = #13 then
    begin

      if DBGrid4.Columns.Grid.SelectedIndex < DBGrid4.Columns.Count - 1 then
        begin

      libera;

      dm_facts.tb_funilaria.Edit;
      dm_facts.tb_funilaria.Fields[4].Value := dm_facts.tb_funilaria.Fields[2].AsFloat + dm_facts.tb_funilaria.Fields[3].AsFloat;
      dm_facts.tb_funilaria.Fields[6].Value := dm_facts.tb_funilaria.Fields[4].AsFloat + dm_facts.tb_funilaria.Fields[5].AsFloat;
      dm_facts.tb_funilaria.Post;


      bloqueia;

      dm_facts.tb_funilaria.Next;

        end
      else begin

        DBGrid4.DataSource.DataSet.Next;
        DBGrid4.Columns[0].Field.FocusControl;
      end;
   end;

end;

procedure Tf_fcts.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if
     (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
    (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid5.canvas.brush.color := clWhite

else dbgrid5.canvas.brush.color := clSilver;

//colorir a c�lula utilizando o m�todo Defaut:

dbgrid5.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid5KeyPress(Sender: TObject; var Key: Char);
begin


      if Key = #13 then
    begin

      if DBGrid5.Columns.Grid.SelectedIndex < DBGrid5.Columns.Count - 1 then
        begin

      libera;

      dm_facts.tb_oficina.Edit;
      dm_facts.tb_oficina.Fields[4].Value := dm_facts.tb_oficina.Fields[2].AsFloat + dm_facts.tb_oficina.Fields[3].AsFloat;
      dm_facts.tb_oficina.Fields[6].Value := dm_facts.tb_oficina.Fields[4].AsFloat + dm_facts.tb_oficina.Fields[5].AsFloat;
      dm_facts.tb_oficina.Post;


      bloqueia;

      dm_facts.tb_oficina.Next;

        end
      else begin

        DBGrid5.DataSource.DataSet.Next;
        DBGrid5.Columns[0].Field.FocusControl;
      end;
   end;

end;

procedure Tf_fcts.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  If
     (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
    (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid6.canvas.brush.color := clWhite

else dbgrid6.canvas.brush.color := clSilver;

//colorir a c�lula utilizando o m�todo Defaut:

dbgrid6.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid6KeyPress(Sender: TObject; var Key: Char);
begin


       if Key = #13 then
    begin

      if DBGrid6.Columns.Grid.SelectedIndex < DBGrid6.Columns.Count - 1 then
        begin

      libera;

      dm_facts.tb_administracao.Edit;
      dm_facts.tb_administracao.Fields[5].Value := dm_facts.tb_administracao.Fields[2].AsFloat + dm_facts.tb_administracao.Fields[3].AsFloat+
      dm_facts.tb_administracao.Fields[4].AsFloat;
      dm_facts.tb_administracao.Fields[7].Value := dm_facts.tb_administracao.Fields[5].AsFloat + dm_facts.tb_administracao.Fields[6].AsFloat;
      dm_facts.tb_administracao.Post;


      bloqueia;

      dm_facts.tb_administracao.Next;

        end
      else begin

        DBGrid6.DataSource.DataSet.Next;
        DBGrid6.Columns[0].Field.FocusControl;
      end;
   end;


end;

procedure Tf_fcts.DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

    If
   (Column.Field.Dataset.FieldbyName('DESPESAS_TOTAIS').AsString = 'Vendas L�quidas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Lucro Bruto') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Pessoal') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Desp. Vari�veis') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Semi-Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob. T�cnico') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Total Fixas') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Despesas Totais') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'Sub-Total Imob.T�cnico')
    then

If (gdFocused in State) //Verifica se a c�lula est� no foco.

then dbgrid7.canvas.brush.color := clWhite

else dbgrid7.canvas.brush.color := clSilver;

//colorir a c�lula utilizando o m�todo Defaut:

dbgrid7.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

      If
   (Column.Field.Dataset.FieldbyName('DESPESAS_TOTAIS').AsString = 'TOTAL AUTO NOVOS VAREJO') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'TOTAL AUTO NOVOS') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'TOTAL COMERCIAIS VAREJO') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'TOTAL COMERCIAIS') or
   (Column.Field.Dataset.FieldbyName('despesas_totais').AsString = 'TOTAL VEICULOS NOVOS')
    then

    If (gdFocused in State) //Verifica se a c�lula est� no foco.

    then dbgrid8.canvas.brush.color := clWhite

    else dbgrid8.canvas.brush.color := clSilver;

    //colorir a c�lula utilizando o m�todo Defaut:

    dbgrid8.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;

procedure Tf_fcts.DBGrid9DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
        If
   (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL VE�CULOS USADOS VAREJO') or
   (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL ATACADO E AJUSTES USADOS') or
   (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL VE�CULOS USADOS  (PUVV)') or
   (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL NOVOS & USADOS    (PVV)') or
   (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL DEPARTAMENTOS VARI�VEIS') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'SUB-TOTAL') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL MEC�NICA') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'SUB-TOTAL') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL FUNIL& PINTURA') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL DEPTO. SERVI�O') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL  P&A VAREJO') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL ATACADO BALC�O E OUTROS') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL  DEPTO. P&A') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL OPERA��ES FIXAS') or
    (Column.Field.Dataset.FieldbyName('DESPESAS').AsString = 'TOTAL TODOS OS DEPARTAMENTOS')
    then

    If (gdFocused in State) //Verifica se a c�lula est� no foco.

    then dbgrid9.canvas.brush.color := clWhite

    else dbgrid9.canvas.brush.color := clSilver;

    //colorir a c�lula utilizando o m�todo Defaut:

    dbgrid9.DefaultDrawColumnCell(rect,DataCol,Column,State)


end;

end.
