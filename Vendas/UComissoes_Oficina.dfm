object f_comissoes_oficina: Tf_comissoes_oficina
  Left = 0
  Top = 0
  Caption = 'f_comissoes_oficina'
  ClientHeight = 582
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 97
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 33
      Width = 28
      Height = 14
      Caption = 'M'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 33
      Width = 29
      Height = 14
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb1: TLabel
      Left = 896
      Top = 26
      Width = 120
      Height = 19
      Caption = 'Total NFs:   R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lb2: TLabel
      Left = 1022
      Top = 26
      Width = 50
      Height = 19
      Caption = 'label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lb3: TLabel
      Left = 896
      Top = 56
      Width = 100
      Height = 19
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lb4: TLabel
      Left = 1022
      Top = 56
      Width = 50
      Height = 19
      Caption = 'label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btpesquisar: TBitBtn
      Left = 521
      Top = 24
      Width = 100
      Height = 30
      Caption = 'Gerar Comiss'#227'o'
      TabOrder = 0
      OnClick = btpesquisarClick
    end
    object cbmes: TComboBox
      Left = 104
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object cbano: TComboBox
      Left = 289
      Top = 31
      Width = 64
      Height = 21
      TabOrder = 2
      Items.Strings = (
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object btimprimir: TButton
      Left = 640
      Top = 24
      Width = 97
      Height = 30
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 3
      OnClick = btimprimirClick
    end
    object Button1: TButton
      Left = 401
      Top = 23
      Width = 100
      Height = 31
      Caption = 'Abrir'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 878
    Height = 485
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 876
      Height = 483
      Align = alClient
      Color = clBtnFace
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'MES_ANO'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's/Ano'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'COD_TECNICO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod Prod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'NOME_TECNICO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produtivo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'VALOR_MDO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor MDO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'VALOR_PECAS'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pe'#231'as'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = tb_tela
    Left = 168
    Top = 281
  end
  object q_inserir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'numero_os'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'cod_servico'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'franquia'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO VENDAS_COMISSOES_PRODUTIVOS (MES_ANO, NUMERO_OS, NOM' +
        'E, COD_SERVICO, VALOR, COD_TECNICO, FRANQUIA)'
      
        'VALUES (:mes_ano, :numero_os, :nome, :cod_servico, :valor, :cod_' +
        'tecnico, :franquia)')
    Left = 344
    Top = 281
  end
  object q_deleta: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM VENDAS_COMISSOES_PRODUTIVOS WHERE '
      'MES_ANO = :mes_ano')
    Left = 160
    Top = 369
  end
  object q_pesquisa2: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NUMERO_OS FROM VENDAS_COMISSOES_PRODUTIVOS '
      'WHERE MES_ANO = :mes_ano'
      'GROUP BY NUMERO_OS')
    Left = 344
    Top = 185
  end
  object q_pesquisa3: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'numero_os'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NUMERO_OS, COD_SERVICO FROM VENDAS_COMISSOES_PRODUTIVOS'
      'WHERE NUMERO_OS = :numero_os'
      'GROUP BY NUMERO_OS, COD_SERVICO')
    Left = 264
    Top = 185
  end
  object q_inserir2: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
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
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'numero_os'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO VENDAS_PRODUTIVOS (COD_TECNICO, NOME_TECNICO, FATURA' +
        'MENTO, MES_ANO, NUMERO_OS) '
      'VALUES (:cod_tecnico, :nome, :valor, :mes_ano, :numero_os)')
    Left = 264
    Top = 369
  end
  object q_pesquisa4: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'numero_os1'
        Size = -1
        Value = Null
      end
      item
        Name = 'cod_servico1'
        Size = -1
        Value = Null
      end
      item
        Name = 'numero_os2'
        Size = -1
        Value = Null
      end
      item
        Name = 'cod_servico2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT *, (SELECT TOP 1 COUNT(COD_SERVICO) FROM VENDAS_COMISSOES' +
        '_PRODUTIVOS'
      'WHERE NUMERO_OS = :numero_os1 AND COD_SERVICO = :cod_servico1'
      'GROUP BY VALOR, COD_SERVICO) AS QUANTIDADE '
      'FROM VENDAS_COMISSOES_PRODUTIVOS '
      'WHERE NUMERO_OS = :numero_os2 AND COD_SERVICO = :cod_servico2')
    Left = 168
    Top = 185
  end
  object q_inserir3: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'numero_os'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 300
        Value = Null
      end
      item
        Name = 'cod_servico'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO VENDAS_PRODUTIVOS_PECAS (MES_ANO, NUMERO_OS, NOME, C' +
        'OD_SERVICO, VALOR, COD_TECNICO)'
      
        'VALUES (:mes_ano, :numero_os, :nome, :cod_servico, :valor, :cod_' +
        'tecnico)')
    Left = 248
    Top = 441
  end
  object q_pesquisa5: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'numero_os1'
        Size = -1
        Value = Null
      end
      item
        Name = 'cod_servico1'
        Size = -1
        Value = Null
      end
      item
        Name = 'numero_os2'
        Size = -1
        Value = Null
      end
      item
        Name = 'cod_servico2'
        Size = -1
        Value = Null
      end
      item
        Name = 'cod_tecnico'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT *, (SELECT TOP 1 COUNT(COD_SERVICO) FROM VENDAS_PRODUTIVO' +
        'S_PECAS'
      'WHERE NUMERO_OS = :numero_os1 AND COD_SERVICO = :cod_servico1'
      'GROUP BY VALOR, COD_SERVICO) AS QUANTIDADE '
      'FROM VENDAS_PRODUTIVOS_PECAS'
      
        'WHERE NUMERO_OS = :numero_os2 AND COD_SERVICO = :cod_servico2 AN' +
        'D COD_TECNICO = :cod_tecnico')
    Left = 424
    Top = 441
  end
  object q_pesquisa_simples: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT NUMERO_OS, COD_SERVICO, COD_TECNICO  FROM VENDAS_PRODUTIV' +
        'OS_PECAS'
      'WHERE MES_ANO = :mes_ano'
      'GROUP BY NUMERO_OS, COD_SERVICO, COD_TECNICO')
    Left = 336
    Top = 441
  end
  object q_inserir4: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 300
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
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'numero_os'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO VENDAS_PRODUTIVOS_RESUMO (COD_TECNICO, NOME_TECNICO,' +
        ' FATURAMENTO, MES_ANO, NUMERO_OS) '
      'VALUES (:cod_tecnico, :nome, :valor, :mes_ano, :numero_os)')
    Left = 160
    Top = 441
  end
  object q_aux: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT NUMERO_OS FROM VENDAS_COMISSOES_PRODUTIVOS'
      'WHERE MES_ANO = :mes_ano'
      'GROUP BY NUMERO_OS')
    Left = 632
    Top = 145
  end
  object q_tela1: TADOQuery
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT MES_ANO, COD_TECNICO, NOME, SUM(VALOR) AS VALOR'
      'FROM VENDAS_COMISSOES_PRODUTIVOS'
      'WHERE MES_ANO = :mes_ano'
      'GROUP BY MES_ANO, COD_TECNICO, NOME ')
    Left = 632
    Top = 401
    object q_tela1MES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object q_tela1COD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
    end
    object q_tela1NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object q_tela1VALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
  object q_inserir_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nome_tecnico'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'valor_mdo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      ' INSERT INTO VENDAS_PRODUTIVOS_TELA'
      ' (MES_ANO, COD_TECNICO, NOME_TECNICO, VALOR_MDO)'
      ' VALUES (:mes_ano, :cod_tecnico, :nome_tecnico, :valor_mdo)')
    Left = 632
    Top = 457
  end
  object q_tela2: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        ' SELECT MES_ANO, COD_TECNICO, NOME_TECNICO, SUM(FATURAMENTO) AS ' +
        'VALOR '
      ' FROM VENDAS_PRODUTIVOS_RESUMO '
      ' WHERE MES_ANO = :mes_ano'
      ' GROUP BY MES_ANO, COD_TECNICO, NOME_TECNICO')
    Left = 720
    Top = 401
  end
  object q_atualiza_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'valor_pecas'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'cod_tecnico'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE VENDAS_PRODUTIVOS_TELA SET VALOR_PECAS = :valor_pecas '
      ' WHERE COD_TECNICO = :cod_tecnico AND MES_ANO = :mes_ano')
    Left = 720
    Top = 457
  end
  object tb_tela: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'VENDAS_PRODUTIVOS_TELA'
    Left = 488
    Top = 369
    object tb_telaMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object tb_telaCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
    end
    object tb_telaNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
    object tb_telaVALOR_MDO: TFloatField
      FieldName = 'VALOR_MDO'
      currency = True
    end
    object tb_telaVALOR_PECAS: TFloatField
      FieldName = 'VALOR_PECAS'
      currency = True
    end
  end
  object rv_comissao: TRvProject
    ProjectFile = 'rel_comissao_produtivo.rav'
    Left = 48
    Top = 200
  end
  object q_rel1: TADOQuery
    Active = True
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MES_ANO, NOME_TECNICO, VALOR_MDO, VALOR_PECAS, (VALOR_MDO' +
        ' + VALOR_PECAS) AS TOTAL,'
      'CASE'
      'WHEN (VALOR_MDO + VALOR_PECAS) < 50000 THEN 5.5'
      'WHEN (VALOR_MDO + VALOR_PECAS) > 49999.99 THEN 6'
      'END '
      'AS PERCENTUAL,'
      'CASE '
      
        'WHEN (VALOR_MDO + VALOR_PECAS) < 50000 THEN ROUND(((VALOR_MDO + ' +
        'VALOR_PECAS)*5.5)/100,2)'
      
        'WHEN (VALOR_MDO + VALOR_PECAS) > 50000 THEN ROUND(((VALOR_MDO + ' +
        'VALOR_PECAS)*6)/100,2)'
      'END'
      'AS TOTAL2 '
      'FROM VENDAS_PRODUTIVOS_TELA')
    Left = 728
    Top = 313
    object q_rel1MES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object q_rel1NOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
    object q_rel1VALOR_MDO: TFloatField
      FieldName = 'VALOR_MDO'
      currency = True
    end
    object q_rel1VALOR_PECAS: TFloatField
      FieldName = 'VALOR_PECAS'
      currency = True
    end
    object q_rel1TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
    end
    object q_rel1PERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      ReadOnly = True
      Precision = 2
      Size = 1
    end
    object q_rel1TOTAL2: TFloatField
      FieldName = 'TOTAL2'
      ReadOnly = True
      currency = True
    end
  end
  object dt1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_rel1
    Left = 728
    Top = 217
  end
  object q_rel: TADOQuery
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mes_ano'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT MES_ANO, NOME_TECNICO FROM VENDAS_PRODUTIVOS_TELA'
      'WHERE MES_ANO = :mes_ano'
      'GROUP BY MES_ANO, NOME_TECNICO ')
    Left = 728
    Top = 273
    object q_relMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object q_relNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 50
    end
  end
  object dt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_rel
    Left = 736
    Top = 152
  end
  object q_pesquisa1: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT B.NUMERO_OS, C.NOME, D.COD_SERVICO, A.FRANQUIA,'
      ''
      'D.PRECO_VENDA - NVL(D.DESCONTO_RATEADO,0)'
      ''
      
        'AS VALOR, C.COD_TECNICO, A.FRANQUIA FROM OS A, OS_TEMPOS_EXECUTA' +
        'DOS B, SERVICOS_TECNICOS C, OS_SERVICOS D'
      ''
      
        'WHERE (A.NUMERO_OS = B.NUMERO_OS AND A.COD_EMPRESA = B.COD_EMPRE' +
        'SA) AND A.STATUS_OS = 1'
      ''
      'AND B.DATA_SAIDA IS NOT NULL'
      ''
      
        'AND (A.NUMERO_OS = D.NUMERO_OS AND A.COD_EMPRESA = D.COD_EMPRESA' +
        ')'
      ''
      
        'AND (B.NUMERO_OS = D.NUMERO_OS AND B.COD_EMPRESA = D.COD_EMPRESA' +
        ' AND B.COD_SERVICO = D.COD_SERVICO AND B.ITEM = D.ITEM)'
      ''
      
        'AND(B.COD_TECNICO = C.COD_TECNICO AND B.COD_EMPRESA = C.COD_EMPR' +
        'ESA) AND (TRUNC(A.DATA_ENCERRADA) >= :data1 AND  TRUNC(A.DATA_EN' +
        'CERRADA) <= :data2)'
      ''
      '')
    Left = 48
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
  object q_pesquisa_franquia: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT B.* FROM OS A, OS_SERVICOS B'
      'WHERE A.NUMERO_OS = B.NUMERO_OS'
      'AND A.FRANQUIA IS NOT NULL'
      'AND A.NUMERO_OS = :numero_os'
      'AND B.COD_SERVICO = :cod_servico')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'NUMERO_OS'
        ParamType = ptInput
      end
      item
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
  end
  object q_pesquisa_pecas: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT A.NUMERO_OS, C.NOME, D.COD_SERVICO, A.FRANQUIA,( G.PRECO_' +
        'LIQUIDO - G.DESCONTO_RATEADO) AS VALOR,'
      ''
      ''
      ''
      ''
      ''
      
        'C.COD_TECNICO, A.FRANQUIA, G.COD_ITEM FROM OS A, OS_TEMPOS_EXECU' +
        'TADOS B, SERVICOS_TECNICOS C, OS_SERVICOS D, OS_REQUISICOES E, V' +
        'ENDAS F, VENDA_ITENS G'
      ''
      ''
      ''
      ''
      ''
      
        'WHERE (A.NUMERO_OS = B.NUMERO_OS AND A.COD_EMPRESA = B.COD_EMPRE' +
        'SA) AND A.STATUS_OS = 1'
      ''
      ''
      ''
      ''
      ''
      'AND B.DATA_SAIDA IS NOT NULL'
      ''
      ''
      ''
      ''
      ''
      
        'AND (A.NUMERO_OS = D.NUMERO_OS AND A.COD_EMPRESA = D.COD_EMPRESA' +
        ')'
      ''
      ''
      ''
      ''
      ''
      
        'AND (B.NUMERO_OS = D.NUMERO_OS AND B.COD_EMPRESA = D.COD_EMPRESA' +
        ' AND B.COD_SERVICO = D.COD_SERVICO AND B.ITEM = D.ITEM)'
      ''
      ''
      ''
      ''
      ''
      
        'AND (D.NUMERO_OS = E.NUMERO_OS AND D.COD_EMPRESA = E.COD_EMPRESA' +
        ' AND D.COD_SERVICO = E.COD_SERVICO)'
      ''
      ''
      ''
      ''
      ''
      
        'AND (E.COD_EMPRESA = F.COD_EMPRESA AND F.NUMERO_OS = E.NUMERO_OS' +
        ')'
      ''
      ''
      ''
      ''
      ''
      
        'AND (E.COD_EMPRESA = G.COD_EMPRESA AND E.COD_FORNECEDOR = G.COD_' +
        'FORNECEDOR AND E.REQUISICAO = G.REQUISICAO AND E.COD_ITEM = G.CO' +
        'D_ITEM)'
      ''
      ''
      ''
      ''
      ''
      
        'AND (G.COD_EMPRESA = F.COD_EMPRESA AND G.SERIE = F.SERIE AND G.C' +
        'ONTROLE = F.CONTROLE)'
      ''
      ''
      ''
      ''
      ''
      
        'AND(B.COD_TECNICO = C.COD_TECNICO AND B.COD_EMPRESA = C.COD_EMPR' +
        'ESA) '
      ''
      ''
      ''
      ''
      ''
      
        'AND B.COD_TECNICO = :cod_tecnico AND A.NUMERO_OS = :numero_os AN' +
        'D B.COD_SERVICO = :cod_servico')
    Left = 48
    Top = 441
    ParamData = <
      item
        Name = 'COD_TECNICO'
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_OS'
        ParamType = ptInput
      end
      item
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
  end
  object q_aux1: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM OS_SERVICOS'
      ''
      'WHERE NUMERO_OS = :numero_os')
    Left = 48
    Top = 513
    ParamData = <
      item
        Name = 'NUMERO_OS'
        ParamType = ptInput
      end>
  end
  object q_aux2: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT A.COD_TECNICO, B.NOME FROM OS_TEMPOS_EXECU' +
        'TADOS A, SERVICOS_TECNICOS B'
      ''
      ''
      ''
      'WHERE A.NUMERO_OS = :numero_os'
      ''
      ''
      ''
      'AND A.ITEM = :cod_item AND A.COD_SERVICO = :cod_servico'
      ''
      ''
      ''
      
        'AND (A.COD_EMPRESA = B.COD_EMPRESA AND A.COD_TECNICO = B.COD_TEC' +
        'NICO)'
      ''
      ''
      ''
      'GROUP BY A.COD_TECNICO, B.NOME)')
    Left = 160
    Top = 513
    ParamData = <
      item
        Name = 'NUMERO_OS'
        ParamType = ptInput
      end
      item
        Name = 'COD_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
  end
  object q_aux3: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      
        'SELECT * FROM (SELECT SUM(B.PRECO_UNITARIO * B.QTDE) - SUM(B.DES' +
        'CONTO_RATEADO)  AS VALOR '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'FROM OS_REQUISICOES A, VENDA_ITENS B, VENDAS C'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'WHERE (A.COD_EMPRESA = B.COD_EMPRESA)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'AND (A.COD_ITEM = B.COD_ITEM)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'AND (A.REQUISICAO = B.REQUISICAO)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'AND (B.COD_EMPRESA = C.COD_EMPRESA AND B.SERIE = C.SERIE AND B.C' +
        'ONTROLE = C.CONTROLE)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'AND C.STATUS <> 1'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'AND A.NUMERO_OS = :numero_os'
      ''
      ''
      ''
      ''
      ''
      ''
      'AND A.ITEM = :cod_item'
      ''
      ''
      ''
      ''
      'AND B.GRUPO <> 3'
      ''
      ''
      'AND COD_SERVICO = :cod_servico)')
    Left = 256
    Top = 513
    ParamData = <
      item
        Name = 'NUMERO_OS'
        ParamType = ptInput
      end
      item
        Name = 'COD_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
  end
end
