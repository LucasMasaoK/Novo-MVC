object frmModelConsulta: TfrmModelConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta de '
  ClientHeight = 308
  ClientWidth = 523
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
    Top = 250
    Width = 523
    Height = 58
    Align = alBottom
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 65
    Align = alTop
    TabOrder = 1
    object editPesquisa: TLabeledEdit
      Left = 16
      Top = 23
      Width = 265
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Pesquisa:'
      TabOrder = 0
    end
    object btnPesquisar: TBitBtn
      Left = 312
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
    end
    object btnSelecionar: TBitBtn
      Left = 408
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 523
    Height = 185
    Align = alClient
    DataSource = dtsGrid
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dtsGrid: TDataSource
    Left = 408
    Top = 184
  end
end
