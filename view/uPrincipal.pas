unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  (* Listas de impostos que serão lidas usando o Generics e carregadas no Combobox *)
  TImpFederais = (IE, II, IOF, ITR, IPI, IRPF, IRPJ, INSS, COFINS, CIDE, CSLL, FGTS, PASEP);
  TImpEstaduais = (ICMS, ITCMD, IPVA);
  TImpMunicipais = (IPTU, ISS, ITBI);

  TfrmPrincipal = class(TForm)
    cmbLista: TComboBox;
    btnSobre: TButton;
    Bevel1: TBevel;
    btnFechar: TButton;
    rgTipoImposto: TRadioGroup;
    btnPrencher: TButton;
    procedure btnSobreClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPrencherClick(Sender: TObject);
    procedure rgTipoImpostoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uSobre, UEnumUtils;

{$R *.dfm}

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.btnPrencherClick(Sender: TObject);
begin
  //Chamando a class procedure de acordo com o tipo de imposto selecionado.
  case rgTipoImposto.ItemIndex of
    0 :
      TEnumUtils<TImpFederais>.EnumToList(cmbLista.Items);
    1 :
      TEnumUtils<TImpEstaduais>.EnumToList(cmbLista.Items);
    2 :
      TEnumUtils<TImpMunicipais>.EnumToList(cmbLista.Items);
  else
    Application.MessageBox('Erro ao tentar preencher o combobox!' + slinebreak + 'Tipo de imposto não selecionado!', 'Erro', MB_OK + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
var
  frmSobre : TfrmSobre;
begin
  frmSobre := TfrmSobre.Create(Self);
  try
    frmSobre.ShowModal;
  finally
    frmSobre.Free;
  end;
end;

procedure TfrmPrincipal.rgTipoImpostoClick(Sender: TObject);
begin
  case rgTipoImposto.ItemIndex of
    0 :
     TEnumUtils<TImpFederais>.Clear(cmbLista.Items);
    1 :
     TEnumUtils<TImpEstaduais>.Clear(cmbLista.Items);
    2 :
     TEnumUtils<TImpMunicipais>.Clear(cmbLista.Items);
  end;

end;

end.
