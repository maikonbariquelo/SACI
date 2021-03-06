unit MxSelOperacao_do_Sistema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, DBCtrls, Db, DBTables,
  SQuery, Variants, Operacao_do_Sistema, Submodulo, Modulo, SiacReport_TLB;

type
  TfMxSelOperSist = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    mskDataINI: TMaskEdit;
    mskDataFIM: TMaskEdit;
    Panel3: TPanel;
    dblModulo: TDBLookupComboBox;
    ckbModulo: TCheckBox;
    dblSubModulo: TDBLookupComboBox;
    ckbSubModulo: TCheckBox;
    RadioGroup1: TRadioGroup;
    edtOperacao: TEdit;
    edtComponente: TEdit;
    ckbComponente: TCheckBox;
    ckbOperacao: TCheckBox;
    Modulo1: TModulo;
    Submodulo1: TSubmodulo;
    Operacao_do_Sistema1: TOperacao_do_Sistema;
    DSModulo: TDataSource;
    DSSubmodulo: TDataSource;
    cbxRelatorioGrafico: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckbOperacaoClick(Sender: TObject);
    procedure ckbComponenteClick(Sender: TObject);
    procedure ckbModuloClick(Sender: TObject);
    procedure dblModuloClick(Sender: TObject);
    procedure ckbSubModuloClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMxSelOperSist: TfMxSelOperSist;

implementation

uses UDM, funcoes, UOperacao_sistema;

{$R *.DFM}

procedure TfMxSelOperSist.FormShow(Sender: TObject);
begin
  DM.Usuario1.AlteraCorComponentes(self);
  mskDataINI.SetFocus;
end;

procedure TfMxSelOperSist.BitBtn1Click(Sender: TObject);
var
  sFiltro1,sFiltro2, modulo, submodulo, mensagem, dataINI, dataFIM, opr, com:string;
  SQL: string;
  stiReport: CoSiacReport_; //TSiacReport;
