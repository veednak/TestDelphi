object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 309
  ClientWidth = 703
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = onCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBottom: TPanel
    Left = 0
    Top = 268
    Width = 703
    Height = 41
    Align = alBottom
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      703
      41)
    object ButtonAdd: TButton
      Left = 442
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Default = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ImageMargins.Left = 10
      ImageMargins.Right = -5
      Images = ImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonAddClick
    end
    object ButtonClose: TButton
      Left = 568
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ImageMargins.Left = 15
      ImageMargins.Right = -10
      Images = ImageList1
      ParentFont = False
      TabOrder = 1
      OnClick = ButtonCloseClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 703
    Height = 268
    Align = alClient
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077
    Color = clCream
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object LabelCeh: TLabel
      Left = 124
      Top = 71
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelDr: TLabel
      Left = 124
      Top = 143
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labelfio: TLabel
      Left = 124
      Top = 47
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln1: TLabel
      Left = 13
      Top = 23
      Width = 105
      Height = 18
      Caption = #1055#1086#1089#1090#1086#1103#1085#1085#1099#1081' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln2: TLabel
      Left = 48
      Top = 47
      Width = 31
      Height = 18
      Caption = #1060#1048#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln3: TLabel
      Left = 48
      Top = 71
      Width = 26
      Height = 18
      Caption = #1062#1077#1093
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln4: TLabel
      Left = 23
      Top = 95
      Width = 79
      Height = 18
      Caption = #1053#1072#1080#1084'. '#1094#1077#1093#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln5: TLabel
      Left = 23
      Top = 119
      Width = 81
      Height = 18
      Caption = #1055#1088#1086#1092#1092#1077#1089#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Labeln6: TLabel
      Left = 23
      Top = 143
      Width = 80
      Height = 18
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNCeh: TLabel
      Left = 124
      Top = 95
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelPost: TLabel
      Left = 124
      Top = 23
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelProf: TLabel
      Left = 124
      Top = 119
      Width = 41
      Height = 18
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 167
      Width = 388
      Height = 76
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1084#1077#1088' '#1089#1095#1077#1090#1072' IBAN'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabelBY: TLabel
        Left = 35
        Top = 32
        Width = 19
        Height = 19
        Caption = 'BY'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelBPS: TLabel
        Left = 91
        Top = 32
        Width = 143
        Height = 19
        Caption = 'BPSB3014F0000000'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditIban: TEdit
        Left = 60
        Top = 30
        Width = 25
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EditIbanChange
      end
      object EditNumber: TEdit
        Left = 240
        Top = 30
        Width = 91
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = EditNumberChange
      end
    end
  end
  object ImageList1: TImageList
    Left = 360
    Top = 264
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D9EBD03653A52AF67EBB60B800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFCFC05E4CBC569DDBDB487000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004DA223FF4DA223FF4DA223FF9DCB868C000000000000
      00000000000000000000000000000000000000000000FCFAF90AE2C8C170C58E
      80E7BF8373FFBF8373FFDAB8AE92000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000C2897AF1BF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFB28679E2A28B83BAA28B83BAA08981BDFAF9F9090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF7094DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F60CB1EA
      F86DFEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2F0DB297BBA5CBC78B858C178B8
      58C178B858C176B755C44DA223FF4DA223FF4DA223FF57A72FF078B858C178B8
      58C178B858C178B858C19DCB868C00000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70CFDFE
      FE025DD3F0E30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DA223FF4DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FF7EBB60B8BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000FEFEFE015DD3F0E300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DA223FF4DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FF53A52AF6BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF815E53FF815E53FFFBF8F7080000
      0000000000000000000060D4F1DFFEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006DB24AD14DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
      23FF4DA223FF4DA223FF4DA223FFD9EBD036BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF7D655CFF5AAEC2FF5AADC0FF7EDAF1B680DC
      F3B280DCF3B280DCF3B260D4F1DF9EE4F6880000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9FCF808F8FBF60AF8FB
      F60AF8FBF60AF1F7ED144DA223FF4DA223FF4DA223FF76B755C4F8FBF709F8FB
      F60AF8FBF60AF8FBF60A0000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F60C0000
      000000000000CDF1FA469AE3F68D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000CDF1FA469AE3F68D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70CCDF1
      FA469AE3F68D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FBF60A4DA223FF4DA223FF4DA223FF78B858C1000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA57466FF806055FF806055FF806055FFF9F7F70CF7FC
      FE0B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9FCF8084DA223FF4DA223FF4DA223FF7BBA5CBC000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFC084
      73FFB98070FF9C7062FF826156FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006DB24AD14DA223FF4DA223FFE2F0DB29000000000000
      000000000000000000000000000000000000BF8373FFB67E6FFF976D60FF8161
      56FF7F6055FF806055FF806055FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC7FF1FF00000000FC3F81FF00000000
      F83F001F00000000F83F001F00000000F83F001F00000000F83F000700000000
      000100070000000000000013000000000000001C000000000000000000000000
      8003001900000000F83F001300000000F83F000700000000F83F000F00000000
      F83F001F00000000FC3F001F0000000000000000000000000000000000000000
      000000000000}
  end
end
