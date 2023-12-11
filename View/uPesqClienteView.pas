unit uPesqClienteView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TTela = (oCliente, oFornecedor);

  TfrmPesqCliente = class(TfrmModelConsulta)
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    procedure selecionar;
  public
    FTela: TTela;

  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

{$R *.dfm}

uses uClienteController, uClienteDAO, uCadClienteView;

procedure TfrmPesqCliente.btnPesquisarClick(Sender: TObject);
var
  oClienteController: TClienteController;
begin
  inherited;
  oClienteController := TClienteController.Create;
  try
    oClienteController.pesquisar(editPesquisa.Text);
    dtsGrid.DataSet := oClienteController.pesquisar(editPesquisa.Text);
  finally

  end;

end;

procedure TfrmPesqCliente.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  selecionar();
end;

procedure TfrmPesqCliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  selecionar();
end;

procedure TfrmPesqCliente.selecionar;
begin
 with dtsGrid.DataSet, frmCadCliente do
  begin
    editCodigo.Text := inttoStr(FieldbyName('ID').AsInteger);
    editNome.Text := FieldbyName('NOME').AsString;
    editTipo.Text := FieldbyName('TIPO').AsString;
    editDocumento.Text := FieldbyName('DOCUMENTO').AsString;
    editTelefone.Text := FieldbyName('TELEFONE').AsString;
  end;
  frmPesqCliente.Close;
end;

end.
