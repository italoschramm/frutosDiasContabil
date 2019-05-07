object f_acesso: Tf_acesso
  Left = 0
  Top = 0
  Caption = 'Acessos'
  ClientHeight = 518
  ClientWidth = 620
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 217
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 50
      Width = 38
      Height = 14
      Caption = 'Login:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 304
      Top = 50
      Width = 28
      Height = 14
      Caption = 'Tela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edlogin: TEdit
      Left = 96
      Top = 48
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object dbtela: TDBLookupComboBox
      Left = 352
      Top = 48
      Width = 209
      Height = 21
      Enabled = False
      KeyField = 'IDTELA'
      ListField = 'DESC_TELA'
      ListSource = DataSource2
      TabOrder = 1
    end
    object btfiltrar: TButton
      Left = 321
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      Enabled = False
      TabOrder = 2
      OnClick = btfiltrarClick
    end
    object btexcluir: TButton
      Left = 432
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Exluir'
      Enabled = False
      TabOrder = 3
      OnClick = btexcluirClick
    end
    object btincluir: TButton
      Left = 200
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Incluir'
      Enabled = False
      TabOrder = 4
      OnClick = btincluirClick
    end
    object btnovo: TButton
      Left = 80
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Novo'
      Enabled = False
      TabOrder = 5
      OnClick = btnovoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 217
    Width = 620
    Height = 301
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 618
      Height = 299
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Login'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IDTELA'
          Title.Alignment = taCenter
          Title.Caption = 'ID Tela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DESC_TELA'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Tela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = q_tela
    Left = 544
    Top = 265
  end
  object q_tela: TADOQuery
    Active = True
    Connection = dm.conexao_sql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT A.USUARIO, B.IDTELA, B.DESC_TELA FROM TELAS_ACESSO A, TEL' +
        'AS B'
      'WHERE A.IDTELA = B.IDTELA')
    Left = 544
    Top = 153
    object q_telaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object q_telaIDTELA: TAutoIncField
      FieldName = 'IDTELA'
      ReadOnly = True
    end
    object q_telaDESC_TELA: TStringField
      FieldName = 'DESC_TELA'
      Size = 50
    end
  end
  object lista_telas: TADOTable
    Connection = dm.conexao_sql
    CursorType = ctStatic
    TableName = 'TELAS'
    Left = 544
    Top = 97
  end
  object DataSource2: TDataSource
    DataSet = lista_telas
    Left = 544
    Top = 209
  end
  object q_incluir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'usuario'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'idtela'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO TELAS_ACESSO (USUARIO, IDTELA)'
      'VALUES (:usuario, :idtela)')
    Left = 544
    Top = 329
  end
  object q_excluir: TADOQuery
    Connection = dm.conexao_sql
    Parameters = <
      item
        Name = 'login'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM TELAS_ACESSO WHERE USUARIO = :login AND IDTELA = :id')
    Left = 544
    Top = 393
  end
end
