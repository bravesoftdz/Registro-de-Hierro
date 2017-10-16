{  Registro de Hierro
   v1.0
   Autor: Ing. Francisco J. Sáez S.

   Consiste en la impresión del registro de hierros.
   Codificado en Delphi XE6 Upd1.
   Comps adicionales:
   - QuickReport
   - QReport_ECC (para efectos de justificación de texto).
   - JVCL (scroll en Acerca...)

   Calabozo, 07 de agosto de 2015.  }

program RegHierro;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FPrinc},
  RepHierro in 'RepHierro.pas' {FRepHierro},
  VstPrevia in 'VstPrevia.pas' {FVstPrevia},
  Acerca in 'Acerca.pas' {FAcerca},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Registro de Hierro';
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
