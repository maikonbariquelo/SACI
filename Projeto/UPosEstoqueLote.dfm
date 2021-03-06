object fmxProdEstoqueLote: TfmxProdEstoqueLote
  Left = 343
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Posi'#231#227'o de Estoque de Lote'
  ClientHeight = 370
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 330
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object grpDetalhe: TGroupBox
      Left = 14
      Top = 8
      Width = 339
      Height = 201
      Caption = ' Filtros  '
      TabOrder = 0
      TabStop = True
      object Label2: TLabel
        Left = 243
        Top = 179
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object ckbCodigoPRD: TCheckBox
        Left = 8
        Top = 19
        Width = 115
        Height = 17
        Cursor = crHandPoint
        Caption = 'C'#243'digo do Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ckbCodigoPRDClick
      end
      object edtCodigoPRD: TEdit
        Left = 204
        Top = 17
        Width = 73
        Height = 21
        Color = clMenu
        Enabled = False
        TabOrder = 1
      end
      object ckbCodigoFOR: TCheckBox
        Left = 8
        Top = 41
        Width = 149
        Height = 17
        Cursor = crHandPoint
        Caption = 'C'#243'digo do Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ckbCodigoFORClick
      end
      object edtCodigoFOR: TEdit
        Left = 162
        Top = 39
        Width = 73
        Height = 21
        Color = clMenu
        Enabled = False
        TabOrder = 3
      end
      object ckbDescricao: TCheckBox
        Left = 8
        Top = 63
        Width = 148
        Height = 17
        Cursor = crHandPoint
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = ckbDescricaoClick
      end
      object edtDescricao: TEdit
        Left = 162
        Top = 61
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        Color = clMenu
        Enabled = False
        TabOrder = 5
      end
      object ckbMarca: TCheckBox
        Left = 8
        Top = 85
        Width = 148
        Height = 17
        Cursor = crHandPoint
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = ckbMarcaClick
      end
      object edtMarca: TEdit
        Left = 162
        Top = 83
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        Color = clMenu
        Enabled = False
        TabOrder = 7
      end
      object ckbCodigoGRP: TCheckBox
        Left = 8
        Top = 107
        Width = 149
        Height = 17
        Cursor = crHandPoint
        Caption = 'Grupo de Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = ckbCodigoGRPClick
      end
      object dblCodigoGRP: TDBLookupComboBox
        Left = 162
        Top = 105
        Width = 169
        Height = 21
        Color = clMenu
        Enabled = False
        KeyField = 'GRP_CODIGO'
        ListField = 'GRP_DESCRICAO'
        ListSource = DSGrupo
        TabOrder = 9
        OnClick = dblCodigoGRPClick
      end
      object ckbCodigoSGP: TCheckBox
        Left = 40
        Top = 129
        Width = 118
        Height = 17
        Cursor = crHandPoint
        Caption = 'SubGrupo:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = ckbCodigoSGPClick
      end
      object dblCodigoSGP: TDBLookupComboBox
        Left = 162
        Top = 127
        Width = 169
        Height = 21
        Color = clMenu
        Enabled = False
        KeyField = 'SGP_CODIGO'
        ListField = 'SGP_DESCRICAO'
        ListSource = DSSubGrupo1
        TabOrder = 11
      end
      object ckbCodigoCNC: TCheckBox
        Left = 8
        Top = 153
        Width = 148
        Height = 17
        Cursor = crHandPoint
        Caption = 'Centro de Custo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = ckbCodigoCNCClick
      end
      object dblCodigoCNC: TDBLookupComboBox
        Left = 162
        Top = 149
        Width = 169
        Height = 21
        Color = clMenu
        Enabled = False
        KeyField = 'CNC_CODIGO'
        ListField = 'CNC_RZ_SOCIAL'
        ListSource = DSCentro_de_Custo
        TabOrder = 13
      end
      object ckbDataVencimento: TCheckBox
        Left = 8
        Top = 173
        Width = 148
        Height = 17
        Cursor = crHandPoint
        Caption = 'Data Vencimeto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = ckbDataVencimentoClick
      end
      object mskDTINI: TMaskEdit
        Left = 162
        Top = 171
        Width = 76
        Height = 21
        Color = clMenu
        Enabled = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 15
        Text = '  /  /    '
      end
      object mskDTFIM: TMaskEdit
        Left = 255
        Top = 171
        Width = 76
        Height = 21
        Color = clMenu
        Enabled = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 16
        Text = '  /  /    '
      end
      object cmbParametroProduto: TComboBox
        Left = 162
        Top = 17
        Width = 41
        Height = 21
        Style = csDropDownList
        Color = clMenu
        Enabled = False
        ItemHeight = 13
        TabOrder = 17
        Items.Strings = (
          '='
          'IN')
      end
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 214
      Width = 339
      Height = 93
      Caption = ' Estoque  '
      TabOrder = 1
      TabStop = True
      object Label1: TLabel
        Left = 8
        Top = 61
        Width = 52
        Height = 13
        Caption = 'Valor de X:'
      end
      object edtValorX: TEdit
        Left = 162
        Top = 58
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 1
      end
      object rdgEstoque: TRadioGroup
        Left = 8
        Top = 14
        Width = 322
        Height = 36
        Columns = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          '< X'
          '= X'
          '> X'
          '<= X'
          '>= X'
          '<> X')
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rdgEstoqueClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 330
    Width = 368
    Height = 40
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      368
      40)
    object BitBtn1: TBitBtn
      Left = 182
      Top = 7
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
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
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD10
        10FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD1029
        2910FDFDFDFDFDFDFDFDFDFDFDFD9BF7F79BFDFDFDFDFDFDFDFDFDFDFD103229
        292910FDFDFDFDFDFDFDFDFDFD9BF7F7F7F79BFDFDFDFDFDFDFDFDFD10737229
        10292910FDFDFDFDFDFDFDFD9B0707F79BF7F79BFDFDFDFDFDFDFD10737B2A10
        FD10212910FDFDFDFDFDFD9B0707F79BFD9BA4F79BFDFDFDFDFDFDFD107210FD
        FDFDFD102910FDFDFDFDFDFD9B079BFDFDFDFD9BF79BFDFDFDFDFDFDFD10FDFD
        FDFDFDFD102110FDFDFDFDFDFD9BFDFDFDFDFDFD9BA49BFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFD1010FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFD1010FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 271
      Top = 7
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
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
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0101FD
        FDFDFDFDFD0101FDFDFDFDFDFD9B9BFDFDFDFDFDFD9B9BFDFDFDFDFD01171701
        FDFDFDFD010F1701FDFDFDFD9BF7F79BFDFDFDFD9BF7F79BFDFDFDFD01171717
        01FDFD010F170F01FDFDFDFD9BF7F7F79BFDFD9BF7F7F79BFDFDFDFDFD011717
        1701010F170F01FDFDFDFDFDFD9BF7F7F79B9BF7F7F79BFDFDFDFDFDFDFD0117
        1F1717170F01FDFDFDFDFDFDFDFD9BF7F7F7F7F7F79BFDFDFDFDFDFDFDFDFD01
        1717171701FDFDFDFDFDFDFDFDFDFD9BF7F7F7F79BFDFDFDFDFDFDFDFDFDFD01
        5717171701FDFDFDFDFDFDFDFDFDFD9BF7F7F7F79BFDFDFDFDFDFDFDFDFD015F
        5F57571F1701FDFDFDFDFDFDFDFD9B070707F707F79BFDFDFDFDFDFDFD015F5F
        5F01015F1F5F01FDFDFDFDFDFD9B0707F79B9BF707F79BFDFDFDFDFD0167675F
        01FDFD015F5F5701FDFDFDFD9B0707F79BFDFD9BF707F79BFDFDFDFD01675F01
        FDFDFDFD015F1F01FDFDFDFD9B07079BFDFDFDFD9BF7079BFDFDFDFDFD0101FD
        FDFDFDFDFD0101FDFDFDFDFDFD9B9BFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      NumGlyphs = 2
    end
  end
  object Grupo: TQuery
    DatabaseName = 'DBguerra'
    SQL.Strings = (
      'SELECT * FROM GRUPO'
      'ORDER BY GRP_DESCRICAO ASC')
    Left = 99
    Top = 297
  end
  object SubGrupo1: TSubGrupo
    DatabaseName = 'DBguerra'
    Filtered = True
    SQL.Strings = (
      'SELECT * FROM SUBGRUPO'
      'WHERE GRP_CODIGO=:GRP_CODIGO'
      'ORDER BY SGP_DESCRICAO ASC')
    CNCOrigem = 0
    CentroDeCusto = 2
    CodigoCNC = 0
    CodigoUSU = 0
    Mafalda = 0
    Maquina = 1
    Tabela = 'SUBGRUPO'
    CodigoGRP = 0
    CodigoSGP = 0
    Fabricar = False
    PrecoDolar = False
    ServicoObrigatorio = False
    Situacao = 0
    Left = 127
    Top = 297
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRP_CODIGO'
        ParamType = ptUnknown
      end>
  end
  object DSGrupo: TDataSource
    DataSet = Grupo
    Left = 14
    Top = 297
  end
  object DSSubGrupo1: TDataSource
    DataSet = SubGrupo1
    Left = 184
    Top = 297
  end
  object DSCentro_de_Custo: TDataSource
    DataSet = Centro_de_Custo
    Left = 42
    Top = 297
  end
  object Centro_de_Custo: TQuery
    DatabaseName = 'DBguerra'
    SQL.Strings = (
      'SELECT * FROM CENTRO_DE_CUSTO'
      'ORDER BY CNC_RZ_SOCIAL ASC')
    Left = 70
    Top = 297
  end
  object PopupMenu1: TPopupMenu
    Left = 155
    Top = 297
    object sair1: TMenuItem
      Caption = 'sair'
      ShortCut = 27
      OnClick = sair1Click
    end
  end
end
