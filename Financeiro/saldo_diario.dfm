object f_saldo_diario: Tf_saldo_diario
  Left = 0
  Top = 0
  Caption = 'Saldo Di'#225'rio'
  ClientHeight = 602
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 41
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
      Top = 41
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
      Top = 39
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
    object cbano: TComboBox
      Left = 289
      Top = 39
      Width = 64
      Height = 21
      TabOrder = 1
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
    object btfiltrar: TButton
      Left = 440
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 2
      OnClick = btfiltrarClick
    end
    object btexcel: TButton
      Left = 560
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 1004
    Height = 505
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Width = 40
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C1'
        Title.Alignment = taCenter
        Title.Caption = 'BB - 251.009-x (528)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C2'
        Title.Alignment = taCenter
        Title.Caption = 'Itau 00045-1 (474)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C3'
        Title.Alignment = taCenter
        Title.Caption = 'Caixa 000387-3 (480)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C4'
        Title.Alignment = taCenter
        Title.Caption = 'Bradesco 372-7 (501)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C5'
        Title.Alignment = taCenter
        Title.Caption = 'Bradesco 11083-3 (482)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C6'
        Title.Alignment = taCenter
        Title.Caption = 'Sant. 13-000381-9 (526)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C7'
        Title.Alignment = taCenter
        Title.Caption = 'Ita'#250' 16429-9 (538)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C8'
        Title.Alignment = taCenter
        Title.Caption = 'Ita'#250' 31284-9 (564)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C9'
        Title.Alignment = taCenter
        Title.Caption = 'Ita'#250' 33345-6 (634)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C10'
        Title.Alignment = taCenter
        Title.Caption = 'Ita'#250' 31508-1 (633)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C11'
        Title.Alignment = taCenter
        Title.Caption = 'Safra 206231-5 (600)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C12'
        Title.Alignment = taCenter
        Title.Caption = 'Daycoval 7169843 (546)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'C13'
        Title.Alignment = taCenter
        Title.Caption = 'Daycoval 0009066073 (0)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = tb_tela
    Left = 176
    Top = 344
  end
  object tb_tela: TADOTable
    Active = True
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'FLX_CONTAS_SALDO'
    Left = 176
    Top = 272
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
    object tb_telaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object q_limpa_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    SQL.Strings = (
      'UPDATE FLX_CONTAS_SALDO'
      
        'SET C1 = 0, C2 = 0, C3 = 0, C4 = 0, C5 = 0, C6 = 0, C7 = 0, C8 =' +
        ' 0, C9 = 0, C10 = 0, C11 = 0, C12 = 0, '
      'C13 = 0, TOTAL = 0')
    Left = 272
    Top = 320
  end
  object q_atualizar_tela: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <>
    Left = 264
    Top = 224
  end
end