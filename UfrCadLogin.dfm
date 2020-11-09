object FrmCadLogin: TFrmCadLogin
  Left = 0
  Top = 0
  Caption = 'Cadastro de Login'
  ClientHeight = 182
  ClientWidth = 359
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 21
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 200
    Top = 21
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  object Label3: TLabel
    Left = 48
    Top = 70
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 200
    Top = 70
    Width = 80
    Height = 13
    Caption = 'Confirmar Senha'
  end
  object BtnCadastra: TButton
    Left = 136
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = BtnCadastraClick
  end
  object EdtCnfSenha: TEdit
    Left = 200
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EdtCnfSenhaKeyPress
  end
  object EdtContato: TEdit
    Left = 200
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = EdtContatoKeyPress
  end
  object EdtNome: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = EdtNomeKeyPress
  end
  object EdtSenha: TEdit
    Left = 48
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = EdtSenhaKeyPress
  end
  object ADOCmdLogin: TADOCommand
    CommandText = 
      'insert  into login(Login, Senha, Contato)'#13#10'values(:Login, :Senha' +
      ', :Contato)'
    Connection = DMDados.ADOEasyMaster
    Parameters = <
      item
        Name = 'Login'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end
      item
        Name = 'Senha'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Contato'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    Left = 64
    Top = 128
  end
end
