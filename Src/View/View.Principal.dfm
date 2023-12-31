object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'DBGrid Moderno e Avan'#231'ado'
  ClientHeight = 626
  ClientWidth = 970
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object grdTopo: TGridPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 970
    Height = 89
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 16
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 3
        Control = grpFiltrar
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 966
    object grpFiltrar: TGroupBox
      AlignWithMargins = True
      Left = 15
      Top = 12
      Width = 712
      Height = 77
      Margins.Left = 15
      Margins.Top = 12
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Filtrar registros'
      TabOrder = 0
      ExplicitWidth = 710
      object grdFiltrar: TGridPanel
        Left = 2
        Top = 17
        Width = 708
        Height = 58
        Align = alClient
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333310000
          end>
        ControlCollection = <
          item
            Column = 0
            ColumnSpan = 2
            Control = edtTexto
            Row = 0
          end
          item
            Column = 2
            Control = pnlCombo
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        ExplicitWidth = 706
        object edtTexto: TLabeledEdit
          AlignWithMargins = True
          Left = 12
          Top = 22
          Width = 448
          Height = 23
          Margins.Left = 12
          Margins.Top = 22
          Margins.Right = 12
          Margins.Bottom = 0
          Align = alTop
          Anchors = []
          EditLabel.Width = 121
          EditLabel.Height = 15
          EditLabel.Caption = 'Texto come'#231'ando com'
          TabOrder = 0
          Text = ''
          OnChange = edtTextoChange
          ExplicitWidth = 447
        end
        object pnlCombo: TPanel
          Left = 472
          Top = 0
          Width = 236
          Height = 58
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 471
          ExplicitWidth = 235
          object lblColuna: TLabel
            AlignWithMargins = True
            Left = 12
            Top = 5
            Width = 212
            Height = 15
            Margins.Left = 12
            Margins.Top = 5
            Margins.Right = 12
            Align = alTop
            Caption = 'Coluna'
            ExplicitWidth = 38
          end
          object cbbColuna: TComboBox
            AlignWithMargins = True
            Left = 12
            Top = 23
            Width = 212
            Height = 22
            Margins.Left = 12
            Margins.Top = 0
            Margins.Right = 12
            Margins.Bottom = 0
            Align = alTop
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 0
            Text = 'SYMBOL'
            OnChange = cbbColunaChange
            Items.Strings = (
              'SYMBOL'
              'CO_NAME'
              'RATING'
              'RCMNDATION'
              'RISK')
            ExplicitWidth = 211
          end
        end
      end
    end
  end
  object grdRodape: TGridPanel
    AlignWithMargins = True
    Left = 0
    Top = 573
    Width = 970
    Height = 53
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end
      item
        Value = 14.285714285714290000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = dbnvgr1
        Row = 0
      end
      item
        Column = 1
        Control = pnlQtdeRegistros
        Row = 0
      end
      item
        Column = 2
        Control = pnlSomaCUR_PRICE
        Row = 0
      end
      item
        Column = 4
        Control = pnlSomaYRL_LOW
        Row = 0
      end
      item
        Column = 3
        Control = pnlSomaYRL_HIGH
        Row = 0
      end
      item
        Column = 5
        Control = pnlSomaP_E_RATIO
        Row = 0
      end
      item
        Column = 6
        Control = pnlSomaBETA
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    ExplicitTop = 572
    ExplicitWidth = 966
    object dbnvgr1: TDBNavigator
      AlignWithMargins = True
      Left = 15
      Top = 6
      Width = 120
      Height = 29
      Margins.Left = 15
      Margins.Top = 6
      Margins.Right = 4
      Margins.Bottom = 18
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr'#243'ximo'
        #218'ltimo'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitWidth = 102
    end
    object pnlQtdeRegistros: TPanel
      Left = 139
      Top = 0
      Width = 138
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 121
      ExplicitWidth = 120
      object lblQtdeRegistros: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 114
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Qtde. Registros'
        ExplicitWidth = 80
      end
      object dbtxtQtdeRegistros: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 114
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'CountSymbol'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
    object pnlSomaCUR_PRICE: TPanel
      Left = 277
      Top = 0
      Width = 139
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 241
      ExplicitWidth = 121
      object lblSomaCUR_PRICE: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 115
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total CUR_PRICE'
        ExplicitWidth = 87
      end
      object dbtxtSomaCUR_PRICE: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 115
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'SomaCUR_PRICE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
    object pnlSomaYRL_LOW: TPanel
      Left = 554
      Top = 0
      Width = 139
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 483
      ExplicitWidth = 121
      object lblSomaYRL_LOW: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 115
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total YRL_LOW'
        ExplicitWidth = 79
      end
      object dbtxtSomaYRL_LOW: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 115
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'SomaYRL_LOW'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
    object pnlSomaYRL_HIGH: TPanel
      Left = 416
      Top = 0
      Width = 138
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 362
      ExplicitWidth = 121
      object lblSomaYRL_HIGH: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 114
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total YRL_HIGH'
        ExplicitWidth = 82
      end
      object dbtxtSomaYRL_HIGH: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 114
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'SomaYRL_HIGH'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
    object pnlSomaP_E_RATIO: TPanel
      Left = 693
      Top = 0
      Width = 138
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 604
      ExplicitWidth = 120
      object lblSomaP_E_RATIO: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 114
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total P_E_RATIO'
        ExplicitWidth = 83
      end
      object dbtxtSomaP_E_RATIO: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 114
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'SomaP_E_RATIO'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
    object pnlSomaBETA: TPanel
      Left = 831
      Top = 0
      Width = 139
      Height = 53
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 6
      ExplicitLeft = 724
      ExplicitWidth = 121
      object lblSomaBETA: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 2
        Width = 115
        Height = 15
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total BETA'
        ExplicitWidth = 54
      end
      object dbtxtSomaBETA: TDBText
        AlignWithMargins = True
        Left = 12
        Top = 19
        Width = 115
        Height = 17
        Margins.Left = 12
        Margins.Top = 2
        Margins.Right = 12
        Margins.Bottom = 0
        Align = alTop
        DataField = 'SomaBETA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 40
        ExplicitWidth = 65
      end
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 105
    Width = 970
    Height = 453
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 966
    ExplicitHeight = 452
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 15
      Top = 0
      Width = 940
      Height = 453
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnMouseLeave = DBGrid1MouseLeave
      OnMouseMove = DBGrid1MouseMove
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SYMBOL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CO_NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXCHANGE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUR_PRICE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YRL_HIGH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YRL_LOW'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_E_RATIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BETA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROJ_GRTH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INDUSTRY'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE_CHG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAFETY'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RATING'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RANK'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OUTLOOK'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RCMNDATION'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RISK'
          Width = 50
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    OnDataChange = DataSource1DataChange
    Left = 424
    Top = 264
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'SYMBOL'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CO_NAME'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXCHANGE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CUR_PRICE'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'YRL_HIGH'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'YRL_LOW'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'P_E_RATIO'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'BETA'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'PROJ_GRTH'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'INDUSTRY'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'PRICE_CHG'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'SAFETY'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'RATING'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'RANK'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'OUTLOOK'
        Attributes = [faUnNamed]
        DataType = ftSmallint
      end
      item
        Name = 'RCMNDATION'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RISK'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 512
    Top = 264
    object ClientDataSet1SYMBOL: TStringField
      FieldName = 'SYMBOL'
      Size = 7
    end
    object ClientDataSet1CO_NAME: TStringField
      FieldName = 'CO_NAME'
    end
    object ClientDataSet1EXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 8
    end
    object ClientDataSet1CUR_PRICE: TFloatField
      FieldName = 'CUR_PRICE'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1YRL_HIGH: TFloatField
      FieldName = 'YRL_HIGH'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1YRL_LOW: TFloatField
      FieldName = 'YRL_LOW'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1P_E_RATIO: TFloatField
      FieldName = 'P_E_RATIO'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1BETA: TFloatField
      FieldName = 'BETA'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1PROJ_GRTH: TFloatField
      FieldName = 'PROJ_GRTH'
    end
    object ClientDataSet1INDUSTRY: TSmallintField
      FieldName = 'INDUSTRY'
    end
    object ClientDataSet1PRICE_CHG: TSmallintField
      FieldName = 'PRICE_CHG'
      DisplayFormat = ',0.00'
    end
    object ClientDataSet1SAFETY: TSmallintField
      FieldName = 'SAFETY'
    end
    object ClientDataSet1RATING: TStringField
      FieldName = 'RATING'
      Size = 4
    end
    object ClientDataSet1RANK: TFloatField
      FieldName = 'RANK'
    end
    object ClientDataSet1OUTLOOK: TSmallintField
      FieldName = 'OUTLOOK'
    end
    object ClientDataSet1RCMNDATION: TStringField
      FieldName = 'RCMNDATION'
      Size = 5
    end
    object ClientDataSet1RISK: TStringField
      FieldName = 'RISK'
      Size = 4
    end
    object ClientDataSet1SomaCUR_PRICE: TAggregateField
      FieldName = 'SomaCUR_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(cur_price)'
    end
    object ClientDataSet1CountSymbol: TAggregateField
      FieldName = 'CountSymbol'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'count(symbol)'
    end
    object ClientDataSet1SomaYRL_HIGH: TAggregateField
      FieldName = 'SomaYRL_HIGH'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(yrl_high)'
    end
    object ClientDataSet1SomaYRL_LOW: TAggregateField
      FieldName = 'SomaYRL_LOW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(yrl_low)'
    end
    object ClientDataSet1SomaP_E_RATIO: TAggregateField
      FieldName = 'SomaP_E_RATIO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(p_e_ratio)'
    end
    object ClientDataSet1SomaBETA: TAggregateField
      FieldName = 'SomaBETA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(beta)'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'Arquivo|master.xml'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Selecione o arquivo com os dados'
    Left = 608
    Top = 264
  end
end
