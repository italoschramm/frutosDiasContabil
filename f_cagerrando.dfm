object f_carregar: Tf_carregar
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Carregando'
  ClientHeight = 98
  ClientWidth = 334
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
  object lbcarregando: TLabel
    Left = 64
    Top = 19
    Width = 88
    Height = 16
    Caption = 'Carregando...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 64
    Top = 48
    Width = 209
    Height = 33
    TabOrder = 0
  end
end