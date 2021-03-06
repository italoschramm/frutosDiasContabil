unit f_acessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.DBCtrls, Vcl.StdCtrls;

type
  Tf_acesso = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    q_tela: TADOQuery;
    q_telaUSUARIO: TStringField;
    q_telaIDTELA: TAutoIncField;
    q_telaDESC_TELA: TStringField;
    edlogin: TEdit;
    Label1: TLabel;
    dbtela: TDBLookupComboBox;
    Label2: TLabel;
    lista_telas: TADOTable;
    DataSource2: TDataSource;
    btfiltrar: TButton;
    btexcluir: TButton;
    btincluir: TButton;
    q_incluir: TADOQuery;
    btnovo: TButton;
    q_excluir: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnovoClick(Sender: TObject);
    procedure btfiltrarClick(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_acesso: Tf_acesso;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_acesso.btexcluirClick(Sender: TObject);
begin

          if messagedlg('Confirma exclus�o de permiss�o do usu�rio: ' + q_tela.FieldByName('USUARIO').asstring, mtConfirmation, [mbYes,MbNo],0)=mrYes then
          begin
                 q_excluir.Close;
                 q_excluir.Parameters.ParamByName('login').Value := q_tela.FieldByName('USUARIO').AsString;
                 q_excluir.Parameters.ParamByName('id').Value := q_tela.FieldByName('IDTELA').AsInteger;
                 q_excluir.ExecSQL();

                 edlogin.Clear;
                 dbtela.keyvalue := '';
                 edlogin.SetFocus;

                 q_tela.Close;
                 q_tela.SQL.Clear;
                 q_tela.SQL.Add('SELECT A.USUARIO, B.IDTELA, B.DESC_TELA FROM TELAS_ACESSO A, TELAS B WHERE A.IDTELA = B.IDTELA');
                 q_tela.Open;

                 showmessage('Exclu�do com sucesso!');

                 btnovo.Enabled := true;
                 btincluir.Enabled := false;
                 btfiltrar.Enabled := true;
                 btexcluir.Enabled := false;


          end;

end;

procedure Tf_acesso.btfiltrarClick(Sender: TObject);
begin

            q_tela.Close;
            q_tela.SQL.Clear;
            q_tela.SQL.Add('SELECT A.USUARIO, B.IDTELA, B.DESC_TELA FROM TELAS_ACESSO A, TELAS B WHERE A.IDTELA = B.IDTELA AND A.USUARIO = :login');
            q_tela.Parameters.ParamByName('login').Value := edlogin.Text;
            q_tela.Open;

end;

procedure Tf_acesso.btincluirClick(Sender: TObject);
begin

      if (edlogin.Text <> '') and (dbtela.Text <> '') then
      begin

            q_incluir.close;
            q_incluir.Parameters.ParamByName('usuario').Value := edlogin.Text;
            q_incluir.Parameters.ParamByName('idtela').value := dbtela.Keyvalue;
            q_incluir.ExecSQL();

            q_tela.Close;
            q_tela.SQL.Clear;
            q_tela.SQL.Add('SELECT A.USUARIO, B.IDTELA, B.DESC_TELA FROM TELAS_ACESSO A, TELAS B WHERE A.IDTELA = B.IDTELA');
            q_tela.Open;

            showmessage('Cadastrado com sucesso!');
            edlogin.Text := '';
            dbtela.keyvalue := '';
            edlogin.SetFocus;

            btnovo.Enabled := true;
            btincluir.Enabled := false;
            btfiltrar.Enabled := true;
            btexcluir.Enabled := false;
            dbtela.Enabled := false;

      end
      else
            showmessage('Campos em Branco!');

end;

procedure Tf_acesso.btnovoClick(Sender: TObject);
begin

      btnovo.Enabled := false;
      btincluir.Enabled := true;
      btfiltrar.Enabled := false;
      btexcluir.Enabled := false;
      dbtela.Enabled := true;

      edlogin.clear;
      edlogin.SetFocus;

end;

procedure Tf_acesso.DBGrid1CellClick(Column: TColumn);
begin

      btnovo.Enabled := false;
      btincluir.Enabled := false;
      btfiltrar.Enabled := true;
      btexcluir.Enabled := true;

end;

procedure Tf_acesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := cafree;
end;

procedure Tf_acesso.FormCreate(Sender: TObject);
begin

      q_tela.Close;
      q_tela.SQL.Clear;
      q_tela.SQL.Add('SELECT A.USUARIO, B.IDTELA, B.DESC_TELA FROM TELAS_ACESSO A, TELAS B WHERE A.IDTELA = B.IDTELA');
      q_tela.Open;

      btnovo.Enabled := true;
      btincluir.Enabled := false;
      btfiltrar.Enabled := true;
      btexcluir.Enabled := false;

      lista_telas.Close;
      lista_telas.Open;

end;

end.
