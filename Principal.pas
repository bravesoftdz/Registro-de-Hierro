unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtDlgs, System.UITypes, ExeInfo, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Themes;

type
  TFPrinc = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ENomSlc: TEdit;
    ECedSlc: TEdit;
    ERIFSlc: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    ENomPrd: TEdit;
    ESector: TEdit;
    EMncpio: TEdit;
    Label6: TLabel;
    EParroq: TEdit;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    MmNorte: TMemo;
    MmSur: TMemo;
    MmOeste: TMemo;
    MmEste: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BGenerar: TButton;
    ECedMnd: TEdit;
    Label12: TLabel;
    ENomMnr: TEdit;
    Label13: TLabel;
    ChBMEd: TCheckBox;
    Label14: TLabel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    GroupBox4: TGroupBox;
    BSelecc: TButton;
    ImgHierro: TImage;
    OPDlg: TOpenPictureDialog;
    BLimpiar: TButton;
    BSalir: TButton;
    CBNacCed: TComboBox;
    CBNacRIF: TComboBox;
    ChBSN: TCheckBox;
    ChBRIF: TCheckBox;
    RBFundo: TRadioButton;
    RBParcela: TRadioButton;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure BSalirClick(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure BSeleccClick(Sender: TObject);
    procedure BGenerarClick(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure ChBMEdClick(Sender: TObject);
    procedure ChBSNClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ENomSlcExit(Sender: TObject);
    procedure ChBRIFClick(Sender: TObject);
    procedure RBFundoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure ValInicio;
    procedure CalculaPosImagen;
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;
  Genero,MenorEdad,CedMenor,NumRIF,PropHierro,TipoPredio,GenUbic,
  Parrafo1,Parrafo2: string;

implementation

uses RepHierro,Acerca;

{$R *.dfm}

procedure TFPrinc.ValInicio;
begin
  RB1.Checked:=true;
  ENomSlc.Clear;
  ECedSlc.Clear;
  ERIFSlc.Clear;
  ChBRIF.Checked:=true;
  ChBMEd.Checked:=false;
  ENomMnr.Clear;
  ChBSN.Checked:=true;
  ECedMnd.Clear;
  ENomPrd.Clear;
  ESector.Clear;
  EParroq.Clear;
  EMncpio.Clear;
  MmNorte.Clear;
  MmSur.Clear;
  MmEste.Clear;
  MmOeste.Clear;
  ImgHierro.Picture:=nil;
  RB1.SetFocus;
  //las variables:
  Genero:='';
  NumRIF:='';
  PropHierro:='';
  MenorEdad:='';
  CedMenor:='';
  TipoPredio:='';
  GenUbic:='';
  Parrafo1:='';
  Parrafo2:='';
  ChBMEdClick(Self);
  ChBSNClick(Self);
  RBFundoClick(Self);
end;

procedure TFPrinc.CalculaPosImagen;
var
  Porc: single;
begin
  Porc:=290/ImgHierro.Picture.Height;
  with FRepHierro do
  begin
    QRImage.Height:=Round(ImgHierro.Picture.Height*Porc);
    QRImage.Width:=Round(ImgHierro.Picture.Width*Porc);
    QRImage.Left:=(TitleBand.Width-QRImage.Width) div 2;
  end;
end;

procedure TFPrinc.BSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrinc.BSeleccClick(Sender: TObject);
begin
  OPDlg.Execute();
  ImgHierro.Picture.LoadFromFile(OPDlg.FileName);
end;

procedure TFPrinc.RB1Click(Sender: TObject);
begin
  if RB1.Checked then Genero:=', venezolano, mayor de edad, portador'
                 else Genero:=', venezolana, mayor de edad, portadora'
end;

procedure TFPrinc.RBFundoClick(Sender: TObject);
begin
  if RBFundo.Checked then
  begin
    TipoPredio:='el Fundo ';
    GenUbic:=', ubicado';
  end
  else
  begin
    TipoPredio:='la Parcela ';
    GenUbic:=', ubicada';
  end;
end;

procedure TFPrinc.SpeedButton1Click(Sender: TObject);
begin
  with TFAcerca.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFPrinc.ChBMEdClick(Sender: TObject);
begin
  MenorEdad:='';
  ENomMnr.Enabled:=ChBMEd.Checked;
  ChBSN.Enabled:=ChBMEd.Checked;
  ECedMnd.Enabled:=ChBMEd.Checked;
  if ChBMEd.Checked then
    MenorEdad:='en mi condición de representante del menor '+ENomMnr.Text+
               ', C.I. '+CedMenor+', ';
end;

procedure TFPrinc.ChBRIFClick(Sender: TObject);
begin
  NumRIF:='';
  CBNacRIF.Enabled:=ChBRIF.Checked;
  ERIFSlc.Enabled:=ChBRIF.Checked;
  if ChBRIF.Checked then NumRIF:=' y RIF '+CBNacRIF.Text+ERIFSlc.Text;
end;

procedure TFPrinc.ChBSNClick(Sender: TObject);
begin
  ECedMnd.Enabled:=not ChBSN.Checked;
  if ChBSN.Checked then CedMenor:='S/N'
                   else CedMenor:=ECedMnd.Text;
end;

procedure TFPrinc.ENomSlcExit(Sender: TObject);
begin
  TEdit(ActiveControl).Text:=Trim(TEdit(ActiveControl).Text);
end;

procedure TFPrinc.BGenerarClick(Sender: TObject);
begin
  RB1Click(Self);
  ChBRIFClick(Self);
  ChBSNClick(Self);
  ChBMEdClick(Self);
  RBFundoClick(Self);
  //se crea el form con el reporte y se le cargan los datos a imprimir:
  Application.CreateForm(TFRepHierro,FRepHierro);
  FRepHierro.QRMemo1.Lines.Clear;
  FRepHierro.QRMemo2.Lines.Clear;
  FRepHierro.QRImage.Picture:=nil;
  if ChBMEd.Checked then PropHierro:='propiedad de '+ENomMnr.Text
                    else PropHierro:='de mi propiedad';
  //párrafo 1:
  Parrafo1:='Yo, '+ENomSlc.Text+Genero+' de la Cédula de Identidad N° '+
    CBNacCed.Text+ECedSlc.Text+NumRIF+', '+MenorEdad+'solicito ante Usted de '+
    'acuerdo a lo establecido en el Decreto 406 del Registro Nacional de '+
    'Hierro y Señales me sea registrado el hierro que tengo en uso y tiene '+
    'las siguientes características impresas en esta solicitud.';
  FRepHierro.QRMemo1.Lines.Add(Parrafo1);
  //párrafo 2:
  Parrafo2:='Dicho hierro será utilizado para marcar animales '+PropHierro+
    ', en '+TipoPredio+ENomPrd.Text+GenUbic+' en el sector '+ESector.Text+
    ', Parroquia '+EParroq.Text+', jurisdicción del Municipio '+EMncpio.Text+
    ' del estado Guárico, determinado por los siguientes linderos: NORTE: '+
    MmNorte.Text+'; SUR: '+MmSur.Text+'; ESTE: '+MmEste.Text+' y OESTE: '+
    MmOeste.Text+'. Utilizaré dicho Hierro con otros fines comerciales '+
    'lícitos de ganados. Acompaño a esta solicitud de tres (3) facsímiles de '+
    'hierro y de dos (2) certificaciones que atestiguan mi condición de criador.';
  FRepHierro.QRMemo2.Lines.Add(Parrafo2);
  //la imagen:
  FRepHierro.QRImage.Picture.LoadFromFile(OPDlg.FileName);
  CalculaPosImagen;
  //se muestra el reporte:
  FRepHierro.QRepH.PreviewModal;
end;

procedure TFPrinc.BLimpiarClick(Sender: TObject);
begin
  if (MessageDlg('¿Desea limpiar todos los campos?',mtConfirmation,[mbYes,
      mbNo],0)=mrYes) then
    ValInicio;
end;

procedure TFPrinc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    SelectNext(ActiveControl,true,true);
    Key:=#0;
  end
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
  ValInicio;
end;

end.
