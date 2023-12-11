object frmModeloCadastro: TfrmModeloCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de'
  ClientHeight = 368
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 673
    Height = 72
    Align = alBottom
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TBitBtn
      Left = 119
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnCancelar: TBitBtn
      Left = 228
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnSalvar: TBitBtn
      Left = 454
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Salvar'
      TabOrder = 3
    end
    object btnPesquisar: TBitBtn
      Left = 565
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 4
    end
    object btnDeletar: TBitBtn
      Left = 341
      Top = 16
      Width = 89
      Height = 41
      Caption = 'Deletar'
      TabOrder = 5
    end
  end
end
