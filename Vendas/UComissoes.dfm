object f_vendas_comissoes: Tf_vendas_comissoes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'f_vendas_comissoes'
  ClientHeight = 632
  ClientWidth = 1294
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1294
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
      Top = 27
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
      Top = 27
      Width = 97
      Height = 30
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 3
      OnClick = btimprimirClick
    end
    object Button1: TButton
      Left = 401
      Top = 26
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
    Width = 1294
    Height = 535
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1292
      Height = 533
      Align = alClient
      Color = clBtnFace
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Color = clSkyBlue
          Expanded = False
          FieldName = 'VENDEDOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MES_ANO'
          Title.Alignment = taCenter
          Title.Caption = 'M'#234's/Ano'
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
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total NF Vendas'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'TOTAL_MARGEM'
          Title.Alignment = taCenter
          Title.Caption = 'Total Margem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'P_LIQUIDA'
          Title.Alignment = taCenter
          Title.Caption = '% V. Vendido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PM_LIQUIDA'
          Title.Alignment = taCenter
          Title.Caption = '% M. Liquida'
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
          FieldName = 'TOTAL2'
          Title.Alignment = taCenter
          Title.Caption = 'Total V. Vendido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'TOTAL3'
          Title.Alignment = taCenter
          Title.Caption = 'Total Margem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'VALOR_ACESSORIOS'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Acess'#243'rios'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'TOTAL4'
          Title.Alignment = taCenter
          Title.Caption = 'Comiss'#227'o a Pagar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'ACESSORIOS'
          Title.Alignment = taCenter
          Title.Caption = 'Acess'#243'rios'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'EMPLACAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Emplacamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'SEGURO'
          Title.Alignment = taCenter
          Title.Caption = 'Seguro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'SPM'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'CAMPANHA_TRACKER'
          Title.Alignment = taCenter
          Title.Caption = 'Camp. Tracker'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'LEAD_OPV'
          Title.Alignment = taCenter
          Title.Caption = 'Lead/OPV'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'PREMIACAO_PERFOMANCE'
          Title.Alignment = taCenter
          Title.Caption = 'Premia'#231#227'o Per.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
  end
  object tb_tela: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'VENDAS_COMISSOES'
    Left = 80
    Top = 193
    object tb_telaDATA_VENDA: TWideStringField
      FieldName = 'DATA_VENDA'
      Size = 10
    end
    object tb_telaVEICULO_DESC: TStringField
      FieldName = 'VEICULO_DESC'
      Size = 199
    end
    object tb_telaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object tb_telaVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      Size = 100
    end
    object tb_telaCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 50
    end
    object tb_telaCHASSI_RESUMIDO: TStringField
      FieldName = 'CHASSI_RESUMIDO'
      Size = 50
    end
    object tb_telaNF: TStringField
      FieldName = 'NF'
      Size = 50
    end
    object tb_telaVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
    end
    object tb_telaDATA_NF_VENDA: TStringField
      FieldName = 'DATA_NF_VENDA'
      Size = 50
    end
    object tb_telaVALOR_NF_COMPRA: TFloatField
      FieldName = 'VALOR_NF_COMPRA'
    end
    object tb_telaLUCRO_BRUTO: TFloatField
      FieldName = 'LUCRO_BRUTO'
    end
    object tb_telaFI_RETORNO_BRUTO: TFloatField
      FieldName = 'FI_RETORNO_BRUTO'
    end
    object tb_telaTOTAL_FI: TFloatField
      FieldName = 'TOTAL_FI'
    end
    object tb_telaBONUS_GM: TFloatField
      FieldName = 'BONUS_GM'
    end
    object tb_telaBONUS_PERFOMANCE: TFloatField
      FieldName = 'BONUS_PERFOMANCE'
    end
    object tb_telaN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 300
    end
    object tb_telaTOTAL_INCENTIVO: TFloatField
      FieldName = 'TOTAL_INCENTIVO'
    end
    object tb_telaDESCONTO_COMERCIAL: TFloatField
      FieldName = 'DESCONTO_COMERCIAL'
    end
    object tb_telaDESPESA_FIXA: TFloatField
      FieldName = 'DESPESA_FIXA'
    end
    object tb_telaFINANCEIRA: TStringField
      FieldName = 'FINANCEIRA'
      Size = 200
    end
    object tb_telaCORTESIA_DESC: TStringField
      FieldName = 'CORTESIA_DESC'
      Size = 500
    end
    object tb_telaCUSTO_CORTESIA: TFloatField
      FieldName = 'CUSTO_CORTESIA'
    end
    object tb_telaTOTAL_DESPESA: TFloatField
      FieldName = 'TOTAL_DESPESA'
    end
    object tb_telaMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object tb_telaPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object tb_telaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object tb_telaMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object tb_telaACESSORIOS: TFloatField
      FieldName = 'ACESSORIOS'
    end
    object tb_telaCUSTO_CORTESIA_ADC: TFloatField
      FieldName = 'CUSTO_CORTESIA_ADC'
    end
    object tb_telaP_ACESSORIOS: TFloatField
      FieldName = 'P_ACESSORIOS'
    end
    object tb_telaEMPLACAMENTO: TFloatField
      FieldName = 'EMPLACAMENTO'
    end
    object tb_telaP_EMPLACAMENTO: TFloatField
      FieldName = 'P_EMPLACAMENTO'
    end
    object tb_telaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object tb_telaP_SEGURO: TFloatField
      FieldName = 'P_SEGURO'
    end
    object tb_telaSPM: TFloatField
      FieldName = 'SPM'
    end
    object tb_telaP_SPM: TFloatField
      FieldName = 'P_SPM'
    end
    object tb_telaCAMPANHA_TRACKER: TFloatField
      FieldName = 'CAMPANHA_TRACKER'
    end
    object tb_telaLEAD_OPV: TFloatField
      FieldName = 'LEAD_OPV'
    end
    object tb_telaP_LEAD_OPV: TFloatField
      FieldName = 'P_LEAD_OPV'
    end
    object tb_telaPREMIACAO_PERFOMANCE: TFloatField
      FieldName = 'PREMIACAO_PERFOMANCE'
    end
  end
  object DataSource1: TDataSource
    DataSet = q_vendedores
    Left = 80
    Top = 265
  end
  object q_limpa: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      'DELETE FROM VENDAS_COMISSOES')
    Left = 80
    Top = 361
  end
  object q_inserir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'data_venda'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'veiculos_desc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 199
        Value = Null
      end
      item
        Name = 'vendedor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'vendedor_nome'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'chassi'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'chassi_resumido'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'nf'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'valor_nf'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'data_nf_venda'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'valor_nf_compra'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'lucro_bruto'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'bonus_gm'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'total_incentivo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'desconto_comercial'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'despesa_fixa'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'financeira'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'custo_cortesia_adc'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'cliente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
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
        Name = 'emplacamento'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'seguro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'spm'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'campanha_tracker'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'lead_opv'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'premiacao_perfomance'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO VENDAS_COMISSOES (DATA_VENDA, VEICULO_DESC, VENDEDOR' +
        ', VENDEDOR_NOME, CHASSI, CHASSI_RESUMIDO, NF, VALOR_NF, DATA_NF_' +
        'VENDA,'
      
        'VALOR_NF_COMPRA, LUCRO_BRUTO, BONUS_GM, TOTAL_INCENTIVO, DESCONT' +
        'O_COMERCIAL, DESPESA_FIXA, FINANCEIRA, CUSTO_CORTESIA_ADC, CLIEN' +
        'TE, MES_ANO,'
      
        'EMPLACAMENTO, SEGURO, SPM, CAMPANHA_TRACKER, LEAD_OPV, PREMIACAO' +
        '_PERFOMANCE) '
      
        'VALUES (:data_venda, :veiculos_desc, :vendedor, :vendedor_nome ,' +
        ' :chassi, :chassi_resumido, :nf, :valor_nf, :data_nf_venda,'
      
        ':valor_nf_compra, :lucro_bruto, :bonus_gm, :total_incentivo, :de' +
        'sconto_comercial, :despesa_fixa, :financeira, :custo_cortesia_ad' +
        'c, :cliente, :mes_ano,'
      
        ':emplacamento, :seguro, :spm, :campanha_tracker, :lead_opv, :pre' +
        'miacao_perfomance)')
    Left = 160
    Top = 297
  end
  object q_update: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    Left = 72
    Top = 497
  end
  object rv_comissao: TRvProject
    ProjectFile = 'rel_comissao.rav'
    Left = 376
    Top = 233
  end
  object q_comissao: TADOQuery
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR(10), DATA_VENDA, 103) AS DATA_VENDA, CLIE' +
        'NTE, '#39'VN'#39' AS COD, VEICULO_DESC,'
      'VALOR_NF, '
      
        'CASE WHEN  ((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCE' +
        'NTIVO) - '
      '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA) < 1 THEN 0'
      
        #9' WHEN  ((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTI' +
        'VO) - '
      
        '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA) > 0 THEN RO' +
        'UND(((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTIVO) ' +
        '- '
      '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA),2)'
      'END'#9#9#9
      'AS MARGEM_LIQUIDA, VENDEDOR '
      'FROM VENDAS_COMISSOES')
    Left = 288
    Top = 313
    object q_comissaoDATA_VENDA: TWideStringField
      FieldName = 'DATA_VENDA'
      Size = 10
    end
    object q_comissaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object q_comissaoCOD: TStringField
      FieldName = 'COD'
      ReadOnly = True
      Size = 2
    end
    object q_comissaoVEICULO_DESC: TStringField
      FieldName = 'VEICULO_DESC'
      Size = 199
    end
    object q_comissaoVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      currency = True
    end
    object q_comissaoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object q_comissaoMARGEM_LIQUIDA: TFloatField
      FieldName = 'MARGEM_LIQUIDA'
      currency = True
    end
  end
  object dt1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_comissao
    Left = 368
    Top = 313
  end
  object q_vendedores: TADOQuery
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
      ''
      ''
      'SELECT VENDEDOR_NOME, VENDEDOR, MES_ANO,'
      'SUM(VALOR_NF) AS TOTAL,  '
      'ROUND(SUM(CASE WHEN'
      #9'((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTIVO) -'
      
        #9'(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA + CUSTO_COR' +
        'TESIA_ADC) < 1 THEN 0'
      #9'WHEN'
      #9
      #9'((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTIVO) -'
      
        #9'(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA + CUSTO_COR' +
        'TESIA_ADC) > 0 THEN '
      #9
      #9'((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTIVO) -'
      
        #9'(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA + CUSTO_COR' +
        'TESIA_ADC)'
      #9
      #9' END),2)'
      #9' AS TOTAL_MARGEM,'
      
        'ROUND((SUM(MARGEM)/SUM(VALOR_NF)*100),2) AS TOTAL1, COUNT(VENDED' +
        'OR) AS QUANTIDADE,'
      '(CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      'END) AS P_LIQUIDA,'
      '(CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END) AS PM_LIQUIDA,'
      'ROUND((SUM(VALOR_NF)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      #9'  END)/100,2)'
      'AS TOTAL2,'
      
        'ROUND((SUM((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCEN' +
        'TIVO) -'
      
        'SUM(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA + CUSTO_C' +
        'ORTESIA_ADC))*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END'
      '/100,2) AS TOTAL3,'
      ''
      'CASE WHEN (ACESSORIOS) between 0 and 5000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 5000 THEN 6'
      'END AS P_ACESSORIO,'
      ''
      'ROUND(((SUM(VALOR_NF)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      #9'  END)/100)'
      '+'
      '(SUM(MARGEM)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END'
      '/100),2)'
      ''
      'AS TOTAL4,'
      ''
      'ACESSORIOS * '
      'CASE WHEN (ACESSORIOS) between 0 and 6000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 6000 THEN 6'
      'END / 100'
      ''
      'AS VALOR_ACESSORIOS,'
      ''
      'ACESSORIOS,'
      ''
      '(EMPLACAMENTO * 10 )/100 as VALOR_EMPLACAMENTO,'
      ''
      'SEGURO * 40 AS VALOR_SEGURO,'
      ' '
      'SPM * 30 AS VALOR_SPM ,'
      ''
      'CAMPANHA_TRACKER AS VALOR_CAMPANHA_TRACKER, '
      ''
      'LEAD_OPV * 15 AS VALOR_LEAD_OPV, '
      ''
      'PREMIACAO_PERFOMANCE AS VALOR_PERFOMANCE,'
      ''
      
        'EMPLACAMENTO, SEGURO, SPM, CAMPANHA_TRACKER, LEAD_OPV, PREMIACAO' +
        '_PERFOMANCE,'
      ''
      'ROUND( (ACESSORIOS * '
      'CASE WHEN (ACESSORIOS) between 0 and 6000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 6000 THEN 6'
      
        'END / 100) + ((EMPLACAMENTO * 10 )/100) + (SEGURO * 40) + (SPM *' +
        ' 30) + (CAMPANHA_TRACKER) + (LEAD_OPV) + (PREMIACAO_PERFOMANCE),' +
        '2)'
      'AS TOTAL_BONIFICACAO '
      ''
      'FROM VENDAS_COMISSOES'
      'WHERE MES_ANO =  :mes_ano'
      'GROUP BY VENDEDOR_NOME,VENDEDOR, MES_ANO, ACESSORIOS,'
      ' (EMPLACAMENTO * 10 )/100, SEGURO * 40.1, SEGURO, SPM * 30.1, '
      ' CAMPANHA_TRACKER, LEAD_OPV * 15, PREMIACAO_PERFOMANCE,'
      ' EMPLACAMENTO, SEGURO, SPM, LEAD_OPV '
      ' '
      ' '
      ''
      ' '
      ''
      ' ')
    Left = 400
    Top = 457
    object q_vendedoresVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      Size = 100
    end
    object q_vendedoresVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object q_vendedoresTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object q_vendedoresTOTAL_MARGEM: TFloatField
      FieldName = 'TOTAL_MARGEM'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresTOTAL1: TFloatField
      FieldName = 'TOTAL1'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      ReadOnly = True
    end
    object q_vendedoresP_LIQUIDA: TBCDField
      FieldName = 'P_LIQUIDA'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object q_vendedoresPM_LIQUIDA: TIntegerField
      FieldName = 'PM_LIQUIDA'
      ReadOnly = True
    end
    object q_vendedoresTOTAL2: TFloatField
      FieldName = 'TOTAL2'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresTOTAL3: TFloatField
      FieldName = 'TOTAL3'
      ReadOnly = True
      EditFormat = '#,00'
      currency = True
    end
    object q_vendedoresTOTAL4: TFloatField
      FieldName = 'TOTAL4'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresACESSORIOS: TFloatField
      FieldName = 'ACESSORIOS'
      currency = True
    end
    object q_vendedoresP_ACESSORIO: TIntegerField
      FieldName = 'P_ACESSORIO'
      ReadOnly = True
    end
    object q_vendedoresVALOR_ACESSORIOS: TFloatField
      FieldName = 'VALOR_ACESSORIOS'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresVALOR_EMPLACAMENTO: TFloatField
      FieldName = 'VALOR_EMPLACAMENTO'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresVALOR_SPM: TFloatField
      FieldName = 'VALOR_SPM'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresVALOR_CAMPANHA_TRACKER: TFloatField
      FieldName = 'VALOR_CAMPANHA_TRACKER'
      currency = True
    end
    object q_vendedoresVALOR_LEAD_OPV: TFloatField
      FieldName = 'VALOR_LEAD_OPV'
      ReadOnly = True
      currency = True
    end
    object q_vendedoresVALOR_PERFOMANCE: TFloatField
      FieldName = 'VALOR_PERFOMANCE'
      currency = True
    end
    object q_vendedoresEMPLACAMENTO: TFloatField
      FieldName = 'EMPLACAMENTO'
      currency = True
    end
    object q_vendedoresSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object q_vendedoresSPM: TFloatField
      FieldName = 'SPM'
    end
    object q_vendedoresCAMPANHA_TRACKER: TFloatField
      FieldName = 'CAMPANHA_TRACKER'
      currency = True
    end
    object q_vendedoresLEAD_OPV: TFloatField
      FieldName = 'LEAD_OPV'
    end
    object q_vendedoresPREMIACAO_PERFOMANCE: TFloatField
      FieldName = 'PREMIACAO_PERFOMANCE'
      currency = True
    end
    object q_vendedoresTOTAL_BONIFICACAO: TFloatField
      FieldName = 'TOTAL_BONIFICACAO'
      ReadOnly = True
      currency = True
    end
  end
  object dt2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = q_vendedores
    Left = 376
    Top = 385
  end
  object dt3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 432
    Top = 537
  end
  object q_copia: TADOQuery
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
      'INSERT INTO VENDAS_TELA'
      ''
      'SELECT VENDEDOR_NOME, VENDEDOR, MES_ANO,'
      'SUM(VALOR_NF) AS TOTAL, ROUND(SUM(MARGEM),2) AS TOTAL_MARGEM,'
      
        'ROUND((SUM(MARGEM)/SUM(VALOR_NF)*100),2) AS TOTAL1, COUNT(VENDED' +
        'OR) AS QUANTIDADE,'
      '(CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      'END) AS P_LIQUIDA,'
      '(CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END) AS PM_LIQUIDA,'
      'ROUND((SUM(VALOR_NF)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      #9'  END)/100,2)'
      'AS TOTAL2,'
      'ROUND(SUM(MARGEM)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END'
      '/100,2) AS TOTAL3,'
      ''
      'CASE WHEN (ACESSORIOS) between 0 and 5000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 5000 THEN 6'
      'END AS P_ACESSORIO,'
      ''
      'ROUND(((SUM(VALOR_NF)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 8 THEN 0.05 '
      #9'  WHEN (COUNT(VENDEDOR)) between 9 and 11 THEN 0.10'
      #9'  WHEN (COUNT(VENDEDOR)) between 12 and 14 THEN 0.15'
      #9'  WHEN (COUNT(VENDEDOR)) between 15 and 17 THEN 0.20'
      #9'  WHEN (COUNT(VENDEDOR)) between 18 and 20 THEN 0.25'
      #9'  WHEN (COUNT(VENDEDOR)) > 20 THEN 0.30'
      #9'  END)/100)'
      '+'
      '(SUM(MARGEM)*'
      'CASE WHEN (COUNT(VENDEDOR)) between 1 and 14 THEN 5 '
      #9'  WHEN (COUNT(VENDEDOR)) > 14 THEN 6'
      'END'
      '/100)+'
      ''
      'ACESSORIOS * '
      'CASE WHEN (ACESSORIOS) between 0 and 6000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 6000 THEN 6'
      'END / 100'
      ''
      ',2)'
      ''
      'AS TOTAL4,'
      ''
      'ACESSORIOS * '
      'CASE WHEN (ACESSORIOS) between 0 and 6000 THEN 5 '
      #9'  WHEN (ACESSORIOS) > 6000 THEN 6'
      'END / 100'
      ''
      'AS VALOR_ACESSORIOS,'
      ''
      'ACESSORIOS'
      ''
      'FROM VENDAS_COMISSOES'
      'WHERE MES_ANO =  :mes_ano'
      'GROUP BY VENDEDOR_NOME,VENDEDOR, MES_ANO, ACESSORIOS')
    Left = 616
    Top = 385
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
      'delete from vendas_tela WHERE MES_ANO = :mes_ano')
    Left = 616
    Top = 329
  end
  object tb_vendas_tela: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'VENDAS_TELA'
    Left = 160
    Top = 153
    object tb_vendas_telaVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      Size = 200
    end
    object tb_vendas_telaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object tb_vendas_telaMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object tb_vendas_telaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object tb_vendas_telaTOTAL_MARGEM: TFloatField
      FieldName = 'TOTAL_MARGEM'
    end
    object tb_vendas_telaTOTAL1: TFloatField
      FieldName = 'TOTAL1'
    end
    object tb_vendas_telaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object tb_vendas_telaP_LIQUIDA: TFloatField
      FieldName = 'P_LIQUIDA'
    end
    object tb_vendas_telaPM_LIQUIDA: TFloatField
      FieldName = 'PM_LIQUIDA'
    end
    object tb_vendas_telaTOTAL2: TFloatField
      FieldName = 'TOTAL2'
    end
    object tb_vendas_telaTOTAL3: TFloatField
      FieldName = 'TOTAL3'
    end
    object tb_vendas_telaP_ACESSORIO: TFloatField
      FieldName = 'P_ACESSORIO'
    end
    object tb_vendas_telaTOTAL4: TFloatField
      FieldName = 'TOTAL4'
    end
    object tb_vendas_telaVALOR_ACESSORIOS: TFloatField
      FieldName = 'VALOR_ACESSORIOS'
    end
    object tb_vendas_telaACESSORIOS: TFloatField
      FieldName = 'ACESSORIOS'
    end
  end
  object q_totalizar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        'UPDATE VENDAS_COMISSOES SET LUCRO_BRUTO = ROUND((VALOR_NF - VALO' +
        'R_NF_COMPRA),2),'
      
        'TOTAL_DESPESA = ROUND((DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO' +
        '_CORTESIA),2),'
      'MARGEM = '
      
        'CASE WHEN  ((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCE' +
        'NTIVO) - '
      '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA) < 1 THEN 0'
      
        #9' WHEN  ((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTI' +
        'VO) - '
      
        '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA) > 0 THEN RO' +
        'UND(((VALOR_NF - VALOR_NF_COMPRA) + TOTAL_FI + TOTAL_INCENTIVO) ' +
        '- '
      '(DESCONTO_COMERCIAL + DESPESA_FIXA + CUSTO_CORTESIA),2)'
      'END'#9
      ''
      ''
      
        'UPDATE VENDAS_COMISSOES SET PERCENTUAL = ROUND(((MARGEM/VALOR_NF' +
        ') * 100),2)')
    Left = 168
    Top = 537
  end
  object q_total: TADOQuery
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
      
        'SELECT SUM(VALOR_NF) AS TOTAL_NF, COUNT(VENDEDOR) AS QUANTIDADE ' +
        'FROM VENDAS_COMISSOES '
      'WHERE MES_ANO = :mes_ano')
    Left = 248
    Top = 545
  end
  object q_pesquisa1: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM('
      ''
      ''
      ''
      
        '(SELECT A.DATA_VENDA, A.COD_PRODUTO, B.DESCRICAO_MODELO, A.COD_M' +
        'ODELO, A.VENDEDOR, A.CHASSI_COMPLETO, A.CHASSI_RESUMIDO , C.CONT' +
        'ROLE, C.TOTAL_NOTA, A.DATA_NOTA,'
      ''
      ''
      ''
      
        'A.TOTAL_NOTA_FABRICA, (C.TOTAL_NOTA - A.TOTAL_NOTA_FABRICA) AS L' +
        'UCRO_BRUTO, A.DESCONTO_INCONDICIONAL, 860 AS DESPESA_FIXA, A.ALI' +
        'ENACAO, SUM(D.VALOR) AS VALOR_BONUS,'
      ''
      ''
      ''
      'E.NOME, F.NOME_COMPLETO'
      ''
      ''
      ''
      
        'FROM VEICULOS A, PRODUTOS_MODELOS B, VENDAS C, VEIC_BONUS_DETALH' +
        'E D, CLIENTES E, EMPRESAS_USUARIOS F'
      ''
      ''
      ''
      
        'WHERE (A.COD_PRODUTO = B.COD_PRODUTO AND A.COD_MODELO = B.COD_MO' +
        'DELO) AND (A.CHASSI_RESUMIDO = D.CHASSI_RESUMIDO AND A.COD_EMPRE' +
        'SA = D.COD_EMPRESA) AND '
      ''
      ''
      ''
      
        '(A.COD_PRODUTO = C.COD_PRODUTO AND A.COD_PRODUTO = C.COD_PRODUTO' +
        ' AND A.CHASSI_RESUMIDO = C.CHASSI_RESUMIDO AND A.COD_EMPRESA = C' +
        '.COD_EMPRESA '
      ''
      ''
      ''
      'AND C.USADO_EM_TRANSFERENCIA IS NULL) AND'
      ''
      ''
      ''
      'A.NOVO_USADO = '#39'N'#39' AND A.STATUS = '#39'V'#39' AND'
      ''
      ''
      ''
      '(A.COD_CLIENTE = E.COD_CLIENTE) AND'
      ''
      ''
      ''
      '(A.VENDEDOR = F.NOME) AND'
      ''
      ''
      ''
      'TRUNC(A.DATA_VENDA) >= :data1 AND TRUNC(A.DATA_VENDA) <= :data2'
      ''
      ''
      ''
      
        'GROUP BY (A.DATA_VENDA, A.COD_PRODUTO, B.DESCRICAO_MODELO, A.COD' +
        '_MODELO, A.VENDEDOR, A.CHASSI_COMPLETO, A.CHASSI_RESUMIDO, C.CON' +
        'TROLE, C.TOTAL_NOTA, A.DATA_NOTA,'
      ''
      ''
      ''
      
        'A.TOTAL_NOTA_FABRICA, (C.TOTAL_NOTA - A.TOTAL_NOTA_FABRICA), A.D' +
        'ESCONTO_INCONDICIONAL, 860 , A.ALIENACAO, E.NOME, F.NOME_COMPLET' +
        'O))'
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
      
        '(SELECT A.DATA_VENDA, A.COD_PRODUTO, B.DESCRICAO_MODELO, A.COD_M' +
        'ODELO, A.VENDEDOR, A.CHASSI_COMPLETO, A.CHASSI_RESUMIDO, C.CONTR' +
        'OLE, C.TOTAL_NOTA, A.DATA_NOTA,'
      ''
      ''
      ''
      
        'A.TOTAL_NOTA_FABRICA, (C.TOTAL_NOTA - A.TOTAL_NOTA_FABRICA) AS L' +
        'UCRO_BRUTO, A.DESCONTO_INCONDICIONAL, 860 AS DESPESA_FIXA, A.ALI' +
        'ENACAO, 0 AS VALOR_BONUS, D.NOME, E.NOME_COMPLETO'
      ''
      ''
      ''
      
        'FROM VEICULOS A, PRODUTOS_MODELOS B, VENDAS C, CLIENTES D, EMPRE' +
        'SAS_USUARIOS E'
      ''
      ''
      ''
      
        'WHERE (A.COD_PRODUTO = B.COD_PRODUTO AND A.COD_MODELO = B.COD_MO' +
        'DELO) AND (A.CHASSI_RESUMIDO NOT IN (SELECT CHASSI_RESUMIDO FROM' +
        ' VEIC_BONUS_DETALHE)) AND '
      ''
      ''
      ''
      
        '(A.COD_PRODUTO = C.COD_PRODUTO AND A.COD_PRODUTO = C.COD_PRODUTO' +
        ' AND A.CHASSI_RESUMIDO = C.CHASSI_RESUMIDO AND A.COD_EMPRESA = C' +
        '.COD_EMPRESA '
      ''
      ''
      ''
      'AND C.USADO_EM_TRANSFERENCIA IS NULL) AND'
      ''
      ''
      ''
      '(A.COD_CLIENTE = D.COD_CLIENTE) AND'
      ''
      ''
      ''
      '(A.VENDEDOR = E.NOME) AND'
      ''
      ''
      ''
      'A.NOVO_USADO = '#39'N'#39' AND A.STATUS = '#39'V'#39' AND'
      ''
      ''
      ''
      'TRUNC(A.DATA_VENDA) >= :data3 AND TRUNC(A.DATA_VENDA) <= :data4)'
      ''
      ''
      ''
      ' )'
      ''
      ''
      ''
      'ORDER BY DATA_VENDA'
      '')
    Left = 160
    Top = 224
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
  object q_busca_os: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT  (C.CUSTO_CONTABIL) AS VALOR, D.COD_ITEM, D.DESCRICAO '
      ''
      ''
      'FROM OS A, OS_DADOS_VEICULOS B, OS_REQUISICOES C, ITENS D'
      ''
      ''
      
        'WHERE (A.COD_EMPRESA = B.COD_EMPRESA AND A.NUMERO_OS = B.NUMERO_' +
        'OS) AND'
      ''
      ''
      
        '(A.NUMERO_OS = C.NUMERO_OS AND A.COD_EMPRESA = C.COD_EMPRESA) AN' +
        'D'
      ''
      ''
      '(C.COD_ITEM = D.COD_ITEM)'
      ''
      ''
      
        'AND B.CHASSI = :chassi AND (A.TIPO = '#39'D8'#39' OR A.TIPO = '#39'D1'#39') AND ' +
        'A.STATUS_OS = 1')
    Left = 160
    Top = 368
    ParamData = <
      item
        Name = 'CHASSI'
        ParamType = ptInput
      end>
  end
  object q_busca_fi: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM ('
      
        'SELECT SUM(B.RETORNO) AS VALOR FROM VEICULOS_PROPOSTAS A, FI_SER' +
        'VICOS_PROPOSTA B'
      ''
      ''
      'WHERE A.COD_PROPOSTA = B.COD_PROPOSTA AND'
      ''
      ''
      'A.STATUS_PROPOSTA = '#39'V'#39
      ''
      ''
      'AND A.CHASSI_RESUMIDO = :chassi_resumido )')
    Left = 160
    Top = 448
    ParamData = <
      item
        Name = 'CHASSI_RESUMIDO'
        ParamType = ptInput
      end>
  end
  object q_acessorios: TFDQuery
    Connection = dm.conexao_oracle
    SQL.Strings = (
      'SELECT * FROM'
      
        '(SELECT SUM((VALOR_SERVICOS_BRUTO + VALOR_ITENS_BRUTO) - (DESCON' +
        'TOS_ITENS + DESCONTOS_SERVICOS)) AS VALOR, VENDEDOR_VEICULO FROM' +
        ' OS '
      ''
      ''
      
        'WHERE TIPO = '#39'V8'#39' AND TRUNC(DATA_ENCERRADA) >= :data1 AND TRUNC(' +
        'DATA_ENCERRADA) <= :data2 AND STATUS_OS = 1 GROUP BY (VENDEDOR_V' +
        'EICULO))')
    Left = 256
    Top = 448
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
