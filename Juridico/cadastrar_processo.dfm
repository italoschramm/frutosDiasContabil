object f_cadastrar_processo: Tf_cadastrar_processo
  Left = 0
  Top = 0
  Caption = 'Cadastrar Processo'
  ClientHeight = 666
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 22
    Top = 147
    Width = 64
    Height = 16
    Caption = 'Processo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 334
    Top = 84
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 22
    Top = 219
    Width = 59
    Height = 16
    Caption = 'Preposto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 46
    Top = 250
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 334
    Top = 250
    Width = 38
    Height = 16
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 601
    Align = alTop
    TabOrder = 0
    object Tabela: TPageControl
      Left = 1
      Top = 1
      Width = 773
      Height = 599
      ActivePage = tbcadastrar
      Align = alClient
      TabOrder = 0
      object tbcadastrar: TTabSheet
        Caption = 'Cadastro'
        object Label1: TLabel
          Left = 113
          Top = 13
          Width = 26
          Height = 16
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 80
          Top = 51
          Width = 59
          Height = 16
          Caption = 'Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 17
          Top = 90
          Width = 122
          Height = 16
          Caption = 'Reclamante/Autor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 36
          Top = 128
          Width = 103
          Height = 16
          Caption = 'Reclamado/R'#233'u'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 68
          Top = 168
          Width = 71
          Height = 16
          Caption = 'Ju'#237'zo/Vara'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 76
          Top = 207
          Width = 63
          Height = 16
          Caption = 'Nome Juiz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 17
          Top = 257
          Width = 98
          Height = 16
          Caption = 'Data Audi'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 17
          Top = 297
          Width = 98
          Height = 16
          Caption = 'Hora Audi'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 17
          Top = 343
          Width = 93
          Height = 16
          Caption = 'Tipo Audi'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbtipo_processo: TComboBox
          Left = 188
          Top = 10
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'TESTE1'
            'TESTE2'
            'TESTE3')
        end
        object edprocesso: TEdit
          Left = 188
          Top = 48
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edreclamante: TEdit
          Left = 188
          Top = 87
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edreclamado: TEdit
          Left = 188
          Top = 125
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edjuizo: TEdit
          Left = 188
          Top = 165
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edjuiz: TEdit
          Left = 188
          Top = 204
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBGrid1: TDBGrid
          Left = 21
          Top = 397
          Width = 388
          Height = 120
          DataSource = dm_processos.DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 11
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_AUDIENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_AUDIENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Horario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_AUDIENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHADO'
              Title.Alignment = taCenter
              Title.Caption = 'Fechado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object dataaudiencia: TDateTimePicker
          Left = 188
          Top = 255
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object edhora_audiencia: TMaskEdit
          Left = 188
          Top = 296
          Width = 61
          Height = 24
          EditMask = '00:00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 7
          Text = '  :  '
        end
        object cbtipo_audiencia: TComboBox
          Left = 188
          Top = 340
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Items.Strings = (
            'TESTE 1'
            'TESTE 2'
            'TESTE 3')
        end
        object btincluir_audiencia: TButton
          Left = 480
          Top = 414
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 9
          OnClick = btincluir_audienciaClick
        end
        object btremover_audiencia: TButton
          Left = 480
          Top = 454
          Width = 75
          Height = 25
          Caption = 'Remover'
          TabOrder = 10
          OnClick = btremover_audienciaClick
        end
      end
      object tbrelacionados: TTabSheet
        Caption = 'Relacionados'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label11: TLabel
          Left = 22
          Top = 3
          Width = 59
          Height = 16
          Caption = 'Preposto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 46
          Top = 34
          Width = 35
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 334
          Top = 34
          Width = 38
          Height = 16
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 22
          Top = 196
          Width = 86
          Height = 16
          Caption = 'Testemunhas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 46
          Top = 226
          Width = 35
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 334
          Top = 226
          Width = 38
          Height = 16
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 17
          Top = 387
          Width = 73
          Height = 16
          Caption = 'Advogados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 38
          Top = 417
          Width = 35
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 326
          Top = 417
          Width = 38
          Height = 16
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edpreposto_nome: TEdit
          Left = 122
          Top = 31
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edpreposto_email: TEdit
          Left = 410
          Top = 31
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBGrid2: TDBGrid
          Left = 122
          Top = 72
          Width = 271
          Height = 105
          DataSource = dm_processos.DataSource2
          TabOrder = 12
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Alignment = taCenter
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object edtestemunha_nome: TEdit
          Left = 122
          Top = 223
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtestemunha_email: TEdit
          Left = 410
          Top = 223
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBGrid3: TDBGrid
          Left = 122
          Top = 264
          Width = 271
          Height = 105
          DataSource = dm_processos.DataSource3
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Alignment = taCenter
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object edadvogado_nome: TEdit
          Left = 114
          Top = 414
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object edadvogado_email: TEdit
          Left = 402
          Top = 414
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBGrid4: TDBGrid
          Left = 114
          Top = 455
          Width = 271
          Height = 105
          DataSource = dm_processos.DataSource4
          TabOrder = 14
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Alignment = taCenter
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object btinserir_preposto: TButton
          Left = 432
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 2
          OnClick = btinserir_prepostoClick
        end
        object btremover_preposto: TButton
          Left = 432
          Top = 136
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = btremover_prepostoClick
        end
        object btinserir_testemunha: TButton
          Left = 432
          Top = 280
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 6
          OnClick = btinserir_testemunhaClick
        end
        object btexcluir_testemunha: TButton
          Left = 432
          Top = 328
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 7
          OnClick = btexcluir_testemunhaClick
        end
        object btinserir_advogado: TButton
          Left = 432
          Top = 476
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 10
          OnClick = btinserir_advogadoClick
        end
        object btexcluir_advogado: TButton
          Left = 432
          Top = 524
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 11
          OnClick = btexcluir_advogadoClick
        end
      end
      object tbdepositos_judiciais: TTabSheet
        Caption = 'Depositos Judiciais'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label24: TLabel
          Left = 10
          Top = 17
          Width = 77
          Height = 16
          Caption = 'Data D'#233'bito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 10
          Top = 62
          Width = 95
          Height = 16
          Caption = 'Valor Deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 10
          Top = 102
          Width = 39
          Height = 16
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 10
          Top = 142
          Width = 52
          Height = 16
          Caption = 'Agencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 10
          Top = 181
          Width = 38
          Height = 16
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 10
          Top = 215
          Width = 129
          Height = 16
          Caption = 'Data Levantamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 10
          Top = 284
          Width = 59
          Height = 16
          Caption = 'Corre'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 10
          Top = 323
          Width = 73
          Height = 16
          Caption = 'Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 10
          Top = 360
          Width = 77
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 10
          Top = 249
          Width = 128
          Height = 16
          Caption = 'Valor levantamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object data_debito_depositos: TDateTimePicker
          Left = 181
          Top = 15
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edvalor_deposito: TEdit
          Left = 181
          Top = 57
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = edvalor_depositoExit
        end
        object edbanco_deposito: TEdit
          Left = 181
          Top = 97
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edagencia_deposito: TEdit
          Left = 181
          Top = 137
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edconta_deposito: TEdit
          Left = 181
          Top = 176
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object data_levantamento_deposito: TDateTimePicker
          Left = 181
          Top = 213
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object edcorrecao_deposito: TEdit
          Left = 181
          Top = 281
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnExit = edcorrecao_depositoExit
        end
        object edpagamento_deposito: TEdit
          Left = 181
          Top = 318
          Width = 186
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object edobservacao_deposito: TEdit
          Left = 181
          Top = 355
          Width = 484
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBGrid5: TDBGrid
          Left = 17
          Top = 391
          Width = 560
          Height = 169
          DataSource = dm_processos.DataSource5
          TabOrder = 12
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_DEBITO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Debito'
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
              FieldName = 'VALOR_DEPOSITO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Deposito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Agencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Alignment = taCenter
              Title.Caption = 'Conta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_LEVANTAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Lev.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_LEVANTAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Lev.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CORRECAO'
              Title.Alignment = taCenter
              Title.Caption = 'Corre'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Pagamento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Observa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 200
              Visible = True
            end>
        end
        object btinserir_depositos: TButton
          Left = 600
          Top = 414
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 10
          OnClick = btinserir_depositosClick
        end
        object btexcluir_depositos: TButton
          Left = 600
          Top = 472
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 11
          OnClick = btexcluir_depositosClick
        end
        object edvalor_levantamento_deposito: TEdit
          Left = 181
          Top = 246
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnExit = edvalor_levantamento_depositoExit
        end
      end
      object tbbloqueios: TTabSheet
        Caption = 'Bloqueios'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label34: TLabel
          Left = 17
          Top = 14
          Width = 89
          Height = 16
          Caption = 'Data Bloqueio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 18
          Top = 79
          Width = 92
          Height = 16
          Caption = 'Valor Bloqueio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 18
          Top = 112
          Width = 39
          Height = 16
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 18
          Top = 147
          Width = 52
          Height = 16
          Caption = 'Agencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 18
          Top = 181
          Width = 38
          Height = 16
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 18
          Top = 214
          Width = 113
          Height = 16
          Caption = 'Data Desbloqueio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 18
          Top = 251
          Width = 129
          Height = 16
          Caption = 'Valor Desbloqueado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 18
          Top = 292
          Width = 171
          Height = 16
          Caption = 'Valor Dado em Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 18
          Top = 331
          Width = 35
          Height = 16
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 18
          Top = 368
          Width = 77
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 18
          Top = 45
          Width = 100
          Height = 16
          Caption = 'Valor Solicitado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object data_bloqueio: TDateTimePicker
          Left = 224
          Top = 6
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edvalor_bloqueio: TEdit
          Left = 224
          Top = 74
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = edvalor_bloqueioExit
        end
        object edbanco_bloqueio: TEdit
          Left = 224
          Top = 107
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edagencia_bloqueio: TEdit
          Left = 224
          Top = 142
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edconta_bloqueio: TEdit
          Left = 224
          Top = 176
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object data_desbloqueio: TDateTimePicker
          Left = 224
          Top = 212
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object edvalor_desbloqueio: TEdit
          Left = 224
          Top = 248
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnExit = edvalor_desbloqueioExit
        end
        object edvalor_pagamento: TEdit
          Left = 224
          Top = 289
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnExit = edvalor_pagamentoExit
        end
        object edsaldo_bloqueio: TEdit
          Left = 224
          Top = 326
          Width = 186
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnExit = edsaldo_bloqueioExit
        end
        object edobservacao_bloqueio: TEdit
          Left = 224
          Top = 363
          Width = 484
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBGrid6: TDBGrid
          Left = 25
          Top = 398
          Width = 560
          Height = 169
          DataSource = dm_processos.DataSource6
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_BLOQUEIO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Bloqueio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_SOLICITADO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Solicitado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_BLOQUEADO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Bloqueado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Agencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Alignment = taCenter
              Title.Caption = 'Conta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_DESBLOQUEIO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Desbloqueio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESBLOQUEIO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Desbloqueio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DADO_PAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor d. Pag.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS'
              Title.Alignment = taCenter
              Title.Caption = 'Observacao'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object btinserir_bloqueio: TButton
          Left = 608
          Top = 422
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 11
          OnClick = btinserir_bloqueioClick
        end
        object btexcluir_bloqueios: TButton
          Left = 608
          Top = 480
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 12
          OnClick = btexcluir_bloqueiosClick
        end
        object edvalor_solicitado_bloqueio: TEdit
          Left = 224
          Top = 40
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = edvalor_solicitado_bloqueioExit
        end
      end
      object tbpenhoras: TTabSheet
        Caption = 'Penhoras'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label45: TLabel
          Left = 25
          Top = 22
          Width = 152
          Height = 16
          Caption = 'Data Mandado Penhora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 25
          Top = 144
          Width = 112
          Height = 16
          Caption = 'Bens Penhorados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 26
          Top = 101
          Width = 92
          Height = 16
          Caption = 'Valor Penhora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 26
          Top = 196
          Width = 77
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label56: TLabel
          Left = 26
          Top = 59
          Width = 97
          Height = 16
          Caption = 'Data Indica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object data_mandado_penhora: TDateTimePicker
          Left = 232
          Top = 14
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edbens_penhora: TEdit
          Left = 232
          Top = 141
          Width = 484
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edvalor_penhora: TEdit
          Left = 232
          Top = 96
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = edvalor_penhoraExit
        end
        object edobservacao_penhora: TEdit
          Left = 232
          Top = 191
          Width = 484
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBGrid7: TDBGrid
          Left = 26
          Top = 247
          Width = 560
          Height = 169
          DataSource = dm_processos.DataSource7
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_MANDADO_PENHORA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Mandado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_INDICACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Indicacao'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PENHORA'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Penhora'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BENS_PENHORADO'
              Title.Alignment = taCenter
              Title.Caption = 'Bens Penhorado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Observa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object btinserir_penhora: TButton
          Left = 608
          Top = 278
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 5
          OnClick = btinserir_penhoraClick
        end
        object btexcluir_penhora: TButton
          Left = 608
          Top = 336
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 6
          OnClick = btexcluir_penhoraClick
        end
        object data_indicacao: TDateTimePicker
          Left = 232
          Top = 57
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object tboutros: TTabSheet
        Caption = 'Outros'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label48: TLabel
          Left = 53
          Top = 68
          Width = 92
          Height = 16
          Caption = 'Data Deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 34
          Top = 109
          Width = 111
          Height = 16
          Caption = 'Valor Depositado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 106
          Top = 152
          Width = 39
          Height = 16
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 68
          Top = 281
          Width = 77
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 82
          Top = 21
          Width = 63
          Height = 16
          Caption = 'Finalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 93
          Top = 193
          Width = 52
          Height = 16
          Caption = 'Agencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 107
          Top = 234
          Width = 38
          Height = 16
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object data_deposito_outros: TDateTimePicker
          Left = 240
          Top = 60
          Width = 186
          Height = 24
          Date = 42976.707329664350000000
          Time = 42976.707329664350000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edvalor_depositado: TEdit
          Left = 240
          Top = 104
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = edvalor_depositadoExit
        end
        object edbanco_outros: TEdit
          Left = 240
          Top = 149
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edobservacao_outros: TEdit
          Left = 240
          Top = 278
          Width = 484
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBGrid8: TDBGrid
          Left = 34
          Top = 326
          Width = 560
          Height = 169
          DataSource = dm_processos.DataSource8
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FINALIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Finalidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_DEPOSITO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Deposito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DEPOSITO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Deposito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
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
              FieldName = 'AGENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Agencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Alignment = taCenter
              Title.Caption = 'Conta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Observa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 150
              Visible = True
            end>
        end
        object btinserir_outros: TButton
          Left = 616
          Top = 349
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 7
          OnClick = btinserir_outrosClick
        end
        object btexcluir_outros: TButton
          Left = 616
          Top = 407
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 8
          OnClick = btexcluir_outrosClick
        end
        object cbfinalidade_outros: TComboBox
          Left = 240
          Top = 18
          Width = 153
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'TESTE1'
            'TESTE2'
            'TESTE3')
        end
        object edagencia_outros: TEdit
          Left = 240
          Top = 190
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edconta_outros: TEdit
          Left = 241
          Top = 231
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 601
    Width = 775
    Height = 65
    Align = alClient
    TabOrder = 1
    object btsalvar: TButton
      Left = 87
      Top = 16
      Width = 80
      Height = 35
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btsalvarClick
    end
    object btcancelar: TButton
      Left = 207
      Top = 16
      Width = 80
      Height = 35
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btcancelarClick
    end
    object btatualizar: TButton
      Left = 319
      Top = 16
      Width = 80
      Height = 35
      Caption = 'Atualizar'
      Enabled = False
      TabOrder = 2
      OnClick = btcancelarClick
    end
  end
  object smtp: TIdSMTP
    SASLMechanisms = <>
    Left = 581
    Top = 313
  end
  object msg: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 589
    Top = 385
  end
  object q_atualiza_email: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'UPDATE JUR_PROCESSOS_AUDIENCIAS SET EMAIL = :')
    Left = 581
    Top = 241
  end
end
