{
xx***********************************************************************************xx
xx                                                                                   xx
xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
xx  E-MAIL................: indpcp2018@gmail.com                                     xx
xx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
xx                                                                                   xx
xx***********************************************************************************xx
xx                                                                                   xxxx Alguns sem qualquer ética profissional ou moral, tem comercializado esses fontes  xxxx sem minha autorização. Pelas leis brasileiras de direitos autorais, ISSO É CRIME. xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xx
xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xxxx sem minha autorização, você comprou um codigo-fonte pirata (não autorizo vender). xxxx                                                                                   xxxx***********************************************************************************xxxx                                                                                   xxxx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xxxx estão lá no GitHub.                                                               xxxx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xxxx                                                                                   xxxx***********************************************************************************xxxx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xxxx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xxxx                                                                                   xxxx***********************************************************************************xx
}

program DBVendaPDV;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  FPrincipal in 'Fontes\Principal\FPrincipal.pas' {FrmPrincipal},
  FFormModelo in 'Fontes\Dialogs\FFormModelo.pas' {FrmFormModelo},
  FTemplateForm in 'Fontes\Dialogs\FTemplateForm.pas' {FrmTemplateForm},
  FAbreFechaCaixa in 'Fontes\Caixa\FAbreFechaCaixa.pas' {FrmAbreFechaCaixa},
  AppConstantes in 'Fontes\Classes\AppConstantes.pas',
  AppFuncoes in 'Fontes\Classes\AppFuncoes.pas',
  AppGetConnect in 'Fontes\Classes\AppGetConnect.pas',
  AppSQL in 'Fontes\Classes\AppSQL.pas',
  ClasseCriptografia in 'Fontes\Classes\ClasseCriptografia.pas',
  ClasseDados in 'Fontes\Classes\ClasseDados.pas',
  FPergunta in 'Fontes\Dialogs\FPergunta.pas' {FrmPergunta},
  FSelecionarBandeiraCartao in 'Fontes\Dialogs\FSelecionarBandeiraCartao.pas' {FrmSelecionarBandeiraCartao},
  FStatus in 'Fontes\Dialogs\FStatus.pas' {FrmStatus},
  FOutrasFuncoes in 'Fontes\Funcoes\FOutrasFuncoes.pas' {FrmOutrasFuncoes},
  FPDVPrint in 'Fontes\Imprimir\FPDVPrint.pas' {FrmPDVPrint},
  FOperador in 'Fontes\Operador\FOperador.pas' {FrmOperador},
  FPagamento in 'Fontes\Pagamento\FPagamento.pas' {FrmPagamento},
  FRecebimento in 'Fontes\Recebimento\FRecebimento.pas' {FrmRecebimento},
  FReforcoCaixa in 'Fontes\Reforco\FReforcoCaixa.pas' {FrmReforcoCaixa},
  FRetirada in 'Fontes\Retirada\FRetirada.pas' {FrmRetirada},
  ClasseCompra in 'Fontes\Classes\ClasseCompra.pas',
  FCancelaItem in 'Fontes\CancelarItem\FCancelaItem.pas' {FrmCancelaItem},
  FDescontoVenda in 'Fontes\Desconto\FDescontoVenda.pas' {FrmDescontoVenda},
  FManutencaoNFe in 'Fontes\NFManutencao\FManutencaoNFe.pas' {FrmManutencaoNFe},
  FNotaFiscalCancelar in 'Fontes\NFManutencao\FNotaFiscalCancelar.pas' {FrmNotaFiscalCancelar},
  FInformacaoNF in 'Fontes\NFManutencao\FInformacaoNF.pas' {FrmInformacaoNF},
  FStatusNFe in 'Fontes\NFManutencao\FStatusNFe.pas' {FrmStatusNFe},
  FExcluirItem in 'Fontes\CancelarItem\FExcluirItem.pas' {FrmExcluirItem},
  FCliente in 'Fontes\Cliente\FCliente.pas' {FrmCliente},
  FCPFCNPJ in 'Fontes\Cliente\FCPFCNPJ.pas' {FrmCPFCNPJ},
  FConfigurar in 'Fontes\Configurar\FConfigurar.pas' {FrmConfigurar},
  FConfigurarBalanca in 'Fontes\Balanca\FConfigurarBalanca.pas' {FrmConfigurarBalanca},
  FGeraParcelas in 'Fontes\Parcelas\FGeraParcelas.pas' {FrmGeraParcelas},
  FInformarPesoManual in 'Fontes\InformarPeso\FInformarPesoManual.pas' {FrmInformarPesoManual};

{$R *.res}

begin
  Application.Initialize;
  Application.HintHidePause := MaxInt;
  Application.ShowHint      := True;
  Application.Title := 'DBVendaPDV';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
