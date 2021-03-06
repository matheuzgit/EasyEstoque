unit UfrConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TFrmConsProduto = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    QryProduto: TADOQuery;
    QryFornecedor: TADOQuery;
    QryProdutoprocodId: TAutoIncField;
    QryProdutoprodesc: TStringField;
    QryProdutoUNIDADE: TIntegerField;
    QryProdutoVALOR: TFloatField;
    QryProdutoPESO: TFloatField;
    QryProdutoCODBARRA: TIntegerField;
    QryProdutofornecedor: TStringField;
    QryProdutoTAMANHO: TStringField;
    QryProdutoMARCA: TStringField;
    DsProduto: TDataSource;
    DsProdutoFornecedor: TDataSource;
    QryCons: TADOQuery;
    DsCons: TDataSource;
    QryConsCNPJ: TStringField;
    QryConsNOMEFANTASIA: TStringField;
    QryConsRAZAOSOCIAL: TStringField;
    QryConsSEGMENTO: TStringField;
    QryConsRUA: TStringField;
    QryConsNUMERO: TIntegerField;
    QryConsUF: TStringField;
    QryConsCOMPLEMENTO: TStringField;
    QryConsCIDADE: TStringField;
    QryConsCEP: TIntegerField;
    QryConsEMAIL: TStringField;
    QryConsFIXO: TStringField;
    QryConsMOVEL: TStringField;
    QryConsprocodId: TAutoIncField;
    QryConsprodesc: TStringField;
    QryConsUNIDADE: TIntegerField;
    QryConsVALOR: TFloatField;
    QryConsPESO: TFloatField;
    QryConsCODBARRA: TIntegerField;
    QryConsfornecedor: TStringField;
    QryConsTAMANHO: TStringField;
    QryConsMARCA: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsProduto: TFrmConsProduto;

implementation

{$R *.dfm}

uses Udados;

procedure TFrmConsProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryProduto.close;
  QryFornecedor.close;
  QryCons.close;
end;

procedure TFrmConsProduto.FormCreate(Sender: TObject);
begin
  QryProduto.Open;
  QryFornecedor.Open;
end;

procedure TFrmConsProduto.SpeedButton1Click(Sender: TObject);
begin
  QryCons.Close;
  QryCons.SQL.Clear;
  QryCons.SQL.Add('select * from produto p, fornecedor f');

  if (DBLookupComboBox1.Text <> '') and (DBLookupComboBox2.Text <> '') then
    QryCons.SQL.Add('where')
  else
    QryCons.Open;
    Exit;

  if (DBLookupComboBox1.Text <> '') then
    QryCons.SQL.Add('f.razaosocial = '''+ DBLookupComboBox1.Text +'''');

  if (DBLookupComboBox2.Text <> '') and (DBLookupComboBox1.Text = '')then
    raise Exception.Create('Informe o Fornecedor')
  else
    QryCons.SQL.Add('And');

  if (DBLookupComboBox2.Text <> '') then
    QryCons.SQL.Add('p.prodesc = '''+ DBLookupComboBox2.Text +'''');
  QryCons.Open;

end;

end.
