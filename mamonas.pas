unit mamonas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tf_mamonas = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_mamonas: Tf_mamonas;

implementation

{$R *.dfm}

procedure Tf_mamonas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := cafree;
end;

end.