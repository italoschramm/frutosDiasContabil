object dm_facts: Tdm_facts
  OldCreateOrder = False
  Height = 678
  Width = 853
  object q_total_lucro: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      '-- UPDATE LINHA 1 TOTAL -------------------------'
      ''
      'UPDATE FCTS_TOTAIS_EMPRESA SET'
      'C1 ='
      '(SELECT SUM(VALOR) AS VALOR FROM'
      '( '
      
        'SELECT SUM(MES_ADM + MES_COMP) AS VALOR, CONTA FROM FCTS_ADMINIS' +
        'TRACAO'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_FUNILARIA_PINTURA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_NOVOS + MES_FILIAL + MES_CONSORCIO + MES_DIRETAS ' +
        '+ MES_FI) AS VALOR, CONTA FROM FCTS_NOVOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_OFICINA_MECANICA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_PECAS + MES_POSTO) AS VALOR, CONTA FROM FCTS_PECA' +
        'S_ACESSORIOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_VEICULOS_USADOS'
      'GROUP BY CONTA'
      
        ')  TOTAL WHERE (CONTA = 400 OR CONTA = 446 OR CONTA = 460 OR CON' +
        'TA = 470 OR CONTA = 480))'
      'WHERE LINHA = 1'
      ''
      
        '-- UPDATE LINHA 2 ----------------------------------------------' +
        '----'
      ''
      'UPDATE FCTS_TOTAIS_EMPRESA SET'
      'C1 ='
      '(SELECT SUM(VALOR) AS VALOR FROM'
      '( '
      
        'SELECT SUM(MES_ADM + MES_COMP) AS VALOR, CONTA FROM FCTS_ADMINIS' +
        'TRACAO'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_FUNILARIA_PINTURA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_NOVOS + MES_FILIAL + MES_CONSORCIO + MES_DIRETAS ' +
        '+ MES_FI) AS VALOR, CONTA FROM FCTS_NOVOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_OFICINA_MECANICA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_PECAS + MES_POSTO) AS VALOR, CONTA FROM FCTS_PECA' +
        'S_ACESSORIOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(MES) AS VALOR, CONTA FROM FCTS_VEICULOS_USADOS'
      'GROUP BY CONTA'
      
        ')  TOTAL WHERE (CONTA = 602 OR CONTA = 646 OR CONTA = 660 OR CON' +
        'TA = 670 OR CONTA = 680))'
      'WHERE LINHA = 2'
      ''
      '-- UPDATE LINHA 3 TOTAL -------------------------'
      ''
      'UPDATE FCTS_TOTAIS_EMPRESA SET'
      'C2 ='
      '(SELECT SUM(VALOR) AS VALOR FROM'
      '( '
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_ADMINISTRACAO'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_FUNILARIA_PINTURA'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_NOVOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_OFICINA_MECANICA'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_PECAS_ACESSORIOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_VEICULOS_USADOS'
      'GROUP BY CONTA'
      
        ')  TOTAL WHERE (CONTA = 400 OR CONTA = 446 OR CONTA = 460 OR CON' +
        'TA = 470 OR CONTA = 480))'
      'WHERE LINHA = 1'
      ''
      
        '-- UPDATE LINHA 4 ----------------------------------------------' +
        '----'
      ''
      'UPDATE FCTS_TOTAIS_EMPRESA SET'
      'C2 ='
      '(SELECT SUM(VALOR) AS VALOR FROM'
      '( '
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_ADMINISTRACAO'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_FUNILARIA_PINTURA'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_NOVOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_OFICINA_MECANICA'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_PECAS_ACESSORIOS'
      'GROUP BY CONTA'
      'UNION ALL'
      'SELECT SUM(TOTAL) AS VALOR, CONTA FROM FCTS_VEICULOS_USADOS'
      'GROUP BY CONTA'
      
        ')  TOTAL WHERE (CONTA = 602 OR CONTA = 646 OR CONTA = 660 OR CON' +
        'TA = 670 OR CONTA = 680))'
      'WHERE LINHA = 2')
    Left = 324
    Top = 500
  end
  object DataSource4: TDataSource
    DataSet = tb_funilaria
    Left = 132
    Top = 228
  end
  object tb_novos: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_NOVOS'
    Left = 572
    Top = 432
    object tb_novosDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_novosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_novosSALDO_ANTERIOR_NOVOS: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object tb_novosMES_NOVOS: TFloatField
      FieldName = 'MES_NOVOS'
      DisplayFormat = '0'
    end
    object tb_novosMES_FILIAL: TFloatField
      FieldName = 'MES_FILIAL'
      DisplayFormat = '0'
    end
    object tb_novosMES_CONSORCIO: TFloatField
      FieldName = 'MES_CONSORCIO'
      DisplayFormat = '0'
    end
    object tb_novosMES_DIRETAS: TFloatField
      FieldName = 'MES_DIRETAS'
      DisplayFormat = '0'
    end
    object tb_novosMES_FI: TFloatField
      FieldName = 'MES_FI'
      DisplayFormat = '0'
    end
    object tb_novosTOTAL_ANTERIOR: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object tb_novosAJUSTES: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object tb_novosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object tb_usados: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_VEICULOS_USADOS'
    Left = 748
    Top = 536
    object tb_usadosDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_usadosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_usadosSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object tb_usadosMES: TFloatField
      FieldName = 'MES'
      DisplayFormat = '0'
    end
    object tb_usadosSALDO_ATUAL: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object tb_usadosAJUSTES: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object tb_usadosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object q_consulta_mes_veiculos_usados: TADOQuery
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mes'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'conta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM  FCTS_VEICULOS_USADOS_SALDO '
      'WHERE MES = :mes AND ANO = :ano and CONTA = :conta')
    Left = 536
    Top = 232
    object q_consulta_mes_veiculos_usadosIDSALDO: TAutoIncField
      FieldName = 'IDSALDO'
      ReadOnly = True
    end
    object q_consulta_mes_veiculos_usadosMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 10
    end
    object q_consulta_mes_veiculos_usadosANO: TWideStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 10
    end
    object q_consulta_mes_veiculos_usadosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object q_consulta_mes_veiculos_usadosSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object q_limpa_mes: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    Left = 268
    Top = 440
  end
  object q_consulta_mes: TADOQuery
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mes'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM FCTS_VEICULOS_USADOS_SALDO  WHERE MES = :mes AND A' +
        'NO = :ano'
      '')
    Left = 196
    Top = 440
  end
  object q_finaliza_mes: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes'
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
        Size = -1
        Value = Null
      end
      item
        Name = 'conta'
        Size = -1
        Value = Null
      end
      item
        Name = 'saldo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO FCTS_SALDO VALUES (:mes, :ano, :conta, :saldo)')
    Left = 116
    Top = 440
  end
  object q_buscar2: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'data'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CONTA2, COD_CENTRO_CUSTO, SUM(VALOR) AS VALOR, CONTA_A FR' +
        'OM FCTS '
      'WHERE DATA = :data'
      'GROUP BY CONTA2, COD_CENTRO_CUSTO, CONTA_A')
    Left = 108
    Top = 328
  end
  object q_inserir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'conta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'conta2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cod_centro_custo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'valor'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'data'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'conta_a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into FCTS (CONTA, CONTA2, COD_CENTRO_CUSTO, VALOR, DATA, ' +
        'CONTA_A) VALUES (:conta, :conta2, :cod_centro_custo, :valor, :da' +
        'ta, :conta_a)')
    Left = 172
    Top = 328
  end
  object q_buscar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'data'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CONTA, COD_CENTRO_CUSTO, SUM(VALOR) AS VALOR FROM FCTS '
      'WHERE DATA = :data'
      'GROUP BY CONTA, COD_CENTRO_CUSTO')
    Left = 236
    Top = 328
  end
  object q_limpar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'data'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'delete from FCTS where DATA = :data ')
    Left = 292
    Top = 328
  end
  object q_zerar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      
        'UPDATE FCTS_ADMINISTRACAO SET SALDO_ANTERIOR = 0, MES_ADM = 0, M' +
        'ES_COMP = 0, SALDO_ATUAL= 0, AJUSTES = 0, TOTAL = 0'
      ''
      'UPDATE FCTS_NOVOS SET SALDO_ANTERIOR = 0, MES_NOVOS = 0,'
      
        'MES_FILIAL = 0,  MES_CONSORCIO = 0,  MES_DIRETAS = 0, MES_FI = 0' +
        ', SALDO_ATUAL = 0, AJUSTES = 0, TOTAL = 0'
      ''
      
        'UPDATE FCTS_PECAS_ACESSORIOS SET SALDO_ANTERIOR = 0, MES_PECAS =' +
        ' 0, MES_POSTO = 0, SALDO_ATUAL = 0, AJUSTES = 0, TOTAL = 0'
      ''
      
        'UPDATE FCTS_FUNILARIA_PINTURA SET SALDO_ANTERIOR = 0,  MES = 0, ' +
        'SALDO_ATUAL = 0, AJUSTES = 0, TOTAL = 0'
      ''
      
        'UPDATE FCTS_OFICINA_MECANICA SET SALDO_ANTERIOR = 0,  MES = 0, S' +
        'ALDO_ATUAL = 0, AJUSTES = 0, TOTAL = 0'
      ''
      
        'UPDATE FCTS_VEICULOS_USADOS SET SALDO_ANTERIOR = 0,  MES =0, SAL' +
        'DO_ATUAL = 0, AJUSTES = 0, TOTAL = 0'
      ''
      
        'UPDATE FCTS_TOTAIS_EMPRESA SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C' +
        '5 = 0'
      ''
      
        'UPDATE FCTS_RECEITA_NOVOS SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C5' +
        ' = 0, C6 = 0, C7 = 0, C8 = 0, C9 =0, C10 = 0'
      ''
      
        'UPDATE FCTS_RECEITA_USADOS SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C' +
        '5 = 0, C6 = 0, C7 = 0, C8 = 0')
    Left = 348
    Top = 328
  end
  object q_salvar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    Left = 396
    Top = 328
  end
  object q_buscar_total: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      ''
      ''
      'SELECT SUM(MES) AS MES, SUM(TOTAL) AS TOTAL, CONTA FROM'
      '( '
      
        'SELECT SUM(MES_ADM + MES_COMP) AS MES, SUM(TOTAL) AS TOTAL, CONT' +
        'A FROM FCTS_ADMINISTRACAO'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES) AS MES, SUM(TOTAL) AS TOTAL, CONTA FROM FCTS_FUN' +
        'ILARIA_PINTURA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_NOVOS + MES_FILIAL + MES_CONSORCIO + MES_DIRETAS ' +
        '+ MES_FI) AS MES, SUM(TOTAL) AS TOTAL, CONTA FROM FCTS_NOVOS'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES) AS MES, SUM(TOTAL) AS TOTAL, CONTA FROM FCTS_OFI' +
        'CINA_MECANICA'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES_PECAS + MES_POSTO) AS MES, SUM(TOTAL) AS TOTAL, C' +
        'ONTA FROM FCTS_PECAS_ACESSORIOS'
      'GROUP BY CONTA'
      'UNION ALL'
      
        'SELECT SUM(MES) AS MES, SUM(TOTAL) AS TOTAL, CONTA FROM FCTS_VEI' +
        'CULOS_USADOS'
      'GROUP BY CONTA'
      ')  TOTAL GROUP BY CONTA')
    Left = 476
    Top = 321
  end
  object tb_pecas: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_PECAS_ACESSORIOS'
    Left = 572
    Top = 488
    object tb_pecasDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_pecasCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_pecasSALDO_ANTERIOR_PECAS: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object tb_pecasMES_PECAS: TFloatField
      FieldName = 'MES_PECAS'
      DisplayFormat = '0'
    end
    object tb_pecasMES_POSTO: TFloatField
      FieldName = 'MES_POSTO'
      DisplayFormat = '0'
    end
    object tb_pecasTOTAL_ANTERIOR: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object tb_pecasAJUSTES: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object tb_pecasTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object tb_funilaria: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_FUNILARIA_PINTURA'
    Left = 644
    Top = 488
    object StringField3: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONTA'
    end
    object FloatField11: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object FloatField12: TFloatField
      FieldName = 'MES'
      DisplayFormat = '0'
    end
    object FloatField13: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object FloatField14: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object FloatField15: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object tb_oficina: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_OFICINA_MECANICA'
    Left = 664
    Top = 552
    object tb_oficinaDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_oficinaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_oficinaSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object tb_oficinaMES: TFloatField
      FieldName = 'MES'
      DisplayFormat = '0'
    end
    object tb_oficinaSALDO_ATUAL: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object tb_oficinaAJUSTES: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object tb_oficinaTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object tb_administracao: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_ADMINISTRACAO'
    Left = 712
    Top = 488
    object tb_administracaoDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_administracaoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_administracaoSALDO_ANTERIOR_ADM: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      DisplayFormat = '0'
    end
    object tb_administracaoMES_ADM: TFloatField
      FieldName = 'MES_ADM'
      DisplayFormat = '0'
    end
    object tb_administracaoMES_COMP: TFloatField
      FieldName = 'MES_COMP'
      DisplayFormat = '0'
    end
    object tb_administracaoTOTAL_ANTERIOR: TFloatField
      FieldName = 'SALDO_ATUAL'
      DisplayFormat = '0'
    end
    object tb_administracaoAJUSTES: TFloatField
      FieldName = 'AJUSTES'
      DisplayFormat = '0'
    end
    object tb_administracaoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0'
    end
  end
  object tb_total: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_TOTAIS_EMPRESA'
    Left = 624
    Top = 432
    object tb_totalDESPESAS_TOTAIS: TStringField
      FieldName = 'DESPESAS_TOTAIS'
      Size = 100
    end
    object tb_totalCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_totalC1: TFloatField
      FieldName = 'C1'
      currency = True
    end
    object tb_totalC2: TFloatField
      FieldName = 'C2'
      currency = True
    end
    object tb_totalC3: TFloatField
      FieldName = 'C3'
    end
    object tb_totalC4: TFloatField
      FieldName = 'C4'
    end
    object tb_totalC5: TFloatField
      FieldName = 'C5'
    end
    object tb_totalC6: TFloatField
      FieldName = 'C6'
    end
    object tb_totalC7: TFloatField
      FieldName = 'C7'
    end
    object tb_totalC8: TFloatField
      FieldName = 'C8'
    end
    object tb_totalC9: TFloatField
      FieldName = 'C9'
    end
    object tb_totalC10: TFloatField
      FieldName = 'C10'
    end
    object tb_totalC11: TFloatField
      FieldName = 'C11'
    end
    object tb_totalC12: TFloatField
      FieldName = 'C12'
    end
    object tb_totalC13: TFloatField
      FieldName = 'C13'
    end
    object tb_totalC14: TFloatField
      FieldName = 'C14'
    end
  end
  object tb_receita_novos: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_RECEITA_NOVOS'
    Left = 696
    Top = 432
    object tb_receita_novosDESPESAS_TOTAIS: TStringField
      DisplayWidth = 240
      FieldName = 'DESPESAS_TOTAIS'
      Size = 200
    end
    object tb_receita_novosCONTA_R: TIntegerField
      FieldName = 'CONTA_R'
    end
    object tb_receita_novosCONTA_D: TIntegerField
      FieldName = 'CONTA_D'
    end
    object tb_receita_novosC1: TIntegerField
      DisplayWidth = 12
      FieldName = 'C1'
    end
    object tb_receita_novosC2: TFloatField
      DisplayWidth = 12
      FieldName = 'C2'
    end
    object tb_receita_novosC3: TFloatField
      DisplayWidth = 12
      FieldName = 'C3'
    end
    object tb_receita_novosC4: TFloatField
      DisplayWidth = 12
      FieldName = 'C4'
    end
    object tb_receita_novosC5: TFloatField
      DisplayWidth = 12
      FieldName = 'C5'
    end
    object tb_receita_novosC6: TIntegerField
      DisplayWidth = 12
      FieldName = 'C6'
    end
    object tb_receita_novosC7: TFloatField
      DisplayWidth = 12
      FieldName = 'C7'
    end
    object tb_receita_novosC8: TFloatField
      DisplayWidth = 12
      FieldName = 'C8'
    end
    object tb_receita_novosC9: TFloatField
      DisplayWidth = 12
      FieldName = 'C9'
    end
    object tb_receita_novosC10: TFloatField
      DisplayWidth = 12
      FieldName = 'C10'
    end
  end
  object q_total_pecas: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      ''
      
        '-- PARTE 1 -----------------------------------------------------' +
        '-------------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'MES_POSTO = '
      '(SELECT SUM(MES_POSTO) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9))'
      'WHERE LINHA = 10'
      ''
      
        '-- PARTE 2 -----------------------------------------------------' +
        '-------------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26)),'
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26)),'
      'MES_POSTO = '
      '(SELECT SUM(MES_POSTO) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR'
      
        'LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = ' +
        '23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26))'
      'WHERE LINHA = 27'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '-------------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33)),'
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33)),'
      'MES_POSTO = '
      '(SELECT SUM(MES_POSTO) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR L' +
        'INHA = 32 OR LINHA = 33))'
      'WHERE LINHA = 34'
      ''
      
        '-- PARTE 4 -----------------------------------------------------' +
        '-------------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39)),'
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39)),'
      'MES_POSTO = '
      '(SELECT SUM(MES_POSTO) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_PECAS_ACESSORIOS'
      
        'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR L' +
        'INHA = 39))'
      'WHERE LINHA = 40'
      ''
      
        '-- PARTE 5 -----------------------------------------------------' +
        '-------------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40)),'
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40)),'
      'MES_POSTO = '
      '(SELECT SUM(MES_POSTO) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_PECAS_ACESSORIOS'
      'WHERE (LINHA = 10 OR LINHA = 27 OR LINHA = 34 OR LINHA = 40))'
      'WHERE LINHA = 41'
      ''
      
        '-- Lucro Bruto -------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_PECAS_ACESSORIOS SET '
      'MES_PECAS = '
      '(SELECT SUM(MES_PECAS) FROM FCTS_PECAS'
      'WHERE (LINHA = 1 OR LINHA = 2))'
      'WHERE LINHA = 2'
      '')
    Left = 656
    Top = 152
  end
  object DataSource8: TDataSource
    DataSet = tb_receita_novos
    Left = 44
    Top = 232
  end
  object DataSource7: TDataSource
    DataSet = tb_total
    Left = 124
    Top = 17
  end
  object DataSource6: TDataSource
    DataSet = tb_administracao
    Left = 124
    Top = 160
  end
  object DataSource5: TDataSource
    DataSet = tb_oficina
    Left = 124
    Top = 89
  end
  object q_total_administracao: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '--Parte 1 ------------------------------------------------------' +
        '------------'
      ''
      'UPDATE FCTS_ADMINISTRACAO SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10)),'
      'MES_ADM = '
      '(SELECT SUM(MES_ADM) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10)),'
      'MES_COMP = '
      '(SELECT SUM(MES_COMP) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9 OR LINHA = 10))'
      'WHERE LINHA = 11'
      ''
      
        '-- Parte 2 -----------------------------------------------------' +
        '--------------------------'
      ''
      'UPDATE FCTS_ADMINISTRACAO SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27)),'
      'MES_ADM = '
      '(SELECT SUM(MES_ADM) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27)),'
      'MES_COMP = '
      '(SELECT SUM(MES_COMP) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15 OR L' +
        'INHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR '
      
        'LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = ' +
        '24 OR LINHA = 25 OR LINHA = 26 OR LINHA = 27))'
      'WHERE LINHA = 28'
      ''
      
        '-- Parte 3 -----------------------------------------------------' +
        '--------------------------------------------------'
      ''
      'UPDATE FCTS_ADMINISTRACAO SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34)),'
      'MES_ADM = '
      '(SELECT SUM(MES_ADM) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34)),'
      'MES_COMP = '
      '(SELECT SUM(MES_COMP) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR L' +
        'INHA = 33 OR LINHA = 34))'
      'WHERE LINHA = 35'
      ''
      
        '-- Parte 4 -----------------------------------------------------' +
        '----------------------------'
      ''
      'UPDATE FCTS_ADMINISTRACAO SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40)),'
      'MES_ADM = '
      '(SELECT SUM(MES_ADM) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40)),'
      'MES_COMP = '
      '(SELECT SUM(MES_COMP) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_ADMINISTRACAO'
      
        'WHERE (LINHA = 36 OR LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR L' +
        'INHA = 40))'
      'WHERE LINHA = 41'
      ''
      
        '-- Parte 5 -----------------------------------------------------' +
        '--------------------------'
      ''
      'UPDATE FCTS_ADMINISTRACAO SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41)),'
      'MES_ADM = '
      '(SELECT SUM(MES_ADM) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41)),'
      'MES_COMP = '
      '(SELECT SUM(MES_COMP) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_ADMINISTRACAO'
      'WHERE (LINHA = 11 OR LINHA = 28 OR LINHA = 35 OR LINHA = 41))'
      'WHERE LINHA = 42')
    Left = 452
    Top = 64
  end
  object q_total_novos: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      
        '-- PARTE 1 -----------------------------------------------------' +
        '----------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)) '
      'WHERE LINHA = 7'
      ''
      
        '-- PARTE 2 -----------------------------------------------------' +
        '----------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13 OR LINHA = 14 OR LINHA = 15)) '
      'WHERE LINHA = 16'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '---------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 17 OR LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR L' +
        'INHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA = 24 OR'
      
        'LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR LINHA = ' +
        '29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37)) '
      'WHERE LINHA = 38'
      ''
      
        '-- PARTE 4 -----------------------------------------------------' +
        '---------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 39 OR LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR L' +
        'INHA = 43 OR LINHA = 44 OR LINHA = 45)) '
      'WHERE LINHA = 46'
      ''
      
        '-- PARTE 5 -----------------------------------------------------' +
        '---------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51)) '
      'WHERE LINHA = 52'
      ''
      
        '-- PARTE 6 -----------------------------------------------------' +
        '---------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'MES_FILIAL ='
      '(SELECT SUM(MES_FILIAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'MES_CONSORCIO = '
      '(SELECT SUM(MES_CONSORCIO) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'MES_DIRETAS ='
      '(SELECT SUM(MES_DIRETAS) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'MES_FI ='
      '(SELECT SUM(MES_FI) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_NOVOS'
      
        'WHERE (LINHA = 7 OR LINHA = 16 OR LINHA = 38 OR LINHA = 46 OR LI' +
        'NHA = 52)) '
      'WHERE LINHA = 53'
      ''
      
        '-- Lucro Bruto -------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_NOVOS SET '
      'MES_NOVOS = '
      '(SELECT SUM(MES_NOVOS) FROM FCTS_NOVOS'
      'WHERE (LINHA = 1 OR LINHA = 2))'
      'WHERE LINHA = 2'
      '')
    Left = 564
    Top = 64
  end
  object q_total_funilaria: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '--PARTE 1 ------------------------------------------------------' +
        '-------------------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'SALDO_ATUAL ='
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9))'
      'WHERE LINHA = 10'
      ''
      
        '--PARTE 2 ------------------------------------------------------' +
        '-------------------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'SALDO_ATUAL ='
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25))'
      'WHERE LINHA = 26'
      ''
      
        '--PARTE 3 ------------------------------------------------------' +
        '-------------------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'SALDO_ATUAL ='
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_FUNILARIA_PINTURA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32))'
      'WHERE LINHA = 33'
      ''
      
        '--PARTE 4 ------------------------------------------------------' +
        '-------------------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'SALDO_ATUAL ='
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37))'
      'WHERE LINHA = 38'
      ''
      
        '--PARTE 5 ------------------------------------------------------' +
        '-------------------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 38)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 38)),'
      'SALDO_ATUAL ='
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 38)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 32 OR LINHA = 37)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 32 OR LINHA = 37))'
      'WHERE LINHA = 39'
      ''
      
        '-- Lucro Bruto -------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_FUNILARIA_PINTURA SET '
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_FUNILARIA_PINTURA'
      'WHERE (LINHA = 1 OR LINHA = 2))'
      'WHERE LINHA = 2')
    Left = 324
    Top = 136
  end
  object q_total_oficina: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '-- PARTE 1------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA' +
        ' = 8 OR LINHA = 9))'
      'WHERE LINHA = 10'
      ''
      ''
      
        '-- PARTE 2 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 11 OR LINHA = 12 OR LINHA = 13 OR LINHA = 14 OR L' +
        'INHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR LINHA = 1' +
        '9'
      
        'OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23 OR LINHA' +
        ' = 24 OR LINHA = 25))'
      'WHERE LINHA = 26'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 27 OR LINHA = 28 OR LINHA = 29 OR LINHA = 30 OR L' +
        'INHA = 31 OR LINHA = 32))'
      'WHERE LINHA = 33'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR L' +
        'INHA = 38)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR L' +
        'INHA = 38)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR L' +
        'INHA = 38)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR L' +
        'INHA = 38)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_OFICINA_MECANICA'
      
        'WHERE (LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA = 37 OR L' +
        'INHA = 38))'
      'WHERE LINHA = 39'
      ''
      
        '-- PARTE 4 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 39)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 39)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 39)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 39)),'
      'TOTAL ='
      '(SELECT SUM(TOTAL) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 10 OR LINHA = 26 OR LINHA = 33 OR LINHA = 39))'
      'WHERE LINHA = 39'
      ''
      
        '-- Lucro Bruto -------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_OFICINA_MECANICA SET '
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_OFICINA_MECANICA'
      'WHERE (LINHA = 1 OR LINHA = 2))'
      'WHERE LINHA = 2')
    Left = 444
    Top = 136
  end
  object q_total_usados: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '-- PARTE 1------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 4 OR LINHA = 5 OR LINHA = 6))'
      'WHERE LINHA = 7'
      ''
      
        '-- PARTE 2------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LIN' +
        'HA = 12 OR LINHA = 13))'
      'WHERE LINHA = 14'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR L' +
        'INHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR'
      
        'LINHA = 23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26 OR LINHA = ' +
        '27 OR LINHA = 28)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR L' +
        'INHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR'
      
        'LINHA = 23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26 OR LINHA = ' +
        '27 OR LINHA = 28)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR L' +
        'INHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR'
      
        'LINHA = 23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26 OR LINHA = ' +
        '27 OR LINHA = 28)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR L' +
        'INHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR'
      
        'LINHA = 23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26 OR LINHA = ' +
        '27 OR LINHA = 28)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 15 OR LINHA = 16 OR LINHA = 17 OR LINHA = 18 OR L' +
        'INHA = 19 OR LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR'
      
        'LINHA = 23 OR LINHA = 24 OR LINHA = 25 OR LINHA = 26 OR LINHA = ' +
        '27 OR LINHA = 28))'
      'WHERE LINHA = 29'
      ''
      
        '-- PARTE 4------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34 OR LINHA = 35)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34 OR LINHA = 35)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34 OR LINHA = 35)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34 OR LINHA = 35)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34 OR LINHA = 35))'
      'WHERE LINHA = 36'
      ''
      
        '-- PARTE 5------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40 OR L' +
        'INHA = 41)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40 OR L' +
        'INHA = 41)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40 OR L' +
        'INHA = 41)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40 OR L' +
        'INHA = 41)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40 OR L' +
        'INHA = 41))'
      'WHERE LINHA = 42'
      ''
      
        '-- PARTE 6------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET'
      'SALDO_ANTERIOR = '
      '(SELECT SUM(SALDO_ANTERIOR) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 7 OR LINHA = 14 OR LINHA = 29 OR LINHA = 36 OR LI' +
        'NHA = 42)),'
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 7 OR LINHA = 14 OR LINHA = 29 OR LINHA = 36 OR LI' +
        'NHA = 42)),'
      'SALDO_ATUAL = '
      '(SELECT SUM(SALDO_ATUAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 7 OR LINHA = 14 OR LINHA = 29 OR LINHA = 36 OR LI' +
        'NHA = 42)),'
      'AJUSTES = '
      '(SELECT SUM(AJUSTES) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 7 OR LINHA = 14 OR LINHA = 29 OR LINHA = 36 OR LI' +
        'NHA = 42)),'
      'TOTAL = '
      '(SELECT SUM(TOTAL) FROM FCTS_VEICULOS_USADOS'
      
        'WHERE (LINHA = 7 OR LINHA = 14 OR LINHA = 29 OR LINHA = 36 OR LI' +
        'NHA = 42))'
      'WHERE LINHA = 43'
      ''
      
        '-- Lucro Bruto -------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_VEICULOS_USADOS SET '
      'MES = '
      '(SELECT SUM(MES) FROM FCTS_VEICULOS_USADOS'
      'WHERE (LINHA = 1 OR LINHA = 2))'
      'WHERE LINHA = 2')
    Left = 552
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = tb_usados
    Left = 44
    Top = 17
  end
  object DataSource2: TDataSource
    DataSet = tb_novos
    Left = 44
    Top = 89
  end
  object DataSource3: TDataSource
    DataSet = tb_pecas
    Left = 44
    Top = 161
  end
  object tb_receita_usados: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FCTS_RECEITA_USADOS'
    Left = 792
    Top = 432
    object tb_receita_usadosDESPESAS: TStringField
      FieldName = 'DESPESAS'
      Size = 200
    end
    object tb_receita_usadosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object tb_receita_usadosCONTA2: TIntegerField
      FieldName = 'CONTA2'
    end
    object tb_receita_usadosC1: TIntegerField
      FieldName = 'C1'
    end
    object tb_receita_usadosC2: TFloatField
      FieldName = 'C2'
    end
    object tb_receita_usadosC3: TFloatField
      FieldName = 'C3'
    end
    object tb_receita_usadosC4: TFloatField
      FieldName = 'C4'
    end
    object tb_receita_usadosC5: TFloatField
      FieldName = 'C5'
    end
    object tb_receita_usadosC6: TFloatField
      FieldName = 'C6'
    end
    object tb_receita_usadosC7: TFloatField
      FieldName = 'C7'
    end
    object tb_receita_usadosC8: TFloatField
      FieldName = 'C8'
    end
  end
  object DataSource9: TDataSource
    DataSet = tb_receita_usados
    Left = 40
    Top = 304
  end
  object q_total_receita_usados: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '-- PARTE 1------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6))'
      'WHERE LINHA = 7'
      ''
      
        '-- PARTE 2------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 8 OR LINHA = 9 OR LINHA = 10 OR LINHA = 11))'
      'WHERE LINHA = 12'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 18 OR LINHA = 19 OR LINHA = 20 OR LINHA = 21 OR L' +
        'INHA = 22 OR LINHA = 23 OR LINHA = 24'
      'OR LINHA = 25))'
      'WHERE LINHA = 26'
      ''
      
        '-- PARTE 4------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 26 OR LINHA = 27 OR LINHA = 28)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 31 OR LINHA = 32 OR LINHA = 33))'
      'WHERE LINHA = 29'
      ''
      
        '-- PARTE 5 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 30 OR LINHA = 31 OR LINHA = 32 OR LINHA = 33 OR L' +
        'INHA = 34))'
      'WHERE LINHA = 35'
      ''
      
        '-- PARTE 5------------------------------------------------------' +
        '-----------------'
      ''
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 35 OR LINHA = 36 OR LINHA = 37))'
      'WHERE LINHA = 38'
      ''
      
        '-- PARTE 6 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 29 OR LINHA = 38))'
      'WHERE LINHA = 39'
      ''
      
        '-- parte 7 -----------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 40 OR LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR L' +
        'INHA = 44 OR LINHA = 45))'
      'WHERE LINHA = 46'
      ''
      
        '-- PARTE 8 -----------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      
        'WHERE (LINHA = 47 OR LINHA = 48 OR LINHA = 49 OR LINHA = 50 OR L' +
        'INHA = 51 OR LINHA = 52 OR LINHA = 53 '
      'OR LINHA = 54))'
      'WHERE LINHA = 55'
      ''
      
        '-- PARTE 9 -----------------------------------------------------' +
        '-------------------------------------'
      ''
      'UPDATE FCTS_RECEITA_USADOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_USADOS'
      'WHERE (LINHA = 17 OR LINHA = 38 OR LINHA = 55))'
      'WHERE LINHA = 58')
    Left = 328
    Top = 64
  end
  object q_total_receita_novos: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        '-- PARTE 1------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_NOVOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C9 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19)),'
      'C10 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 1 OR LINHA = 2 OR LINHA = 3 OR LINHA = 4 OR LINHA' +
        ' = 5 OR LINHA = 6 OR LINHA = 7 OR LINHA = 8'
      
        'OR LINHA = 9 OR LINHA = 10 OR LINHA = 11 OR LINHA = 12 OR LINHA ' +
        '= 13 OR LINHA = 14 OR LINHA = 15 OR LINHA = 16'
      'OR LINHA = 17 OR LINHA = 18 OR LINHA = 19))'
      'WHERE LINHA = 20'
      ''
      
        '-- PARTE 2------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_NOVOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C9 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23)),'
      'C10 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 21 OR LINHA = 22 OR LINHA = 23))'
      'WHERE LINHA = 24'
      ''
      
        '-- PARTE 3 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_RECEITA_NOVOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C9 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40)),'
      'C10 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      
        'WHERE (LINHA = 25 OR LINHA = 26 OR LINHA = 27 OR LINHA = 28 OR L' +
        'INHA = 29 OR LINHA = 30 OR LINHA = 31 OR LINHA = 32'
      
        'OR LINHA = 33 OR LINHA = 34 OR LINHA = 35 OR LINHA = 36 OR LINHA' +
        ' = 37 OR LINHA = 38 OR LINHA = 39 OR LINHA = 40))'
      'WHERE LINHA = 41'
      ''
      
        '-- PARTE 4------------------------------------------------------' +
        '-----------------'
      ''
      'UPDATE FCTS_RECEITA_NOVOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C9 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44)),'
      'C10 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 41 OR LINHA = 42 OR LINHA = 43 OR LINHA = 44))'
      'WHERE LINHA = 45 '
      ''
      
        '-- PARTE 5 -----------------------------------------------------' +
        '------------------'
      ''
      'UPDATE FCTS_RECEITA_NOVOS SET'
      'C1 = '
      '(SELECT SUM(C1) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C2 = '
      '(SELECT SUM(C2) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C3 = '
      '(SELECT SUM(C3) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C4 = '
      '(SELECT SUM(C4) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C5 = '
      '(SELECT SUM(C5) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C6 = '
      '(SELECT SUM(C6) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C7 = '
      '(SELECT SUM(C7) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C8 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C9 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45)),'
      'C10 = '
      '(SELECT SUM(C8) FROM FCTS_RECEITA_NOVOS'
      'WHERE (LINHA = 20 OR LINHA = 24 OR LINHA = 41 OR LINHA = 45))'
      'WHERE LINHA = 48 ')
    Left = 656
    Top = 64
  end
  object q_consulta_os: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT COUNT(*) AS QUANTIDADE, (SUM(VALOR_SERVICOS_BRUTO) - SUM(' +
        'DESCONTOS_SERVICOS)) +  (SUM(VALOR_ITENS_BRUTO) - SUM(DESCONTOS_' +
        'ITENS)) AS VALOR, '
      ''
      
        #39'V1'#39' AS TIPO FROM OS WHERE DATA_ENCERRADA >= :data1 AND DATA_ENC' +
        'ERRADA <= :data2 AND (TIPO = '#39'V1'#39')'
      ''
      'AND STATUS_OS = 1 '
      ''
      ''
      ''
      'UNION'
      ''
      ''
      ''
      
        'SELECT COUNT(*) AS QUANTIDADE, (SUM(VALOR_SERVICOS_BRUTO) - SUM(' +
        'DESCONTOS_SERVICOS)) +  (SUM(VALOR_ITENS_BRUTO) - SUM(DESCONTOS_' +
        'ITENS)) AS VALOR, '
      ''
      
        #39'V2'#39' AS TIPO FROM OS WHERE DATA_ENCERRADA >= :data3 AND DATA_ENC' +
        'ERRADA <= :data4 AND (TIPO = '#39'V2'#39')'
      ''
      'AND STATUS_OS = 1'
      ''
      ''
      ''
      'UNION'
      ''
      ''
      ''
      
        'SELECT COUNT(*) AS QUANTIDADE, (SUM(VALOR_SERVICOS_BRUTO) - SUM(' +
        'DESCONTOS_SERVICOS)) +  (SUM(VALOR_ITENS_BRUTO) - SUM(DESCONTOS_' +
        'ITENS)) AS VALOR,'
      ''
      
        #39'V3'#39' AS TIPO FROM OS WHERE DATA_ENCERRADA >= :data5 AND DATA_ENC' +
        'ERRADA <= :data6 AND (TIPO = '#39'V3'#39')'
      ''
      'AND STATUS_OS = 1'
      ''
      ''
      ''
      'UNION'
      ''
      ''
      ''
      
        'SELECT COUNT(*) AS QUANTIDADE, (SUM(VALOR_SERVICOS_BRUTO) - SUM(' +
        'DESCONTOS_SERVICOS)) +  (SUM(VALOR_ITENS_BRUTO) - SUM(DESCONTOS_' +
        'ITENS)) AS VALOR,'
      ''
      
        #39'V4'#39' AS TIPO FROM OS WHERE DATA_ENCERRADA >= :data7 AND DATA_ENC' +
        'ERRADA <= :data8 AND (TIPO = '#39'V4'#39')'
      ''
      'AND STATUS_OS = 1'
      ''
      ''
      ''
      'UNION '
      ''
      ''
      ''
      
        'SELECT COUNT(*) AS QUANTIDADE, (SUM(VALOR_SERVICOS_BRUTO) - SUM(' +
        'DESCONTOS_SERVICOS)) +  (SUM(VALOR_ITENS_BRUTO) - SUM(DESCONTOS_' +
        'ITENS)) AS VALOR,  '
      ''
      
        #39'DS'#39' AS TIPO FROM OS WHERE DATA_ENCERRADA >= :data9 AND DATA_ENC' +
        'ERRADA <= :data10 AND (TIPO = '#39'DF'#39' OR TIPO = '#39'DR'#39' OR TIPO = '#39'DT'#39 +
        ' OR TIPO = '#39'D1'#39' OR '
      ''
      
        'TIPO = '#39'D2'#39' OR TIPO = '#39'D3'#39' OR TIPO = '#39'D4'#39' OR TIPO = '#39'D5'#39' OR TIPO' +
        ' = '#39'D8'#39' OR TIPO = '#39'D9'#39' OR TIPO = '#39'VD'#39')'
      ''
      'AND STATUS_OS = 1')
    Left = 41
    Top = 392
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
      end
      item
        Name = 'DATA7'
        ParamType = ptInput
      end
      item
        Name = 'DATA8'
        ParamType = ptInput
      end
      item
        Name = 'DATA9'
        ParamType = ptInput
      end
      item
        Name = 'DATA10'
        ParamType = ptInput
      end>
  end
  object q_buscar_usados: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM (SELECT COUNT(*) AS QUANTIDADE '
      'FROM VEICULOS WHERE DATA_VENDA >= :data1'
      'AND DATA_VENDA <= :data2 AND NOVO_USADO = '#39'U'#39')')
    Left = 40
    Top = 472
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
  object q_buscar_novos: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT COD_PRODUTO, COUNT(*) AS QUANTIDADE FROM V' +
        'EICULOS '
      
        'WHERE DATA_VENDA >= :data1 AND DATA_VENDA <= :data2 AND NOVO_USA' +
        'DO = '#39'N'#39' GROUP BY (COD_PRODUTO))')
    Left = 145
    Top = 520
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
