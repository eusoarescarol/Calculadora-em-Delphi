object Form1: TForm1
  Left = 0
  Top = 0
  VertScrollBar.Color = clBlack
  VertScrollBar.ParentColor = False
  Caption = 'Calculadora'
  ClientHeight = 322
  ClientWidth = 244
  Color = clBtnFace
  TransparentColorValue = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Visor: TEdit
    Left = 16
    Top = 16
    Width = 209
    Height = 32
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Btn1: TButton
    Left = 16
    Top = 64
    Width = 51
    Height = 41
    Caption = '1'
    TabOrder = 1
    OnClick = TecladoClick
  end
  object Btn2: TButton
    Left = 73
    Top = 64
    Width = 51
    Height = 41
    Caption = '2'
    TabOrder = 2
    OnClick = TecladoClick
  end
  object Btn3: TButton
    Left = 130
    Top = 64
    Width = 51
    Height = 41
    Caption = '3'
    TabOrder = 3
    OnClick = TecladoClick
  end
  object BtnSomar: TButton
    Left = 187
    Top = 68
    Width = 38
    Height = 33
    Caption = '+'
    TabOrder = 4
    OnClick = BtnSomarClick
  end
  object Btn4: TButton
    Left = 16
    Top = 111
    Width = 51
    Height = 41
    Caption = '4'
    TabOrder = 5
    OnClick = TecladoClick
  end
  object Btn5: TButton
    Left = 73
    Top = 111
    Width = 51
    Height = 41
    Caption = '5'
    TabOrder = 6
    OnClick = TecladoClick
  end
  object Btn6: TButton
    Left = 130
    Top = 111
    Width = 51
    Height = 41
    Caption = '6'
    TabOrder = 7
    OnClick = TecladoClick
  end
  object BtnSubtrair: TButton
    Left = 187
    Top = 115
    Width = 38
    Height = 33
    Caption = '-'
    TabOrder = 8
    OnClick = BtnSubtrairClick
  end
  object Btn7: TButton
    Left = 16
    Top = 158
    Width = 51
    Height = 41
    Caption = '7'
    TabOrder = 9
    OnClick = TecladoClick
  end
  object Btn8: TButton
    Left = 73
    Top = 158
    Width = 51
    Height = 41
    Caption = '8'
    TabOrder = 10
    OnClick = TecladoClick
  end
  object Btn9: TButton
    Left = 130
    Top = 158
    Width = 51
    Height = 41
    Caption = '9'
    TabOrder = 11
    OnClick = TecladoClick
  end
  object BtnMultiplicar: TButton
    Left = 187
    Top = 162
    Width = 38
    Height = 33
    Caption = '*'
    TabOrder = 12
    OnClick = BtnMultiplicarClick
  end
  object BtnPonto: TButton
    Left = 16
    Top = 205
    Width = 51
    Height = 41
    Caption = ','
    TabOrder = 13
    OnClick = BtnPontoClick
  end
  object Btn0: TButton
    Left = 73
    Top = 205
    Width = 51
    Height = 41
    Caption = '0'
    TabOrder = 14
    OnClick = TecladoClick
  end
  object BtnLimpar: TButton
    Left = 130
    Top = 205
    Width = 51
    Height = 41
    Caption = 'C'
    TabOrder = 15
    OnClick = BtnLimparClick
  end
  object BtnDividir: TButton
    Left = 187
    Top = 209
    Width = 38
    Height = 33
    Caption = '/'
    TabOrder = 16
    OnClick = BtnDividirClick
  end
  object BtnCalcular: TButton
    Left = 48
    Top = 264
    Width = 123
    Height = 41
    Caption = '='
    TabOrder = 17
    OnClick = BtnCalcularClick
  end
end
