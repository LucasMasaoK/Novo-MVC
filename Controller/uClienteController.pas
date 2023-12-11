unit uClienteController;

interface

uses uClienteModel, System.SysUtils, Data.SqlExpr, Datasnap.DBClient;

type
  TClienteController = class
  private
    FClienteModel: TClienteModel;

  public
    property ClienteModel: TClienteModel read FClienteModel write FClienteModel;
    function getID: integer;
    function inserir: Boolean;
    function pesquisar(nome: string): TClientDataSet;
    function deletar: Boolean;
    constructor Create;
    destructor Destroy; Override;

  end;

implementation

{ TClienteController }

constructor TClienteController.Create;
begin
  FClienteModel := TClienteModel.Create;
end;

function TClienteController.deletar: Boolean;
begin
  Result:= ClienteModel.deletar;
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(FClienteModel);
  inherited;
end;

function TClienteController.getID: integer;
begin
  Result := FClienteModel.getID;
end;

function TClienteController.inserir: Boolean;
begin
  Result := FClienteModel.inserir;
end;

function TClienteController.pesquisar(nome: string): TClientDataSet;
begin
  Result:=FClienteModel.pesquisar(nome);
end;

end.
