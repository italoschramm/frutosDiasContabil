object dm: Tdm
  OldCreateOrder = False
  Height = 729
  Width = 2656
  object ds_schemas: TDataSource
    DataSet = q_schemas
    Left = 40
    Top = 232
  end
  object conexao: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL;Password=FD1853;Persist Security Info=True;User' +
      ' ID=NBS;Data Source=nbs'
    KeepConnection = False
    LoginPrompt = False
    Left = 48
    Top = 152
  end
  object conexao_sql: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=maop2307;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=frutosdias;Data Source=10.3.122.16;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=FD-CPD-004;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 16
  end
  object q_pagos: TADOQuery
    Connection = conexao_sql
    Parameters = <
      item
        Name = 'data1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'data2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM FLX_PREVISAO WHERE DATA >= :data1 AND DATA <= :dat' +
        'a2')
    Left = 240
    Top = 14
  end
  object q_historico: TADOQuery
    Connection = conexao_sql
    Parameters = <
      item
        Name = 'data1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'data2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM FLX_PREVISAO WHERE '
      'DATA >= :data1 AND DATA <= :data2')
    Left = 328
    Top = 14
  end
  object q_acesso: TADOQuery
    Connection = conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM TELAS_ACESSO WHERE USUARIO = '#39'ITALO.SCHRAMM'#39' AND I' +
        'DTELA = 1')
    Left = 144
    Top = 16
  end
  object q_schemas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'select upper(nsu.schema_name) schema_name, description, principa' +
        'l'
      ''
      'from sys.nbs_schema ns, sys.nbs_schema_user nsu'
      ''
      'where ns.schema_name = nsu.schema_name'
      ''
      'and schema_user = user'
      ''
      'order by schema_name')
    Left = 152
    Top = 232
    object q_schemasSCHEMA_NAME: TStringField
      FieldName = 'SCHEMA_NAME'
      Origin = 'SCHEMA_NAME'
    end
    object q_schemasDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object q_schemasPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Origin = 'PRINCIPAL'
      Size = 1
    end
  end
  object q_aux: TFDQuery
    Connection = conexao_oracle
    Left = 152
    Top = 296
  end
  object conexao_oracle: TFDConnection
    Params.Strings = (
      
        'Database=(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP' +
        ')(HOST = 10.3.122.7)(PORT = 1521)))(CONNECT_DATA =(SERVER = DEDI' +
        'CATED)(SERVICE_NAME = frutos)))'
      'User_Name=NBS'
      'Password=FD1853'
      'DriverID=Ora')
    Connected = True
    LoginPrompt = False
    Left = 160
    Top = 368
  end
  object q_consulta: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT A.CONTA_DEBITO, A.CONTA_CREDITO, SUM(A.VAL' +
        'OR) AS VALOR, A.CCUSTO_DEBITO, A.CCUSTO_CREDITO, '
      'B.COD_FABRICA, B.NATUREZA, B.COD_FABRICA_A '
      'FROM LANCAMENTO_CONTABIL A, CONTA_CONTABIL B '
      
        'WHERE A.DATA >= :data1 and A.DATA <= :data2 AND A.COD_GRUPO_PC =' +
        ' 25 AND (A.CCUSTO_DEBITO <> 0 OR A.CCUSTO_CREDITO <> 0) AND'
      
        '(A.CONTA_DEBITO = B.COD_CONTABIL OR A.CONTA_CREDITO = B.COD_CONT' +
        'ABIL) AND B.COD_FABRICA <> 0 AND A.COD_GRUPO_PC = B.COD_GRUPO_PC'
      
        'GROUP BY (A.CONTA_DEBITO, A.CONTA_CREDITO, A.CCUSTO_DEBITO, A.CC' +
        'USTO_CREDITO, B.COD_FABRICA, B.NATUREZA, B.COD_FABRICA_A) )')
    Left = 48
    Top = 344
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DATA2'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object q_consultaCONTA_DEBITO: TStringField
      FieldName = 'CONTA_DEBITO'
      Origin = 'CONTA_DEBITO'
    end
    object q_consultaCONTA_CREDITO: TStringField
      FieldName = 'CONTA_CREDITO'
      Origin = 'CONTA_CREDITO'
    end
    object q_consultaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 38
      Size = 38
    end
    object q_consultaCCUSTO_DEBITO: TBCDField
      FieldName = 'CCUSTO_DEBITO'
      Origin = 'CCUSTO_DEBITO'
      Precision = 3
      Size = 0
    end
    object q_consultaCCUSTO_CREDITO: TBCDField
      FieldName = 'CCUSTO_CREDITO'
      Origin = 'CCUSTO_CREDITO'
      Precision = 3
      Size = 0
    end
    object q_consultaCOD_FABRICA: TBCDField
      FieldName = 'COD_FABRICA'
      Origin = 'COD_FABRICA'
      Precision = 5
      Size = 0
    end
    object q_consultaNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA'
      Size = 1
    end
    object q_consultaCOD_FABRICA_A: TStringField
      FieldName = 'COD_FABRICA_A'
      Origin = 'COD_FABRICA_A'
      Size = 1
    end
  end
  object q_realizado_saida_diversos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      
        '(COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'11234522000' +
        '174'#39' AND COD_CLIENTE <> '#39'394460005887'#39' '
      
        'AND COD_CLIENTE <> '#39'13927801000491'#39' AND COD_CLIENTE <> '#39'36030500' +
        '0104'#39' AND'
      
        'COD_CLIENTE <> '#39'13937073000156'#39' AND COD_CLIENTE <> '#39'299790360001' +
        '40'#39' AND COD_CLIENTE <> '#39'13937073000318'#39' AND'
      
        'COD_CLIENTE <> '#39'13927801000149'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND'
      
        'COD_CLIENTE <> '#39'3420926008966'#39' AND COD_CLIENTE <> '#39'7436040000120' +
        #39' AND COD_CLIENTE <> '#39'2348447000262'#39' AND'
      
        'COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815700121' +
        '5'#39' AND COD_CLIENTE <> '#39'33000118000500'#39'AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND'
      'COD_CLIENTE <> '#39'91088328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND COD_CLIENTE <> '#39'59275' +
        '792008991'#39
      
        'AND COD_CLIENTE <> '#39'59275792002799'#39' AND COD_CLIENTE <> '#39'23725486' +
        '549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AND COD_CLIENTE <> '#39'2156068' +
        '4534'#39')  AND  (COD_NATUREZA_RECEITA_DESPESA <> 202 AND COD_NATURE' +
        'ZA_RECEITA_DESPESA <> 143 AND COD_NATUREZA_RECEITA_DESPESA <> 15' +
        '0 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 144 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 145 AND COD_NATUREZA_RECEITA_DESPESA <> 146 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 215 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 216 AND COD_NATUREZA_RECEITA_DESPESA <> 147 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 148 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 149 AND COD_NATUREZA_RECEITA_DESPESA <> 214)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      'UNION ALL'
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      
        '(COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'11234522000' +
        '174'#39' AND COD_CLIENTE <> '#39'394460005887'#39' '
      
        'AND COD_CLIENTE <> '#39'13927801000491'#39' AND COD_CLIENTE <> '#39'36030500' +
        '0104'#39' AND'
      
        'COD_CLIENTE <> '#39'13937073000156'#39' AND COD_CLIENTE <> '#39'299790360001' +
        '40'#39' AND COD_CLIENTE <> '#39'13937073000318'#39' AND'
      
        'COD_CLIENTE <> '#39'13927801000149'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND'
      
        'COD_CLIENTE <> '#39'3420926008966'#39' AND COD_CLIENTE <> '#39'7436040000120' +
        #39' AND COD_CLIENTE <> '#39'2348447000262'#39' AND'
      
        'COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815700121' +
        '5'#39' AND COD_CLIENTE <> '#39'33000118000500'#39'AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND'
      'COD_CLIENTE <> '#39'91088328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND COD_CLIENTE <> '#39'59275' +
        '792008991'#39
      
        'AND COD_CLIENTE <> '#39'59275792002799'#39' AND COD_CLIENTE <> '#39'23725486' +
        '549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AND COD_CLIENTE <> '#39'2156068' +
        '4534'#39
      
        ') AND (COD_NATUREZA_RECEITA_DESPESA <> 202 AND COD_NATUREZA_RECE' +
        'ITA_DESPESA <> 143 AND COD_NATUREZA_RECEITA_DESPESA <> 150 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 144 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 145 AND COD_NATUREZA_RECEITA_DESPESA <> 146 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 215 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 216 AND COD_NATUREZA_RECEITA_DESPESA <> 147 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 148 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 149 AND COD_NATUREZA_RECEITA_DESPESA <> 214)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO'
      ''
      '')
    Left = 56
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DATA2'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DATA3'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DATA4'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object q_saida_diversos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA <> 202 AND COD_NATUREZA_RECE' +
        'ITA_DESPESA <> 143 AND COD_NATUREZA_RECEITA_DESPESA <> 150 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 144 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 145 AND COD_NATUREZA_RECEITA_DESPESA <> 146 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 215 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 216 AND COD_NATUREZA_RECEITA_DESPESA <> 147 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 148 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 149 AND COD_NATUREZA_RECEITA_DESPESA <> 214)'
      'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3) AND '
      
        '(COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'11234522000' +
        '174'#39' AND COD_CLIENTE <> '#39'394460005887'#39' '
      
        'AND COD_CLIENTE <> '#39'13927801000491'#39' AND COD_CLIENTE <> '#39'36030500' +
        '0104'#39' AND'
      
        'COD_CLIENTE <> '#39'13937073000156'#39' AND COD_CLIENTE <> '#39'299790360001' +
        '40'#39' AND COD_CLIENTE <> '#39'13937073000318'#39' AND'
      
        'COD_CLIENTE <> '#39'13927801000149'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND'
      
        'COD_CLIENTE <> '#39'3420926008966'#39' AND COD_CLIENTE <> '#39'7436040000120' +
        #39' AND COD_CLIENTE <> '#39'2348447000262'#39' AND'
      
        'COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815700121' +
        '5'#39' AND COD_CLIENTE <> '#39'33000118000500'#39'AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND'
      'COD_CLIENTE <> '#39'91088328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND COD_CLIENTE <> '#39'59275' +
        '792008991'#39
      
        'AND COD_CLIENTE <> '#39'59275792002799'#39' AND COD_CLIENTE <> '#39'23725486' +
        '549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AND COD_CLIENTE <> '#39'2156068' +
        '4534'#39')  AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 56
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_consorcio: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 202 OR B.COD_NATUREZA_RECEITA_DE' +
        'SPESA = 203)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 202 OR B.COD_NATUREZA_RECEITA_DESPESA ' +
        '= 203)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 200
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_consorcio: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE COD_NATUREZA_RECEITA_DESPESA = 202 AND DATA_VENCIMENTO >= ' +
        ':data1 AND DATA_VENCIMENTO <= :data2'
      'AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3) AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 200
    Top = 488
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_media_saida_diversos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR FROM CONTA_PAG' +
        'AR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA <> 202 AND COD_NATUREZA_RECE' +
        'ITA_DESPESA <> 143 AND COD_NATUREZA_RECEITA_DESPESA <> 150 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 144 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 145 AND COD_NATUREZA_RECEITA_DESPESA <> 146 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 215 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 216 AND COD_NATUREZA_RECEITA_DESPESA <> 147 AND'
      
        'COD_NATUREZA_RECEITA_DESPESA <> 148 AND COD_NATUREZA_RECEITA_DES' +
        'PESA <> 149 AND COD_NATUREZA_RECEITA_DESPESA <> 214)'
      
        ' AND TRUNC(DATA_QUITACAO) >= :data1 AND TRUNC(DATA_QUITACAO) <= ' +
        ':data2 AND '
      
        '(COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'11234522000' +
        '174'#39' AND COD_CLIENTE <> '#39'394460005887'#39' '
      
        'AND COD_CLIENTE <> '#39'13927801000491'#39' AND COD_CLIENTE <> '#39'36030500' +
        '0104'#39' AND'
      
        'COD_CLIENTE <> '#39'13937073000156'#39' AND COD_CLIENTE <> '#39'299790360001' +
        '40'#39' AND COD_CLIENTE <> '#39'13937073000318'#39' AND'
      
        'COD_CLIENTE <> '#39'13927801000149'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND'
      
        'COD_CLIENTE <> '#39'3420926008966'#39' AND COD_CLIENTE <> '#39'7436040000120' +
        #39' AND COD_CLIENTE <> '#39'2348447000262'#39' AND'
      
        'COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815700121' +
        '5'#39' AND COD_CLIENTE <> '#39'33000118000500'#39'AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND'
      'COD_CLIENTE <> '#39'91088328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND COD_CLIENTE <> '#39'59275' +
        '792008991'#39
      
        'AND COD_CLIENTE <> '#39'59275792002799'#39' AND COD_CLIENTE <> '#39'23725486' +
        '549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AND COD_CLIENTE <> '#39'2156068' +
        '4534'#39') AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 200
    Top = 544
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_venda_direta: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'#11
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 200)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'#11
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 200)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 360
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_venda_direta: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE COD_NATUREZA_RECEITA_DESPESA = 200 AND DATA_VENCIMENTO >= ' +
        ':data1 AND DATA_VENCIMENTO <= :data2 AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 360
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_fornecedor_diversos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 147 OR B.COD_NATUREZA_RECEITA_DE' +
        'SPESA = 148 OR COD_NATUREZA_RECEITA_DESPESA = 149 OR COD_NATUREZ' +
        'A_RECEITA_DESPESA = 214 OR COD_NATUREZA_RECEITA_DESPESA = 150)'
      'AND'
      
        '(COD_CLIENTE <> '#39'23725486549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AN' +
        'D COD_CLIENTE <> '#39'21560684534'#39' AND COD_CLIENTE <> '#39'394460005887'#39 +
        ' AND COD_CLIENTE <> '#39'13927801000491'#39' '
      
        'AND COD_CLIENTE <> '#39'360305000104'#39' AND COD_CLIENTE <> '#39'1393707300' +
        '0156'#39' AND COD_CLIENTE <> '#39'29979036000140'#39' AND COD_CLIENTE <> '#39'13' +
        '937073000318'#39' AND COD_CLIENTE <> '#39'13927801000149'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND'
      
        'COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND COD_CLIENTE <> '#39'3420' +
        '926008966'#39' AND '
      
        'COD_CLIENTE <> '#39'7436040000120'#39' AND COD_CLIENTE <> '#39'2348447000262' +
        #39' AND COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815' +
        '7001215'#39' AND COD_CLIENTE <> '#39'33000118000500'#39' AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND COD_CLIENTE <> '#39'91088' +
        '328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'59275792008991'#39' AND COD_CLIENTE <> '#39'592757920027' +
        '99'#39')'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 147 OR B.COD_NATUREZA_RECEITA_DESPESA ' +
        '= 148 OR COD_NATUREZA_RECEITA_DESPESA = 149 OR COD_NATUREZA_RECE' +
        'ITA_DESPESA = 214 OR COD_NATUREZA_RECEITA_DESPESA = 150)'
      'AND'
      
        '(COD_CLIENTE <> '#39'23725486549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AN' +
        'D COD_CLIENTE <> '#39'21560684534'#39' AND COD_CLIENTE <> '#39'394460005887'#39 +
        ' AND COD_CLIENTE <> '#39'13927801000491'#39' '
      
        'AND COD_CLIENTE <> '#39'360305000104'#39' AND COD_CLIENTE <> '#39'1393707300' +
        '0156'#39' AND COD_CLIENTE <> '#39'29979036000140'#39' AND COD_CLIENTE <> '#39'13' +
        '937073000318'#39' AND COD_CLIENTE <> '#39'13927801000149'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND'
      
        'COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND COD_CLIENTE <> '#39'3420' +
        '926008966'#39' AND '
      
        'COD_CLIENTE <> '#39'7436040000120'#39' AND COD_CLIENTE <> '#39'2348447000262' +
        #39' AND COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815' +
        '7001215'#39' AND COD_CLIENTE <> '#39'33000118000500'#39' AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND COD_CLIENTE <> '#39'91088' +
        '328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'59275792008991'#39' AND COD_CLIENTE <> '#39'592757920027' +
        '99'#39')'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 544
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_fornecedor_diversos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE  (COD_NATUREZA_RECEITA_DESPESA = 147 OR COD_NATUREZA_RECEI' +
        'TA_DESPESA = 148'
      
        'OR COD_NATUREZA_RECEITA_DESPESA = 149 OR COD_NATUREZA_RECEITA_DE' +
        'SPESA = 214 OR COD_NATUREZA_RECEITA_DESPESA = 150'
      ') '
      'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'AND'
      
        '(COD_CLIENTE <> '#39'23725486549'#39' AND COD_CLIENTE <> '#39'4141032549'#39' AN' +
        'D COD_CLIENTE <> '#39'21560684534'#39' AND COD_CLIENTE <> '#39'394460005887'#39 +
        ' AND COD_CLIENTE <> '#39'13927801000491'#39' '
      
        'AND COD_CLIENTE <> '#39'360305000104'#39' AND COD_CLIENTE <> '#39'1393707300' +
        '0156'#39' AND COD_CLIENTE <> '#39'29979036000140'#39' AND COD_CLIENTE <> '#39'13' +
        '937073000318'#39' AND COD_CLIENTE <> '#39'13927801000149'#39' AND'
      
        'COD_CLIENTE <> '#39'47193149000106'#39' AND COD_CLIENTE <> '#39'723737301426' +
        '0'#39' AND COD_CLIENTE <> '#39'60701190000104'#39' AND'
      
        'COD_CLIENTE <> '#39'15139629000194'#39' AND COD_CLIENTE <> '#39'404325440001' +
        '47'#39' AND COD_CLIENTE <> '#39'13504675000110'#39' AND COD_CLIENTE <> '#39'3420' +
        '926008966'#39' AND '
      
        'COD_CLIENTE <> '#39'7436040000120'#39' AND COD_CLIENTE <> '#39'2348447000262' +
        #39' AND COD_CLIENTE <> '#39'33927658000100'#39' AND COD_CLIENTE <> '#39'255815' +
        '7001215'#39' AND COD_CLIENTE <> '#39'33000118000500'#39' AND'
      
        'COD_CLIENTE <> '#39'2558157002459'#39' AND COD_CLIENTE <> '#39'2870783400015' +
        '0'#39' AND COD_CLIENTE <> '#39'11011516000158'#39' AND COD_CLIENTE <> '#39'91088' +
        '328001309'#39' AND'
      
        'COD_CLIENTE <> '#39'59275792008991'#39' AND COD_CLIENTE <> '#39'592757920027' +
        '99'#39
      ')'
      'GROUP BY DATA_VENCIMENTO)')
    Left = 544
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_semi_novos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 145 OR B.COD_NATUREZA_RECEITA_DE' +
        'SPESA = 146)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 145 OR B.COD_NATUREZA_RECEITA_DESPESA ' +
        '= 146)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 728
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_semi_novos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA = 145 OR COD_NATUREZA_RECEIT' +
        'A_DESPESA = 146)'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2  AN' +
        'D '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 728
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_media_saida_semi_novos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR FROM CONTA_PAG' +
        'AR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA = 145 OR COD_NATUREZA_RECEIT' +
        'A_DESPESA = 146)'
      
        'AND TRUNC(DATA_QUITACAO) >= :data1 AND TRUNC(DATA_QUITACAO) <= :' +
        'data2  AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 728
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_veiculos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'#11
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 143 OR B.COD_NATUREZA_RECEITA_DE' +
        'SPESA = 144)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'#11
      ''
      'UNION ALL'#11
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 143 OR B.COD_NATUREZA_RECEITA_DESPESA ' +
        '= 144)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 912
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_veiculos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA = 143 OR COD_NATUREZA_RECEIT' +
        'A_DESPESA = 144)'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2  AN' +
        'D '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 912
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_media_saida_veiculos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR FROM CONTA_PAG' +
        'AR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA = 143 OR COD_NATUREZA_RECEIT' +
        'A_DESPESA = 144) AND TRUNC(DATA_QUITACAO) >= :data1 AND TRUNC(DA' +
        'TA_QUITACAO) <= :data2  AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 912
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_luz: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      
        '(COD_CLIENTE = '#39'15139629000194'#39' OR COD_CLIENTE = '#39'40432544000147' +
        #39' OR COD_CLIENTE = '#39'13504675000110'#39' OR COD_CLIENTE = '#39'3420926008' +
        '966'#39' OR '
      
        'COD_CLIENTE = '#39'7436040000120'#39' OR COD_CLIENTE = '#39'2348447000262'#39' O' +
        'R COD_CLIENTE = '#39'33927658000100'#39' OR COD_CLIENTE = '#39'2558157001215' +
        #39' OR COD_CLIENTE = '#39'33000118000500'#39' OR'
      
        'COD_CLIENTE = '#39'2558157002459'#39' OR COD_CLIENTE = '#39'28707834000150'#39' ' +
        'OR COD_CLIENTE = '#39'11011516000158'#39' OR COD_CLIENTE = '#39'910883280013' +
        '09'#39') AND (COD_NATUREZA_RECEITA_DESPESA = 149)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      
        '(COD_CLIENTE = '#39'15139629000194'#39' OR COD_CLIENTE = '#39'40432544000147' +
        #39' OR COD_CLIENTE = '#39'13504675000110'#39' OR COD_CLIENTE = '#39'3420926008' +
        '966'#39' OR '
      
        'COD_CLIENTE = '#39'7436040000120'#39' OR COD_CLIENTE = '#39'2348447000262'#39' O' +
        'R COD_CLIENTE = '#39'33927658000100'#39' OR COD_CLIENTE = '#39'2558157001215' +
        #39' OR COD_CLIENTE = '#39'33000118000500'#39' OR'
      
        'COD_CLIENTE = '#39'2558157002459'#39' OR COD_CLIENTE = '#39'28707834000150'#39' ' +
        'OR COD_CLIENTE = '#39'11011516000158'#39' OR COD_CLIENTE = '#39'910883280013' +
        '09'#39') AND (COD_NATUREZA_RECEITA_DESPESA = 149)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 1064
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_luz: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR, COD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'15139629000194'#39' OR COD_CLIENTE = '#39'40432544' +
        '000147'#39' OR COD_CLIENTE = '#39'13504675000110'#39' OR COD_CLIENTE = '#39'3420' +
        '926008966'#39' OR '
      
        'COD_CLIENTE = '#39'7436040000120'#39' OR COD_CLIENTE = '#39'2348447000262'#39' O' +
        'R COD_CLIENTE = '#39'33927658000100'#39' OR COD_CLIENTE = '#39'2558157001215' +
        #39' OR COD_CLIENTE = '#39'33000118000500'#39' OR'
      
        'COD_CLIENTE = '#39'2558157002459'#39' OR COD_CLIENTE = '#39'28707834000150'#39' ' +
        'OR COD_CLIENTE = '#39'11011516000158'#39' OR COD_CLIENTE = '#39'910883280013' +
        '09'#39') '
      
        'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND ' +
        'COD_CLIENTE = :cod_cliente AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO, COD_CLIENTE)')
    Left = 1064
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_saida_luz2: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR, COD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'15139629000194'#39' OR COD_CLIENTE = '#39'40432544' +
        '000147'#39' OR COD_CLIENTE = '#39'13504675000110'#39' OR COD_CLIENTE = '#39'3420' +
        '926008966'#39' OR '
      
        'COD_CLIENTE = '#39'7436040000120'#39' OR COD_CLIENTE = '#39'2348447000262'#39' O' +
        'R COD_CLIENTE = '#39'33927658000100'#39' OR COD_CLIENTE = '#39'2558157001215' +
        #39' OR COD_CLIENTE = '#39'33000118000500'#39' OR'
      
        'COD_CLIENTE = '#39'2558157002459'#39' OR COD_CLIENTE = '#39'28707834000150'#39' ' +
        'OR COD_CLIENTE = '#39'11011516000158'#39' OR COD_CLIENTE = '#39'910883280013' +
        '09'#39') '
      'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2  AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'GROUP BY DATA_VENCIMENTO, COD_CLIENTE)')
    Left = 1064
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_historico_saida_luz: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, VALOR_PARCELA AS VALOR, C' +
        'OD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'15139629000194'#39' OR COD_CLIENTE = '#39'40432544' +
        '000147'#39' OR COD_CLIENTE = '#39'13504675000110'#39' OR COD_CLIENTE = '#39'3420' +
        '926008966'#39' OR '
      
        'COD_CLIENTE = '#39'7436040000120'#39' OR COD_CLIENTE = '#39'2348447000262'#39' O' +
        'R COD_CLIENTE = '#39'33927658000100'#39' OR COD_CLIENTE = '#39'2558157001215' +
        #39' OR COD_CLIENTE = '#39'33000118000500'#39' OR'
      
        'COD_CLIENTE = '#39'2558157002459'#39' OR COD_CLIENTE = '#39'28707834000150'#39' ' +
        'OR COD_CLIENTE = '#39'11011516000158'#39' OR COD_CLIENTE = '#39'910883280013' +
        '09'#39') '
      ' AND DATA_QUITACAO >= :data1 AND DATA_QUITACAO <= :data2 AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))'
      '')
    Left = 1344
    Top = 576
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_aluguel: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      '(COD_CLIENTE = '#39'11234522000174'#39')'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      '(COD_CLIENTE = '#39'11234522000174'#39') '
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 1208
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_aluguel: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR, COD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE COD_CLIENTE = '#39'11234522000174'#39' AND DATA_VENCIMENTO >= :dat' +
        'a1 AND DATA_VENCIMENTO <= :data2 AND'
      'COD_CLIENTE = :cod_cliente AND '
      
        '(COD_STATUS =:cod_status1 OR COD_STATUS = :cod_status2 OR COD_ST' +
        'ATUS = :cod_status3) '
      'GROUP BY DATA_VENCIMENTO, COD_CLIENTE)')
    Left = 1208
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_historico_saida_aluguel: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, VALOR_PARCELA AS VALOR, C' +
        'OD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE COD_CLIENTE = '#39'11234522000174'#39' AND DATA_VENCIMENTO >= :dat' +
        'a1 AND DATA_VENCIMENTO <= :data2 AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 1208
    Top = 576
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_impostos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      
        '(COD_CLIENTE = '#39'394460005887'#39' OR COD_CLIENTE = '#39'13927801000491'#39' ' +
        'OR COD_CLIENTE = '#39'360305000104'#39' OR'
      
        'COD_CLIENTE = '#39'13937073000156'#39' OR COD_CLIENTE = '#39'29979036000140'#39 +
        ' OR COD_CLIENTE = '#39'13937073000318'#39' OR'
      
        'COD_CLIENTE = '#39'13927801000149'#39') AND (COD_NATUREZA_RECEITA_DESPES' +
        'A = 149)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      
        '(COD_CLIENTE = '#39'394460005887'#39' OR COD_CLIENTE = '#39'13927801000491'#39' ' +
        'OR COD_CLIENTE = '#39'360305000104'#39' OR'
      
        'COD_CLIENTE = '#39'13937073000156'#39' OR COD_CLIENTE = '#39'29979036000140'#39 +
        ' OR COD_CLIENTE = '#39'13937073000318'#39' OR'
      
        'COD_CLIENTE = '#39'13927801000149'#39') AND (COD_NATUREZA_RECEITA_DESPES' +
        'A = 149)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 1344
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_impostos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'394460005887'#39' OR COD_CLIENTE = '#39'1392780100' +
        '0491'#39' OR COD_CLIENTE = '#39'360305000104'#39' OR'
      
        'COD_CLIENTE = '#39'13937073000156'#39' OR COD_CLIENTE = '#39'29979036000140'#39 +
        ' OR COD_CLIENTE = '#39'13937073000318'#39' OR'
      
        'COD_CLIENTE = '#39'13927801000149'#39' AND COD_CLIENTE = '#39'13927801000491' +
        #39')'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND' +
        ' '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      
        'AND TIPO_DOCUMENTO <> '#39'TR'#39'  AND COD_EMPRESA <> 11 AND COD_EMPRES' +
        'A <> 7'
      'GROUP BY DATA_VENCIMENTO)')
    Left = 1344
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM(SELECT SUM(A.VALOR) AS VALOR, A.DATA FROM LCONTAS ' +
        'A, TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'A.DATA >= :data1 AND A.DATA <= :data2 AND (CONTA_CR <> 528 AND C' +
        'ONTA_CR <> 474 AND CONTA_CR <> 480 AND CONTA_CR <> 501 AND CONTA' +
        '_CR <> 482 AND'
      
        'CONTA_CR <> 526 AND CONTA_CR <> 538 AND CONTA_CR <> 584 AND CONT' +
        'A_CR <> 634 AND CONTA_CR <> 633 AND'
      'CONTA_CR <> 600 AND CONTA_CR <> 546) AND '
      
        '(CONTA_DB = 528 OR CONTA_DB = 474 OR CONTA_DB = 480 OR CONTA_DB ' +
        '= 501 OR CONTA_DB = 482 OR'
      
        'CONTA_DB = 526 OR CONTA_DB = 538 OR CONTA_DB = 584 OR CONTA_DB =' +
        ' 634 OR CONTA_DB = 633 OR'
      'CONTA_DB = 600 OR CONTA_DB = 546)'
      'AND B.COD_EMPRESA_DB = 2'
      'GROUP BY (A.DATA) ORDER BY A.DATA)')
    Left = 1504
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saida_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(A.VALOR) AS VALOR FROM LCONTAS A, TRAN' +
        'SFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'DATA >= :data1 AND DATA <= :data2 AND (CONTA_CR <> 528 AND CONTA' +
        '_CR <> 474 AND CONTA_CR <> 480 AND CONTA_CR <> 501 AND CONTA_CR ' +
        '<> 482 AND'
      
        'CONTA_CR <> 526 AND CONTA_CR <> 538 AND CONTA_CR <> 584 AND CONT' +
        'A_CR <> 634 AND CONTA_CR <> 633 AND'
      'CONTA_CR <> 600 AND CONTA_CR <> 546) AND B.COD_EMPRESA_DB = 2)')
    Left = 1504
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_outros: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      
        '(SELECT SUM(-A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS' +
        ' DATA_QUITACAO'
      'FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(-A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITA' +
        'CAO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546)'
      'GROUP BY A.DATA_BAIXA'
      ''
      'UNION ALL'
      ''
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, TRUNC(DATA) AS DATA_Q' +
        'UITACAO FROM LCONTAS WHERE TRUNC(DATA) >= :data5 AND TRUNC(DATA)' +
        ' <= :data6'
      
        'AND (COD_CONTA_CORRENTE = 528 OR COD_CONTA_CORRENTE = 474 OR COD' +
        '_CONTA_CORRENTE = 480 OR COD_CONTA_CORRENTE = 501 OR COD_CONTA_C' +
        'ORRENTE = 482 OR'
      
        'COD_CONTA_CORRENTE = 526 OR COD_CONTA_CORRENTE = 538 OR COD_CONT' +
        'A_CORRENTE = 584 OR COD_CONTA_CORRENTE = 634 OR COD_CONTA_CORREN' +
        'TE = 633 OR'
      
        'COD_CONTA_CORRENTE = 600 OR COD_CONTA_CORRENTE = 546) AND DB_CR ' +
        '= '#39'D'#39' AND COD_ORIGEM_LANC <> 8'
      'GROUP BY DB_CR, TRUNC(DATA)))'
      'GROUP BY DATA_QUITACAO')
    Left = 1672
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end
      item
        Name = 'DATA5'
        ParamType = ptInput
      end
      item
        Name = 'DATA6'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_emprestimos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      ''
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      
        '(COD_CLIENTE = '#39'47193149000106'#39' OR COD_CLIENTE = '#39'7237373014260'#39 +
        ' OR COD_CLIENTE = '#39'60701190000104'#39')'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      ''
      'UNION ALL'
      ''
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      
        '(COD_CLIENTE = '#39'47193149000106'#39' OR COD_CLIENTE = '#39'7237373014260'#39 +
        ' OR COD_CLIENTE = '#39'60701190000104'#39')'
      'GROUP BY A.DATA_BAIXA)'
      ''
      ''
      ''
      'GROUP BY DATA_QUITACAO')
    Left = 1848
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_emprestimos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'47193149000106'#39' OR COD_CLIENTE = '#39'72373730' +
        '14260'#39' OR COD_CLIENTE = '#39'60701190000104'#39')'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND' +
        ' '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39#11
      ''
      ''
      'GROUP BY DATA_VENCIMENTO)'
      ''
      #11)
    Left = 1848
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_historico_saida_emprestimos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, VALOR_PARCELA AS VALOR, C' +
        'OD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'47193149000106'#39' OR COD_CLIENTE = '#39'72373730' +
        '14260'#39' OR COD_CLIENTE = '#39'60701190000104'#39')'
      'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 1848
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_pecas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      ''
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      
        '(COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'59275792002799' +
        #39')'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      ''
      ''
      ''
      ''
      'UNION ALL'
      ''
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      
        '(COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'59275792002799' +
        #39') '
      'GROUP BY A.DATA_BAIXA)'
      ''
      ''
      ''
      'GROUP BY DATA_QUITACAO'
      ''
      '')
    Left = 2016
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_pecas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'59275792' +
        '002799'#39')'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND' +
        ' '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO)')
    Left = 2016
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_historico_saida_pecas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, VALOR_PARCELA AS VALOR, C' +
        'OD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'59275792' +
        '002799'#39')'
      'AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND'
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 2016
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_salarios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 215)'
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'UNION ALL'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      ''
      ''
      ''
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 215)'
      'GROUP BY A.DATA_BAIXA)'
      'GROUP BY DATA_QUITACAO')
    Left = 2168
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_salarios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO, COD_CLIENTE FROM CONTA_PAGAR '
      'WHERE (COD_NATUREZA_RECEITA_DESPESA = 215)'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2  AN' +
        'D '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      'GROUP BY DATA_VENCIMENTO, COD_CLIENTE)')
    Left = 2168
    Top = 496
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_historico_saida_salarios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, VALOR_PARCELA AS VALOR, C' +
        'OD_CLIENTE FROM CONTA_PAGAR '
      
        'WHERE (COD_NATUREZA_RECEITA_DESPESA = 215) AND TRUNC(DATA_QUITAC' +
        'AO) >= :data1 AND TRUNC(DATA_QUITACAO) <= :data2  AND '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3))')
    Left = 2168
    Top = 568
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_rescisao: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      ''
      ''
      ''
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ''
      ''
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      ''
      ''
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      ''
      ''
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      ''
      ''
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      ''
      ''
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      ''
      ''
      
        'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND (B' +
        '.COD_NATUREZA_RECEITA_DESPESA = 216)'
      ''
      ''
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      ''
      ''
      ''
      'UNION ALL'
      ''
      ''
      ''
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      ''
      ''
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      ''
      ''
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      ''
      ''
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      ''
      ''
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      ''
      ''
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      ''
      ''
      
        'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND (B.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 216)'
      ''
      ''
      'GROUP BY A.DATA_BAIXA)'
      ''
      ''
      'GROUP BY DATA_QUITACAO')
    Left = 2320
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_rescisao: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR_PARCELA) AS VALOR, DATA_VENCIMEN' +
        'TO FROM CONTA_PAGAR '
      ''
      ''
      ''
      ''
      
        'WHERE COD_NATUREZA_RECEITA_DESPESA = 216 AND DATA_VENCIMENTO >= ' +
        ':data1 AND DATA_VENCIMENTO <= :data2 AND '
      ''
      ''
      ''
      ''
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      ''
      ''
      'AND TIPO_DOCUMENTO <> '#39'TR'#39
      ''
      ''
      ''
      'GROUP BY DATA_VENCIMENTO)')
    Left = 2320
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_realizado_saida_socios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'SELECT SUM(VALOR) AS VALOR, DATA_QUITACAO FROM'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        '(SELECT SUM(A.VALOR_PRINCIPAL) AS VALOR, TRUNC(A.DATA_BAIXA) AS ' +
        'DATA_QUITACAO'
      ''
      ''
      ''
      ' FROM BAIXA_CONTA_PAGAR A, CONTA_PAGAR B '
      ''
      ''
      ''
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 AND'
      ''
      ''
      ''
      
        'A.COD_EMPRESA = B.COD_EMPRESA AND A.ANO_PPAG = B.ANO_PPAG AND A.' +
        'LANCAMENTO = B.LANCAMENTO AND A.PARCELA = B.PARCELA AND A.PARCIA' +
        'L = B.PARCIAL AND'
      ''
      ''
      ''
      
        '(A.COD_CONTA_CORRENTE = 528 OR A.COD_CONTA_CORRENTE = 474 OR A.C' +
        'OD_CONTA_CORRENTE = 480 OR A.COD_CONTA_CORRENTE = 501 OR A.COD_C' +
        'ONTA_CORRENTE = 482 OR'
      ''
      ''
      ''
      
        'A.COD_CONTA_CORRENTE = 526 OR A.COD_CONTA_CORRENTE = 538 OR A.CO' +
        'D_CONTA_CORRENTE = 584 OR A.COD_CONTA_CORRENTE = 634 OR A.COD_CO' +
        'NTA_CORRENTE = 633 OR'
      ''
      ''
      ''
      'A.COD_CONTA_CORRENTE = 600 OR A.COD_CONTA_CORRENTE = 546) AND'
      ''
      ''
      ''
      
        '(COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'4141032549'#39' OR CO' +
        'D_CLIENTE = '#39'21560684534'#39') AND (COD_NATUREZA_RECEITA_DESPESA = 1' +
        '49)'
      ''
      ''
      ''
      'GROUP BY TRUNC(A.DATA_BAIXA)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'UNION ALL'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'SELECT SUM(A.VALOR) AS VALOR, TRUNC(A.DATA_BAIXA) AS DATA_QUITAC' +
        'AO'
      ''
      ''
      ''
      
        'FROM BAIXA_ADIANTAMENTO A, ADIANTAMENTO B WHERE A.DATA_BAIXA >= ' +
        ':data3 AND A.DATA_BAIXA <= :data4 AND'
      ''
      ''
      ''
      
        'A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = B.' +
        'COD_EMPRESA AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE AND '
      ''
      ''
      ''
      'A.DATA = B.DATA AND A.LANC = B.LANC AND'
      ''
      ''
      ''
      
        '(A.COD_CONTA_BAIXA = 528 OR A.COD_CONTA_BAIXA = 474 OR A.COD_CON' +
        'TA_BAIXA = 480 OR A.COD_CONTA_BAIXA = 501 OR A.COD_CONTA_BAIXA =' +
        ' 482 OR'
      ''
      ''
      ''
      
        'A.COD_CONTA_BAIXA = 526 OR A.COD_CONTA_BAIXA = 538 OR A.COD_CONT' +
        'A_BAIXA = 584 OR A.COD_CONTA_BAIXA = 634 OR A.COD_CONTA_BAIXA = ' +
        '633 OR'
      ''
      ''
      ''
      'A.COD_CONTA_BAIXA = 600 OR A.COD_CONTA_BAIXA = 546) AND '
      ''
      ''
      ''
      
        '(COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'4141032549'#39' OR CO' +
        'D_CLIENTE = '#39'21560684534'#39') AND (COD_NATUREZA_RECEITA_DESPESA = 1' +
        '49)'
      ''
      ''
      ''
      'GROUP BY A.DATA_BAIXA)'
      ''
      ''
      ''
      'GROUP BY DATA_QUITACAO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 2456
    Top = 432
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saida_socios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR FROM CONTA_PAGAR '
      
        'WHERE (COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'4141032549'#39 +
        ' OR COD_CLIENTE = '#39'21560684534'#39')'
      
        ' AND DATA_VENCIMENTO >= :data1 AND DATA_VENCIMENTO <= :data2 AND' +
        ' '
      
        '(COD_STATUS = :cod_status1 OR COD_STATUS = :cod_status2 OR COD_S' +
        'TATUS = :cod_status3)'
      
        'AND TIPO_DOCUMENTO <> '#39'TR'#39'  AND COD_EMPRESA <> 11 AND COD_EMPRES' +
        'A <> 7'
      'GROUP BY DATA_VENCIMENTO)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 2456
    Top = 504
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS1'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS2'
        ParamType = ptInput
      end
      item
        Name = 'COD_STATUS3'
        ParamType = ptInput
      end>
  end
  object q_saldo_diario: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT (VALOR1.SALDO + VALOR2.TOTAL_NAO_COMP) AS SALDO FROM'
      ''
      '  (SELECT * FROM ( SELECT SALDO_TMP_MOV AS SALDO'
      'FROM CONTA_CORRENTE C,'
      
        '    (SELECT SUM(NVL(S.VALOR_CREDITO,0) - NVL(S.VALOR_DEBITO,0)) ' +
        'AS SALDO_TMP_MOV,'
      
        '            SUM(DECODE(SIGN(S.DATA_FECHOU - NVL(C.DATA_SD_BCO,S.' +
        'DATA_FECHOU-1)),1,'
      
        '                NVL(S.VALOR_CREDITO_BCO,0) - NVL(S.VALOR_DEBITO_' +
        'BCO,0),0)) AS SALDO_TMP_BCO'
      '     FROM SALDO_DIARIO S, CONTA_CORRENTE C'
      '     WHERE S.COD_EMPRESA = C.COD_EMPRESA'
      '       AND S.COD_CONTA_CORRENTE = C.COD_CONTA_CORRENTE'
      '       AND S.COD_CONTA_CORRENTE = :conta1'
      '       AND S.DATA_FECHOU <= :data)'
      'WHERE  C.COD_CONTA_CORRENTE = :conta2) ) VALOR1,'
      ''
      ''
      ''
      '(SELECT NVL(SUM(VALOR),0) AS TOTAL_NAO_COMP'
      'FROM VW_CHEQUE_EMITIDO'
      'WHERE (COD_EMPRESA = 2)'
      '  AND (COD_CONTA_CORRENTE = :conta3)'
      '  AND (DATA_EMISSAO <= :data2)'
      
        '  AND ((NVL(DATA_COMPENSACAO,SYSDATE) > :data3) OR (DATA_COMPENS' +
        'ACAO IS NULL))'
      '  AND ((SITUACAO = '#39'1'#39') OR (SITUACAO = '#39'3'#39'))'
      '  AND (LANC > 0) ) VALOR2')
    Left = 336
    Top = 208
    ParamData = <
      item
        Name = 'CONTA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA2'
        ParamType = ptInput
      end
      item
        Name = 'CONTA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end>
  end
  object q_entradas_diaria_d: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, TRUNC(DATA) AS DATA F' +
        'ROM LCONTAS WHERE TRUNC(DATA) >= :data1 AND TRUNC(DATA) <= :data' +
        '2'
      
        'AND (COD_CONTA_CORRENTE = 528 OR COD_CONTA_CORRENTE = 474 OR COD' +
        '_CONTA_CORRENTE = 480 OR COD_CONTA_CORRENTE = 501 OR COD_CONTA_C' +
        'ORRENTE = 482 OR'
      ''
      ''
      ''
      ''
      
        'COD_CONTA_CORRENTE = 526 OR COD_CONTA_CORRENTE = 538 OR COD_CONT' +
        'A_CORRENTE = 584 OR COD_CONTA_CORRENTE = 634 OR COD_CONTA_CORREN' +
        'TE = 633 OR'
      ''
      ''
      ''
      ''
      
        'COD_CONTA_CORRENTE = 600 OR COD_CONTA_CORRENTE = 546) AND DB_CR ' +
        '= '#39'D'#39' AND COD_ORIGEM_LANC <> 8'
      ''
      ''
      ''
      ''
      'GROUP BY DB_CR, TRUNC(DATA))')
    Left = 336
    Top = 152
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_historico_vendas_veic: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(A.VALOR_PRINCIPAL + NVL(A.VALOR_MULTA,' +
        '0) + NVL(A.VALOR_JURO,0) + NVL(A.SALDO_OUTROS,0) + NVL(A.VALOR_D' +
        'ESP_COBRANCA,0) - NVL(A.VALOR_DESCONTO,0)) AS VALOR  '
      ''
      ''
      'FROM BAIXA_CONTAS_RECEBER A, VW_CRECEBER B, CONTA_CORRENTE C'
      ''
      ''
      
        'WHERE (TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= ' +
        ':data2) AND A.NR_FATURA = B.NR_FATURA AND A.PARCELA = B.PARCELA'
      ''
      ''
      
        'AND A.DATA_EMISSAO = B.DATA_EMISSAO AND B.COD_NATUREZA_RECEITA_D' +
        'ESPESA = 150 AND A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_EMPRESA' +
        ' = 2 AND A.NR_FATURA = B.NR_FATURA'
      ''
      ''
      
        'AND A.COD_CONTA_TESOURARIA = C.COD_CONTA_CORRENTE AND A.COD_EMPR' +
        'ESA_TESOURARIA = C.COD_EMPRESA AND A.COD_TIPO_FATURA = B.COD_TIP' +
        'O_FATURA)')
    Left = 336
    Top = 288
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_gm: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR '
      ''
      'FROM CONTAS_RECEBER '
      ''
      
        'WHERE COD_FORMA_COBRANCA = 267 AND (TRUNC(DATA_VENCIMENTO) >= :d' +
        'ata1 AND TRUNC(DATA_VENCIMENTO) <= :data2) AND COD_EMPRESA = 2'
      ''
      'GROUP BY DATA_VENCIMENTO)')
    Left = 480
    Top = 280
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_diaria_c: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, TRUNC(DATA) AS DATA F' +
        'ROM LCONTAS WHERE TRUNC(DATA) >= :data1 AND TRUNC(DATA) <= :data' +
        '2'
      ''
      ''
      ''
      ''
      
        'AND (COD_CONTA_CORRENTE = 528 OR COD_CONTA_CORRENTE = 474 OR COD' +
        '_CONTA_CORRENTE = 480 OR COD_CONTA_CORRENTE = 501 OR COD_CONTA_C' +
        'ORRENTE = 482 OR'
      ''
      ''
      ''
      ''
      
        'COD_CONTA_CORRENTE = 526 OR COD_CONTA_CORRENTE = 538 OR COD_CONT' +
        'A_CORRENTE = 584 OR COD_CONTA_CORRENTE = 634 OR COD_CONTA_CORREN' +
        'TE = 633 OR'
      ''
      ''
      ''
      ''
      
        'COD_CONTA_CORRENTE = 600 OR COD_CONTA_CORRENTE = 546) AND DB_CR ' +
        '= '#39'C'#39' AND COD_ORIGEM_LANC <> 8'
      ''
      ''
      ''
      ''
      'GROUP BY DB_CR, TRUNC(DATA))')
    Left = 480
    Top = 152
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_seminovos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      ''
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 151 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 151)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'C'#39') AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 151 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 151) '
      ')'
      'GROUP BY COD_CONTA_CORRENTE '
      ''
      '')
    Left = 480
    Top = 208
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_cartoes: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * from (SELECT TRUNC(B.DATA_VENCIMENTO) AS DATA, SUM(B.VA' +
        'LOR) AS VALOR, C.DIAS_VENCIMENTO  FROM CRECEBER_CARTAO A, CRECEB' +
        'ER_CARTAO_PARC B, CARTAO_CREDITO C'
      ''
      
        'WHERE A.COD_CONTROLE_CARTAO = B.COD_CONTROLE_CARTAO AND A.COD_CA' +
        'RTAO_CREDITO = C.COD_CARTAO_CREDITO '
      ''
      
        'AND (TRUNC(B.DATA_VENCIMENTO) >= :data1 AND TRUNC(B.DATA_VENCIME' +
        'NTO) <= :data2)'
      ''
      'AND C.COD_EMPRESA = 2'
      ''
      'GROUP BY TRUNC(B.DATA_VENCIMENTO), C.DIAS_VENCIMENTO)')
    Left = 616
    Top = 280
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_comissao: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR '
      ''
      'FROM CONTAS_RECEBER '
      ''
      
        'WHERE COD_FORMA_COBRANCA = 262 AND (TRUNC(DATA_VENCIMENTO) >= :d' +
        'ata1 AND TRUNC(DATA_VENCIMENTO) <= :data2) AND COD_EMPRESA = 2'
      ''
      'GROUP BY DATA_VENCIMENTO)')
    Left = 616
    Top = 208
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_boleto: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT DATA_VENCIMENTO, SUM(VALOR_PARCELA) AS VAL' +
        'OR'
      'FROM CONTAS_RECEBER '
      
        'WHERE COD_FORMA_COBRANCA = 275 AND (TRUNC(DATA_VENCIMENTO) >= :d' +
        'ata1 AND TRUNC(DATA_VENCIMENTO) <= :data2) AND COD_EMPRESA = 2'
      'GROUP BY DATA_VENCIMENTO)')
    Left = 616
    Top = 120
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_vendas_dinheiro: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT * FROM (SELECT SUM(B.VALOR)  AS VALOR '
      
        'FROM VENDAS A, PAGAMENTO_VENDA B WHERE A.CONTROLE = B.CONTROLE A' +
        'ND A.COD_EMPRESA = 2 AND (TRUNC(A.EMISSAO) >= :data1 AND TRUNC(A' +
        '.EMISSAO) <= :data2)'
      'AND B.COD_FORMA_PGTO = 11) ')
    Left = 616
    Top = 48
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_historico_vendas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'select A.EMISSAO, (A.TOTAL_NOTA - A.DESCONTO_INCONDICIONAL) AS V' +
        'ALOR, B.TIPO_PLANO '
      
        'from vendas A, VEICULOS B where (TRUNC(A.emissao) >= :data1) and' +
        ' A.COD_NATUREZA = 5405 AND A.STATUS = 0  AND A.COD_EMPRESA = 2 A' +
        'ND A.COD_EMPRESA = B.COD_EMPRESA'
      'AND A.CHASSI_RESUMIDO = B.CHASSI_RESUMIDO ORDER BY A.EMISSAO')
    Left = 760
    Top = 32
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_historico_saidas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(TOTAL_DOCUMENTO) AS VALOR, COD_NATUREZA_RECEITA_DESPE' +
        'SA FROM VW_CONTA_PAGAR WHERE (TRUNC(DATA_QUITACAO) >= :data1 AND' +
        ' TRUNC(DATA_QUITACAO) <= :data2)'
      
        'AND (COD_NATUREZA_RECEITA_DESPESA = 147) GROUP BY COD_NATUREZA_R' +
        'ECEITA_DESPESA')
    Left = 760
    Top = 112
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_realizado_entradas_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      ''
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      ''
      
        'DATA >= :data1 AND DATA <= :data2 AND (CONTA_DB <> 528 AND CONTA' +
        '_DB <> 474 AND CONTA_DB <> 480 AND CONTA_DB <> 501 AND CONTA_DB ' +
        '<> 482 AND'
      ''
      
        'CONTA_DB <> 526 AND CONTA_DB <> 538 AND CONTA_DB <> 584 AND CONT' +
        'A_DB <> 634 AND CONTA_DB <> 633 AND'
      ''
      'CONTA_DB <> 600 AND CONTA_DB <> 546) AND'
      ''
      
        '(CONTA_CR = 528 OR CONTA_CR = 474 OR CONTA_CR = 480 OR CONTA_CR ' +
        '= 501 OR CONTA_CR = 482 OR'
      ''
      
        'CONTA_CR = 526 OR CONTA_CR = 538 OR CONTA_CR = 584 OR CONTA_CR =' +
        ' 634 OR CONTA_CR = 633 OR'
      ''
      'CONTA_CR = 600 OR CONTA_CR = 546)'
      ''
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 760
    Top = 192
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_vendas_saidas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'select A.EMISSAO, (A.TOTAL_NOTA - A.DESCONTO_INCONDICIONAL) AS V' +
        'ALOR, B.TIPO_PLANO '
      ''
      
        'from vendas A, VEICULOS B where (TRUNC(A.emissao) >= :data1 AND ' +
        'TRUNC(A.EMISSAO) <= :data2) and A.COD_NATUREZA = 5405 AND A.STAT' +
        'US = 0  AND A.COD_EMPRESA = 2 AND A.COD_EMPRESA = B.COD_EMPRESA'
      ''
      'AND A.CHASSI_RESUMIDO = B.CHASSI_RESUMIDO ORDER BY A.EMISSAO')
    Left = 944
    Top = 32
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_vendas_veic: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT  SUM(A.VALOR_PARCELA) AS VALOR, TRUNC(A.DA' +
        'TA_BAIXA) AS DATA'
      
        'FROM CONTAS_RECEBER A, FATURA_RECEBER B WHERE A.NR_FATURA = B.NR' +
        '_FATURA AND (TRUNC(A.DATA_BAIXA) >= :data1  AND TRUNC(A.DATA_BAI' +
        'XA)  <= :data2)'
      
        'AND A.COD_TIPO_FATURA = B.COD_TIPO_FATURA AND TRUNC(A.DATA_EMISS' +
        'AO) = TRUNC(B.DATA_EMISSAO)'
      'AND B.COD_NATUREZA_RECEITA_DESPESA = 150'
      'GROUP BY TRUNC(A.DATA_BAIXA))')
    Left = 944
    Top = 112
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR FROM LCONTAS A, TRANSF' +
        'ERENCIA_LCONTAS B '
      ''
      ''
      ''
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      ''
      ''
      ''
      
        'DATA >= :data1 AND DATA <= :data2 AND (CONTA_DB <> 528 AND CONTA' +
        '_DB <> 474 AND CONTA_DB <> 480 AND CONTA_DB <> 501 AND CONTA_DB ' +
        '<> 482 AND'
      ''
      ''
      ''
      
        'CONTA_DB <> 526 AND CONTA_DB <> 538 AND CONTA_DB <> 584 AND CONT' +
        'A_DB <> 634 AND CONTA_DB <> 633 AND'
      ''
      ''
      ''
      'CONTA_DB <> 600 AND CONTA_DB <> 546) AND B.COD_EMPRESA = 2)')
    Left = 944
    Top = 192
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_vendas_cartoes: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (select trunc(p.data_vencimento) as data,         ' +
        '                               '
      
        ' sum(p.valor) as VALOR                                          ' +
        ' '
      
        'from creceber_cartao_parc p, creceber_cartao c, empresas em     ' +
        '    '
      
        'where p.cod_empresa = em.cod_empresa                            ' +
        '    '
      
        '  and p.cod_empresa = c.cod_empresa                             ' +
        '    '
      
        '  and p.cod_controle_cartao = c.cod_controle_cartao             ' +
        '    '
      
        '  and p.data = c.data                                           ' +
        '    '
      '  and trunc(p.data_vencimento) >= :data1                     '
      '  and trunc(p.data_vencimento) <= :data2                      '
      '  AND EM.COD_EMPRESA IN (2)  '
      'group by trunc(p.data_vencimento) '
      'order by data)')
    Left = 1072
    Top = 32
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_cartao: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT *  FROM ('
      
        'SELECT CONTA_BAIXA, (SUM(VALOR) - SUM(VALOR_DESPESA)) AS VALOR F' +
        'ROM CRECEBER_CARTAO_PARC WHERE DATA_BAIXA = :data GROUP BY (CONT' +
        'A_BAIXA))')
    Left = 1072
    Top = 112
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      ''
      
        'SELECT COD_CONTA_CORRENTE, COD_ORIGEM_LANC, SUM(VALOR) AS VALOR ' +
        'FROM LCONTAS '
      ''
      'WHERE TRUNC(DATA) = :data AND DB_CR = '#39'D'#39' '
      ''
      '--AND (COD_ORIGEM_LANC <> 35 AND COD_ORIGEM_LANC <> 8) '
      ''
      'GROUP BY (COD_CONTA_CORRENTE, COD_ORIGEM_LANC))')
    Left = 1072
    Top = 192
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object q_entradas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      
        'SELECT COD_CONTA_CORRENTE, COD_ORIGEM_LANC, SUM(VALOR) AS VALOR ' +
        'FROM LCONTAS '
      'WHERE TRUNC(DATA) = :data AND DB_CR = '#39'C'#39' '
      
        'AND (COD_ORIGEM_LANC <> 35 AND COD_ORIGEM_LANC <> 8 AND COD_ORIG' +
        'EM_LANC <> 1) '
      'GROUP BY (COD_CONTA_CORRENTE, COD_ORIGEM_LANC))')
    Left = 1224
    Top = 40
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      ''
      ''
      ''
      'SELECT * FROM('
      ''
      ''
      ''
      
        'SELECT COD_CONTA_CORRENTE, COD_ORIGEM_LANC, SUM(VALOR) AS VALOR ' +
        'FROM LCONTAS '
      ''
      ''
      ''
      'WHERE TRUNC(DATA) = :data AND DB_CR = '#39'C'#39' '
      ''
      ''
      'GROUP BY (COD_CONTA_CORRENTE, COD_ORIGEM_LANC))')
    Left = 1224
    Top = 112
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_fornecedor: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 147 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 148 OR C.COD_NATUREZA_RECEITA_DESPESA = 149 OR C.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 214 '
      
        'OR C.COD_NATUREZA_RECEITA_DESPESA = 150 OR C.COD_NATUREZA_RECEIT' +
        'A_DESPESA = 144)'
      'AND'
      
        '(C.COD_CLIENTE <> '#39'23725486549'#39' AND C.COD_CLIENTE <> '#39'4141032549' +
        #39' AND C.COD_CLIENTE <> '#39'21560684534'#39' AND C.COD_CLIENTE <> '#39'39446' +
        '0005887'#39' AND C.COD_CLIENTE <> '#39'13927801000491'#39' AND '
      
        'C.COD_CLIENTE <> '#39'360305000104'#39' AND C.COD_CLIENTE <> '#39'1393707300' +
        '0156'#39' AND C.COD_CLIENTE <> '#39'29979036000140'#39' AND C.COD_CLIENTE <>' +
        ' '#39'13937073000318'#39' AND C.COD_CLIENTE <> '#39'13927801000149'#39' AND'
      
        'C.COD_CLIENTE <> '#39'47193149000106'#39' AND C.COD_CLIENTE <> '#39'72373730' +
        '14260'#39' AND C.COD_CLIENTE <> '#39'60701190000104'#39' AND'
      
        'C.COD_CLIENTE <> '#39'15139629000194'#39' AND C.COD_CLIENTE <> '#39'40432544' +
        '000147'#39' AND C.COD_CLIENTE <> '#39'13504675000110'#39' AND C.COD_CLIENTE ' +
        '<> '#39'3420926008966'#39' AND '
      
        'C.COD_CLIENTE <> '#39'7436040000120'#39' AND C.COD_CLIENTE <> '#39'234844700' +
        '0262'#39' AND C.COD_CLIENTE <> '#39'33927658000100'#39' AND C.COD_CLIENTE <>' +
        ' '#39'2558157001215'#39' AND C.COD_CLIENTE <> '#39'33000118000500'#39' AND'
      
        'C.COD_CLIENTE <> '#39'28707834000150'#39' AND C.COD_CLIENTE <> '#39'11011516' +
        '000158'#39' AND'
      
        'C.COD_CLIENTE <> '#39'59275792008991'#39' AND C.COD_CLIENTE <> '#39'59275792' +
        '002799'#39' AND COD_CLIENTE <> '#39'41474970559'#39' AND COD_CLIENTE <> '#39'104' +
        '75988000280'#39' AND COD_CLIENTE <> '#39'15145717000189'#39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND '
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 147 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 148 OR C.COD_NATUREZA_RECEITA_DESPESA = 149 OR C.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 214 '
      
        ' OR C.COD_NATUREZA_RECEITA_DESPESA = 150 OR C.COD_NATUREZA_RECEI' +
        'TA_DESPESA = 144)'
      'AND'
      
        '(C.COD_CLIENTE <> '#39'23725486549'#39' AND C.COD_CLIENTE <> '#39'4141032549' +
        #39' AND C.COD_CLIENTE <> '#39'21560684534'#39' AND C.COD_CLIENTE <> '#39'39446' +
        '0005887'#39' AND C.COD_CLIENTE <> '#39'13927801000491'#39' AND '
      
        'C.COD_CLIENTE <> '#39'360305000104'#39' AND C.COD_CLIENTE <> '#39'1393707300' +
        '0156'#39' AND C.COD_CLIENTE <> '#39'29979036000140'#39' AND C.COD_CLIENTE <>' +
        ' '#39'13937073000318'#39' AND C.COD_CLIENTE <> '#39'13927801000149'#39' AND'
      
        'C.COD_CLIENTE <> '#39'47193149000106'#39' AND C.COD_CLIENTE <> '#39'72373730' +
        '14260'#39' AND C.COD_CLIENTE <> '#39'60701190000104'#39' AND'
      
        'C.COD_CLIENTE <> '#39'15139629000194'#39' AND C.COD_CLIENTE <> '#39'40432544' +
        '000147'#39' AND C.COD_CLIENTE <> '#39'13504675000110'#39' AND C.COD_CLIENTE ' +
        '<> '#39'3420926008966'#39' AND '
      
        'C.COD_CLIENTE <> '#39'7436040000120'#39' AND C.COD_CLIENTE <> '#39'234844700' +
        '0262'#39' AND C.COD_CLIENTE <> '#39'33927658000100'#39' AND C.COD_CLIENTE <>' +
        ' '#39'2558157001215'#39' AND C.COD_CLIENTE <> '#39'33000118000500'#39' AND'
      
        'C.COD_CLIENTE <> '#39'28707834000150'#39' AND C.COD_CLIENTE <> '#39'11011516' +
        '000158'#39' AND'
      
        'C.COD_CLIENTE <> '#39'59275792008991'#39' AND C.COD_CLIENTE <> '#39'59275792' +
        '002799'#39' AND COD_CLIENTE <> '#39'41474970559'#39' AND COD_CLIENTE <> '#39'104' +
        '75988000280'#39' AND COD_CLIENTE <> '#39'15145717000189'#39')AND '
      
        '(C.TIPO_ADIANTAMENTO <> '#39'D'#39' AND C.TIPO_ADIANTAMENTO <> '#39'J'#39' AND C' +
        '.TIPO_ADIANTAMENTO <> '#39'6'#39' AND C.TIPO_ADIANTAMENTO <> '#39'D'#39' AND C.T' +
        'IPO_ADIANTAMENTO <> '#39'X'#39
      'AND C.TIPO_ADIANTAMENTO <> '#39'N'#39' AND C.TIPO_ADIANTAMENTO <> '#39'Y'#39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data3'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = '#39'149'#39
      'GROUP BY COD_CONTA_CORRENTE'
      ''
      ')'
      'GROUP BY COD_CONTA_CORRENTE '
      '')
    Left = 1224
    Top = 184
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_transferencias2: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'DATA = :data AND (CONTA_CR = 528 OR CONTA_CR = 474 OR CONTA_CR =' +
        ' 480 OR CONTA_CR = 501 OR CONTA_CR = 482 OR'
      
        'CONTA_CR = 526 OR CONTA_CR = 538 OR CONTA_CR = 584 OR CONTA_CR =' +
        ' 634 OR CONTA_CR = 633 OR'
      'CONTA_CR = 600 OR CONTA_CR = 546 OR CONTA_CR = 639) AND'
      '(CONTA_DB = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 1384
    Top = 40
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'DATA = :data AND (CONTA_CR <> 528 AND CONTA_CR <> 474 AND CONTA_' +
        'CR <> 480 AND CONTA_CR <> 501 AND CONTA_CR <> 482 AND'
      
        'CONTA_CR <> 526 AND CONTA_CR <> 538 AND CONTA_CR <> 584 AND CONT' +
        'A_CR <> 634 AND CONTA_CR <> 633 AND'
      
        'CONTA_CR <> 600 AND CONTA_CR <> 546 AND CONTA_CR <> 639 AND CONT' +
        'A_CR <> 531) AND'
      '(CONTA_DB = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 1384
    Top = 112
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_salarios: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 215'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 1384
    Top = 184
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_transferencias2: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      
        'DATA = :data AND (CONTA_DB = 528 OR CONTA_DB = 474 OR CONTA_DB =' +
        ' 480 OR CONTA_DB = 501 OR CONTA_DB = 482 OR'
      
        'CONTA_DB = 526 OR CONTA_DB = 538 OR CONTA_DB = 584 OR CONTA_DB =' +
        ' 634 OR CONTA_DB = 633 OR'
      'CONTA_DB = 600 OR CONTA_DB = 546 AND CONTA_DB = 539) AND'
      '(CONTA_CR = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 1568
    Top = 40
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_transferencias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      ''
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      ''
      
        'DATA = :data AND (CONTA_DB <> 528 AND CONTA_DB <> 474 AND CONTA_' +
        'DB <> 480 AND CONTA_DB <> 501 AND CONTA_DB <> 482 AND'
      ''
      
        'CONTA_DB <> 526 AND CONTA_DB <> 538 AND CONTA_DB <> 584 AND CONT' +
        'A_DB <> 634 AND CONTA_DB <> 633 AND'
      ''
      
        'CONTA_DB <> 600 AND CONTA_DB <> 546 AND CONTA_DB <> 639 AND CONT' +
        'A_DB <> 531) AND'
      ''
      '(CONTA_CR = :conta)'
      ''
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 1568
    Top = 112
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_aluguel: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(COD_CLIENTE = '#39'04279183000187'#39' OR COD_CLIENTE = '#39'34433847000181' +
        #39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'04279183000187'#39' OR COD_CLIENTE = '#39'34433847000181' +
        #39') '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1568
    Top = 184
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_seguro: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(COD_CLIENTE = '#39'33041062000958'#39' OR COD_CLIENTE = '#39'61100145000159' +
        #39') AND (C.COD_NATUREZA_RECEITA_DESPESA = 149)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'33041062000958'#39' OR COD_CLIENTE = '#39'61100145000159' +
        #39') AND (C.COD_NATUREZA_RECEITA_DESPESA = 149)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1760
    Top = 40
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_veiculos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT (A.VALOR_PRINCIPAL + A.SALDO_OUTROS) AS VALOR, A.COD_CONT' +
        'A_CORRENTE FROM BAIXA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      
        '(TRUNC(A.DATA_BAIXA) = :data1) AND C.TIPO_DOCUMENTO <> '#39'DV'#39' AND ' +
        'C.COD_NATUREZA_RECEITA_DESPESA = 144 AND '
      
        '(COD_CLIENTE = '#39'59275792009610'#39' OR COD_CLIENTE = '#39'59275792000150' +
        #39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      
        '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND C.COD_NATUREZA_' +
        'RECEITA_DESPESA = 144 AND  '
      
        '(COD_CLIENTE = '#39'59275792009610'#39' OR COD_CLIENTE = '#39'59275792000150' +
        #39')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1760
    Top = 104
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_imposto: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM('
      
        'SELECT (A.VALOR_PRINCIPAL + A.VALOR_JURO) AS VALOR, A.COD_CONTA_' +
        'CORRENTE FROM BAIXA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(COD_CLIENTE = '#39'394460005887'#39' OR COD_CLIENTE = '#39'13927801000491'#39' ' +
        'OR COD_CLIENTE = '#39'360305000104'#39' OR'
      
        'COD_CLIENTE = '#39'13937073000156'#39' OR COD_CLIENTE = '#39'29979036000140'#39 +
        ' OR COD_CLIENTE = '#39'13937073000318'#39' OR'
      
        'COD_CLIENTE = '#39'13927801000149'#39' OR COD_CLIENTE = '#39'13927801000491'#39 +
        ')'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 224'
      'GROUP BY COD_CONTA_CORRENTE'
      ')'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 1760
    Top = 184
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_pecas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      ''
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      
        '(TRUNC(A.DATA_BAIXA) = :data1) AND (COD_CLIENTE = '#39'5927579200899' +
        '1'#39' OR COD_CLIENTE = '#39'59275792002799'#39' OR COD_CLIENTE = '#39'592757920' +
        '00150'#39')  AND C.COD_NATUREZA_RECEITA_DESPESA = 147'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_BAIXA AS COD_CONTA_CORRENT' +
        'E FROM '
      '('
      'SELECT CASE WHEN B.TIPO1 = '#39'D'#39' THEN'
      '       (B.VALOR - NVL(B.OUTRO_VALOR1,0))'
      '       WHEN B.TIPO1 IS NULL THEN'
      '       (B.VALOR + NVL(B.OUTRO_VALOR1,0)) '
      '       END AS VALOR,'
      '       '
      '       B.COD_CONTA_BAIXA'
      'FROM ADIANTAMENTO A, BAIXA_ADIANTAMENTO B, TIPO_ADIANTAMENTO C'
      'WHERE A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO '
      'AND A.COD_EMPRESA = B.COD_EMPRESA'
      'AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE'
      'AND A.DATA = B.DATA'
      'AND A.LANC = B.LANC'
      'AND A.DATA_BAIXA = :data2'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'E'#39')'
      
        'AND (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'5927579200' +
        '2799'#39' OR COD_CLIENTE = '#39'59275792000150'#39')  AND A.COD_NATUREZA_REC' +
        'EITA_DESPESA = 147'
      ')'
      'GROUP BY COD_CONTA_BAIXA '
      ''
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE AS COD_CONTA_CORR' +
        'ENTE FROM '
      '('
      'SELECT A.VALOR,'
      '       '
      '       A.COD_CONTA_CORRENTE'
      'FROM ADIANTAMENTO A, TIPO_ADIANTAMENTO C'
      'WHERE '
      'A.DATA = :data3'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'S'#39')'
      
        'AND (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'5927579200' +
        '2799'#39' OR COD_CLIENTE = '#39'59275792000150'#39')  AND A.COD_NATUREZA_REC' +
        'EITA_DESPESA = 147'
      ')'
      'GROUP BY COD_CONTA_CORRENTE'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1760
    Top = 272
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_acionistas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'21560684534'#39' OR C' +
        'OD_CLIENTE = '#39'4141032549'#39') AND (C.COD_NATUREZA_RECEITA_DESPESA =' +
        ' 149)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'21560684534'#39' OR C' +
        'OD_CLIENTE = '#39'4141032549'#39') AND (C.COD_NATUREZA_RECEITA_DESPESA =' +
        ' 149)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE '
      ''
      ''
      ''
      '')
    Left = 1960
    Top = 24
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_semi_novos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 145 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 146)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 145 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 146) '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1960
    Top = 96
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_venda_direta: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 200 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 201)'
      'UNION ALL'
      ''
      
        'SELECT A.VALOR, A.COD_CONTA_BAIXA AS COD_CONTA_CORRENTE FROM BAI' +
        'XA_ADIANTAMENTO A, LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO AND A.COD_EMPRESA = C' +
        '.COD_EMPRESA AND A.COD_CONTA_CORRENTE = C.COD_CONTA_CORRENTE AND' +
        ' '
      'A.DATA = C.DATA AND A.LANC = C.LANC) AND'
      '(TRUNC(A.DATA_BAIXA) = :data2) AND '
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 200 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 201)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data3'
      
        'AND DB_CR = '#39'D'#39' AND (COD_NATUREZA_RECEITA_DESPESA = '#39'200'#39' OR COD' +
        '_NATUREZA_RECEITA_DESPESA = '#39'201'#39')'
      'GROUP BY COD_CONTA_CORRENTE'
      ''
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1960
    Top = 176
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_consorcio: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 202 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 203)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_BAIXA AS COD_CONTA_CORRENT' +
        'E FROM '
      '('
      'SELECT CASE WHEN B.TIPO1 = '#39'D'#39' THEN'
      '       (B.VALOR - NVL(B.OUTRO_VALOR1,0))'
      '       WHEN B.TIPO1 IS NULL THEN'
      '       (B.VALOR + NVL(B.OUTRO_VALOR1,0)) '
      '       END AS VALOR,'
      '       '
      '       B.COD_CONTA_BAIXA'
      'FROM ADIANTAMENTO A, BAIXA_ADIANTAMENTO B, TIPO_ADIANTAMENTO C'
      'WHERE A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO '
      'AND A.COD_EMPRESA = B.COD_EMPRESA'
      'AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE'
      'AND A.DATA = B.DATA'
      'AND A.LANC = B.LANC'
      'AND A.DATA_BAIXA = :data2'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'E'#39')'
      
        'AND (A.COD_NATUREZA_RECEITA_DESPESA = 202 OR A.COD_NATUREZA_RECE' +
        'ITA_DESPESA = 203)'
      ')'
      'GROUP BY COD_CONTA_BAIXA '
      ''
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE AS COD_CONTA_CORR' +
        'ENTE FROM '
      '('
      'SELECT CASE WHEN B.TIPO1 = '#39'D'#39' THEN'
      '       (B.VALOR - NVL(B.OUTRO_VALOR1,0))'
      '       WHEN B.TIPO1 IS NULL THEN'
      '       (B.VALOR + NVL(B.OUTRO_VALOR1,0)) '
      '       END AS VALOR,'
      '       '
      '       B.COD_CONTA_CORRENTE'
      'FROM ADIANTAMENTO A, BAIXA_ADIANTAMENTO B, TIPO_ADIANTAMENTO C'
      'WHERE A.TIPO_ADIANTAMENTO = B.TIPO_ADIANTAMENTO '
      'AND A.COD_EMPRESA = B.COD_EMPRESA'
      'AND A.COD_CONTA_CORRENTE = B.COD_CONTA_CORRENTE'
      'AND A.DATA = B.DATA'
      'AND A.LANC = B.LANC'
      'AND A.DATA = :data3'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'S'#39')'
      
        'AND (A.COD_NATUREZA_RECEITA_DESPESA = 202 OR A.COD_NATUREZA_RECE' +
        'ITA_DESPESA = 203)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1960
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_tarifas: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 217'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 2136
    Top = 24
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_clientes: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND C.TIPO_DOCUMENTO = '#39'DV'#39' AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 143 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 144)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1384
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_juros: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 218'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 2144
    Top = 176
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_financiamento_gmac: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      'SELECT * FROM('
      
        '(SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESO' +
        'URARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS' +
        '_RECEBER B'
      'WHERE TRUNC(A.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 290'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA)'
      ''
      'UNION ALL'
      ''
      
        '(SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM' +
        ' LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'C'#39') AND'
      '(C.COD_NATUREZA_RECEITA_DESPESA = 228) '
      ')'
      ')')
    Left = 1072
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_financiamento_outros: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      'WHERE TRUNC(A.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 300'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 1072
    Top = 336
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_seguradora: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      'WHERE TRUNC(B.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 265'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 920
    Top = 272
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_boletos: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) + NVL(SUM(B.SALDO_OUTROS),0' +
        ') AS VALOR, B.COD_CONTA_TESOURARIA AS COD_CONTA_CORRENTE FROM CO' +
        'NTAS_RECEBER A, BAIXA_CONTAS_RECEBER B'
      'WHERE TRUNC(A.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 275'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 904
    Top = 344
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_consorcio_gmac: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      'WHERE TRUNC(A.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 291'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 1248
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_entradas_consorcio_outros: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      'WHERE TRUNC(A.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 301'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 1248
    Top = 336
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_pj: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'26813602000151'#39' OR COD_CLIENTE = '#39'27700102000176' +
        #39' OR COD_CLIENTE = '#39'22093586000153'#39' OR COD_CLIENTE = '#39'1366774200' +
        '0117'#39' OR COD_CLIENTE = '#39'22321912000106'#39
      
        'OR COD_CLIENTE = '#39'22093586000119'#39' OR COD_CLIENTE = '#39'222129920001' +
        '53'#39' OR COD_CLIENTE = '#39'24972479000196'#39' OR COD_CLIENTE = '#39'25248058' +
        '000180'#39' OR COD_CLIENTE = '#39'26808284000130'#39' OR'
      
        'COD_CLIENTE = '#39'26146235000180'#39' OR COD_CLIENTE = '#39'20774587000101'#39 +
        ')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'26813602000151'#39' OR COD_CLIENTE = '#39'27700102000176' +
        #39' OR COD_CLIENTE = '#39'22093586000153'#39' OR COD_CLIENTE = '#39'1366774200' +
        '0117'#39' OR COD_CLIENTE = '#39'22321912000106'#39
      
        'OR COD_CLIENTE = '#39'22093586000119'#39' OR COD_CLIENTE = '#39'222129920001' +
        '53'#39' OR COD_CLIENTE = '#39'24972479000196'#39' OR COD_CLIENTE = '#39'25248058' +
        '000180'#39' OR COD_CLIENTE = '#39'26808284000130'#39' OR'
      
        'COD_CLIENTE = '#39'26146235000180'#39' OR COD_CLIENTE = '#39'20774587000101'#39 +
        ')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1392
    Top = 336
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_ferias: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 220'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 1568
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_rescisoes: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 221'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 1568
    Top = 336
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_emplacamento: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      ''
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND'
      '(C.COD_NATUREZA_RECEITA_DESPESA = 210)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND '
      '(C.COD_NATUREZA_RECEITA_DESPESA = 210)'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data3'
      'AND DB_CR = '#39'D'#39' AND OBSERVACAO = '#39'EMPLACAMENTO'#39
      'GROUP BY COD_CONTA_CORRENTE'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data4'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 210'
      'GROUP BY COD_CONTA_CORRENTE'
      ''
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1760
    Top = 336
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'DATA3'
        ParamType = ptInput
      end
      item
        Name = 'DATA4'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_judiciais: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 225'
      'GROUP BY COD_CONTA_CORRENTE'
      '')
    Left = 1952
    Top = 344
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_cheque: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA = :data1'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 226'
      'GROUP BY COD_CONTA_CORRENTE'
      '')
    Left = 2128
    Top = 264
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end>
  end
  object conexao_banco: TFDConnection
    Params.Strings = (
      'SERVER=10.3.122.16'
      'User_Name=sa'
      'Password=maop2307'
      'ApplicationName=Architect'
      'Workstation=ti-italo'
      'MARS=yes'
      'Database=FRUTOSDIAS'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 88
  end
  object q_entradas_bancos_comissao: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM('
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE '
      'FROM CONTAS_RECEBER A, BAIXA_CONTAS_RECEBER B, FATURA_RECEBER C'
      'WHERE TRUNC(B.DATA_BAIXA) = :data1'
      'AND A.COD_EMPRESA = 2 '
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'AND (A.COD_EMPRESA = C.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = C.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = C.NR_FATURA)'
      'AND (A.DATA_EMISSAO = C.DATA_EMISSAO)'
      
        'AND (C.COD_CLIENTE = '#39'49937055000111'#39' OR C.COD_CLIENTE = '#39'592746' +
        '05000113'#39' OR C.COD_CLIENTE = '#39'07207996000150'#39' OR C.COD_CLIENTE =' +
        ' '#39'17192451000170'#39' '
      
        'OR C.COD_CLIENTE = '#39'03017677000120'#39' OR C.COD_CLIENTE = '#39'03546261' +
        '000108'#39' OR C.COD_CLIENTE = '#39'02102498001010'#39' OR C.COD_CLIENTE = '#39 +
        '59275792000150'#39
      
        'OR C.COD_CLIENTE = '#39'59275792000826'#39' OR C.COD_CLIENTE = '#39'59275792' +
        '009610'#39' OR C.COD_CLIENTE = '#39'59275792001806'#39')'
      'GROUP BY B.COD_CONTA_TESOURARIA'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'C'#39') AND'
      
        '(C.COD_CLIENTE = '#39'49937055000111'#39' OR C.COD_CLIENTE = '#39'5927460500' +
        '0113'#39' OR C.COD_CLIENTE = '#39'07207996000150'#39' OR C.COD_CLIENTE = '#39'17' +
        '192451000170'#39' '
      
        'OR C.COD_CLIENTE = '#39'03017677000120'#39' OR C.COD_CLIENTE = '#39'03546261' +
        '000108'#39' OR C.COD_CLIENTE = '#39'02102498001010'#39' OR C.COD_CLIENTE = '#39 +
        '59275792000150'#39
      
        'OR C.COD_CLIENTE = '#39'59275792000826'#39' OR C.COD_CLIENTE = '#39'59275792' +
        '009610'#39' OR C.COD_CLIENTE = '#39'59275792001806'#39')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 776
    Top = 272
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_rj: TFDQuery
    Connection = conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM ('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      '(TRUNC(A.DATA_BAIXA) = :data1) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'41474970559'#39' OR COD_CLIENTE = '#39'10475988000280'#39' O' +
        'R COD_CLIENTE = '#39'15145717000189'#39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(TRUNC(B.DATA) = :data2) AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'41474970559'#39' OR COD_CLIENTE = '#39'10475988000280'#39' O' +
        'R COD_CLIENTE = '#39'15145717000189'#39')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 1504
    Top = 576
    ParamData = <
      item
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
end
