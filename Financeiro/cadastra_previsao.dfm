object f_cadastrar_despesa: Tf_cadastrar_despesa
  Left = 0
  Top = 0
  Caption = 'Cadastrar Despesa'
  ClientHeight = 202
  ClientWidth = 356
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
  object edvalor: TEdit
    Left = 96
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edvalorKeyPress
  end
  object cbcategoria: TComboBox
    Left = 98
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 1
    OnKeyPress = cbcategoriaKeyPress
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
  end
  object data1: TDateTimePicker
    Left = 96
    Top = 104
    Width = 186
    Height = 21
    Date = 42279.488523888890000000
    Time = 42279.488523888890000000
    TabOrder = 2
    OnKeyPress = data1KeyPress
  end
  object btcadastrar: TButton
    Left = 96
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btcadastrarClick
  end
  object q_inserir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'cod_categoria'
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
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO FLX_PREVISAO VALUES (:cod_categoria, :valor, :data)')
    Left = 32
    Top = 32
  end
end
