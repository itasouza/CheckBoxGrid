object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 160
    Width = 561
    Height = 169
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE_CLIENTE'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = '-'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMPLETO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TRATAMENTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORGAO_EMISSOR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO_CIVIL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGRADOURO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR2'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_FIXO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_CELULAR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE_CONTATO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL_TRABALHO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO_EMPRESA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAIXA_SALARIAL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CLIENTE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRATATIVA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROFISSAO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PAI'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MAE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONJUGUE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CONJUGUE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG_CONJUQUE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_INC'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_HAB'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ALT'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valortotal'
        Width = 64
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=osame;Persist Security Info=True;Us' +
      'er ID=os;Initial Catalog=ICATU_BKP;Data Source=probarsrvdsv01'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 152
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbo.TB_CLIENTE')
    Left = 288
    Top = 32
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 32
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 472
    Top = 32
    object ClientDataSet1CONTROLE_CLIENTE: TAutoIncField
      FieldName = 'CONTROLE_CLIENTE'
      ReadOnly = True
    end
    object ClientDataSet1NOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Size = 50
    end
    object ClientDataSet1NOME_TRATAMENTO: TStringField
      FieldName = 'NOME_TRATAMENTO'
    end
    object ClientDataSet1SEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object ClientDataSet1RG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object ClientDataSet1ORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 8
    end
    object ClientDataSet1DATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
    end
    object ClientDataSet1ESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object ClientDataSet1VALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 5
      Size = 3
    end
    object ClientDataSet1VALOR2: TBCDField
      FieldName = 'VALOR2'
      Precision = 18
      Size = 1
    end
    object ClientDataSet1NUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 10
    end
    object ClientDataSet1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object ClientDataSet1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object ClientDataSet1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object ClientDataSet1ESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1CEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object ClientDataSet1TELEFONE_FIXO: TStringField
      FieldName = 'TELEFONE_FIXO'
    end
    object ClientDataSet1TELEFONE_CELULAR: TStringField
      FieldName = 'TELEFONE_CELULAR'
    end
    object ClientDataSet1TELEFONE_CONTATO: TStringField
      FieldName = 'TELEFONE_CONTATO'
    end
    object ClientDataSet1EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ClientDataSet1LOCAL_TRABALHO: TStringField
      FieldName = 'LOCAL_TRABALHO'
      Size = 50
    end
    object ClientDataSet1TEMPO_EMPRESA: TIntegerField
      FieldName = 'TEMPO_EMPRESA'
    end
    object ClientDataSet1FAIXA_SALARIAL: TStringField
      FieldName = 'FAIXA_SALARIAL'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1TIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1TRATATIVA: TStringField
      FieldName = 'TRATATIVA'
      FixedChar = True
      Size = 3
    end
    object ClientDataSet1PROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object ClientDataSet1NOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object ClientDataSet1NOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object ClientDataSet1NOME_CONJUGUE: TStringField
      FieldName = 'NOME_CONJUGUE'
      Size = 50
    end
    object ClientDataSet1CPF_CONJUGUE: TStringField
      FieldName = 'CPF_CONJUGUE'
      Size = 14
    end
    object ClientDataSet1RG_CONJUQUE: TStringField
      FieldName = 'RG_CONJUQUE'
      Size = 12
    end
    object ClientDataSet1STATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1MARCA: TStringField
      FieldName = 'MARCA'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1DATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ClientDataSet1DATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ClientDataSet1DATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ClientDataSet1valortotal: TBCDField
      FieldName = 'valortotal'
      Precision = 11
      Size = 3
    end
    object ClientDataSet1ATIVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 480
    Top = 80
  end
end
