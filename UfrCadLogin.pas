
unit UfrCadLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.Win.ADODB, Udados, Data.DB;

type
  TFrmCadLogin = class(TForm)
    EdtCnfSenha: TEdit;
    EdtRE: TEdit;
    EdtSenha: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnCadastra: TButton;
    ADOCmdLogin: TADOCommand;
    QryLogin: TADOQuery;
    QryLoginLogin: TStringField;
    QryLoginSenha: TStringField;
    QryRe: TADOQuery;
    QryReultimoLogin: TStringField;
    EdtCPF: TEdit;
    Label2: TLabel;
    QryLoginCPF: TStringField;
    procedure EdtREKeyPress(Sender: TObject; var Key: Char);
    procedure EdtContatoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCnfSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadastraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrmCadLogin: TFrmCadLogin;

implementation

{$R *.dfm}

uses  UfrLogin, UnFunc;

procedure TFrmCadLogin.BtnCadastraClick(Sender: TObject);
begin

  QryLogin.Close;
  QryLogin.SQL.Clear;
  QryLogin.SQL.Add('Select * from login');
  QryLogin.Open;
  QryLogin.First;

  while not QryLogin.eof do
  begin

    if QryLoginLogin.AsString = EdtCPF.Text then
    begin
      raise Exception.Create('CPF já cadastrado!');
    end;
    QryLogin.Next;
  end;

  if  EdtCPF.Text = '' then
  begin
    raise Exception.Create('Campo CPF não pode ser vazio');
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
    ADOCmdLogin.Parameters.ParamByName('Login').Value := EdtRE.Text;
    ADOCmdLogin.Parameters.ParamByName('Senha').Value := StrToInt(EdtSenha.Text);
    ADOCmdLogin.Parameters.ParamByName('CPF').Value  := StrToInt(EdtSenha.Text);
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

procedure TFrmCadLogin.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.EdtREKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if not  (Key in['0'..'9']) then
    raise Exception.Create('Esse campo aceita apenas númeross');
end;

procedure TFrmCadLogin.FormCreate(Sender: TObject);
var
  ultimologin : string;
begin

  QryLogin.Close;
  QryLogin.SQL.Clear;
  QryLogin.SQL.Add('Select * from login');
  QryLogin.Open;
  QryLogin.First;
  if QryLoginLogin.AsString = '0001' then
    EdtRE.Text := '0001'
  else
    QryRe.Close;
    QryRe.SQL.Clear;
    QryRe.SQL.Add('SELECT MAX(login.Login) AS ultimoLogin FROM login');
    QryRe.Open;
    QryRe.First;
    ultimologin :=  QryReultimoLogin.AsString;
    if ultimologin = '' then
    begin
      ultimologin := inttostr(1);
      EdtRE.Text := '000' + ultimologin;

    end
    else
    begin
      ultimologin := IntToStr(StrToInt(ultimologin)+1);
      EdtRE.Text := '000' + ultimologin;
    end;
end;

end.
