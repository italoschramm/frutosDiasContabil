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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 81
    Align = alTop
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
      Left = 448
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
    object btexcel: TButton
      Left = 560
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = btexcelClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1004
    Height = 521
    Align = alClient
    Color = clInfoBk
    DataSource = DataSource1
    FixedColor = clInfoBk
    TabOrder = 1
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
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Consorcio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Comiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Ve'#237'culos VN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Veiculos VD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Seminovos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pecas GM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cart'#227'o de Cr'#233'dito'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Sal. e Encargos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rescis'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Aluguel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Impostos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #193'gua/Luz/Tel./Int.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Emplacamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Leasing/BNDES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fornec. Diversos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'S'#243'cios'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C17'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Diversos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Transfer'#234'ncias'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Emprestimos'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Transferencia ME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C21'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Seguro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = tb_tela
    Left = 40
    Top = 104
  end
  object tb_tela: TADOTable
    Active = True
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FLX_FLUXO'
    Left = 40
    Top = 160
    object tb_telaDIA: TWideStringField
      FieldName = 'DIA'
      FixedChar = True
      Size = 10
    end
    object tb_telaC1: TFloatField
      FieldName = 'C1'
      currency = True
    end
    object tb_telaC2: TFloatField
      FieldName = 'C2'
      currency = True
    end
    object tb_telaC3: TFloatField
      FieldName = 'C3'
      currency = True
    end
    object tb_telaC4: TFloatField
      FieldName = 'C4'
      currency = True
    end
    object tb_telaC5: TFloatField
      FieldName = 'C5'
      currency = True
    end
    object tb_telaC6: TFloatField
      FieldName = 'C6'
      currency = True
    end
    object tb_telaC7: TFloatField
      FieldName = 'C7'
      currency = True
    end
    object tb_telaC8: TFloatField
      FieldName = 'C8'
      currency = True
    end
    object tb_telaC9: TFloatField
      FieldName = 'C9'
      currency = True
    end
    object tb_telaC10: TFloatField
      FieldName = 'C10'
      currency = True
    end
    object tb_telaC11: TFloatField
      FieldName = 'C11'
      currency = True
    end
    object tb_telaC12: TFloatField
      FieldName = 'C12'
      currency = True
    end
    object tb_telaC13: TFloatField
      FieldName = 'C13'
      currency = True
    end
    object tb_telaC14: TFloatField
      FieldName = 'C14'
      currency = True
    end
    object tb_telaC15: TFloatField
      FieldName = 'C15'
      currency = True
    end
    object tb_telaC16: TFloatField
      FieldName = 'C16'
      currency = True
    end
    object tb_telaC17: TFloatField
      FieldName = 'C17'
      currency = True
    end
    object tb_telaC18: TFloatField
      FieldName = 'C18'
      currency = True
    end
    object tb_telaC19: TFloatField
      FieldName = 'C19'
      currency = True
    end
    object tb_telaC20: TFloatField
      FieldName = 'C20'
      currency = True
    end
    object tb_telaC21: TFloatField
      FieldName = 'C21'
      currency = True
    end
    object tb_telaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object tb_telaDIA_UTEL: TIntegerField
      FieldName = 'DIA_UTEL'
    end
  end
  object q_atualizar_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'cod'
        Size = -1
        Value = Null
      end
      item
        Name = 'valor'
        Size = -1
        Value = Null
      end
      item
        Name = 'dia'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE FLX_FLUXO SET :cod = :valor where DIA = :dia')
    Left = 40
    Top = 328
  end
  object q_limpa_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      
        'UPDATE FLX_FLUXO SET DIA_UTEL = 0, C1 = 0, C2 = 0, C3 = 0, C4 = ' +
        '0, C5 = 0, C6 = 0, C7 = 0, C8 = 0,'
      
        'C9 = 0, C10 = 0, C11 = 0, C12 = 0, C13 = 0, C14 = 0, C15 = 0, C1' +
        '6 = 0, C17 = 0, '
      'C18 = 0, C19 = 0, C20 = 0, C21 = 0, TOTAL = 0   ')
    Left = 40
    Top = 272
  end
  object q_util: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'dia'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE FLX_FLUXO SET DIA_UTEL = 1 WHERE DIA = :dia')
    Left = 40
    Top = 384
  end
end
