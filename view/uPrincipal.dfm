object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Preenche Lista'
  ClientHeight = 132
  ClientWidth = 281
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    281
    132)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 265
    Height = 82
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 277
    ExplicitHeight = 85
  end
  object cmbLista: TComboBox
    Left = 113
    Top = 57
    Width = 155
    Height = 21
    Style = csDropDownList
    TabOrder = 0
  end
  object btnSobre: TButton
    Left = 28
    Top = 98
    Width = 100
    Height = 25
    Caption = 'Sobre'
    TabOrder = 1
    OnClick = btnSobreClick
  end
  object btnFechar: TButton
    Left = 154
    Top = 98
    Width = 100
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object rgTipoImposto: TRadioGroup
    Left = 14
    Top = 10
    Width = 253
    Height = 40
    Caption = 'Tipos de Impostos'
    Columns = 3
    Items.Strings = (
      'Federais'
      'Estaduais'
      'Municipais')
    TabOrder = 3
    OnClick = rgTipoImpostoClick
  end
  object btnPrencher: TButton
    Left = 14
    Top = 56
    Width = 93
    Height = 23
    Caption = 'Preencher Lista'
    TabOrder = 4
    OnClick = btnPrencherClick
  end
end
