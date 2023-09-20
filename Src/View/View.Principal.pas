unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, MidasLib, System.Win.ComObj;

type
  TViewPrincipal = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    grdTopo: TGridPanel;
    grdRodape: TGridPanel;
    dbnvgr1: TDBNavigator;
    ClientDataSet1SYMBOL: TStringField;
    ClientDataSet1CO_NAME: TStringField;
    ClientDataSet1EXCHANGE: TStringField;
    ClientDataSet1CUR_PRICE: TFloatField;
    ClientDataSet1YRL_HIGH: TFloatField;
    ClientDataSet1YRL_LOW: TFloatField;
    ClientDataSet1P_E_RATIO: TFloatField;
    ClientDataSet1BETA: TFloatField;
    ClientDataSet1PROJ_GRTH: TFloatField;
    ClientDataSet1INDUSTRY: TSmallintField;
    ClientDataSet1PRICE_CHG: TSmallintField;
    ClientDataSet1SAFETY: TSmallintField;
    ClientDataSet1RATING: TStringField;
    ClientDataSet1RANK: TFloatField;
    ClientDataSet1OUTLOOK: TSmallintField;
    ClientDataSet1RCMNDATION: TStringField;
    ClientDataSet1RISK: TStringField;
    ClientDataSet1SomaCUR_PRICE: TAggregateField;
    ClientDataSet1CountSymbol: TAggregateField;
    grpLocalizar: TGroupBox;
    grdLocalizar: TGridPanel;
    edtTexto: TLabeledEdit;
    pnlCombo: TPanel;
    lblColuna: TLabel;
    cbbColuna: TComboBox;
    pnlQtdeRegistros: TPanel;
    lblQtdeRegistros: TLabel;
    dbtxtQtdeRegistros: TDBText;
    pnlSomaCUR_PRICE: TPanel;
    lblSomaCUR_PRICE: TLabel;
    dbtxtSomaCUR_PRICE: TDBText;
    pnlSomaYRL_LOW: TPanel;
    lblSomaYRL_LOW: TLabel;
    dbtxtSomaYRL_LOW: TDBText;
    ClientDataSet1SomaYRL_HIGH: TAggregateField;
    ClientDataSet1SomaYRL_LOW: TAggregateField;
    ClientDataSet1SomaP_E_RATIO: TAggregateField;
    pnlSomaYRL_HIGH: TPanel;
    lblSomaYRL_HIGH: TLabel;
    dbtxtSomaYRL_HIGH: TDBText;
    pnlSomaP_E_RATIO: TPanel;
    lblSomaP_E_RATIO: TLabel;
    dbtxtSomaP_E_RATIO: TDBText;
    pnlSomaBETA: TPanel;
    lblSomaBETA: TLabel;
    dbtxtSomaBETA: TDBText;
    ClientDataSet1SomaBETA: TAggregateField;
    OpenDialog1: TOpenDialog;
    pnlDados: TPanel;
    DBGrid1: TDBGrid;
    btnExportarExcel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure edtTextoChange(Sender: TObject);
    procedure cbbColunaChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnExportarExcelClick(Sender: TObject);
  private
    /// <summary>Guarda a referência da última coluna que foi clicada.</summary>
    FOldColumn: TColumn;

    /// <summary>Estilização na grid.</summary>
    procedure EstiloDbgrid;
  public

  end;

type
  TMinhaDBGrid = class(TCustomDBGrid);

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnExportarExcelClick(Sender: TObject);
var
  LLinha,
    LColuna: Word;
  LQtdeRegistros: Cardinal;
  LPlanilha: Variant;
  LValorCampo: string;
begin
  LPlanilha:= CreateoleObject('Excel.Application');
  LPlanilha.WorkBooks.Add(1);
  LPlanilha.visible := True;

  Self.ClientDataSet1.First;
  LQtdeRegistros := Self.ClientDataSet1.RecordCount;
  for LLinha := 0 to Pred(LQtdeRegistros) do
  begin
    for LColuna := 1 to Self.ClientDataSet1.FieldCount do
    begin
      LValorCampo := Self.ClientDataSet1.Fields[LColuna - 1].AsString;
      LPlanilha.Cells[LLinha + 2, LColuna] := LValorCampo;
    end;
    Self.ClientDataSet1.Next;
  end;

  for LColuna := 1 to Self.ClientDataSet1.FieldCount do
  begin
    LValorCampo := Self.ClientDataSet1.Fields[LColuna - 1].DisplayLabel;
    LPlanilha.Cells[1, LColuna] := LValorCampo;
  end;
  LPlanilha.columns.Autofit;
end;

procedure TViewPrincipal.cbbColunaChange(Sender: TObject);
begin
  Self.edtTextoChange(Self.edtTexto);
  Self.edtTexto.SetFocus;
end;

procedure TViewPrincipal.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  // Aumenta a altura das linhas da grid
  TMinhaDBGrid(Self.DBGrid1).DefaultRowHeight := 30;
  TMinhaDBGrid(Self.DBGrid1).ClientHeight := (30 * TMinhaDBGrid(Self.DBGrid1).RowCount) + 30;
end;

