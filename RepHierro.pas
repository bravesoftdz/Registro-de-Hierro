unit RepHierro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, ECC_Justifica,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, QRPrntr;

type
  TFRepHierro = class(TForm)
    QRepH: TQuickRep;
    TitleBand: TQRBand;
    QRMemo2: TQRECC_Memo;
    QRImage: TQRImage;
    QRMemo1: TQRECC_Memo;
    QRMmEnc: TQRECC_Memo;
    procedure QRepHPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure MostrarVPrevia(Sender: TObject);
  end;

var
  FRepHierro: TFRepHierro;

implementation

uses VstPrevia;

{$R *.dfm}
             {
procedure TFRepHierro.MostrarVPrevia(Sender: TObject);
begin
  Application.CreateForm(TFVstPrevia,FVstPrevia);
  FVstPrevia.QRPreview.QRPrinter:=TQRPrinter(Sender);
  FVstPrevia.QRPreview.Zoom:=100;
  //FVstPrevia.QRPreview.ZoomToWidth;
  FVstPrevia.Show;
  FVstPrevia.Free;


  sePage.Value := QRPrev.QRPrinter.PageNumber; //Inicializar valores
QRPrev.PageNumber:=sePage.Value;
sePage.Value := 1;
sePage.MinValue := 1;
sePage.MaxValue := QRPrev.QRPrinter.PageCount;
QRPrev.Zoom := 100;
ZoomTo100.Down := True;
spZoom.Value := 100;
Show;

end;    }

procedure TFRepHierro.QRepHPreview(Sender: TObject);
begin
  with TFVstPrevia.Create(nil) do
  try
    QRPreview.QRPrinter:=TQRPrinter(Sender);
    ShowModal;
  finally
    Free;
  end;
end;

end.
