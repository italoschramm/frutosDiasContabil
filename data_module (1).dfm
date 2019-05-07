object dm: Tdm
  OldCreateOrder = False
  Height = 528
  Width = 672
  object q_schemas: TADOQuery
    AutoCalcFields = False
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select upper(nsu.schema_name) schema_name, description, principa' +
        'l'#11
      'from sys.nbs_schema ns, sys.nbs_schema_user nsu'#11
      'where ns.schema_name = nsu.schema_name'#11
      ' and schema_user = user'#11
      'order by schema_name')
    Left = 40
    Top = 32
    object q_schemasSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
    end
    object q_schemasDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object q_schemasPRINCIPAL: TWideStringField
      FieldName = 'PRINCIPAL'
      Size = 1
    end
  end
  object ds_schemas: TDataSource
    DataSet = q_schemas
    Left = 48
    Top = 136
  end
  object conexao: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA;Password=MAOP2307;User ID=NBS;Data Source=NBS;P' +
      'ersist Security Info=True'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDAORA'
    Left = 48
    Top = 264
  end
  object q_consulta: TADOQuery
    AutoCalcFields = False
    Connection = conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'data1'
        Attributes = [paNullable]
        DataType = ftWideString
        Precision = 231
        Size = 999
        Value = Null
      end
      item
        Name = 'data2'
        Attributes = [paNullable]
        DataType = ftWideString
        Precision = 231
        Size = 999
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM (SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VAL' +
        'OR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, B.COD_FABRICA F' +
        'ROM LANCAMENTO_CONTABIL A, CONTA_CONTABIL B '#11
      
        'WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC =' +
        ' 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0) AND'#11
      
        '(A.CONTA_DEBITO = B.COD_CONTABIL OR A.CONTA_CREDITO = B.COD_CONT' +
        'ABIL) AND B.COD_FABRICA <> 0 AND A.COD_GRUPO_PC = B.COD_GRUPO_PC' +
        #11
      
        'AND (COD_FABRICA = 11 OR COD_FABRICA = 13 OR COD_FABRICA = 15 OR' +
        ' COD_FABRICA = 20 OR COD_FABRICA = 21 OR COD_FABRICA = 22 OR COD' +
        '_FABRICA = 23 OR COD_FABRICA = 24'#11
      
        'OR COD_FABRICA = 25 OR COD_FABRICA = 27 OR COD_FABRICA = 29 OR C' +
        'OD_FABRICA = 33 OR COD_FABRICA = 51 OR COD_FABRICA = 57 OR'#11
      
        'COD_FABRICA = 60 OR COD_FABRICA = 61 OR COD_FABRICA = 63 OR COD_' +
        'FABRICA = 64 OR COD_FABRICA = 65 OR COD_FABRICA = 66 OR COD_FABR' +
        'ICA = 67 OR COD_FABRICA = 68 OR'#11
      
        'COD_FABRICA = 69 OR COD_FABRICA = 70 OR COD_FABRICA = 71 OR COD_' +
        'FABRICA = 72 OR COD_FABRICA = 74 OR COD_FABRICA = 75 OR'#11
      
        'COD_FABRICA = 76 OR COD_FABRICA = 77 OR COD_FABRICA = 78 OR COD_' +
        'FABRICA = 79 OR COD_FABRICA = 80 OR COD_FABRICA = 81 OR COD_FABR' +
        'ICA = 82 OR COD_FABRICA = 83 OR COD_FABRICA = 84 OR'#11
      
        'COD_FABRICA = 85 OR COD_FABRICA = 87 OR COD_FABRICA = 88 OR COD_' +
        'FABRICA = 89 OR COD_FABRICA = 90 OR COD_FABRICA = 91 OR'#11
      'COD_FABRICA = 92)'#11
      
        'GROUP BY (A.CONTA_DEBITO, A.CONTA_CREDITO, A.CCUSTO_DEBITO, A.CC' +
        'USTO_CREDITO, B.COD_FABRICA) )')
    Left = 40
    Top = 336
    object q_consultaCONTA_DEBITO: TStringField
      FieldName = 'CONTA_DEBITO'
    end
    object q_consultaCONTA_CREDITO: TStringField
      FieldName = 'CONTA_CREDITO'
    end
    object q_consultaVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object q_consultaCCUSTO_DEBITO: TIntegerField
      FieldName = 'CCUSTO_DEBITO'
    end
    object q_consultaCCUSTO_CREDITO: TIntegerField
      FieldName = 'CCUSTO_CREDITO'
    end
    object q_consultaCOD_FABRICA: TIntegerField
      FieldName = 'COD_FABRICA'
    end
  end
  object q_aux: TADOQuery
    AutoCalcFields = False
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 48
    Top = 200
  end
  object conexao_sql: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=maop2307;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=frutosdias;Data Source=10.3.122.16'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 224
  end
end
