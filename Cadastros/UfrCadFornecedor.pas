unit UfrCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Data.Win.ADODB, Data.DB, Vcl.Buttons;

type
  TFrmFornecedor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EdtNomeFantasia: TEdit;
    EdtRazaoSocial: TEdit;
    MEdtCnpj: TMaskEdit;
    EdtSegmento: TEdit;
    EdtRua: TEdit;
    EdtComplemento: TEdit;
    EdtNumero: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    MedtMovel: TMaskEdit;
    EdtEmail: TEdit;
    EdtUf: TEdit;
    EdtCidade: TEdit;
    BtnBuscar: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    MedtCep: TMaskEdit;
    MedtFixo: TMaskEdit;
    Label4: TLabel;
    CmdCadFornecedor: TADOCommand;
    QryFornecedor: TADOQuery;
    QryFornecedorCNPJ: TStringField;
    QryFornecedorNOMEFANTASIA: TStringField;
    QryFornecedorRAZAOSOCIAL: TStringField;
    QryFornecedorSEGMENTO: TStringField;
    QryFornecedorRUA: TStringField;
    QryFornecedorNUMERO: TIntegerField;
    QryFornecedorUF: TStringField;
    QryFornecedorCOMPLEMENTO: TStringField;
    QryFornecedorCIDADE: TStringField;
    QryFornecedorCEP: TIntegerField;
    QryFornecedorEMAIL: TStringField;
    QryFornecedorFIXO: TStringField;
    QryFornecedorMOVEL: TStringField;
    Panel3: TPanel;
    SBtnSalvar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SBtnCancelar: TSpeedButton;
    procedure BtnBuscarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SBtnSalvarClick(Sender: TObject);
    procedure SBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

uses Pkg.Json.DTO, Ucep, GetCnpj, Udados;

procedure TFrmFornecedor.BtnBuscarClick(Sender: TObject);
var
  cep: TCep;
begin
  RESTClient1.BaseURL := 'http://viacep.com.br/ws/' + MedtCep.Text + '/json';
  RESTRequest1.Execute;

  cep := TCep.fromjsonString(RESTResponse1.Content.Trim);
  try
    EdtRua.Text := cep.Logradouro;
    EdtUf.Text := cep.Uf;
    EdtCidade.Text := cep.Localidade;
  finally
    cep.Free;
  end;

end;

procedure TFrmFornecedor.Button1Click(Sender: TObject);
var
  cnpj: TRootDTO;
begin

  RESTClient2.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/' +
    MEdtCnpj.Text;

  cnpj := TRootDTO.fromjsonString(RESTResponse1.Content.Trim);
  try
    EdtNomeFantasia.Text := cnpj.Fantasia;
    EdtSegmento.Text := cnpj.AtividadePrincipal;
  finally
    cnpj.Free;
  end;
end;

procedure TFrmFornecedor.SBtnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar procedimento?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    Close;
end;

procedure TFrmFornecedor.SBtnSalvarClick(Sender: TObject);
var
  Movel, Fixo, F1, F2, F3, M1, M2, M3: string;
begin
  QryFornecedor.Close;
  QryFornecedor.open;
  QryFornecedor.First;
  while not QryFornecedor.Eof do
  begin
    if MEdtCnpj.Text = QryFornecedorCNPJ.AsString then
      raise Exception.Create('Fornecedor j� cadastrado');
    QryFornecedor.Next;
  end;

  F1 := COPY(MedtFixo.Text, 2, 2);
  F2 := COPY(MedtFixo.Text, 5, 4);
  F3 := COPY(MedtFixo.Text, 10, 4);

  Fixo := F1 + F2 + F3;

  M1 := COPY(MedtMovel.Text, 2, 2);
  M2 := COPY(MedtMovel.Text, 5, 5);
  M3 := COPY(MedtMovel.Text, 11, 4);

  Movel := M1 + M2 + M3;

  if (Movel = '') AND (Fixo = '') then
    raise Exception.Create('Informe Pelo menos Um N�mero de contato!!!');

  if MEdtCnpj.Text = '' then
    raise Exception.Create('Campo do CNPJ Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('CNPJ').Value := MEdtCnpj.Text;

  if EdtNomeFantasia.Text = '' then
    raise Exception.Create('Campo do Nome Fantasia Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('NomeFantasia').Value :=
      EdtNomeFantasia.Text;

  if EdtRazaoSocial.Text = '' then
    raise Exception.Create('Campo do Nome Raz�o Social Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('RazaoSocial').Value :=
      EdtRazaoSocial.Text;

  if EdtSegmento.Text = '' then
    raise Exception.Create('Campo do Segmento Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('Segmento').Value :=
      EdtSegmento.Text;

  if EdtRua.Text = '' then
    raise Exception.Create('Campo do RUA Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('RUA').Value := EdtRua.Text;

  if EdtNumero.Text = '' then
    raise Exception.Create('Campo do N�mero do local Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('NUMERO').Value :=
      StrToInt(EdtNumero.Text);

  if EdtUf.Text = '' then
    raise Exception.Create('Campo do UF Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('UF').Value := EdtUf.Text;

  CmdCadFornecedor.Parameters.ParamByName('COMPLEMENTO').Value :=
    EdtComplemento.Text;

  if EdtCidade.Text = '' then
    raise Exception.Create('Campo da Cidade Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('CIDADE').Value := EdtCidade.Text;

  if MedtCep.Text = '' then
    raise Exception.Create('Campo do N�mero do CEP Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('CEP').Value :=
      StrToInt(MedtCep.Text);

  if EdtEmail.Text = '' then
    raise Exception.Create('Campo do Email Obrigat�tio!!!')
  else
    CmdCadFornecedor.Parameters.ParamByName('EMAIL').Value := EdtEmail.Text;

  if Fixo <> '' then
    CmdCadFornecedor.Parameters.ParamByName('FIXO').Value := Fixo;

  if Movel <> '' then
    CmdCadFornecedor.Parameters.ParamByName('MOVEL').Value := Movel;

  CmdCadFornecedor.Execute;

  MessageDlg('Fornecedor Cadastrado com Sucesso!!!', mtConfirmation, [mbOK], 0);

end;

end.
