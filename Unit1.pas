unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1CONTROLE_CLIENTE: TAutoIncField;
    ClientDataSet1NOME_COMPLETO: TStringField;
    ClientDataSet1NOME_TRATAMENTO: TStringField;
    ClientDataSet1SEXO: TStringField;
    ClientDataSet1CPF: TStringField;
    ClientDataSet1RG: TStringField;
    ClientDataSet1ORGAO_EMISSOR: TStringField;
    ClientDataSet1DATA_NASCIMENTO: TDateTimeField;
    ClientDataSet1ESTADO_CIVIL: TStringField;
    ClientDataSet1LOGRADOURO: TStringField;
    ClientDataSet1VALOR: TBCDField;
    ClientDataSet1VALOR2: TBCDField;
    ClientDataSet1NUMERO: TStringField;
    ClientDataSet1COMPLEMENTO: TStringField;
    ClientDataSet1BAIRRO: TStringField;
    ClientDataSet1CIDADE: TStringField;
    ClientDataSet1ESTADO: TStringField;
    ClientDataSet1CEP: TStringField;
    ClientDataSet1TELEFONE_FIXO: TStringField;
    ClientDataSet1TELEFONE_CELULAR: TStringField;
    ClientDataSet1TELEFONE_CONTATO: TStringField;
    ClientDataSet1EMAIL: TStringField;
    ClientDataSet1LOCAL_TRABALHO: TStringField;
    ClientDataSet1TEMPO_EMPRESA: TIntegerField;
    ClientDataSet1FAIXA_SALARIAL: TStringField;
    ClientDataSet1TIPO_CLIENTE: TStringField;
    ClientDataSet1TRATATIVA: TStringField;
    ClientDataSet1PROFISSAO: TStringField;
    ClientDataSet1NOME_PAI: TStringField;
    ClientDataSet1NOME_MAE: TStringField;
    ClientDataSet1NOME_CONJUGUE: TStringField;
    ClientDataSet1CPF_CONJUGUE: TStringField;
    ClientDataSet1RG_CONJUQUE: TStringField;
    ClientDataSet1STATUS: TStringField;
    ClientDataSet1MARCA: TStringField;
    ClientDataSet1DATA_INC: TDateTimeField;
    ClientDataSet1DATA_HAB: TDateTimeField;
    ClientDataSet1DATA_ALT: TDateTimeField;
    ClientDataSet1valortotal: TBCDField;
    ClientDataSet1ATIVO: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
 ClientDataSet1.Edit;

 if ClientDataSet1ATIVO.AsString = 'X' then
    ClientDataSet1ATIVO.AsString := ''
 else
    ClientDataSet1ATIVO.AsString := 'X';

 ClientDataSet1.Post;

end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
 var
  check :Integer;
  R: TRect;
begin
  if Column.FieldName =  'ATIVO' then
   begin
     DBGrid1.Canvas.FillRect(Rect);
     check := 0;
     if ClientDataSet1ATIVO.AsString = 'X' then
        check := DFCS_CHECKED
      else
        check :=0;
        R:= Rect;
        InflateRect(R,-2,-2);
        DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON,DFCS_BUTTONCHECK or check);

   end;


end;

end.
