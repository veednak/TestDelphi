object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
  ClientHeight = 309
  ClientWidth = 703
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 41
    Align = alTop
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Perpetua Titling MT'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 703
    Height = 227
    Align = alClient
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
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
    object LabelIban: TLabel
      Left = 45
      Top = 170
      Width = 34
      Height = 18
      Caption = 'IBAN'
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
    object Labeln5: TLabel
      Left = 23
      Top = 95
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
      Top = 119
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
    object EditIban: TEdit
      Left = 124
      Top = 167
      Width = 305
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 703
    Height = 41
    Align = alBottom
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      703
      41)
    object ButtonEdit: TButton
      Left = 444
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
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
      OnClick = ButtonEditClick
    end
    object ButtonClose: TButton
      Left = 570
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
  object ImageList1: TImageList
    Left = 8
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000CDCDCD37C4C4C4440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFCFC05E4CBC569DDBDB487000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA052A2A2AFE2C2C
      2CFCECECEC310000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFAF90AE2C8C170C58E
      80E7BF8373FFBF8373FFDAB8AE92000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01303030FEE3E3
      E3FFF5F5F5FEE6E6E6F9F3F3F320000000000000000000000000000000000000
      000000000000000000000000000000000000C2897AF1BF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFB28679E2A28B83BAA28B83BAA08981BDFAF9F9090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01FBFBFBFDF9F9
      F9FFF6F6F6FFF2F2F3FFCEE2EFFEA2D3F3690000000000000000000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFDF9F9
      F9FFF4F5F5FF5EB6EFFF23A0EFFF1D99E9FEFAFBFC0500000000000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9FAFCE8F1
      F7FF2BA6F5FF209DEDFF23A0F0FF209CECFF1F98E5F800000000000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F60CB1EA
      F86DFEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2DBF7A51D99
      E9FE1995E5FF229FEFFF1B97E7FF219EEEFF1C99E9FE76BEEC95000000000000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70CFDFE
      FE025DD3F0E30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0125A1
      F0FC1B97E7FF219EEEFF1D9AEAFF1894E4FF1E9BEBFF1995E5FEEBF3F8150000
      000000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000FEFEFE015DD3F0E300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F7
      FA0E229EEEFE1995E5FF209DEDFF1894E4FF1C99E9FF1B97E7FF1691E1FDFEFE
      FE0100000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF815E53FF815E53FFFBF8F7080000
      0000000000000000000060D4F1DFFEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008FCFF785209DECFE1894E4FF1A97E7FF1490E0FF1D9AEAFF1894E4FE4DA9
      E5C000000000000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF7D655CFF5AAEC2FF5AADC0FF7EDAF1B680DC
      F3B280DCF3B280DCF3B260D4F1DF9EE4F6880000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000030A7F2F41E9BEBFF1A97E7FF1692E2FF1490E0FF1A96E6FF1791
      E0FEECF0F34E000000000000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F60C0000
      000000000000CDF1FA469AE3F68D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFE0225A2F2FE1D99E9FF1894E4FF1490E0FF379DDEFFE6E8
      E9FFA5A5EBFDFEFEFE010000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70C0000
      0000CDF1FA469AE3F68D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7DFF95924A0F0FE1C97E7FFABCFE6FFEAEBEDFF4D4D
      E0FF4343E2FE5E5EE5DC0000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA47466FF806055FF806055FF806055FFF9F7F70CCDF1
      FA469AE3F68D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000051B3F2E0F0F1F3FFB8B8E6FF4242E0FF4444
      E2FF4747E5FE5C5CE7E40000000000000000BF8373FFBF8373FFBF8373FFBF83
      73FFBF8373FFBF8373FFA57466FF806055FF806055FF806055FFF9F7F70CF7FC
      FE0B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC055D5DDFFD4343E1FF4545E4FF4747
      E6FEB0B0F36E000000000000000000000000BF8373FFBF8373FFBF8373FFC084
      73FFB98070FF9C7062FF826156FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5F4364646E4FE4B4BE7FAFAFA
      FC0600000000000000000000000000000000BF8373FFB67E6FFF976D60FF8161
      56FF7F6055FF806055FF806055FF806055FF806055FF806055FFF9F7F70C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF009FFFF1FF0000000087FF81FF00000000
      81FF001F0000000080FF001F00000000C07F001F00000000C07F000700000000
      C03F000700000000C01F001300000000E00F001C00000000F00F000000000000
      F807001900000000F803001300000000FC03000700000000FE03000F00000000
      FE07001F00000000FF0F001F0000000000000000000000000000000000000000
      000000000000}
  end
end
