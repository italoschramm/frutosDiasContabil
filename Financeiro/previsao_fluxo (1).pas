unit previsao_fluxo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, UDias, UContas_Pagar;

type
  Tf_previsao_fluxo = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DataSource1: TDataSource;
    cbmes: TComboBox;
    Label1: TLabel;
    btfiltrar: TButton;
    q_contas_pagar: TADOQuery;
    Label2: TLabel;
    cbano: TComboBox;
    q_veiculos: TADOQuery;
    tb_tela: TADOTable;
    procedure btfiltrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
  ObjDias : dias;
  ObjContas_Pagar : contas_pagar;
  mes_hoje, ano_hoje : string;
    { Public declarations }
  end;

var
  f_previsao_fluxo: Tf_previsao_fluxo;

implementation

{$R *.dfm}

uses data_module;

procedure Tf_previsao_fluxo.btfiltrarClick(Sender: TObject);
begin

      ObjDias := dias.criar;
      ObjDias.inserir_dias;
      ObjDias.destruir;

      ObjContas_Pagar := contas_pagar.criar;
      ObjContas_Pagar.inserir_valores;
      ObjContas_Pagar.destruir;

end;

procedure Tf_previsao_fluxo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

      If Length(Column.Field.Dataset.FieldbyName('dia').AsString) = 3

      then

If (gdFocused in State) //Verifica se a célula está no foco.

then dbgrid1.canvas.brush.color := clBlack

else dbgrid1.canvas.brush.color := clSilver;

//Agora vamos colorir a célula utilizando o método Defaut:

dbgrid1.DefaultDrawColumnCell(rect,DataCol,Column,State)

end;


end.
