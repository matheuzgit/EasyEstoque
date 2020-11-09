object FrmConsProduto: TFrmConsProduto
  Left = 0
  Top = 0
  Caption = 'Consulta de Produtos'
  ClientHeight = 387
  ClientWidth = 769
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 769
    Height = 322
    Align = alClient
    DataSource = DsProduto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'prodesc'
        Title.Caption = 'Nome do Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Unidades'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO'
        Title.Caption = 'Peso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARRA'
        Title.Caption = 'Cod-Barra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Title.Caption = 'Fornecedor'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Caption = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Title.Caption = 'Marca'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 65
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 352
      Top = 27
      Width = 25
      Height = 22
      Glyph.Data = {
        42090000424D4209000000000000420000002800000018000000180000000100
        20000300000000090000A6000000A600000000000000000000000000FF0000FF
        0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00754AF430754AF264754AF2987649F3CC7649F2F37649F3CC754A
        F2987749F2657849F5310000FF01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007649
        F61C7649F3BA7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF7649F2FF7649F2FF7549F2BF7848EF20FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007549F15E7649
        F2F07649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF7649F2FF7649F2FF7649F2FF7649F2F2754AF26480808002FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00774AF29F7649F2FF7649
        F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF7649F2FF7649F2FF7649F2FF7649F2FF8A53A0FF97596BE480808002FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007748F15C7649F2FF7649F2FF7649
        F2FF7649F2FF7649F2FF7649F2FF7649F2FF7649F2FF7749EEFF7F4ECCFF8651
        AFFF824FC2FF794AE7FF703B72FF814980FFA05E44FF8A53A0FF754AF264FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00714CF61B7649F2EF7649F2FF7649F2FF7649
        F2FF7649F2FF7649F2FF7649F2FF7649F2FF7F4DCDFF995B61FFA05E44FFA05E
        44FFA05E44FF9E5D4EFF824746FF7C3E37FF864E92FF7649F2FF7649F2F27848
        EF20FFFFFF00F6E2CCEDFEF1E7DEEFE2EEF4EADCEFFFEADCEFFFEADCEFFFEADC
        EFFFEADCEFFFEADCEFFFEADCEFFFD7BED8FF9F5D4BFFBE814CFFEDB855FFF0BC
        55FFEFBB58FFD39A52FFA05E44FF894C5BFF7845A7FF7649F2FF7649F2FF7549
        F2BF0000FF01F4DDC3FFFEF4EBFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
        EEFFFFF6EEFFFFF6EEFFFFF6EEFFA46C78FFB47549FFF0BC54FFF8C55FFFFECC
        68FFFFCD69FFFDCB67FFC58A52FF9E5D4EFF794AE7FF7649F2FF7649F2FF7649
        F2FF7849F531F4DDC3FFA2C9F0FF1E8AF3FF2D9EFDFF2D9EFDFF2D9EFDFF2D9E
        FDFF2D9EFDFF1EB6FEFF12C9FCFF9E5F4AFFE3AD55FFF5C25BFFFFCD69FFFFCD
        69FFFFCD69FFFFCD69FFEFBA63FFA05E44FF824FC2FF7649F2FF7649F2FF7649
        F2FF7749F265F4DDC3FF8EC1F0FF1887F2FF1895FFFF1895FFFF1895FFFF1895
        FFFF1895FFFF12B4FFFF1BC5EDFFA05E44FFEAB556FFFDCA65FFFFCD69FFFFCD
        69FFFFCD69FFFFCD69FFFAC767FFA05E44FF8651AFFF7649F2FF7649F2FF7649
        F2FF754AF298F4DDC3FFAED0EFFF2A91F3FF4AAAFBFF4AAAFBFF4AAAFBFF4AAA
        FBFF4AAAFBFF31BAFDFF1AC8FEFF9C6053FFDCA454FFFCC964FFFFCD69FFFFCD
        69FFFFCD69FFFFD17AFFE6B05FFFA05E44FF7F4ECCFF7649F2FF7649F2FF7649
        F2FF7649F3CCF4DDC3FFFDF3E7FFFCF3E2FFFCF3E2FFFCF3E2FFFCF3E2FFFCF3
        E2FFFCF3E2FFFCF3E2FFFCF3E2FFB0818DFFA56445FFEEB95DFFFFCD69FFFFD0
        76FFFEDBA0FFFACD7AFFB2734BFF995B61FF7749EEFF7649F2FF7649F2FF7649
        F2FF7649F2F3F4DDC3FFF8EED2FFF1E9B7FFF1E9B7FFF1E9B7FFF1E9B7FFF1E9
        B7FFF1E9B7FFF1E9B7FFF1E9B7FFEEE4B4FF9F625FFFA36145FFCC9155FFDFA8
        5DFFD59D5BFFAC6B48FF9E5D4BFF7F4DCDFF7649F2FF7649F2FF7649F2FF7649
        F2FF7649F3CCF4DDC3FFF7EECFFFEFE7AEFFEFE7AEFFEFE7AEFFEFE7AEFFEFE7
        AEFFEFE7AEFFEFE7AEFFEFE7AEFFEFE7AEFFECE1AAFFB88C7AFFA06151FFA05E
        44FF9F5E4AFFA66F78FF7D4EDBFF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF754AF298F4DDC3FFFEF4EBFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
        EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFF4E4
        DDFFFEF4EBFFFFF6EEFF7A4EF2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF754AF264F4DDC3FFFCE8C6FFF7CD79FFFFDE9FFFFFDE9FFFFFDE9FFFFFDE
        9FFFFFEDD1FFFFF6EEFFF0E8B3FFEEE6ABFFEEE6ABFFEEE6ABFFEEE6ABFFEEE6
        ABFFFCF3E1FFFFF6EEFF7A4EF2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F2FF754AF430F4DDC3FFFADCA5FFF2BF57FFFFCD69FFFFCD69FFFFCD69FFFFCD
        69FFFFE5B8FFFFF6EEFFF3EBBFFFF2EABAFFF2EABAFFF2EABAFFF2EABAFFF2EA
        BAFFFCF3E2FFFFF6EEFF7A4EF2FF7649F2FF7649F2FF7649F2FF7649F2FF7649
        F3BAFFFFFF00F4DDC3FFFADCA5FFF2BF57FFFFCD69FFFFCD69FFFFCD69FFFFCD
        69FFFFE5B8FFFFF6EEFFFAF1D9FFF8F0D3FFF8F0D3FFF8F0D3FFF8F0D3FFF8F0
        D3FFFFF6ECFFFFF6EEFF7A4EF2FF7649F2FF7649F2FF7649F2FF7649F2F07649
        F61CFFFFFF00F4DDC3FFFADCA5FFF2BF57FFFFCD69FFFFCD69FFFFCD69FFFFCD
        69FFFFE5B8FFFFF6EEFFF3EBBFFFF2EABAFFF2EABAFFF2EABAFFF2EABAFFF2EA
        BAFFFCF3E2FFFFF6EEFF7A4EF2FF7649F2FF7649F2FF7649F2FF7549F15EFFFF
        FF00FFFFFF00F4DDC3FFFCE8C6FFF7CD79FFFFDE9FFFFFDE9FFFFFDE9FFFFFDE
        9FFFFFEDD1FFFFF6EEFFF0E8B3FFEEE6ABFFEEE6ABFFEEE6ABFFEEE6ABFFEEE6
        ABFFFCF3E1FFFFF6EEFF7A4EF2FF7649F2FF7649F2FF774AF29FFFFFFF00FFFF
        FF00FFFFFF00F4DDC3FFFEF4EBFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
        EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6EEFFFFF6
        EEFFFFF6EEFFFFF6EEFF7A4EF2FF7649F2EF7748F15CFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00763F2DF794604DD496624FD196624FD196624FD19B604AE29D5F
        48F19B5E50FA9B5E52FF9B5E52FF9B5E52FF9B5E52FF9B5E52FF9B5E52FF9B5E
        52FF9B5E52FF9B5E52FF794CE9BB714CF61BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00632B1AFF834A67FF5C5F68FF785C32FF7C4E2BFF905038FFA05E
        44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E
        44FFA05E44FFA05E44FF8F503010FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00642C1BFF793C2AFF7A3F2CFF7C3F29FF7C3E29FF905038FFA05E
        44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E44FFA05E
        44FFA05E44FF9F5D43FF804D330AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00}
    end
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label2: TLabel
      Left = 191
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 191
      Top = 28
      Width = 145
      Height = 21
      KeyField = 'prodesc'
      ListField = 'prodesc'
      ListSource = DsProduto
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 28
      Width = 145
      Height = 21
      KeyField = 'CNPJ'
      ListField = 'RAZAOSOCIAL'
      ListSource = DsProdutoFornecedor
      TabOrder = 1
    end
  end
  object QryProduto: TADOQuery
    Connection = DMDados.ADOEasyMaster
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produto')
    Left = 160
    Top = 136
    object QryProdutoprocodId: TAutoIncField
      FieldName = 'procodId'
      ReadOnly = True
    end
    object QryProdutoprodesc: TStringField
      FieldName = 'prodesc'
      Size = 200
    end
    object QryProdutoUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object QryProdutoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QryProdutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object QryProdutoCODBARRA: TIntegerField
      FieldName = 'CODBARRA'
    end
    object QryProdutofornecedor: TStringField
      FieldName = 'fornecedor'
      Size = 1000
    end
    object QryProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object QryProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 100
    end
  end
  object QryFornecedor: TADOQuery
    Connection = DMDados.ADOEasyMaster
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from fornecedor , produto')
    Left = 248
    Top = 136
    object QryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object QryFornecedorNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 200
    end
    object QryFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object QryFornecedorSEGMENTO: TStringField
      FieldName = 'SEGMENTO'
      Size = 100
    end
    object QryFornecedorRUA: TStringField
      FieldName = 'RUA'
      Size = 200
    end
    object QryFornecedorNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QryFornecedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QryFornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object QryFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object QryFornecedorCEP: TIntegerField
      FieldName = 'CEP'
    end
    object QryFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryFornecedorFIXO: TStringField
      FieldName = 'FIXO'
      Size = 13
    end
    object QryFornecedorMOVEL: TStringField
      FieldName = 'MOVEL'
      Size = 14
    end
    object QryFornecedorprocodId: TAutoIncField
      FieldName = 'procodId'
      ReadOnly = True
    end
    object QryFornecedorprodesc: TStringField
      FieldName = 'prodesc'
      Size = 200
    end
    object QryFornecedorUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object QryFornecedorVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QryFornecedorPESO: TFloatField
      FieldName = 'PESO'
    end
    object QryFornecedorCODBARRA: TIntegerField
      FieldName = 'CODBARRA'
    end
    object QryFornecedorfornecedor: TStringField
      FieldName = 'fornecedor'
      Size = 1000
    end
    object QryFornecedorTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object QryFornecedorMARCA: TStringField
      FieldName = 'MARCA'
      Size = 100
    end
  end
  object DsProduto: TDataSource
    DataSet = QryProduto
    Left = 376
    Top = 200
  end
  object DsProdutoFornecedor: TDataSource
    DataSet = QryFornecedor
    Left = 160
    Top = 224
  end
end