unit udmConexaoDAO;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird;

type
  TdmConexao = class(TDataModule)
    dbConexao: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  with dbConexao do
  begin
    ConnectionName := 'FBConnection';
    DriverName := 'Firebird';
    GetDriverFunc := 'getSQLDriverINTERBASE';
    LibraryName := 'dbxfb.dll';
    KeepConnection := True;
    LoginPrompt := False;
    with Params do
    begin
      Add('Drivername=Firebird');
      Add('Database='+'C:\Users\lucas.marques\Documents\RAD Studio\Projects\ProjetoBase\Banco\'+'BASE.FDB');
      Add('User_name=SYSDBA');
      Add('Password=VECTORDBA');
    end;
    Connected:=True;
    VendorLib:='fbclient.dll';
  end;
end;

end.
