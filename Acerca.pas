unit Acerca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvScrollText,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, JvLabel;

type
  TFAcerca = class(TForm)
    JvScrollText1: TJvScrollText;
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Bevel1: TBevel;
    JvLabel2: TJvLabel;
    JvLabel1: TJvLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcerca: TFAcerca;

implementation

{$R *.dfm}

procedure TFAcerca.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
