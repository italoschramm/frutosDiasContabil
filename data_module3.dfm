object dm3: Tdm3
  OldCreateOrder = False
  Height = 675
  Width = 920
  object q_entradas_bancos: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      
        'SELECT COD_CONTA_CORRENTE, COD_ORIGEM_LANC, SUM(VALOR) AS VALOR ' +
        'FROM LCONTAS '
      
        'WHERE TRUNC(DATA) >= :data and TRUNC(DATA) <= :data2 AND DB_CR =' +
        ' '#39'C'#39' '
      'GROUP BY (COD_CONTA_CORRENTE, COD_ORIGEM_LANC))')
    Left = 251
    Top = 48
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      
        'SELECT COD_CONTA_CORRENTE, COD_ORIGEM_LANC, SUM(VALOR) AS VALOR ' +
        'FROM LCONTAS '
      
        'WHERE TRUNC(DATA) >= :data AND TRUNC(DATA) <= :data2 AND DB_CR =' +
        ' '#39'C'#39' '
      'AND (COD_ORIGEM_LANC <> 35 AND COD_ORIGEM_LANC <> 8) '
      'GROUP BY (COD_CONTA_CORRENTE, COD_ORIGEM_LANC))')
    Left = 259
    Top = 120
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_seminovos: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(B.VALOR_PRINCIPAL) AS VALOR, B.COD_CON' +
        'TA_TESOURARIA AS CONTA_BAIXA FROM VW_CRECEBER A, BAIXA_CONTAS_RE' +
        'CEBER B '
      
        'WHERE A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_TIPO_FATURA = B.CO' +
        'D_TIPO_FATURA AND A.DATA_EMISSAO = B.DATA_EMISSAO'
      
        'AND A.NR_FATURA = B.NR_FATURA AND A.PARCELA = B.PARCELA AND TRUN' +
        'C(B.DATA_BAIXA) >= :data1 AND TRUNC(B.DATA_BAIXA) <= :data2  AND' +
        ' A.COD_NATUREZA_RECEITA_DESPESA = 151'
      'GROUP BY (B.COD_CONTA_TESOURARIA))')
    Left = 264
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
  object q_entradas_cartao: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT *  FROM ('
      
        'SELECT CONTA_BAIXA, (SUM(VALOR) - SUM(VALOR_DESPESA)) AS VALOR F' +
        'ROM CRECEBER_CARTAO_PARC WHERE DATA_BAIXA >= :data AND DATA_BAIX' +
        'A <= :data2 GROUP BY (CONTA_BAIXA))')
    Left = 419
    Top = 48
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_transferencias2: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      
        'DATA >= :data AND DATA <= :data2 AND (CONTA_DB = 528 OR CONTA_DB' +
        ' = 474 OR CONTA_DB = 480 OR CONTA_DB = 501 OR CONTA_DB = 482 OR'
      
        'CONTA_DB = 526 OR CONTA_DB = 538 OR CONTA_DB = 584 OR CONTA_DB =' +
        ' 634 OR CONTA_DB = 633 OR'
      'CONTA_DB = 600 OR CONTA_DB = 546 AND CONTA_DB = 539) AND'
      '(CONTA_CR = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 419
    Top = 128
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_entradas_bancos_transferencias: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      ''
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_CR AND A.DATA = B.DATA_CR A' +
        'ND A.DB_CR = '#39'C'#39' AND A.LANC = B.LANC_CR AND '
      ''
      
        'DATA >= :data AND DATA <= :data2 AND (CONTA_DB <> 528 AND CONTA_' +
        'DB <> 474 AND CONTA_DB <> 480 AND CONTA_DB <> 501 AND CONTA_DB <' +
        '> 482 AND'
      ''
      
        'CONTA_DB <> 526 AND CONTA_DB <> 538 AND CONTA_DB <> 584 AND CONT' +
        'A_DB <> 634 AND CONTA_DB <> 633 AND'
      ''
      'CONTA_DB <> 600 AND CONTA_DB <> 546 AND CONTA_DB <> 639) AND'
      ''
      '(CONTA_CR = :conta)'
      ''
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 427
    Top = 216
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_fornecedor: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 147 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 148 OR C.COD_NATUREZA_RECEITA_DESPESA = 149 OR C.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 214 '
      ' OR C.COD_NATUREZA_RECEITA_DESPESA = 150)'
      ' AND'
      
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
        ' '#39'2558157001215'#39' AND C.COD_CLIENTE <> '#39'33000118000500'#39' AND C.COD' +
        '_CLIENTE <> '#39'28707834000150'#39' AND C.COD_CLIENTE <> '#39'1101151600015' +
        '8'#39' AND'
      
        'C.COD_CLIENTE <> '#39'59275792008991'#39' AND C.COD_CLIENTE <> '#39'59275792' +
        '002799'#39' AND COD_CLIENTE <> '#39'41474970559'#39' AND COD_CLIENTE <> '#39'104' +
        '75988000280'#39' AND COD_CLIENTE <> '#39'15145717000189'#39')'
      ''
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data3 AND TRUNC(A.DATA_BAIXA) <= :data4' +
        ') AND '
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 147 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 148 OR C.COD_NATUREZA_RECEITA_DESPESA = 149 OR C.COD_N' +
        'ATUREZA_RECEITA_DESPESA = 214 '
      ' OR C.COD_NATUREZA_RECEITA_DESPESA = 150)'
      ' AND'
      
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
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 603
    Top = 56
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
  object q_saidas_bancos_transferencias2: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'DATA >= :data AND DATA <= :data2 AND (CONTA_CR = 528 OR CONTA_CR' +
        ' = 474 OR CONTA_CR = 480 OR CONTA_CR = 501 OR CONTA_CR = 482 OR'
      
        'CONTA_CR = 526 OR CONTA_CR = 538 OR CONTA_CR = 584 OR CONTA_CR =' +
        ' 634 OR CONTA_CR = 633 OR'
      'CONTA_CR = 600 OR CONTA_CR = 546 OR CONTA_CR = 639) AND'
      '(CONTA_DB = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 603
    Top = 136
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_transferencias: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(VALOR) AS VALOR, A.DATA FROM LCONTAS A' +
        ', TRANSFERENCIA_LCONTAS B '
      
        'WHERE A.COD_CONTA_CORRENTE = B.CONTA_DB AND A.DATA = B.DATA_DB A' +
        'ND A.DB_CR = '#39'D'#39' AND A.LANC = B.LANC_DB AND '
      
        'DATA >= :data AND DATA <= :data2 AND (CONTA_CR <> 528 AND CONTA_' +
        'CR <> 474 AND CONTA_CR <> 480 AND CONTA_CR <> 501 AND CONTA_CR <' +
        '> 482 AND'
      
        'CONTA_CR <> 526 AND CONTA_CR <> 538 AND CONTA_CR <> 584 AND CONT' +
        'A_CR <> 634 AND CONTA_CR <> 633 AND'
      'CONTA_CR <> 600 AND CONTA_CR <> 546 AND CONTA_CR <> 639) AND'
      '(CONTA_DB = :conta)'
      'AND B.COD_EMPRESA = 2 GROUP BY A.DATA) ')
    Left = 603
    Top = 216
    ParamData = <
      item
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object q_saidas_bancos_semi_novos: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
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
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 145 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 146) '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 275
    Top = 304
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
  object q_saidas_bancos_pecas: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1) AND (TRUNC(A.DATA_BAIXA) <= :dat' +
        'a2) AND (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'592757' +
        '92002799'#39' OR COD_CLIENTE = '#39'59275792000150'#39')'
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
      'AND A.DATA_BAIXA >= :data3 AND A.DATA_BAIXA <= :data4'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'E'#39')'
      
        'AND (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'5927579200' +
        '2799'#39' OR COD_CLIENTE = '#39'59275792000150'#39')'
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
      'AND A.DATA >= :data5 AND A.DATA <= :data6'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'S'#39')'
      
        'AND (COD_CLIENTE = '#39'59275792008991'#39' OR COD_CLIENTE = '#39'5927579200' +
        '2799'#39' OR COD_CLIENTE = '#39'59275792000150'#39')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 435
    Top = 304
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
  object q_saidas_bancos_salarios: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 215'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 611
    Top = 304
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
  object q_saidas_bancos_aluguel: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
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
      
        '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND (B.DB_' +
        'CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'04279183000187'#39' OR COD_CLIENTE = '#39'34433847000181' +
        #39') '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 275
    Top = 384
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
  object q_saidas_bancos_imposto: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM('
      
        'SELECT A.VALOR_PRINCIPAL AS VALOR, A.COD_CONTA_CORRENTE FROM BAI' +
        'XA_CONTA_PAGAR A, LCONTAS B, CONTA_PAGAR C'
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_CONTA_CORRENTE = ' +
        'B.COD_CONTA_CORRENTE AND A.LANC = B.LANC AND A.DATA = B.DATA) AN' +
        'D'
      
        '(A.COD_EMPRESA = C.COD_EMPRESA AND A.ANO_PPAG = C.ANO_PPAG AND A' +
        '.LANCAMENTO = C.LANCAMENTO AND A.PARCELA = C.PARCELA AND A.PARCI' +
        'AL = C.PARCIAL) AND'
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
        '(COD_CLIENTE = '#39'394460005887'#39' OR COD_CLIENTE = '#39'13927801000491'#39' ' +
        'OR COD_CLIENTE = '#39'360305000104'#39' OR'
      
        'COD_CLIENTE = '#39'13937073000156'#39' OR COD_CLIENTE = '#39'29979036000140'#39 +
        ' OR COD_CLIENTE = '#39'13937073000318'#39' OR'
      'COD_CLIENTE = '#39'13927801000149'#39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E (DATA >= :data3 AND DATA <= :data4)'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 224'
      'GROUP BY COD_CONTA_CORRENTE'
      ')'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 435
    Top = 376
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
  object q_saidas_bancos_veiculos: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND C.TIPO_DOCUMENTO <> '#39'DV'#39' AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 143 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 144)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'BAIXA_ADIANTAMENTO A, LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND '
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 143 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 144)'
      ')'
      ''
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 603
    Top = 368
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
  object q_saidas_bancos_venda_direta: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      '(C.COD_NATUREZA_RECEITA_DESPESA = 200)'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND '
      '(C.COD_NATUREZA_RECEITA_DESPESA = 200)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 275
    Top = 472
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
  object q_saidas_bancos_acionistas: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
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
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND '
      
        '(COD_CLIENTE = '#39'23725486549'#39' OR COD_CLIENTE = '#39'21560684534'#39' OR C' +
        'OD_CLIENTE = '#39'4141032549'#39') AND (C.COD_NATUREZA_RECEITA_DESPESA =' +
        ' 149)'
      ')'
      ''
      'GROUP BY COD_CONTA_CORRENTE '
      ''
      ''
      ''
      '')
    Left = 435
    Top = 464
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
  object q_saidas_bancos_seguro: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
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
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND '
      
        '(COD_CLIENTE = '#39'33041062000958'#39' OR COD_CLIENTE = '#39'61100145000159' +
        #39') AND (C.COD_NATUREZA_RECEITA_DESPESA = 149)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 603
    Top = 456
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
  object q_saidas_bancos_consorcio: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1) AND (TRUNC(A.DATA_BAIXA) <= :dat' +
        'a2) AND'
      
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
      'AND A.DATA_BAIXA >= :data3 AND A.DATA_BAIXA <= :data4'
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
      'AND A.DATA >= :data5 AND A.DATA <= :data6'
      'AND (A.TIPO_ADIANTAMENTO = C.TIPO_ADIANTAMENTO)'
      'AND (C.NATUREZA = '#39'S'#39')'
      
        'AND (A.COD_NATUREZA_RECEITA_DESPESA = 202 OR A.COD_NATUREZA_RECE' +
        'ITA_DESPESA = 203)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 275
    Top = 536
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
  object q_saidas_bancos_tarifas: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 217'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 435
    Top = 536
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
  object q_saidas_bancos_clientes: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND C.TIPO_DOCUMENTO = '#39'DV'#39' AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 143 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 144)'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 611
    Top = 528
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
  object q_saidas_bancos_juros: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 218'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 115
    Top = 528
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
  object q_entradas_financiamento_gmac: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      
        '(SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESO' +
        'URARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS' +
        '_RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 '
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
      
        '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND (B.DB_' +
        'CR = '#39'C'#39') AND'
      '(C.COD_NATUREZA_RECEITA_DESPESA = 288) '
      ')'
      ')')
    Left = 112
    Top = 216
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
  object q_entradas_financiamento_outros: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 300'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 107
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
  object q_entradas_seguradora: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 265'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 107
    Top = 360
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
  object q_entradas_boletos: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2'
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 275'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 107
    Top = 440
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
  object q_entradas_consorcio_gmac: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 '
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 291'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 773
    Top = 136
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
  object q_entradas_consorcio_outros: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE FROM CONTAS_RECEBER A, BAIXA_CONTAS_' +
        'RECEBER B'
      
        'WHERE TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :' +
        'data2 '
      'AND A.COD_EMPRESA = 2 AND A.COD_FORMA_COBRANCA = 301'
      'AND (A.COD_EMPRESA = B.COD_EMPRESA)'
      'AND (A.COD_TIPO_FATURA = B.COD_TIPO_FATURA)'
      'AND (A.NR_FATURA = B.NR_FATURA)'
      'AND (A.DATA_EMISSAO = B.DATA_EMISSAO)'
      'AND (A.PARCELA = B.PARCELA)'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 773
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
  object q_saidas_bancos_pj: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND (B.DB_CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'26813602000151'#39' OR COD_CLIENTE = '#39'27700102000176' +
        #39' OR COD_CLIENTE = '#39'22093586000153'#39' OR COD_CLIENTE = '#39'1366774200' +
        '0117'#39' OR COD_CLIENTE = '#39'22321912000106'#39')'
      ''
      'UNION ALL'
      ''
      
        'SELECT B.VALOR, B.COD_CONTA_CORRENTE AS COD_CONTA_CORRENTE FROM ' +
        'LCONTAS B, ADIANTAMENTO C'
      
        'WHERE (B.COD_EMPRESA = C.COD_EMPRESA AND B.COD_CONTA_CORRENTE = ' +
        'C.COD_CONTA_CORRENTE AND B.DATA = C.DATA AND B.LANC = C.LANC) AN' +
        'D'
      
        '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND (B.DB_' +
        'CR = '#39'D'#39') AND'
      
        '(COD_CLIENTE = '#39'26813602000151'#39' OR COD_CLIENTE = '#39'27700102000176' +
        #39' OR COD_CLIENTE = '#39'22093586000153'#39' OR COD_CLIENTE = '#39'1366774200' +
        '0117'#39' OR COD_CLIENTE = '#39'22321912000106'#39')'
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 768
    Top = 296
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
  object q_saidas_bancos_ferias: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 220'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 768
    Top = 368
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
  object q_saidas_bancos_rescisoes: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 221'
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 768
    Top = 440
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
  object q_saidas_bancos_emplacamento: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND OBSERVACAO = '#39'EMPLACAMENTO'#39
      'GROUP BY COD_CONTA_CORRENTE')
    Left = 768
    Top = 512
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
  object q_saidas_bancos_judiciais: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 225'
      'GROUP BY COD_CONTA_CORRENTE'
      '')
    Left = 752
    Top = 584
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
  object q_saidas_bancos_cheque: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT SUM(VALOR) AS VALOR, COD_CONTA_CORRENTE FROM LCONTAS WHER' +
        'E DATA >= :data1 AND DATA <= :data2'
      'AND DB_CR = '#39'D'#39' AND COD_NATUREZA_RECEITA_DESPESA = 226'
      'GROUP BY COD_CONTA_CORRENTE'
      '')
    Left = 768
    Top = 56
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
  object FDQuery1: TFDQuery
    Connection = dm.conexao_oracle
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
      
        '(TRUNC(A.DATA_BAIXA) >= :data1 AND TRUNC(A.DATA_BAIXA) <= :data2' +
        ') AND'
      
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
      '(B.DB_CR = '#39'D'#39') AND'
      '(TRUNC(B.DATA) >= :data3 AND TRUNC(B.DATA) <= :data4) AND'
      
        '(C.COD_NATUREZA_RECEITA_DESPESA = 145 OR C.COD_NATUREZA_RECEITA_' +
        'DESPESA = 146) '
      ')'
      'GROUP BY COD_CONTA_CORRENTE ')
    Left = 104
    Top = 96
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
  object q_entradas_bancos_comissao: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT NVL(SUM(B.VALOR_PRINCIPAL),0) AS VALOR, B.COD_CONTA_TESOU' +
        'RARIA AS COD_CONTA_CORRENTE '
      'FROM CONTAS_RECEBER A, BAIXA_CONTAS_RECEBER B, FATURA_RECEBER C'
      
        'WHERE (TRUNC(B.DATA_BAIXA) >= :data1 AND TRUNC(B.DATA_BAIXA) <= ' +
        ':data2)'
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
        '05000113'#39')'
      'GROUP BY B.COD_CONTA_TESOURARIA')
    Left = 120
    Top = 600
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
