unit cadastra_previsao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB;

type
  Tf_cadastrar_despesa = class(TForm)
    edvalor: TEdit;
    cbcategoria: TComboBox;
    data1: TDateTimePicker;
    btcadastrar: TButton;
    q_inserir: TADOQuery;
    procedure btcadastrarClick(Sender: TObject);
    procedure edvalorKeyPress(Sender: TObject; var Key: Char);
    procedure cbcategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure data1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_cadastrar_despesa: Tf_cadastrar_despesa;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_cadastrar_despesa.btcadastrarClick(Sender: TObject);
begin

      q_inserir.Close;
      q_inserir.Parameters.ParamByName('cod_categoria').Value := strtoint(cbcategoria.Text);
      q_inserir.Parameters.ParamByName('valor').Value := strtofloat(edvalor.Text);
      q_inserir.Parameters.parambyname('data').Value := formatdatetime('DD-MM-YYYY', data1.DateTime);
      q_inserir.ExecSQL;

      edvalor.Clear;
      cbcategoria.Text := '';
      edvalor.SetFocus;
end;

procedure Tf_cadastrar_despesa.cbcategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key = #13 then
       data1.SetFocus;
end;

procedure Tf_cadastrar_despesa.data1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
      btcadastrarclick(sender);
end;

procedure Tf_cadastrar_despesa.edvalorKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
      cbcategoria.SetFocus;
end;

end.