procedure TViewPrincipal.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Linhas com cores do fundo alternando entre cinza claro e branco
  if not (Sender as TDBGrid).DataSource.DataSet.RecNo mod 2 = 0 then // Se ao dividir por 2, o resto <> 0
    (Sender as TDBGrid).Canvas.Brush.Color := cl3DLight
  else
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
  // Linha selecionada
  if (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := clGray; // Cor de fundo da linha
    (Sender as TDBGrid).Canvas.Font.Color := clWhite; // Cor da fonte da linha
    (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
  end;

  (Sender as TDBGrid).Canvas.FillRect(Rect); // pinta a célula
  (Sender as TDBGrid).DefaultDrawDataCell(Rect, Column.Field, State); // pinta o texto padrão
  // O alinhamento horizontal do conteúdo varia conforme o tipo do campo
  if (Column.Field.DataType <> ftFloat) and (Column.Field.DataType <> ftInteger) and
    (Column.Field.DataType <> ftSmallint) then
    (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left + 8, Rect.Top + 8, Column.Field.DisplayText)
  else
    (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left - 8 +
      (Rect.Width - (Sender as TDBGrid).Canvas.TextWidth(Column.Field.DisplayText)),
      Rect.Top + 8, Column.Field.DisplayText);
end;

procedure TViewPrincipal.DBGrid1TitleClick(Column: TColumn);
var
  LIndice: string;
  LExisteIndice: boolean;
  LClientDataSet_idx: TClientDataSet;
begin
  if Column.Grid.DataSource.DataSet.IsEmpty then
    Exit;

  if Assigned(FOldColumn) then
    if FOldColumn <> Column then
    begin // Uma coluna diferente da anterior foi clicada
      FOldColumn.Title.Color := TDBGrid(Column.Grid).FixedColor; // Retorna à cor definida no FormCreate
      FOldColumn.Title.Font.Color := clWhite;
    end;

  if (Column.FieldName.Trim.IsEmpty) or (Column.Field.FieldKind in [fkCalculated, fkLookup, fkAggregate]) or
    (Column.Field.DataType in [ftBlob, ftMemo]) then
    Exit;

  LClientDataSet_idx := TClientDataset(Column.Grid.DataSource.DataSet);
  // Indexação da coluna
  if LClientDataSet_idx.IndexFieldNames = Column.FieldName then
  begin
    LIndice := AnsiUpperCase(Column.FieldName + '_INV');

    try
      LClientDataSet_idx.IndexDefs.Find(LIndice);
      LExisteIndice := True;
    except
      LExisteIndice := False;
    end;

    if not LExisteIndice then
      with LClientDataSet_idx.IndexDefs.AddIndexDef do
      begin
        Name := LIndice;
        Fields := Column.FieldName;
        Options := [ixDescending]; // Descendente
      end;
    LClientDataSet_idx.IndexName := LIndice;
    Column.Title.Font.Color := clBlack;
  end
  else
  begin
    LClientDataSet_idx.IndexFieldNames := Column.FieldName; // Ascendente
    Column.Title.Color := $00C1609F;
  end;

  TClientDataset(Column.Grid.DataSource.DataSet).First;
  FOldColumn := Column;
end;

procedure TViewPrincipal.edtTextoChange(Sender: TObject);
begin
  if Trim(Self.edtTexto.Text) = '' then
  begin
    if Self.ClientDataSet1.Filtered then
    begin
      Self.ClientDataSet1.Filtered := False;
      Self.ClientDataSet1.Filter := '';
    end;
    Exit;
  end;

  Self.ClientDataSet1.Filtered := False;
  Self.ClientDataSet1.Filter := Format('%s like %s', [cbbColuna.Text,
    QuotedStr(AnsiUpperCase(Self.edtTexto.Text) + '%')]);
  Self.ClientDataSet1.Filtered := True;
end;

procedure TViewPrincipal.EstiloDbgrid;
var
  I: integer;
begin
  with Self.DBGrid1 do
  begin
    Align := alClient;
    AlignWithMargins := True;
    BorderStyle := bsNone;
    DrawingStyle := gdsClassic;
    Font.Size := 10;
    Margins.Bottom := 0;
    Margins.Left := 16;
    Margins.Right := 16;
    Margins.Top := 0;
    Options := Options - [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgIndicator] +
      [dgRowSelect, dgAlwaysShowSelection];
    FixedColor := $008C366E;
    TitleFont.Size := 10;
    TitleFont.Style := [fsBold];
    TitleFont.Color := clWhite;
    Color := clWhite;

    for I := 0 to Pred(Columns.Count) do
      Columns[I].Title.Alignment := taCenter;
  end;
end;

procedure TViewPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.ClientDataSet1.Close;
end;

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  Self.OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'Data';

  if Self.OpenDialog1.Execute then
  begin
    Self.ClientDataSet1.Active := False;
    try
      Self.ClientDataSet1.FileName := Self.OpenDialog1.FileName;
      Self.ClientDataSet1.Active := True;

    except
      on E: Exception do
      begin
        E.Message := 'O arquivo "' + Self.OpenDialog1.FileName + '" não é um arquivo XML válido.' + sLineBreak +
          'Impossível continuar.' + sLineBreak + 'Erro: ' + E.Message;
        Application.Terminate;
      end;
    end;
  end
  else
  begin
    Application.Terminate;
    Exit;
  end;

  EstiloDbgrid;

  Self.cbbColuna.ItemIndex := 0;
  Self.ClientDataSet1.First;
end;

end.

