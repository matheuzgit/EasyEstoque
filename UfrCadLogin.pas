
unit UfrCadLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.Win.ADODB, Udados;

type
  TFrmCadLogin = class(TForm)
    EdtCnfSenha: TEdit;
    EdtNome: TEdit;
    EdtSenha: TEdit;
    EdtContato: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnCadastra: TButton;
    ADOCmdLogin: TADOCommand;
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtContatoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCnfSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadastraClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrmCadLogin: TFrmCadLogin;

implementation

{$R *.dfm}

uses  UfrLogin;

procedure TFrmCadLogin.BtnCadastraClick(Sender: TObject);
begin
  if Length(EdtNome.Text) <> 11 then
  begin
    raise Exception.Create('Campo do CPF com informações incorretas, campo tem que conter com 11 caracteres');
  end
  else
  if Length(EdtContato.Text) <> 11 then
  begin
    raise Exception.Create('Campo do Contato com informações incorretas, campo tem que conter com 11 caracteres');
  end
  else
  if EdtSenha.Text = '' then
  begin
    raise Exception.Create('Campo senha não pode ser vazio');
  end
  else
  if EdtCnfSenha.Text = '' then
  begin
    raise Exception.Create('Campo de confirmação de senha não pode ser vazio');

  end
  else
  if EdtCnfSenha.Text <> EdtSenha.Text then
  begin
    raise Exception.Create('Confirmação de senha está divergente a senha');
  end
  else
  begin
    ADOCmdLogin.Parameters.ParamByName('Login').Value := EdtNome.Text;
    ADOCmdLogin.Parameters.ParamByName('Senha').Value := StrToInt(EdtSenha.Text);
    ADOCmdLogin.Parameters.ParamByName('Contato').Value := EdtContato.Text;
    ADOCmdLogin.Execute;
    MessageDlg('Cadastro Efetuado Com Sucesso', mtInformation, [mbOK], 0);
  end;




end;

procedure TFrmCadLogin.EdtCnfSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.EdtContatoKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

end.
