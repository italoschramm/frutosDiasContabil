object dm_processos: Tdm_processos
  OldCreateOrder = False
  Height = 689
  Width = 965
  object cds_advogados: TClientDataSet
    PersistDataPacket.Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D00044E4F4D
      45010049000000010005574944544802000200140005454D41494C0100490000
      000100055749445448020002003C000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 509
    Top = 450
    object cds_advogadosNOME: TStringField
      FieldName = 'NOME'
    end
    object cds_advogadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object DataSource3: TDataSource
    DataSet = cds_testemunhas
    Left = 509
    Top = 385
  end
  object cds_testemunhas: TClientDataSet
    PersistDataPacket.Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D00044E4F4D
      45010049000000010005574944544802000200140005454D41494C0100490000
      000100055749445448020002003C000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 509
    Top = 313
    object cds_testemunhasNOME: TStringField
      FieldName = 'NOME'
    end
    object cds_testemunhasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object DataSource2: TDataSource
    DataSet = cds_preposto
    Left = 509
    Top = 241
  end
  object cds_preposto: TClientDataSet
    PersistDataPacket.Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D00044E4F4D
      45010049000000010005574944544802000200140005454D41494C0100490000
      000100055749445448020002003C000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 509
    Top = 169
    object cds_prepostoNOME: TStringField
      FieldName = 'NOME'
    end
    object cds_prepostoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_audiencias
    Left = 509
    Top = 105
  end
  object cds_audiencias: TClientDataSet
    PersistDataPacket.Data = {
      7B0000009619E0BD0100000018000000040000000000030000007B000E444154
      415F41554449454E43494104000600000000000E484F52415F41554449454E43
      494104000700000000000E5449504F5F41554449454E43494101004900000001
      00055749445448020002001400074645434841444F02000300000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATA_AUDIENCIA'
        DataType = ftDate
      end
      item
        Name = 'HORA_AUDIENCIA'
        DataType = ftTime
      end
      item
        Name = 'TIPO_AUDIENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHADO'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 509
    Top = 33
    object cds_audienciasDATA_AUDIENCIA: TDateField
      FieldName = 'DATA_AUDIENCIA'
    end
    object cds_audienciasHORA_AUDIENCIA: TTimeField
      FieldName = 'HORA_AUDIENCIA'
    end
    object cds_audienciasTIPO_AUDIENCIA: TStringField
      FieldName = 'TIPO_AUDIENCIA'
    end
    object cds_audienciasFECHADO: TBooleanField
      FieldName = 'FECHADO'
    end
  end
  object cds_deposito_judiciais: TClientDataSet
    PersistDataPacket.Data = {
      180100009619E0BD01000000180000000A00000000000300000018010B444154
      415F44454249544F08000800000000000E56414C4F525F4445504F5349544F08
      000400000000000542414E434F01004900000001000557494454480200020014
      00074147454E434941010049000000010005574944544802000200140005434F
      4E5441010049000000010005574944544802000200140011444154415F4C4556
      414E54414D454E544F04000600000000001256414C4F525F4C4556414E54414D
      454E544F080004000000000008434F52524543414F0800040000000000095041
      47414D454E544F01004900000001000557494454480200020014000A4F425345
      52564143414F01004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 405
    Top = 33
    object cds_deposito_judiciaisDATA_DEBITO: TDateTimeField
      FieldName = 'DATA_DEBITO'
    end
    object cds_deposito_judiciaisVALOR_DEPOSITO: TFloatField
      FieldName = 'VALOR_DEPOSITO'
    end
    object cds_deposito_judiciaisAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object cds_deposito_judiciaisBANCO: TStringField
      FieldName = 'BANCO'
    end
    object cds_deposito_judiciaisCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cds_deposito_judiciaisDATA_LEVANTAMENTO: TDateField
      FieldName = 'DATA_LEVANTAMENTO'
    end
    object cds_deposito_judiciaisVALOR_LEVANTAMENTO: TFloatField
      FieldName = 'VALOR_LEVANTAMENTO'
    end
    object cds_deposito_judiciaisCORRECAO: TFloatField
      FieldName = 'CORRECAO'
    end
    object cds_deposito_judiciaisPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
    object cds_deposito_judiciaisOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
    end
  end
  object DataSource5: TDataSource
    DataSet = cds_deposito_judiciais
    Left = 397
    Top = 97
  end
  object cds_bloqueios: TClientDataSet
    PersistDataPacket.Data = {
      270100009619E0BD01000000180000000B00000000000300000027010D444154
      415F424C4F515545494F04000600000000001056414C4F525F534F4C49434954
      41444F08000400000000000F56414C4F525F424C4F51554541444F0800040000
      0000000542414E434F0100490000000100055749445448020002001400074147
      454E434941010049000000010005574944544802000200140005434F4E544101
      0049000000010005574944544802000200140010444154415F444553424C4F51
      5545494F04000600000000001156414C4F525F444553424C4F515545494F0800
      0400000000001456414C4F525F4441444F5F504147414D454E544F0800040000
      0000000553414C444F0800040000000000034F42530100490000000100055749
      4454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 397
    Top = 169
    object cds_bloqueiosDATA_BLOQUEIO: TDateField
      FieldName = 'DATA_BLOQUEIO'
    end
    object cds_bloqueiosVALOR_SOLICITADO: TFloatField
      FieldName = 'VALOR_SOLICITADO'
    end
    object cds_bloqueiosVALOR_BLOQUEADO: TFloatField
      FieldName = 'VALOR_BLOQUEADO'
    end
    object cds_bloqueiosBANCO: TStringField
      FieldName = 'BANCO'
    end
    object cds_bloqueiosAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object cds_bloqueiosCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cds_bloqueiosDATA_DESBLOQUEIO: TDateField
      FieldName = 'DATA_DESBLOQUEIO'
    end
    object cds_bloqueiosVALOR_DESBLOQUEIO: TFloatField
      FieldName = 'VALOR_DESBLOQUEIO'
    end
    object cds_bloqueiosVALOR_DADO_PAGAMENTO: TFloatField
      FieldName = 'VALOR_DADO_PAGAMENTO'
    end
    object cds_bloqueiosSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cds_bloqueiosOBS: TStringField
      FieldName = 'OBS'
    end
  end
  object DataSource6: TDataSource
    DataSet = cds_bloqueios
    Left = 405
    Top = 249
  end
  object cds_penhoras: TClientDataSet
    PersistDataPacket.Data = {
      A60000009619E0BD010000001800000005000000000003000000A60014444154
      415F4D414E4441444F5F50454E484F524104000600000000000E444154415F49
      4E4449434143414F04000600000000000D56414C4F525F50454E484F52410800
      0400000000000E42454E535F50454E484F5241444F0100490000000100055749
      4454480200020014000A4F42534552564143414F010049000000010005574944
      54480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 349
    Top = 418
    object cds_penhorasDATA_MANDADO_PENHORA: TDateField
      FieldName = 'DATA_MANDADO_PENHORA'
    end
    object cds_penhorasDATA_INDICACAO: TDateField
      FieldName = 'DATA_INDICACAO'
    end
    object cds_penhorasVALOR_PENHORA: TFloatField
      FieldName = 'VALOR_PENHORA'
    end
    object cds_penhorasBENS_PENHORADO: TStringField
      FieldName = 'BENS_PENHORADO'
    end
    object cds_penhorasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
    end
  end
  object DataSource7: TDataSource
    DataSet = cds_penhoras
    Left = 349
    Top = 362
  end
  object DataSource4: TDataSource
    DataSet = cds_advogados
    Left = 393
    Top = 330
  end
  object q_salvar_audiencias: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_AUDIENCIAS VALUES'
      
        '(:idprocesso, :data_audiencia, :hora_audiencia, :tipo_audiencia,' +
        ' :email)')
    Left = 109
    Top = 193
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'DATA_AUDIENCIA'
        ParamType = ptInput
      end
      item
        Name = 'HORA_AUDIENCIA'
        ParamType = ptInput
      end
      item
        Name = 'TIPO_AUDIENCIA'
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        ParamType = ptInput
      end>
  end
  object q_aux: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'SELECT MAX(IDPROCESSO) AS IDPROCESSO FROM JUR_PROCESSOS')
    Left = 109
    Top = 121
  end
  object q_salvar: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS VALUES'
      
        '(:tipo, :processo, :reclamante_autor, :reclamado_reu , :juizo_va' +
        'ra, :nome_juiz)')
    Left = 112
    Top = 57
    ParamData = <
      item
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        Name = 'PROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'RECLAMANTE_AUTOR'
        ParamType = ptInput
      end
      item
        Name = 'RECLAMADO_REU'
        ParamType = ptInput
      end
      item
        Name = 'JUIZO_VARA'
        ParamType = ptInput
      end
      item
        Name = 'NOME_JUIZ'
        ParamType = ptInput
      end>
  end
  object DataSource8: TDataSource
    DataSet = cds_outros
    Left = 333
    Top = 305
  end
  object cds_outros: TClientDataSet
    PersistDataPacket.Data = {
      D50000009619E0BD010000001800000007000000000003000000D5000A46494E
      414C494441444501004900000001000557494454480200020014000D44415441
      5F4445504F5349544F04000600000000000E56414C4F525F4445504F5349544F
      08000400000000000542414E434F010049000000010005574944544802000200
      1400074147454E43494101004900000001000557494454480200020014000543
      4F4E544101004900000001000557494454480200020014000A4F425345525641
      43414F01004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 341
    Top = 249
    object cds_outrosFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
    end
    object cds_outrosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object cds_outrosVALOR_DEPOSITO: TFloatField
      FieldName = 'VALOR_DEPOSITO'
    end
    object cds_outrosBANCO: TStringField
      FieldName = 'BANCO'
    end
    object cds_outrosAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object cds_outrosCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cds_outrosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
    end
  end
  object q_salvar_preposto: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_PREPOSTO VALUES'
      '(:idprocesso, :nome, :email)')
    Left = 109
    Top = 250
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        ParamType = ptInput
      end>
  end
  object q_salvar_testemunhas: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_TESTEMUNHAS VALUES'
      '(:idprocesso, :nome, :email)')
    Left = 109
    Top = 313
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        ParamType = ptInput
      end>
  end
  object q_salvar_advogados: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_ADVOGADOS VALUES'
      '(:idprocesso, :nome, :email)')
    Left = 109
    Top = 377
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        ParamType = ptInput
      end>
  end
  object q_salvar_deposito: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_DEPOSITOS_JUDICIAIS VALUES'
      
        '(:idprocesso, :data_debito, :valor_depositado, :banco, :agencia,' +
        ' :conta, :data_levantamento, :valor_levantamento, :correcao, :pa' +
        'gamento, :observacao)')
    Left = 229
    Top = 57
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'DATA_DEBITO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_DEPOSITADO'
        ParamType = ptInput
      end
      item
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        Name = 'AGENCIA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        Name = 'DATA_LEVANTAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_LEVANTAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'CORRECAO'
        ParamType = ptInput
      end
      item
        Name = 'PAGAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        ParamType = ptInput
      end>
  end
  object q_salvar_bloqueios: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_BLOQUEIOS VALUES'
      
        '(:idprocesso, :data_bloqueio, :valor_solicitado, :valor_bloqueio' +
        ', :banco, :agencia, :conta, :data_desbloqueio, :valor_desbloquei' +
        'o, :valor_dado_pagamento, :saldo, :observacao)')
    Left = 229
    Top = 137
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'DATA_BLOQUEIO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_SOLICITADO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_BLOQUEIO'
        ParamType = ptInput
      end
      item
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        Name = 'AGENCIA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        Name = 'DATA_DESBLOQUEIO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_DESBLOQUEIO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_DADO_PAGAMENTO'
        ParamType = ptInput
      end
      item
        Name = 'SALDO'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        ParamType = ptInput
      end>
  end
  object q_salvar_penhoras: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_PENHORAS VALUES'
      
        '(:idprocesso, :data_mandado_penhora, :data_indicacao, :valor_pen' +
        'hora, :bens_penhorados, :observacao)')
    Left = 229
    Top = 209
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'DATA_MANDADO_PENHORA'
        ParamType = ptInput
      end
      item
        Name = 'DATA_INDICACAO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_PENHORA'
        ParamType = ptInput
      end
      item
        Name = 'BENS_PENHORADOS'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        ParamType = ptInput
      end>
  end
  object q_salvar_outros: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'INSERT INTO JUR_PROCESSOS_OUTROS VALUES'
      
        '(:idprocesso, :finalidade, :data_deposito, :valor_deposito, :ban' +
        'co, :agencia, :conta, :observacao)')
    Left = 229
    Top = 273
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end
      item
        Name = 'FINALIDADE'
        ParamType = ptInput
      end
      item
        Name = 'DATA_DEPOSITO'
        ParamType = ptInput
      end
      item
        Name = 'VALOR_DEPOSITO'
        ParamType = ptInput
      end
      item
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        Name = 'AGENCIA'
        ParamType = ptInput
      end
      item
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACAO'
        ParamType = ptInput
      end>
  end
  object q_buscar_processo: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      'SELECT * FROM JUR_PROCESSOS WHERE IDPROCESSO = :idprocesso')
    Left = 672
    Top = 8
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processoIDPROCESSO: TFDAutoIncField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object q_buscar_processoTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
    end
    object q_buscar_processoPROCESSO: TWideStringField
      FieldName = 'PROCESSO'
      Origin = 'PROCESSO'
      Required = True
      Size = 50
    end
    object q_buscar_processoRECLAMANTE_AUTOR: TWideStringField
      FieldName = 'RECLAMANTE_AUTOR'
      Origin = 'RECLAMANTE_AUTOR'
      Size = 80
    end
    object q_buscar_processoRECLAMADO_REU: TWideStringField
      FieldName = 'RECLAMADO_REU'
      Origin = 'RECLAMADO_REU'
      Size = 80
    end
    object q_buscar_processoJUIZO_VARA: TWideStringField
      FieldName = 'JUIZO_VARA'
      Origin = 'JUIZO_VARA'
      Size = 100
    end
    object q_buscar_processoNOME_JUIZ: TWideStringField
      FieldName = 'NOME_JUIZ'
      Origin = 'NOME_JUIZ'
      FixedChar = True
      Size = 30
    end
  end
  object q_buscar_processo_audiencia: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_AUDIENCIAS WHERE IDPROCESSO = :idpro' +
        'cesso')
    Left = 672
    Top = 72
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_audienciaIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_audienciaDATA_AUDIENCIA: TDateField
      FieldName = 'DATA_AUDIENCIA'
      Origin = 'DATA_AUDIENCIA'
    end
    object q_buscar_processo_audienciaHORA_AUDIENCIA: TTimeField
      FieldName = 'HORA_AUDIENCIA'
      Origin = 'HORA_AUDIENCIA'
    end
    object q_buscar_processo_audienciaTIPO_AUDIENCIA: TWideStringField
      FieldName = 'TIPO_AUDIENCIA'
      Origin = 'TIPO_AUDIENCIA'
      FixedChar = True
      Size = 30
    end
  end
  object q_buscar_processo_preposto: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_PREPOSTO WHERE IDPROCESSO = :idproce' +
        'sso')
    Left = 672
    Top = 136
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_prepostoIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_prepostoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object q_buscar_processo_prepostoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object q_buscar_processo_testemunhas: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_TESTEMUNHAS WHERE IDPROCESSO = :idpr' +
        'ocesso')
    Left = 672
    Top = 208
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_testemunhasIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_testemunhasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object q_buscar_processo_testemunhasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object q_buscar_processo_advogados: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_ADVOGADOS WHERE IDPROCESSO = :idproc' +
        'esso'
      '')
    Left = 672
    Top = 288
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_advogadosIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_advogadosADVOGADO: TStringField
      FieldName = 'ADVOGADO'
      Origin = 'ADVOGADO'
      Size = 50
    end
    object q_buscar_processo_advogadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object q_buscar_processo_depositos_judiciais: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_DEPOSITOS_JUDICIAIS WHERE IDPROCESSO' +
        ' = :idprocesso'
      '')
    Left = 672
    Top = 360
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_depositos_judiciaisIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_depositos_judiciaisDATA_DEBITO: TDateField
      FieldName = 'DATA_DEBITO'
      Origin = 'DATA_DEBITO'
    end
    object q_buscar_processo_depositos_judiciaisVALOR_DEPOSITADO: TFloatField
      FieldName = 'VALOR_DEPOSITADO'
      Origin = 'VALOR_DEPOSITADO'
    end
    object q_buscar_processo_depositos_judiciaisBANCO: TWideStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      FixedChar = True
    end
    object q_buscar_processo_depositos_judiciaisAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_depositos_judiciaisCONTA: TWideStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_depositos_judiciaisDATA_LEVANTAMENTO: TDateField
      FieldName = 'DATA_LEVANTAMENTO'
      Origin = 'DATA_LEVANTAMENTO'
    end
    object q_buscar_processo_depositos_judiciaisVALOR_LEVANTAMENTO: TFloatField
      FieldName = 'VALOR_LEVANTAMENTO'
      Origin = 'VALOR_LEVANTAMENTO'
    end
    object q_buscar_processo_depositos_judiciaisCORRECAO: TFloatField
      FieldName = 'CORRECAO'
      Origin = 'CORRECAO'
    end
    object q_buscar_processo_depositos_judiciaisPAGAMENTO: TWideStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 50
    end
    object q_buscar_processo_depositos_judiciaisOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
  end
  object q_buscar_processo_bloqueios: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_BLOQUEIOS WHERE IDPROCESSO = :idproc' +
        'esso'
      '')
    Left = 672
    Top = 424
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_bloqueiosIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_bloqueiosDATA_BLOQUEIO: TDateField
      FieldName = 'DATA_BLOQUEIO'
      Origin = 'DATA_BLOQUEIO'
    end
    object q_buscar_processo_bloqueiosVALOR_SOLICITADO: TFloatField
      FieldName = 'VALOR_SOLICITADO'
      Origin = 'VALOR_SOLICITADO'
    end
    object q_buscar_processo_bloqueiosVALOR_BLOQUEIO: TFloatField
      FieldName = 'VALOR_BLOQUEIO'
      Origin = 'VALOR_BLOQUEIO'
    end
    object q_buscar_processo_bloqueiosBANCO: TWideStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      FixedChar = True
    end
    object q_buscar_processo_bloqueiosAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_bloqueiosCONTA: TWideStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_bloqueiosDATA_DESBLOQUEIO: TDateField
      FieldName = 'DATA_DESBLOQUEIO'
      Origin = 'DATA_DESBLOQUEIO'
    end
    object q_buscar_processo_bloqueiosVALOR_DESBLOQUEIO: TFloatField
      FieldName = 'VALOR_DESBLOQUEIO'
      Origin = 'VALOR_DESBLOQUEIO'
    end
    object q_buscar_processo_bloqueiosVALOR_DADO_PAGAMENTO: TFloatField
      FieldName = 'VALOR_DADO_PAGAMENTO'
      Origin = 'VALOR_DADO_PAGAMENTO'
    end
    object q_buscar_processo_bloqueiosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object q_buscar_processo_bloqueiosOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 250
    end
  end
  object q_buscar_processo_penhoras: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_PENHORAS WHERE IDPROCESSO = :idproce' +
        'sso'
      '')
    Left = 672
    Top = 496
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_penhorasIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_penhorasDATA_MANDADO_PENHORA: TDateField
      FieldName = 'DATA_MANDADO_PENHORA'
      Origin = 'DATA_MANDADO_PENHORA'
    end
    object q_buscar_processo_penhorasDATA_INDICACAO: TDateField
      FieldName = 'DATA_INDICACAO'
      Origin = 'DATA_INDICACAO'
    end
    object q_buscar_processo_penhorasVALOR_PENHORA: TFloatField
      FieldName = 'VALOR_PENHORA'
      Origin = 'VALOR_PENHORA'
    end
    object q_buscar_processo_penhorasBENS_PENHORADOS: TWideStringField
      FieldName = 'BENS_PENHORADOS'
      Origin = 'BENS_PENHORADOS'
      Size = 250
    end
    object q_buscar_processo_penhorasOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 250
    end
  end
  object q_buscar_processo_outros: TFDQuery
    Connection = dm.conexao_banco
    SQL.Strings = (
      
        'SELECT * FROM JUR_PROCESSOS_OUTROS WHERE IDPROCESSO = :idprocess' +
        'o')
    Left = 672
    Top = 560
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
    object q_buscar_processo_outrosIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Origin = 'IDPROCESSO'
      Required = True
    end
    object q_buscar_processo_outrosFINALIDADE: TWideStringField
      FieldName = 'FINALIDADE'
      Origin = 'FINALIDADE'
      FixedChar = True
      Size = 30
    end
    object q_buscar_processo_outrosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
      Origin = 'DATA_DEPOSITO'
    end
    object q_buscar_processo_outrosVALOR_DEPOSITADO: TFloatField
      FieldName = 'VALOR_DEPOSITADO'
      Origin = 'VALOR_DEPOSITADO'
    end
    object q_buscar_processo_outrosBANCO: TWideStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      FixedChar = True
    end
    object q_buscar_processo_outrosAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_outrosCONTA: TWideStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      FixedChar = True
      Size = 12
    end
    object q_buscar_processo_outrosOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 250
    end
  end
end
