unit uModelConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  ppDB, ppDBPipe, ppParameter, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmModelConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dtsGrid: TDataSource;
    DBGrid1: TDBGrid;
    editPesquisa: TLabeledEdit;
    btnPesquisar: TBitBtn;
    btnSelecionar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelConsulta: TfrmModelConsulta;

implementation

{$R *.dfm}



end.
