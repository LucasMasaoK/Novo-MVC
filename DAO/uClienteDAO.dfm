object clienteDAO: TclienteDAO
  OldCreateOrder = False
  Height = 223
  Width = 330
  object sdsInserir: TSimpleDataSet
    Aggregates = <>
    Connection = dmConexao.dbConexao
    DataSet.CommandText = 
      'insert into cliente (id, nome, tipo, documento, telefone)'#13#10'value' +
      's (:id, :nome, :tipo, :documento, :telefone)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'documento'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'telefone'
        ParamType = ptInput
      end>
    Params = <>
    Left = 216
    Top = 88
  end
  object sqlPesquisar: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from cliente where nome like  :nome')
    SQLConnection = dmConexao.dbConexao
    Left = 32
    Top = 40
  end
  object cdsPesquisar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisar'
    Left = 96
    Top = 144
  end
  object dspPesquisar: TDataSetProvider
    DataSet = sqlPesquisar
    Left = 32
    Top = 104
  end
  object sdsDeletar: TSimpleDataSet
    Aggregates = <>
    Connection = dmConexao.dbConexao
    DataSet.CommandText = 'delete from cliente'#13#10' where (id = :id)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    Params = <>
    Left = 272
    Top = 88
  end
end