begin
  mensagem:='';
  if not VerificaData(mskDataINI.Text) then
    mensagem:=mensagem+'Data inicial digitada incorretamente!'+#13;
  if not VerificaData(mskDataFIM.Text) then
    mensagem:=mensagem+'Data final digitada incorretamente!'+#13;

  if not VerificaDataBranco(mskDataINI.Text)then
    DataINI := ''
  else if RadioGroup1.ItemIndex = 0 then
    DataINI := ' AND (T1.OPS_DTCADASTRO>='''+MesDia(mskDataINI.Text)+''') '
  else if RadioGroup1.ItemIndex = 1 then
    DataINI := ' AND (T1.OPS_DTALTERADO>='''+MesDia(mskDataINI.Text)+''') ';

  if not VerificaDataBranco(mskDataFIM.Text)then
    DataFIM := ''
  else if RadioGroup1.ItemIndex = 0 then
    DataFIM := ' AND (T1.OPS_DTCADASTRO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
  else if RadioGroup1.ItemIndex = 1 then
    DataFIM := ' AND (T1.OPS_DTALTERADO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') ';

  if mensagem<>'' then
    raise exception.Create(mensagem);

  if ckbOperacao.Checked then
    if edtOperacao.Text='' then
    Begin
      edtOperacao.SetFocus;
      raise Exception.Create('Opera��o inv�lida!');
    end
    else
    Begin
      OPR:=' AND (T1.OPS_OPERACAO='+#39+edtOperacao.Text+#39+') ';
      sFiltro1:=sFiltro1+'  (Opera��o: '+edtOperacao.text+')';
    end;

  if ckbComponente.Checked then
    if (edtComponente.text = '') then
    Begin
      edtComponente.SetFocus;
      raise Exception.Create('Componente inv�lido!');
    end
    else
    Begin
      COM:=' AND (T1.OPS_COMPONENTE='+#39+(edtComponente.text)+#39+') ';
      sFiltro1:=sFiltro1+'  (Componente: '+edtComponente.text+')';
    end;

  if ckbModulo.Checked then
    if dblModulo.Text = '' then
    Begin
      dblModulo.SetFocus;
      raise Exception.Create('M�dulo inv�lido!');
    end
    else
    Begin
      Modulo:=' AND (T1.MDL_CODIGO='+IntToStr(dblModulo.KeyValue)+') ';
      sFiltro2:=sFiltro2+'  (M�dulo: '+dblModulo.Text+') ';
    end;

  if ckbSubModulo.Checked then
    if dblSubModulo.Text = '' then
    Begin
      dblSubModulo.SetFocus;
      raise Exception.Create('SubM�dulo inv�lido!');
    end
    else
    Begin
      SubModulo:=' AND (T1.SML_CODIGO='+IntToStr(dblSubModulo.KeyValue)+') ';
      sFiltro2:=sFiltro2+'  (SubM�dulo: '+dblSubModulo.Text+') ';
    end;

  if tag = 0 then
  Begin
    if cbxRelatorioGrafico.Checked then //if RelatorioGrafico then
    begin

      SQL := 'SELECT T1.*, T2.MDL_DESCRICAO, T3.SML_DESCRICAO FROM OPERACAO_DO_SISTEMA T1 ' +
             ' INNER JOIN MODULO T2 ON T1.MDL_CODIGO = T2.MDL_CODIGO ' +
             ' INNER JOIN SUBMODULO T3 ON T1.SML_CODIGO = T3.SML_CODIGO ' +
             ' WHERE 1=1 '+DataINI+DataFIM+OPR+COM+MODULO+SUBMODULO+
             ' ORDER BY T1.MDL_CODIGO, T1.SML_CODIGO';

      stiReport.Create.ReportOperacaoSistema(false,
                                             false,
                                             SQL,
                                             EmpresaDesenvolvedora,
                                             'Relat�rio de Opera��es do Sistema',
                                             DM.CentroCusto1.RazaoSocial,
                                             '',//DM.Configuracao1.LojaNome
                                             'Relat�rio de Opera��es do Sistema',
                                             DM.Usuario1.NomeUSU,
                                             sFiltro1+' '+ sFiltro2,//Filtros
                                             rptArquivoLogo);

    end
    else
    begin
      Application.CreateForm(Trpt_OperSist, rpt_OperSist);
      with rpt_OperSist do
      Begin
        tag := 0;
        zrlFiltro2.Caption :=sFiltro1+' '+ sFiltro2;
//        if RadioGroup1.ItemIndex = 2 then
//          SZRLabel1.Caption := 'Entrada';
        entidade:= Operacao_do_Sistema1;
        Entidade.Close;
        Entidade.SQL.Text:='SELECT * '+
          ' FROM OPERACAO_DO_SISTEMA '+
          ' WHERE OPS_CODIGO=OPS_CODIGO '+DataINI+DataFIM+OPR+COM+MODULO+SUBMODULO+
          ' ORDER BY MDL_CODIGO, SML_CODIGO';
        Entidade.Open;
        if Entidade.IsEmpty then
          Raise Exception.Create('Consulta Vazia!');

          SZRLabel15.Caption :=mskDataINI.Text;
          SZRLabel17.Caption := mskDataFIM.Text;

        report.preview;
        Close;
      end;
    end;
  end;
end;

procedure TfMxSelOperSist.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMxSelOperSist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfMxSelOperSist.ckbOperacaoClick(Sender: TObject);
begin
  if ckbOperacao.Checked then
  Begin
    edtOperacao.Color:=clWindow;
    edtOperacao.Enabled:=True;
    edtOperacao.SetFocus;
  end
  else
  Begin
    edtOperacao.Color:=AlteraCorComponentes;
    edtOperacao.Text:='';
    edtOperacao.Enabled:=False;
  end;
end;

procedure TfMxSelOperSist.ckbComponenteClick(Sender: TObject);
begin
  if ckbComponente.Checked then
  Begin
    edtComponente.Color:=clWindow;
    edtComponente.Enabled:=True;
    edtComponente.SetFocus;
  end
  else
  Begin
    edtComponente.Color:=AlteraCorComponentes;
    edtComponente.Text:='';
    edtComponente.Enabled:=False;
  end;

end;

procedure TfMxSelOperSist.ckbModuloClick(Sender: TObject);
begin
  if ckbModulo.Checked then
  Begin
    Modulo1.Active:=true;
    dblModulo.Color:=clWindow;
    dblModulo.Enabled:=True;
    dblModulo.KeyValue:=Modulo1.CodigoMDL;
    ckbSubModulo.Enabled:=true;
  end
  else
  Begin
    ckbSubModulo.Enabled:=False;
    dblSubModulo.Color:=AlteraCorComponentes;
    dblSubModulo.Enabled:=False;
    Modulo1.Close;
    Submodulo1.Close;
    dblModulo.Color:=AlteraCorComponentes;
    dblModulo.Enabled:=false;
  end;
end;

procedure TfMxSelOperSist.dblModuloClick(Sender: TObject);
begin
  if dblSubModulo.Enabled then
  begin
    with SubModulo1 do
    begin
      close;
      SQL.Text:='SELECT * FROM SUBMODULO '+
        ' WHERE MDL_CODIGO = '+ inttostr(dblModulo.KeyValue)+
        ' ORDER BY SML_CODIGO';
      open;
    end;
    dblSubModulo.KeyValue:=SubModulo1.CodigoSML;
  end;
end;

procedure TfMxSelOperSist.ckbSubModuloClick(Sender: TObject);
begin
  if ckbSubModulo.checked then
  begin
    dblSubModulo.Color:=clWindow;
    dblSubModulo.Enabled:=True;
    dblModuloClick(sender);
    dblModulo.SetFocus;
  end
  else
  begin
    dblSubModulo.Color:=AlteraCorComponentes;
    dblSubModulo.Enabled:=False;
    Submodulo1.Close;
  end;
end;

procedure TfMxSelOperSist.FormCreate(Sender: TObject);
begin
  entidade:=Operacao_do_Sistema1;
end;

procedure TfMxSelOperSist.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close
  else if key = #13 then
    BitBtn1Click(sender);
end;

end.


