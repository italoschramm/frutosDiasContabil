unit versao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tf_versao = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Label1: TLabel;
    edvalor: TEdit;
    btenviar: TButton;
    procedure btenviarClick(Sender: TObject);
    procedure edvalorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_versao: Tf_versao;

implementation

{$R *.dfm}

uses mamonas;

procedure Tf_versao.btenviarClick(Sender: TObject);
begin

        if edvalor.Text = '28052016' then
        begin
              f_mamonas := tf_mamonas.Create(self);
        end;


end;

procedure Tf_versao.edvalorKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
      btenviarclick(sender);

end;

end.