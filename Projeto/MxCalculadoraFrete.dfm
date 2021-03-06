object fMxCalculadoraFrete: TfMxCalculadoraFrete
  Left = 291
  Top = 286
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo de Frete'
  ClientHeight = 211
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 378
    Top = 15
    Width = 51
    Height = 13
    Caption = 'Total Peso'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 171
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 106
      Top = 55
      Width = 68
      Height = 13
      Caption = 'SEC CAT (R$)'
    end
    object Label1: TLabel
      Left = 15
      Top = 55
      Width = 56
      Height = 13
      Caption = 'Pre'#231'o (P/K)'
    end
    object Label3: TLabel
      Left = 15
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object Label6: TLabel
      Left = 197
      Top = 55
      Width = 65
      Height = 13
      Caption = 'Despaxo (R$)'
    end
    object Label9: TLabel
      Left = 288
      Top = 55
      Width = 62
      Height = 13
      Caption = 'Ped'#225'gio (R$)'
    end
    object Label10: TLabel
      Left = 379
      Top = 55
      Width = 51
      Height = 13
      Caption = 'Seguro (%)'
    end
    object Label11: TLabel
      Left = 470
      Top = 55
      Width = 33
      Height = 13
      Caption = 'RR (%)'
    end
    object Label12: TLabel
      Left = 106
      Top = 15
      Width = 79
      Height = 13
      Caption = 'Peso Unit'#225'rio (K)'
    end
    object Label4: TLabel
      Left = 288
      Top = 15
      Width = 67
      Height = 13
      Caption = 'Pre'#231'o Unit'#225'rio'
    end
    object Label5: TLabel
      Left = 15
      Top = 119
      Width = 64
      Height = 13
      Caption = 'Total a Pagar'
    end
    object Label7: TLabel
      Left = 106
      Top = 119
      Width = 63
      Height = 13
      Caption = 'ICMS Incluso'
    end
    object Label8: TLabel
      Left = 197
      Top = 119
      Width = 47
      Height = 13
      Caption = 'Frete (R$)'
    end
    object Label13: TLabel
      Left = 379
      Top = 119
      Width = 69
      Height = 13
      Caption = 'Perc. Frete (%)'
    end
    object Label14: TLabel
      Left = 197
      Top = 15
      Width = 67
      Height = 13
      Caption = 'Total Peso (K)'
    end
    object Label16: TLabel
      Left = 379
      Top = 15
      Width = 50
      Height = 13
      Caption = 'Total Nota'
    end
    object Label17: TLabel
      Left = 288
      Top = 119
      Width = 78
      Height = 13
      Caption = 'Frete P/Uni (R$)'
    end
    object edtQuantidade: TEdit
      Tag = 1
      Left = 15
      Top = 30
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '0,00'
      OnExit = edtQuantidadeExit
    end
    object edtPrecoPorKilo: TEdit
      Left = 15
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 5
      Text = '0,49'
      OnExit = edtQuantidadeExit
    end
    object edtSeccat: TEdit
      Left = 106
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 6
      Text = '16,00'
      OnExit = edtQuantidadeExit
    end
    object edtDespaxo: TEdit
      Left = 197
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 7
      Text = '16,00'
      OnExit = edtQuantidadeExit
    end
    object edtPedagio: TEdit
      Left = 288
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 8
      Text = '9,50'
      OnExit = edtQuantidadeExit
    end
    object edtSeguro: TEdit
      Left = 379
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 9
      Text = '0,50'
      OnExit = edtQuantidadeExit
    end
    object edtRR: TEdit
      Left = 470
      Top = 69
      Width = 90
      Height = 21
      TabOrder = 10
      Text = '0,20'
      OnExit = edtQuantidadeExit
    end
    object edtFretePeso: TEdit
      Left = 15
      Top = 91
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Text = '0,00'
    end
    object edtSeguroTotal: TEdit
      Left = 379
      Top = 91
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = '0,00'
    end
    object edtRRTotal: TEdit
      Left = 470
      Top = 91
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Text = '0,00'
    end
    object edtPesoUnit: TEdit
      Tag = 1
      Left = 106
      Top = 30
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '0,00'
      OnExit = edtQuantidadeExit
    end
    object edtPrecoUnit: TEdit
      Tag = 1
      Left = 288
      Top = 30
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '0,00'
      OnExit = edtQuantidadeExit
    end
    object edtTotalAPagar: TEdit
      Left = 15
      Top = 134
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = '0,00'
    end
    object edtICMS: TEdit
      Left = 106
      Top = 134
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Text = '0,00'
    end
    object edtFrete: TEdit
      Left = 197
      Top = 134
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      Text = '0,00'
    end
    object edtPercentualFrete: TEdit
      Left = 379
      Top = 134
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Text = '0,00'
    end
    object edtPesoTotal: TEdit
      Left = 197
      Top = 30
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '0,00'
    end
    object edtPrecoTotal: TEdit
      Left = 379
      Top = 30
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0,00'
    end
    object edtFretePorUnidade: TEdit
      Left = 288
      Top = 134
      Width = 90
      Height = 21
      TabStop = False
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      Text = '0,00'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 171
    Width = 571
    Height = 40
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 472
      Top = 7
      Width = 90
      Height = 25
      Caption = '&Fechar'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000120B0000120B00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FD9249FDFDFDFDFDFDFDFDFDFDFDFDFDFDF7A4FDFDFDFDFDFDFDFDFDFDFD9292
        D2D249FDFDFDFDFDFDFDFDFDFDFDF7F7A4F7A4FDFDFDFDFDFDFDFDFD9292D3D3
        D2D249929292929292FDFDFDF7F7F7F7F7F7A4F7F7F7F7F7F7FDFDFD92DBDBDB
        DBD349E40909090992FDFDFDF7F7F7F7F7F7A40808080808F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF7F7F7F7F7F7A4A4A4A4A408F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF707F7F7F7F7A4F7F7F7A408F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF707070707F7A4A4A4F7A408F7FDFDFD92DBDBE4
        09DC49BD7B73730992FDFDFDF7070707F607A40807F7F708F7FDFDFD92E4DBE4
        09DC49FFFFFF080992FDFDFDF7070707F607A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF707070707F7A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD92E4E4E4
        E4E44909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD9292E4E4
        E4E44909FFFFFF0992FDFDFDF7F707070707A4F6F6F6F608F7FDFDFDFDFD929B
        DBDB49929292929292FDFDFDFDFDF7F7F707A4F7F7F7F7F7F7FDFDFDFDFDFDFD
        929249FDFDFDFDFDFDFDFDFDFDFDFDFDF7F7A4FDFDFDFDFDFDFD}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
  end
end
