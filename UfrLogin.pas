unit UfrLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB ;

type
  TFrmLogin = class(TForm )
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnLogar: TButton;
    BtnCadLogin: TButton;
    BtnRedSenha: TButton;
    QryLogin: TADOQuery;
    QryLoginLogin: TStringField;
    QryLoginSenha: TStringField;
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCadLoginClick(Sender: TObject);
    procedure BtnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidarLogin: String;
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses  Udados, UfrCadLogin, UfrMenu, UnFunc;

procedure TFrmLogin.BtnCadLoginClick(Sender: TObject);
var
  CadLogin : TFrmCadLogin;
begin
  CadLogin := TFrmCadLogin.Create(Self);
  CadLogin.Show;
end;

procedure TFrmLogin.BtnLogarClick(Sender: TObject);
var
  menu : TFrmMenu;
begin
  ValidarLogin;
  menu := TFrmMenu.Create(Self);
  menu.ShowModal;
  FrmLogin.Close;
end;

procedure TFrmLogin.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#9,#13]) then
    raise Exception.Create('Esse campo aceita apenas n�meross');
end;

procedure TFrmLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#9,#13]) then
    raise Exception.Create('Esse campo aceita apenas n�meros');
end;


function TFrmLogin.ValidarLogin: String;
begin
  QryLogin.Close;
  QryLogin.Open;
  QryLogin.First;

  while (QryLoginLogin.AsString <> EdtLogin.Text) or (QryLoginSenha.AsString <> EdtSenha.Text) do
  begin
   if (QryLogin.Eof)  then
   begin
     if (QryLoginLogin.AsString <> EdtLogin.Text) or (QryLoginSenha.AsString <> EdtSenha.Text)  then
     begin
       raise Exception.Create('Credenciais Incorretas');
     end;
   end;
  QryLogin.Next
end;


end;

end.
