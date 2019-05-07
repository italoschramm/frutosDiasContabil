object F_schemas: TF_schemas
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Selecionar Schema'
  ClientHeight = 111
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 80
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 24
    Width = 145
    Height = 21
    KeyField = 'SCHEMA_NAME'
    ListField = 'DESCRIPTION'
    ListSource = dm.ds_schemas
    TabOrder = 1
  end
end
