program NovoMVC;

uses
  Vcl.Forms,
  uPrincipalView in 'View\uPrincipalView.pas' {frmPrincipal},
  uModelConsulta in 'View\Modelo\uModelConsulta.pas' {frmModelConsulta},
  uModeloCad in 'View\Modelo\uModeloCad.pas' {frmModeloCadastro},
  udmConexaoDAO in 'DAO\udmConexaoDAO.pas' {dmConexao: TDataModule},
  uCadClienteView in 'View\uCadClienteView.pas' {frmCadCliente},
  uClienteModel in 'Model\uClienteModel.pas',
  uClienteDAO in 'DAO\uClienteDAO.pas' {clienteDAO: TDataModule},
  uClienteController in 'Controller\uClienteController.pas',
  uPesqClienteView in 'View\uPesqClienteView.pas' {frmPesqCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmModelConsulta, frmModelConsulta);
  Application.CreateForm(TfrmModeloCadastro, frmModeloCadastro);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TclienteDAO, clienteDAO);
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  Application.Run;
end.
