unit f_cagerrando;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tf_carregar = class(TForm)
    ProgressBar1: TProgressBar;
    lbcarregando: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_carregar: Tf_carregar;

implementation

{$R *.dfm}

procedure Tf_carregar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := cafree;
end;

end.
