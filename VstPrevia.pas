unit VstPrevia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPrntr, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  TFVstPrevia = class(TForm)
    QRPreview: TQRPreview;
    BSalir: TBitBtn;
    BImprimir: TBitBtn;
    procedure BSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVstPrevia: TFVstPrevia;

implementation

uses RepHierro;

{$R *.dfm}

procedure TFVstPrevia.BSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFVstPrevia.BImprimirClick(Sender: TObject);
begin
  //QRPreview.QRPrinter.Print;
  FRepHierro.QRepH.PrinterSetup;
  if FRepHierro.QRepH.Tag=0 then FRepHierro.QRepH.Print;
end;

procedure TFVstPrevia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QRPreview.QRPrinter:=nil;
  Action:=caFree;
end;

procedure TFVstPrevia.FormCreate(Sender: TObject);
begin
  //BConfig.Glyph.Handle:=LoadBitmap(hinstance,'QRPRINTSETUPBITMAP');
  //BImprimir.Glyph.Handle:=LoadBitmap(hinstance,'QRPRINTBITMAP');
  //BSalir.Glyph.Handle:=LoadBitmap(hinstance,'QREXITSYSTEMBITMAP');
  //FRepHierro.QRepH.Zoom:=130;
  //QRPreview.ZoomToFit;
end;

end.
