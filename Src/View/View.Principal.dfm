object ViewPrincipal: TViewPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'DBGrid Moderno e Avan'#231'ado'
  ClientHeight = 482
  ClientWidth = 966
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 12
    Top = 109
    Width = 942
    Height = 165
    Hint = 'Clique no t'#237'tulo da coluna para ordenar'
    Margins.Left = 12
    Margins.Top = 0
    Margins.Right = 12
    Margins.Bottom = 6
    Align = alTop
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
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
        Visible = True
      end>
  end
  object grdTopo: TGridPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 966
    Height = 89
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 20
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
        Control = grpPesquisar
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    object grpPesquisar: TGroupBox
      AlignWithMargins = True
      Left = 15
      Top = 12
      Width = 710
      Height = 77
      Margins.Left = 15
      Margins.Top = 12
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Pesquisar'
      TabOrder = 0
      ExplicitLeft = 28
      ExplicitTop = -40
      ExplicitWidth = 185
      ExplicitHeight = 105
      object grdPesquisar: TGridPanel
        Left = 2
        Top = 17
        Width = 706
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
            Value = 33.333333333333340000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = edtTexto
            Row = 0
          end
          item
            Column = 1
            Control = grd1
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
        ExplicitWidth = 181
        ExplicitHeight = 86
        object edtTexto: TLabeledEdit
          AlignWithMargins = True
          Left = 12
          Top = 22
          Width = 211
          Height = 23
          Margins.Left = 12
          Margins.Top = 22
          Margins.Right = 12
          Margins.Bottom = 0
          Align = alTop
          Anchors = []
          EditLabel.Width = 28
          EditLabel.Height = 15
          EditLabel.Caption = 'Texto'
          TabOrder = 0
          Text = ''
          OnChange = edtTextoChange
          ExplicitTop = 32
          ExplicitWidth = 164
        end
        object grd1: TGridPanel
          AlignWithMargins = True
          Left = 275
          Top = 0
          Width = 156
          Height = 58
          Margins.Left = 40
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = rdbLocalizar
              Row = 0
            end
            item
              Column = 1
              Control = rdbFiltrar
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 1
          ExplicitLeft = 228
          ExplicitWidth = 109
          ExplicitHeight = 86
          object rdbLocalizar: TRadioButton
            AlignWithMargins = True
            Left = 0
            Top = 26
            Width = 78
            Height = 17
            Margins.Left = 0
            Margins.Top = 26
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Localizar'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rdbLocalizarClick
            ExplicitTop = 36
            ExplicitWidth = 54
          end
          object rdbFiltrar: TRadioButton
            AlignWithMargins = True
            Left = 82
            Top = 26
            Width = 66
            Height = 17
            Margins.Left = 4
            Margins.Top = 26
            Margins.Right = 8
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Filtrar'
            TabOrder = 1
            OnClick = rdbFiltrarClick
            ExplicitLeft = 58
            ExplicitTop = 36
            ExplicitWidth = 43
          end
        end
        object pnlCombo: TPanel
          Left = 471
          Top = 0
          Width = 235
          Height = 58
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 377
          ExplicitWidth = 188
          ExplicitHeight = 86
          object lblCombo: TLabel
            AlignWithMargins = True
            Left = 12
            Top = 5
            Width = 211
            Height = 15
            Margins.Left = 12
            Margins.Top = 5
            Margins.Right = 12
            Align = alTop
            Caption = 'Campo'
            ExplicitTop = 16
            ExplicitWidth = 39
          end
          object cbbCampo: TComboBox
            AlignWithMargins = True
            Left = 12
            Top = 23
            Width = 211
            Height = 22
            Margins.Left = 12
            Margins.Top = 0
            Margins.Right = 12
            Margins.Bottom = 0
            Align = alTop
            Style = csOwnerDrawFixed
            TabOrder = 0
            OnChange = cbbCampoChange
            ExplicitTop = 34
            ExplicitWidth = 164
          end
        end
      end
    end
  end
  object grdRodape: TGridPanel
    Left = 0
    Top = 417
    Width = 966
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end
      item
        Value = 20.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = dbnvgr1
        Row = 0
      end
      item
        Column = 2
        Control = edtSomaCurPrice
        Row = 0
      end
      item
        Column = 1
        Control = edtQtdeRegistros
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 2
    ExplicitTop = 416
    object dbnvgr1: TDBNavigator
      AlignWithMargins = True
      Left = 16
      Top = 18
      Width = 174
      Height = 29
      Margins.Left = 16
      Margins.Top = 18
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
      ExplicitTop = 20
      ExplicitWidth = 145
      ExplicitHeight = 25
    end
    object edtSomaCurPrice: TDBLabeledEdit
      AlignWithMargins = True
      Left = 487
      Top = 22
      Width = 90
      Height = 23
      Margins.Top = 22
      Margins.Bottom = 20
      TabStop = False
      Align = alRight
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'SumCurPrice'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
      EditLabel.Width = 95
      EditLabel.Height = 23
      EditLabel.Caption = 'Soma CUR_PRICE:'
      EditLabel.Layout = tlCenter
      LabelPosition = lpLeft
      ExplicitLeft = 485
    end
    object edtQtdeRegistros: TDBLabeledEdit
      AlignWithMargins = True
      Left = 316
      Top = 22
      Width = 67
      Height = 23
      Margins.Top = 22
      Margins.Bottom = 20
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsNone
      DataField = 'CountSymbol'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
      EditLabel.Width = 51
      EditLabel.Height = 23
      EditLabel.Caption = 'Registros:'
      EditLabel.Layout = tlCenter
      LabelPosition = lpLeft
      ExplicitLeft = 413
      ExplicitTop = 3
      ExplicitHeight = 59
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
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
    object ClientDataSet1SumCurPrice: TAggregateField
      FieldName = 'SumCurPrice'
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
  end
end
