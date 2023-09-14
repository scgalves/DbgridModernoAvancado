unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TViewPrincipal = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
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
    ClientDataSet1SumCurPrice: TAggregateField;
    edtSomaCurPrice: TDBLabeledEdit;
    edtQtdeRegistros: TDBLabeledEdit;
    ClientDataSet1CountSymbol: TAggregateField;
    grpPesquisar: TGroupBox;
    grdPesquisar: TGridPanel;
    edtTexto: TLabeledEdit;
    grd1: TGridPanel;
    rdbLocalizar: TRadioButton;
    rdbFiltrar: TRadioButton;
    pnlCombo: TPanel;
    lblCombo: TLabel;
    cbbCampo: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State:
      TGridDrawState);
    procedure edtTextoChange(Sender: TObject);
    procedure cbbCampoChange(Sender: TObject);
    procedure rdbLocalizarClick(Sender: TObject);
    procedure rdbFiltrarClick(Sender: TObject);
  private
//    const
//      C_GREEN_MID_LIGHT: TColor = $0062AD05;
    FOldColumn: TColumn;
    procedure EstiloDbgrid(const ADbgrid: TDBGrid);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.cbbCampoChange(Sender: TObject);
begin
  edtTextoChange(edtTexto);
  edtTexto.SetFocus;
end;

procedure TViewPrincipal.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (Sender as TDBGrid).DataSource.DataSet.RecNo mod 2 = 0 then // Se ao dividir por 2, o resto <> 0
    if not (gdSelected in State) then // se a célula não está selecionada
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := cl3DLight; //clSilver; // define uma cor de fundo da linha
      (Sender as TDBGrid).Canvas.FillRect(Rect); // pinta a célula
      (Sender as TDBGrid).DefaultDrawDataCell(Rect, Column.Field, State); // pinta o texto padrão
    end;
end;

procedure TViewPrincipal.DBGrid1TitleClick(Column: TColumn);
var
  LIndice: string;
  LExisteIndice: boolean;
  LClientDataSet_idx: TClientDataSet;
begin
//  if Self.DataSource1.DataSet.IsEmpty then
//  if TDBGrid(Column).DataSource.DataSet.IsEmpty then
  if Column.Grid.DataSource.DataSet.IsEmpty then
    Exit;

  if Assigned(FOldColumn) then
    if FOldColumn <> Column then
//      LOldColumn.Title.Color := TDBGrid(Column).FixedColor; // Retorna à cor definida no FormCreate
      FOldColumn.Title.Color := TDBGrid(Column.Grid).FixedColor; // Retorna à cor definida no FormCreate


  if (Column.FieldName.Trim.IsEmpty) or (Column.Field.FieldKind in [fkCalculated, fkLookup, fkAggregate]) or
    (Column.Field.DataType in [ftBlob, ftMemo]) then
    Exit;

  LClientDataSet_idx := TClientDataset(Column.Grid.DataSource.DataSet);

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
    Column.Title.Color := clWindowFrame; // Cor do fundo do título selecionado
  end
  else
  begin
    LClientDataSet_idx.IndexFieldNames := Column.FieldName; // Ascendente
    Column.Title.Color := clBlack; // Cor do fundo do título selecionado
  end;

  TClientDataset(Column.Grid.DataSource.DataSet).First;
  FOldColumn := Column;
end;

procedure TViewPrincipal.edtTextoChange(Sender: TObject);
begin
  if Trim(edtTexto.Text) = '' then
    Exit;

  if rdbLocalizar.Checked then
    Self.ClientDataSet1.Locate(cbbCampo.Text, edtTexto.Text, [loCaseInsensitive, loPartialKey])
  else
  begin
    Self.ClientDataSet1.Filtered := False;
    if cbbCampo.ItemIndex in [0..2, 17, 20, 21] then
      Self.ClientDataSet1.Filter := Format('%s like %s', [cbbCampo.Text,
        QuotedStr(AnsiUpperCase(edtTexto.Text) + '%')])
    else
      Self.ClientDataSet1.Filter := Format('%s >= %s', [cbbCampo.Text, edtTexto.Text]);
    Self.ClientDataSet1.Filtered := True;
  end;
end;

procedure TViewPrincipal.EstiloDbgrid(const ADbgrid: TDBGrid);
var
  I: integer;
begin
  with ADbgrid do
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
    Options := Options - [dgEditing, dgColLines, dgRowLines, dgIndicator] + [dgRowSelect, dgAlwaysShowSelection];
    FixedColor := $008C366E;//clBlue;
    TitleFont.Size := 10;
    TitleFont.Style := [fsBold];
    TitleFont.Color := clWhite;
    Color := clWhite;

    for I := 0 to Pred(Columns.Count) do
    begin
//      Columns[i].Title.Color := TUtils.C_GREEN_MID_LIGHT;//C_COR_FUNDO_TITULO_COLUNA_DBGRID;//C_AZUL_3;
      Columns[I].Title.Alignment := taCenter;
    end;
  //    Self.TitleFont.Color := TUtils.C_WHITE;
//      Self.TitleFont.Style := [fsBold];
  end;
end;

procedure TViewPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.ClientDataSet1.Close;
end;

procedure TViewPrincipal.FormCreate(Sender: TObject);
var
  LCaminhoArqXml: string;
begin
  ReportMemoryLeaksOnShutdown := True;

  LCaminhoArqXml := ExtractFilePath(Application.ExeName) + '\Data\master.xml';

  if not FileExists(LCaminhoArqXml) then
  begin
    ShowMessage('O arquivo ".\Data\master.xml" não foi encontrado. Impossível continuar.');
    Application.Terminate;
  end;

  Self.ClientDataSet1.Active := False;
  try
    Self.ClientDataSet1.FileName := LCaminhoArqXml;
    Self.ClientDataSet1.Active := True;
  except
    on E: Exception do
    begin
      E.Message := 'O arquivo ".\Data\master.xml" não é um arquivo XML válido. Impossível continuar.' + sLineBreak +
        'Erro: ' + E.Message;
      Application.Terminate;
    end;
  end;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  EstiloDbgrid(DBGrid1);

  Self.ClientDataSet1.GetFieldNames(Self.cbbCampo.Items); // Popula o Combo
  Self.cbbCampo.ItemIndex := 0;
end;

procedure TViewPrincipal.rdbFiltrarClick(Sender: TObject);
begin
  rdbLocalizar.Checked := False;
  edtTextoChange(edtTexto);
end;

procedure TViewPrincipal.rdbLocalizarClick(Sender: TObject);
begin
  rdbFiltrar.Checked := False;
  edtTextoChange(edtTexto);
end;

end.

