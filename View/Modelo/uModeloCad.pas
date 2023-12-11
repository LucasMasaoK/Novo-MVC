unit uModeloCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TOperacao = (opNovo, opEditar, opPesquisar);
  TfrmModeloCadastro = class(TForm)
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnPesquisar: TBitBtn;
    btnDeletar: TBitBtn;
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private

  public
     FOperacao : TOperacao;
  end;

var
  frmModeloCadastro: TfrmModeloCadastro;

implementation

{$R *.dfm}

procedure TfrmModeloCadastro.btnEditarClick(Sender: TObject);
begin
FOperacao:=opEditar;
end;

procedure TfrmModeloCadastro.btnNovoClick(Sender: TObject);
begin
FOperacao:=opNovo;
end;

end.
