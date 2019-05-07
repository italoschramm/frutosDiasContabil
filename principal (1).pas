unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  Tf_principal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Contabilidade1: TMenuItem;
    Balancete1: TMenuItem;
    Despesa1: TMenuItem;
    Image1: TImage;
    Financeiro1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    PrevisesparaFluxodeCaixa1: TMenuItem;
    procedure Balancete1Click(Sender: TObject);
    procedure Despesa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevisesparaFluxodeCaixa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_principal: Tf_principal;

implementation

{$R *.dfm}

uses balancete, UFcts, login, previsao_fluxo;

procedure Tf_principal.Balancete1Click(Sender: TObject);
begin

      f_balancete := tf_balancete.create(self);

end;

procedure Tf_principal.Despesa1Click(Sender: TObject);
begin

      f_fcts := tf_fcts.Create(self);

end;

procedure Tf_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      f_login.Close;
end;

procedure Tf_principal.PrevisesparaFluxodeCaixa1Click(Sender: TObject);
begin

      f_previsao_fluxo := Tf_previsao_fluxo.Create(self);

end;

end.
