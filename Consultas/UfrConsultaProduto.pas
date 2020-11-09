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
    QryFornecedorprocodId: TAutoIncField;
    QryFornecedorprodesc: TStringField;
    QryFornecedorUNIDADE: TIntegerField;
    QryFornecedorVALOR: TFloatField;
    QryFornecedorPESO: TFloatField;
    QryFornecedorCODBARRA: TIntegerField;
    QryFornecedorfornecedor: TStringField;
    QryFornecedorTAMANHO: TStringField;
    QryFornecedorMARCA: TStringField;
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

end.
