object f_previsao_fluxo: Tf_previsao_fluxo
  Left = 0
  Top = 0
  Caption = 'Previs'#227'o para Fluxo de Caixa'
  ClientHeight = 602
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1004
    Height = 521
    Align = alClient
    Color = clInfoBk
    DataSource = DataSource1
    FixedColor = clInfoBk
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSORCIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEICULOS_VN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEICULOS_VD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEMINOVOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PECAS_GM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARTAO_CREDITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAL_ENCARGOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECISAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUGUEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPOSTOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGUA_LUZ_TEL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLACAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LEASING_BNDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNEC_DIVERSOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOCIOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIVERSOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFORMA_2014'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESTIMOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSFERENCIA_ME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEGURO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 81
    Align = alTop
    TabOrder = 1
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
    object cbmes: TComboBox
      Left = 104
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 0
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
    object btfiltrar: TButton
      Left = 440
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = btfiltrarClick
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
  end
  object DataSource1: TDataSource
    DataSet = tb_tela
    Left = 48
    Top = 216
  end
  object q_contas_pagar: TADOQuery
    Connection = dm.conexao
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
      
        'SELECT A.DATA_VENCIMENTO, A.DATA_QUITACAO, A.OBSERVACAO, A.VALOR' +
        '_PARCELA, A.COD_CLIENTE, B.NOME  FROM CONTA_PAGAR A, CLIENTES B ' +
        'WHERE A.COD_EMPRESA = 2 '#11
      ''
      
        'AND A.COD_CLIENTE = B.COD_CLIENTE AND (A.DATA_VENCIMENTO >= :dat' +
        'a1 AND A.DATA_VENCIMENTO <= :data2)')
    Left = 40
    Top = 288
  end
  object q_veiculos: TADOQuery
    Connection = dm.conexao
    Parameters = <
      item
        Name = 'data1'
        Size = -1
        Value = Null
      end
      item
        Name = 'data2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select                                                          ' +
        '                             '#11
      
        '  cp.cod_natureza_receita_despesa,                              ' +
        '                          '#11
      '  nat.descricao, '#11
      
        ' trunc(cp.data_vencimento) as data,                             ' +
        '                                          '#11
      
        ' sum( nvl(cp.valor_parcela,0) + nvl(cp.valor_juro,0) - nvl(cp.va' +
        'lor_desconto,0)) as saldo'#11
      
        'from conta_pagar cp, natureza_receita_despesa nat, empresas em  ' +
        '                             '#11
      
        'where cp.cod_Empresa = em.cod_empresa                           ' +
        '                             '#11
      
        ' and trunc(cp.data_vencimento) >= :data1                        ' +
        '                      '#11
      
        ' and trunc(cp.data_vencimento) <= :data2                        ' +
        '                        '#11
      
        ' and cp.cod_grupo_pc = nat.cod_grupo_pc                         ' +
        '                             '#11
      
        ' and cp.cod_natureza_receita_despesa = nat.cod_natureza_receita_' +
        'despesa                      '#11
      
        ' and cp.cod_status in ('#39'0'#39','#39'1'#39')                                 ' +
        '                         '#11
      '  AND EM.COD_EMPRESA IN (2)  '#11
      
        'group by cp.cod_natureza_receita_despesa, nat.descricao, trunc(c' +
        'p.data_vencimento)'#11
      'order by cp.cod_natureza_receita_despesa, nat.descricao, data  ')
    Left = 40
    Top = 416
  end
  object tb_tela: TADOTable
    Active = True
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FLX_FLUXO'
    Left = 72
    Top = 368
  end
end
