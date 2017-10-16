object FRepHierro: TFRepHierro
  Left = 0
  Top = 0
  Caption = 'FRepHierro'
  ClientHeight = 533
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QRepH: TQuickRep
    Left = 88
    Top = -200
    Width = 816
    Height = 1248
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnPreview = QRepHPreview
    Options = []
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Folio
    Page.Continuous = False
    Page.Values = (
      300.000000000000000000
      3302.000000000000000000
      300.000000000000000000
      2159.000000000000000000
      300.000000000000000000
      300.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object TitleBand: TQRBand
      Left = 113
      Top = 113
      Width = 589
      Height = 1021
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2701.395833333333000000
        1558.395833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRMemo2: TQRECC_Memo
        Left = 4
        Top = 576
        Width = 583
        Height = 425
        Size.Values = (
          1124.479166666667000000
          10.583333333333330000
          1524.000000000000000000
          1542.520833333333000000)
        XLColumn = 0
        Alignment = taAllJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRImage: TQRImage
        Left = 74
        Top = 270
        Width = 440
        Height = 290
        Size.Values = (
          767.291666666666700000
          195.791666666666700000
          714.375000000000000000
          1164.166666666667000000)
        XLColumn = 0
        AutoSize = True
        Center = True
        Stretch = True
      end
      object QRMemo1: TQRECC_Memo
        Left = 4
        Top = 124
        Width = 583
        Height = 139
        Size.Values = (
          367.770833333333300000
          10.583333333333330000
          328.083333333333300000
          1542.520833333333000000)
        XLColumn = 0
        Alignment = taAllJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRMmEnc: TQRECC_Memo
        Left = 4
        Top = 5
        Width = 580
        Height = 96
        Size.Values = (
          254.000000000000000000
          10.583333333333330000
          13.229166666666670000
          1534.583333333333000000)
        XLColumn = 0
        Alignment = taAllJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Lines.Strings = (
          'CIUDADANO:'
          'REGISTRADOR P'#218'BLICO DEL  MUNICIPIO AUT'#211'NOMO '
          'FRANCISCO DE MIRANDA '
          'DEL ESTADO GU'#193'RICO'
          'SU DESPACHO.-')
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
  end
end
