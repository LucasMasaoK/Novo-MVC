unit uClienteDAO;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, SimpleDS,
  uClienteModel, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider;

type
  TclienteDAO = class(TDataModule)
    sdsInserir: TSimpleDataSet;
    sqlPesquisar: TSQLQuery;
    cdsPesquisar: TClientDataSet;
    dspPesquisar: TDataSetProvider;
    sdsDeletar: TSimpleDataSet;
  private

  public
    function getID: integer;
    function inserir(oCliente: TClienteModel): Boolean;
    function pesquisar(nome: string): TClientDataSet;
    function deletar(codigo: integer): Boolean;
  end;

var
  clienteDAO: TclienteDAO;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses udmConexaoDAO;

{$R *.dfm}
{ TclienteDAO }

function TclienteDAO.deletar(codigo: integer): Boolean;
begin
  with sdsDeletar.DataSet.Params do
  begin
    ParamByName('ID').AsInteger := codigo;
  end;
  try
    sdsDeletar.Execute;
    Result := True;
  except
    Result := False
  end;

end;

function TclienteDAO.getID: integer;
var
  sqlQuery: TSQLQuery;
begin
  sqlQuery := TSQLQuery.Create(nil);
  try
    with sqlQuery do
    begin
      SQLConnection := dmConexao.dbConexao;
      CommandText := 'SELECT coalesce(MAX(ID),0) + 1 AS ID FROM cliente';
      Open;
      Result := FieldByName('ID').AsInteger;
    end;
  finally
    FreeAndNil(sqlQuery);
  end;
end;

function TclienteDAO.inserir(oCliente: TClienteModel): Boolean;
begin
  with sdsInserir.DataSet.Params, oCliente do
  begin
    ParamByName('ID').AsInteger := ID;
    ParamByName('NOME').AsString := nome;
    ParamByName('TIPO').AsString := Tipo;
    ParamByName('DOCUMENTO').AsString := Documento;
    ParamByName('TELEFONE').AsString := Telefone;
  end;
  try
    sdsInserir.Execute;
    Result := True;
  except
    Result := False;
  end;
end;

function TclienteDAO.pesquisar(nome: string): TClientDataSet;
begin
  with cdsPesquisar do
  begin
    cdsPesquisar.Close;
    cdsPesquisar.Params.ParamByName('NOME').AsString := nome + '%';
    cdsPesquisar.Open;
    cdsPesquisar.First;
  end;
  Result := cdsPesquisar;
end;

end.
