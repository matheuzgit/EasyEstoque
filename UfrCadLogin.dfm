object FrmCadLogin: TFrmCadLogin
  Left = 0
  Top = 0
  Caption = 'Cadastro de Login'
  ClientHeight = 173
  ClientWidth = 311
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 171
    Top = 16
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label3: TLabel
    Left = 31
    Top = 68
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 171
    Top = 68
    Width = 80
    Height = 13
    Caption = 'Confirmar Senha'
  end
  object Label2: TLabel
    Left = 31
    Top = 16
    Width = 13
    Height = 13
    Caption = 'RE'
  end
  object BtnCadastra: TButton
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = BtnCadastraClick
  end
  object EdtCnfSenha: TEdit
    Left = 171
    Top = 87
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EdtCnfSenhaKeyPress
  end
  object EdtRE: TEdit
    Left = 31
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = EdtREKeyPress
  end
  object EdtSenha: TEdit
    Left = 31
    Top = 87
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = EdtSenhaKeyPress
  end
  object EdtCPF: TEdit
    Left = 171
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = EdtCPFKeyPress
  end
  object ADOCmdLogin: TADOCommand
    CommandText = 
      'insert  into login(Login, Senha, CPF)'#13#10'values(:Login, :Senha, :C' +
      'PF)'
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CPF'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    Left = 248
    Top = 120
  end
  object QryLogin: TADOQuery
    Connection = DMDados.ADOEasyMaster
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LOGIN')
    Left = 72
    Top = 112
    object QryLoginLogin: TStringField
      FieldName = 'Login'
      Size = 11
    end
    object QryLoginSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object QryLoginCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
  end
  object QryRe: TADOQuery
    Connection = DMDados.ADOEasyMaster
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(login.Login) AS ultimoLogin'
      'FROM login')
    Left = 16
    Top = 112
    object QryReultimoLogin: TStringField
      FieldName = 'ultimoLogin'
      ReadOnly = True
      Size = 11
    end
  end
end
