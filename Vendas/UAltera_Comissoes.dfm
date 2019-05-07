object f_vendas_altera: Tf_vendas_altera
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Altera'
  ClientHeight = 583
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 433
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 958
      Height = 431
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_VENDA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Chassi'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_NF'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Valor NF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUCRO_BRUTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Lucro Bruto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_FI'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'FI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BONUS_GM'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'B'#244'nus GM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_INCENTIVO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Incentivo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO_COMERCIAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESPESA_FIXA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Despesa Fixa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO_CORTESIA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Custo Cortesia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO_CORTESIA_ADC'
          Title.Alignment = taCenter
          Title.Caption = 'Cortesia Adcional'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_DESPESA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total Despesa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARGEM'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Margem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCENTUAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACESSORIOS'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Acess'#243'rios'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 433
    Width = 960
    Height = 150
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 68
      Height = 16
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbvendedor: TLabel
      Left = 29
      Top = 80
      Width = 63
      Height = 16
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 216
      Top = 22
      Width = 87
      Height = 13
      Caption = 'Emplacamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 260
      Top = 67
      Width = 43
      Height = 13
      Caption = 'Seguro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 463
      Top = 22
      Width = 139
      Height = 13
      Caption = 'Premia'#231#227'o Performance:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 492
      Top = 67
      Width = 110
      Height = 13
      Caption = 'Campanha Tracker:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 237
      Top = 109
      Width = 66
      Height = 13
      Caption = 'LEADS/OPV:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 575
      Top = 109
      Width = 27
      Height = 13
      Caption = 'SPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btsalvar: TButton
      Left = 839
      Top = 42
      Width = 82
      Height = 25
      Caption = 'Salvar'
      TabOrder = 6
      OnClick = btsalvarClick
    end
    object edemplacamento: TEdit
      Left = 320
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object edseguro: TEdit
      Left = 320
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object edpremiacao: TEdit
      Left = 632
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object edcampanha: TEdit
      Left = 632
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object edleads: TEdit
      Left = 320
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object edspm: TEdit
      Left = 632
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object btfechar: TButton
      Left = 839
      Top = 88
      Width = 82
      Height = 25
      Caption = 'Fechar'
      TabOrder = 7
      OnClick = btfecharClick
    end
  end
  object tb_tela_altera: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'VENDAS_COMISSOES'
    Left = 160
    Top = 136
    object tb_tela_alteraDATA_VENDA: TWideStringField
      FieldName = 'DATA_VENDA'
      Size = 10
    end
    object cusc: TStringField
      FieldName = 'VEICULO_DESC'
      Size = 199
    end
    object tb_tela_alteraVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object tb_tela_alteraVENDEDOR_NOME: TStringField
      FieldName = 'VENDEDOR_NOME'
      Size = 100
    end
    object tb_tela_alteraCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 50
    end
    object tb_tela_alteraCHASSI_RESUMIDO: TStringField
      FieldName = 'CHASSI_RESUMIDO'
      Size = 50
    end
    object tb_tela_alteraNF: TStringField
      FieldName = 'NF'
      Size = 50
    end
    object tb_tela_alteraVALOR_NF: TFloatField
      FieldName = 'VALOR_NF'
      EditFormat = 'R$ #,0.00'
      currency = True
    end
    object tb_tela_alteraDATA_NF_VENDA: TStringField
      FieldName = 'DATA_NF_VENDA'
      Size = 50
    end
    object tb_tela_alteraVALOR_NF_COMPRA: TFloatField
      FieldName = 'VALOR_NF_COMPRA'
      currency = True
    end
    object tb_tela_alteraLUCRO_BRUTO: TFloatField
      FieldName = 'LUCRO_BRUTO'
      currency = True
    end
    object tb_tela_alteraFI_RETORNO_BRUTO: TFloatField
      FieldName = 'FI_RETORNO_BRUTO'
      currency = True
    end
    object tb_tela_alteraTOTAL_FI: TFloatField
      FieldName = 'TOTAL_FI'
      currency = True
    end
    object tb_tela_alteraBONUS_GM: TFloatField
      FieldName = 'BONUS_GM'
      currency = True
    end
    object tb_tela_alteraBONUS_PERFOMANCE: TFloatField
      FieldName = 'BONUS_PERFOMANCE'
      currency = True
    end
    object tb_tela_alteraN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 300
    end
    object tb_tela_alteraTOTAL_INCENTIVO: TFloatField
      FieldName = 'TOTAL_INCENTIVO'
      currency = True
    end
    object tb_tela_alteraDESCONTO_COMERCIAL: TFloatField
      FieldName = 'DESCONTO_COMERCIAL'
      currency = True
    end
    object tb_tela_alteraDESPESA_FIXA: TFloatField
      FieldName = 'DESPESA_FIXA'
      currency = True
    end
    object tb_tela_alteraFINANCEIRA: TStringField
      FieldName = 'FINANCEIRA'
      Size = 200
    end
    object tb_tela_alteraCORTESIA_DESC: TStringField
      FieldName = 'CORTESIA_DESC'
      Size = 500
    end
    object tb_tela_alteraCUSTO_CORTESIA: TFloatField
      FieldName = 'CUSTO_CORTESIA'
      currency = True
    end
    object tb_tela_alteraCUSTO_CORTESIA_ADC: TFloatField
      FieldName = 'CUSTO_CORTESIA_ADC'
      currency = True
    end
    object tb_tela_alteraTOTAL_DESPESA: TFloatField
      FieldName = 'TOTAL_DESPESA'
      currency = True
    end
    object tb_tela_alteraMARGEM: TFloatField
      FieldName = 'MARGEM'
      currency = True
    end
    object tb_tela_alteraPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '% 0'
    end
    object tb_tela_alteraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object tb_tela_alteraMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 50
    end
    object tb_tela_alteraACESSORIOS: TFloatField
      FieldName = 'ACESSORIOS'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = tb_tela_altera
    Left = 160
    Top = 216
  end
  object q_salvar: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
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
      end
      item
        Name = 'vendedor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE VENDAS_COMISSOES SET EMPLACAMENTO = :emplacamento, SEGURO' +
        ' = :seguro, '
      'SPM = :spm, CAMPANHA_TRACKER = :campanha_tracker,'
      
        'LEAD_OPV = :lead_opv, PREMIACAO_PERFOMANCE = :premiacao_perfoman' +
        'ce'
      'WHERE VENDEDOR = :vendedor')
    Left = 152
    Top = 312
  end
end
