unit f_load;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfload = class(TForm)
    ProgressBar1: TProgressBar;
    lbload: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fload: Tfload;

implementation

{$R *.dfm}

procedure Tfload.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := cafree;
end;

end.
