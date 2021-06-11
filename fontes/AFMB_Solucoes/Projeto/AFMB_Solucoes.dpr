{
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx  AUTOR/DESENVOLVEDOR...: Adriano Zanini (2020)                                    xx
  xx  DATA DO CODIGO-FONTE..: DESDE 01/02/2010                                         xx
  xx  E-MAIL................: indpcp2018@gmail.com                                     xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx  SISTEMA...............: DBVenda Retaguarda / Frente de Caixa                     xx
  xx  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) | Firebird 2.5 (32 bits)       xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Alguns sem qualquer ética profissional ou moral, tem comercializado esses fontes  xx
  xx sem minha autorização. Pelas leis brasileiras de direitos autorais, ISSO É CRIME. xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Eu Adriano Zanini, sou autor/desenvolvedor. Se alguem te vendeu esses fontes      xx
  xx sem minha autorização, você comprou um codigo-fonte pirata (não autorizo vender). xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx                                                                                   xx
  xx Sou autor dos sitemas "VestisPCP", "IndPCP" e "DBVenda". Os fontes do "VestisPCP" xx
  xx estão lá no GitHub.                                                               xx
  xx Link no GitHub: https://github.com/ZaniniAdriano/VestisPCP                        xx
  xx                                                                                   xx
  xx***********************************************************************************xx
  xx  COMERCIALIZE SOMENTE O SISTEMA COMPILADO (COM O NOME/INTERFACE QUE DESEJAR).     xx
  xx  MUDE O QUE DESEJAR, CUSTOMIZE COMO QUISER. INCLUSIVE O NOME DO SISTEMA/PROJETO.  xx
  xx                                                                                   xx
  xx***********************************************************************************xx
}

program AFMB_Solucoes;

uses
   Vcl.Forms,
   FDatas in 'Fontes\Frames\FDatas.pas' {FrameDatas: TFrame} ,
   FFrameBarra in 'Fontes\Frames\FFrameBarra.pas' {FrmFrameBarra: TFrame} ,
   FFrameBotoes in 'Fontes\Frames\FFrameBotoes.pas' {FrmFrameBotoes: TFrame} ,
   FFrameBotoes_II
     in 'Fontes\Frames\FFrameBotoes_II.pas' {FrmFrameBotoes_II: TFrame} ,
   FFramePadrao in 'Fontes\Frames\FFramePadrao.pas' {FrmFramePadrao: TFrame} ,
   FrmRelatorios
     in 'Fontes\Frames\FrmRelatorios.pas' {FrameRelatorios: TFrame} ,
   FrmRelatoriosBotoes
     in 'Fontes\Frames\FrmRelatoriosBotoes.pas' {FrameRelatoriosBotoes: TFrame} ,
   FPrincipal in 'Fontes\Principal\FPrincipal.pas' {FrmPrincipal} ,
   FCrudSimples in 'Fontes\TemplateCrud\FCrudSimples.pas' {FrmCrudSimples} ,
   FTemplate in 'Fontes\TemplateCrud\FTemplate.pas' {FormTemplate} ,
   FAboutBox in 'Fontes\About\FAboutBox.pas' {FrmAboutBox} ,
   FAtivarSistema
     in 'Fontes\AtivarSistema\FAtivarSistema.pas' {FrmAtivarSistema} ,
   FAtividades in 'Fontes\Atividades\FAtividades.pas' {FrmAtividades} ,
   FAvisoSistema in 'Fontes\AvisoSistema\FAvisoSistema.pas' {FrmAvisoSistema} ,
   FAvisoSistemaErro
     in 'Fontes\AvisoSistema\FAvisoSistemaErro.pas' {FrmAvisoSistemaErro} ,
   FErrorForm in 'Fontes\AvisoSistema\FErrorForm.pas' {FrmErrorForm} ,
   FQuestionar in 'Fontes\AvisoSistema\FQuestionar.pas' {FrmQuestionar} ,
   FBancos in 'Fontes\Bancos\FBancos.pas' {FrmBancos} ,
   FBoletoBancario in 'Fontes\Boletos\FBoletoBancario.pas' {FrmBoletoBancario} ,
   FControleCaixa in 'Fontes\Caixa\FControleCaixa.pas' {FrmControleCaixa} ,
   FCarneImprimir in 'Fontes\Carnes\FCarneImprimir.pas' {FrmCarneImprimir} ,
   FCEPStatus in 'Fontes\CEP\FCEPStatus.pas' {FrmCEPStatus} ,
   FCFOP in 'Fontes\CFOP\FCFOP.PAS' {FrmCFOP} ,
   FControleChequesEmitidos
     in 'Fontes\Cheques\FControleChequesEmitidos.pas' {FrmChequesEmitidos} ,
   FControleChequesRecebidos
     in 'Fontes\Cheques\FControleChequesRecebidos.pas' {FrmChequesRecebidos} ,
   FCidadeIBGE in 'Fontes\Cidades\FCidadeIBGE.pas' {FrmCidadeIBGE} ,
   App.Constantes in 'Fontes\Classes\App.Constantes.pas',
   App.Funcoes in 'Fontes\Classes\App.Funcoes.pas',
   App.IniFiles in 'Fontes\Classes\App.IniFiles.pas',
   App.Licenca in 'Fontes\Classes\App.Licenca.pas',
   App.SQL in 'Fontes\Classes\App.SQL.pas',
   Biblioteca in 'Fontes\Classes\Biblioteca.pas',
   Classe.BancoDados in 'Fontes\Classes\Classe.BancoDados.pas',
   Classe.CEP in 'Fontes\Classes\Classe.CEP.pas',
   Classe.Cliente in 'Fontes\Classes\Classe.Cliente.pas',
   Classe.Criptografia in 'Fontes\Classes\Classe.Criptografia.pas',
   Classe.EMail in 'Fontes\Classes\Classe.EMail.pas',
   Classe.GetConnect in 'Fontes\Classes\Classe.GetConnect.pas',
   Classe.Global in 'Fontes\Classes\Classe.Global.pas',
   Classe.Parametros in 'Fontes\Classes\Classe.Parametros.pas',
   Classe.Sistema in 'Fontes\Classes\Classe.Sistema.pas',
   Classe.Usuarios in 'Fontes\Classes\Classe.Usuarios.pas',
   CompraClass in 'Fontes\Classes\CompraClass.pas',
   CoreTableClass in 'Fontes\Classes\CoreTableClass.pas',
   FastReport in 'Fontes\Classes\FastReport.pas',
   Global in 'Fontes\Classes\Global.pas',
   FCadClientes in 'Fontes\Clientes\FCadClientes.pas' {FrmClientes} ,
   FComissoes in 'Fontes\Comissoes\FComissoes.pas' {FrmComissoes} ,
   FContaCorrente
     in 'Fontes\ContaCorrente\FContaCorrente.pas' {FrmContaCorrente} ,
   FConta in 'Fontes\Contas\FConta.pas' {FrmConta} ,
   FCtaPagar in 'Fontes\Contas.Pagar\FCtaPagar.pas' {FrmCtaPagar} ,
   FCtaPagarBaixas
     in 'Fontes\Contas.Pagar\FCtaPagarBaixas.pas' {FrmCtaPagarBaixas} ,
   FCtaPagarBaixasLotes
     in 'Fontes\Contas.Pagar\FCtaPagarBaixasLotes.pas' {FrmCtaPagarBaixasLotes} ,
   FCtaPagarGeraParcelas
     in 'Fontes\Contas.Pagar\FCtaPagarGeraParcelas.pas' {FrmCtaPagarGeraParcelas} ,
   FCtaPagarSubstituirChequesInformar
     in 'Fontes\Contas.Pagar.Substituir.Titulo\FCtaPagarSubstituirChequesInformar.pas' {FrmCtaPagarSubstituirChequesInformar} ,
   FCtaPagarSubstituirTitulos
     in 'Fontes\Contas.Pagar.Substituir.Titulo\FCtaPagarSubstituirTitulos.pas' {FrmCtaPagarSubstituirTitulos} ,
   FCtaReceber in 'Fontes\Contas.Receber\FCtaReceber.pas' {FrmCtaReceber} ,
   FCtaReceberBaixas
     in 'Fontes\Contas.Receber\FCtaReceberBaixas.pas' {FrmCtaReceberBaixas} ,
   FCtaReceberBaixasLotes
     in 'Fontes\Contas.Receber\FCtaReceberBaixasLotes.pas' {FrmCtaReceberBaixasLotes} ,
   FCtaReceberBaixasLotesCheques
     in 'Fontes\Contas.Receber\FCtaReceberBaixasLotesCheques.pas' {FrmCtaReceberBaixasLotesCheques} ,
   FCtaReceberBaixasLotesSelecionar
     in 'Fontes\Contas.Receber\FCtaReceberBaixasLotesSelecionar.pas' {FrmCtaReceberBaixasLotesSelecionar} ,
   FCtaReceberGeraParcelas
     in 'Fontes\Contas.Receber\FCtaReceberGeraParcelas.pas' {FrmCtaReceberGeraParcelas} ,
   FControleBancario
     in 'Fontes\ControleBancario\FControleBancario.pas' {FrmControleBancario} ,
   FBaseComponentes
     in 'Fontes\DataModule\FBaseComponentes.pas' {dmBaseComponentes: TDataModule} ,
   FBaseDados in 'Fontes\DataModule\FBaseDados.pas' {BaseDados: TDataModule} ,
   FRelDemonstrativo
     in 'Fontes\Demonstrativo\FRelDemonstrativo.pas' {FrmRelDemonstrativo} ,
   FRelDemonstrativoAnalitico
     in 'Fontes\Demonstrativo\FRelDemonstrativoAnalitico.pas' {FrmRelDemonstrativoAnalitico} ,
   FDepartamentos
     in 'Fontes\Departamentos\FDepartamentos.pas' {FrmDepartamentos} ,
   FCompraCodigoBarra
     in 'Fontes\EntradaManual\FCompraCodigoBarra.pas' {FrmCompraCodigoBarra} ,
   FCompraEntrada
     in 'Fontes\EntradaManual\FCompraEntrada.pas' {FrmCompraEntrada} ,
   FComprasPagar in 'Fontes\EntradaManual\FComprasPagar.pas' {FrmComprasPagar} ,
   FCompra in 'Fontes\EntradaXML\FCompra.pas' {FrmCompra} ,
   FFat_RelComissao
     in 'Fontes\Faturamento\FFat_RelComissao.pas' {FrmFat_RelComissao} ,
   FFat_RelComissaoAnalitico
     in 'Fontes\Faturamento\FFat_RelComissaoAnalitico.pas' {FrmFat_RelComissaoAnalitico} ,
   FFat_RelCurvaABC_Clientes
     in 'Fontes\Faturamento\FFat_RelCurvaABC_Clientes.pas' {FrmFat_RelCurvaABC_Clientes} ,
   FFat_RelCurvaABCFormaPagto
     in 'Fontes\Faturamento\FFat_RelCurvaABCFormaPagto.pas' {FrmFat_RelCurvaABCFormaPagto} ,
   FFat_RelCurvaABCVendedores
     in 'Fontes\Faturamento\FFat_RelCurvaABCVendedores.pas' {FrmFat_RelCurvaABCVendedores} ,
   FFat_RelNFAnalitico
     in 'Fontes\Faturamento\FFat_RelNFAnalitico.pas' {FrmFat_RelNFAnalitico} ,
   FFat_RelNFAnaliticoProdutos
     in 'Fontes\Faturamento\FFat_RelNFAnaliticoProdutos.pas' {FrmFat_RelNFAnaliticoProdutos} ,
   FFat_RelNotaFiscal
     in 'Fontes\Faturamento\FFat_RelNotaFiscal.pas' {FrmFat_RelNotaFiscal} ,
   FFat_RelRepres
     in 'Fontes\Faturamento\FFat_RelRepres.pas' {FrmFat_RelRepres} ,
   FFat_RelResumo_CFOP
     in 'Fontes\Faturamento\FFat_RelResumo_CFOP.pas' {FrmFat_RelResumo_CFOP} ,
   FRelFaturamento
     in 'Fontes\Faturamento\FRelFaturamento.pas' {FrmRelFaturamento} ,
   FFormaPagto in 'Fontes\FormaPagto\FFormaPagto.pas' {FrmFormaPagto} ,
   FFornecedores in 'Fontes\Fornecedor\FFornecedores.pas' {FrmFornecedores} ,
   FGrupos in 'Fontes\Grupo\FGrupos.pas' {FrmGrupos} ,
   FAcesso in 'Fontes\Login\FAcesso.pas' {FrmAcesso} ,
   FNotaFiscal in 'Fontes\NotaFiscal\FNotaFiscal.pas' {FrmNotaFiscal} ,
   FNotaFiscalCancelar
     in 'Fontes\NotaFiscal\FNotaFiscalCancelar.pas' {FrmNotaFiscalCancelar} ,
   FNotaFiscalEmitidas
     in 'Fontes\NotaFiscal\FNotaFiscalEmitidas.pas' {FrmNotaFiscalEmitidas} ,
   FNotaFiscalSituacaoSEFAZ
     in 'Fontes\NotaFiscal\FNotaFiscalSituacaoSEFAZ.pas' {FrmNotaFiscalSituacaoSEFAZ} ,
   FStatusNFe in 'Fontes\NotaFiscal\FStatusNFe.pas' {FrmStatusNFe} ,
   FVisualizarParcelas
     in 'Fontes\NotaFiscal\FVisualizarParcelas.pas' {FrmVisualizarParcelas} ,
   FConfigurar in 'Fontes\Parametros\FConfigurar.pas' {FrmConfigurar} ,
   FPedidoCompra in 'Fontes\PedidoCompra\FPedidoCompra.pas' {FrmPedidoCompra} ,
   FPedidoVenda in 'Fontes\PedidoVenda\FPedidoVenda.pas' {FrmPedidoVenda} ,
   FProdutosPesquisaPreco
     in 'Fontes\PesquisaPrecos\FProdutosPesquisaPreco.pas' {FrmProdutosPesquisaPreco} ,
   FPlanoContas in 'Fontes\Plano_de_Contas\FPlanoContas.pas' {FrmPlanoContas} ,
   FRelPlanoContas
     in 'Fontes\Plano_de_Contas\FRelPlanoContas.pas' {FrmRelPlanoContas} ,
   FRelPlanos in 'Fontes\Plano_de_Contas\FRelPlanos.pas' {FrmRelPlanos} ,
   FProdutos in 'Fontes\Produtos\FProdutos.pas' {FrmProdutos} ,
   FProdutosQuantidade
     in 'Fontes\Produtos\FProdutosQuantidade.pas' {FrmProdutosQuantidade} ,
   FRecibo in 'Fontes\Recibo\FRecibo.pas' {FrmRecibo} ,
   FServidorSistema
     in 'Fontes\Rede_Servidor\FServidorSistema.pas' {FrmServidorSistema} ,
   FRegioes in 'Fontes\Regioes\FRegioes.pas' {FrmRegioes} ,
   FRegioesCaracteristicas
     in 'Fontes\Regioes\FRegioesCaracteristicas.pas' {FrmRegioesCaracteristicas} ,
   F_RelEst_Historico
     in 'Fontes\Relatorios\F_RelEst_Historico.pas' {Frm_RelEst_Historico} ,
   F_RelEst_ListaPreco
     in 'Fontes\Relatorios\F_RelEst_ListaPreco.pas' {Frm_RelEst_ListaPreco} ,
   F_RelEst_Minimo
     in 'Fontes\Relatorios\F_RelEst_Minimo.pas' {Frm_RelEst_Minimo} ,
   F_RelEst_Posicao
     in 'Fontes\Relatorios\F_RelEst_Posicao.pas' {Frm_RelEst_Posicao} ,
   FRelEstoque in 'Fontes\Relatorios\FRelEstoque.pas' {FrmRelEstoque} ,
   FRelCaixaSimplificado
     in 'Fontes\Caixa\Relatorios\FRelCaixaSimplificado.pas' {FrmRelCaixaSintetico} ,
   FRelFluxoCaixa
     in 'Fontes\Caixa\Relatorios\FRelFluxoCaixa.pas' {FrmRelFluxoCaixa} ,
   FRelMovCaixa in 'Fontes\Caixa\Relatorios\FRelMovCaixa.pas' {FrmRelMovCaixa} ,
   FRelMovCaixaSaldoDiarioAnalitico
     in 'Fontes\Caixa\Relatorios\FRelMovCaixaSaldoDiarioAnalitico.pas' {FrmRelMovCaixaSaldoDiarioAnalitico} ,
   FRelCheques in 'Fontes\Cheques\Relatorios\FRelCheques.pas' {FrmRelCheques} ,
   FRelChequesLancados
     in 'Fontes\Cheques\Relatorios\FRelChequesLancados.pas' {FrmRelChequesLancados} ,
   FRelCliAnalitico
     in 'Fontes\Clientes\Relatorios\FRelCliAnalitico.pas' {FrmRelCliAnalit} ,
   FRelCliBloqueados
     in 'Fontes\Clientes\Relatorios\FRelCliBloqueados.pas' {FrmRelCliBloqueados} ,
   FRelCliCidades
     in 'Fontes\Clientes\Relatorios\FRelCliCidades.pas' {FrmRelCliCidades} ,
   FRelClientes
     in 'Fontes\Clientes\Relatorios\FRelClientes.pas' {FrmRelClientes} ,
   FRelCliFones
     in 'Fontes\Clientes\Relatorios\FRelCliFones.pas' {FrmRelCliFones} ,
   FRelEstados in 'Fontes\Clientes\Relatorios\FRelEstados.pas' {FrmRelEstados} ,
   FRelRepresentantes
     in 'Fontes\Clientes\Relatorios\FRelRepresentantes.pas' {FrmRelRepresentantes} ,
   FComissoesRelatorios
     in 'Fontes\Comissoes\Relatorios\FComissoesRelatorios.pas' {FrmComissoesRelatorios} ,
   FRelCtaPagar
     in 'Fontes\Contas.Pagar\Relatorios\FRelCtaPagar.pas' {FrmRelCtaPagar} ,
   FRelPagar_Extrato
     in 'Fontes\Contas.Pagar\Relatorios\FRelPagar_Extrato.pas' {FrmRelPagar_Extrato} ,
   FRelPagar_Historico
     in 'Fontes\Contas.Pagar\Relatorios\FRelPagar_Historico.pas' {FrmRelPagar_Historico} ,
   FRelPagar_Pagar
     in 'Fontes\Contas.Pagar\Relatorios\FRelPagar_Pagar.pas' {FrmRelPagar_Pagar} ,
   FRelPagar_Quitadas
     in 'Fontes\Contas.Pagar\Relatorios\FRelPagar_Quitadas.pas' {FrmRelPagar_Quitadas} ,
   FRelPagar_Vencidas
     in 'Fontes\Contas.Pagar\Relatorios\FRelPagar_Vencidas.pas' {FrmRelPagar_Vencidas} ,
   FRelCtaReceber
     in 'Fontes\Contas.Receber\Relatorios\FRelCtaReceber.pas' {FrmRelCtaReceber} ,
   FRelReceb_Extrato
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_Extrato.pas' {FrmRelReceb_Extrato} ,
   FRelReceb_ExtratoProdutos
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_ExtratoProdutos.pas' {FrmRelReceb_ExtratoProdutos} ,
   FRelReceb_Historico
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_Historico.pas' {FrmRelReceb_Historico} ,
   FRelReceb_Quitadas
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_Quitadas.pas' {FrmRelReceb_Quitadas} ,
   FRelReceb_QuitadasDataPagto
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_QuitadasDataPagto.pas' {FrmRelReceb_QuitadasDataPagto} ,
   FRelReceb_Receber
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_Receber.pas' {FrmRelReceb_Receber} ,
   FRelReceb_ReceberSintetico
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_ReceberSintetico.pas' {FrmRelReceb_ReceberSintetico} ,
   FRelReceb_Vencidas
     in 'Fontes\Contas.Receber\Relatorios\FRelReceb_Vencidas.pas' {FrmRelReceb_Vencidas} ,
   FRelEntregas
     in 'Fontes\Entrega\Relatorios\FRelEntregas.pas' {FrmRelEntregas} ,
   FRelEntregas_Geral
     in 'Fontes\Entrega\Relatorios\FRelEntregas_Geral.pas' {FrmRelEntregas_Geral} ,
   FRelFornCidades
     in 'Fontes\Fornecedor\Relatorios\FRelFornCidades.pas' {FrmRelFornCidades} ,
   FRelFornEstados
     in 'Fontes\Fornecedor\Relatorios\FRelFornEstados.pas' {FrmRelFornEstados} ,
   FRelFornFicha
     in 'Fontes\Fornecedor\Relatorios\FRelFornFicha.pas' {FrmRelFornFicha} ,
   FRelFornFones
     in 'Fontes\Fornecedor\Relatorios\FRelFornFones.pas' {FrmRelFornFones} ,
   FRelPedidos
     in 'Fontes\PedidoVenda\Relatorios\FRelPedidos.pas' {FrmRelPedidos} ,
   FReciboImprimir
     in 'Fontes\Recibo\Relatorios\FReciboImprimir.pas' {FrmReciboImprimir} ,
   FEtiquetacaixa in 'Fontes\Romaneio\FEtiquetacaixa.pas' {FrmEtiquetacaixa} ,
   FRomaneio in 'Fontes\Romaneio\FRomaneio.pas' {FrmRomaneio} ,
   FSplash in 'Fontes\Splash\FSplash.pas' {FrmSplash} ,
   FSubGrupos in 'Fontes\Subgrupo\FSubGrupos.pas' {FrmSubGrupos} ,
   FImprimirTabela in 'Fontes\Tabela\FImprimirTabela.pas' {FrmImprimirTabela} ,
   FTabelaPreco in 'Fontes\Tabela\FTabelaPreco.pas' {FrmTabelaPreco} ,
   FTabelaPrecoValor
     in 'Fontes\Tabela\FTabelaPrecoValor.pas' {FrmTabelaPrecoValor} ,
   FTabelaNCM in 'Fontes\TabelaNCM\FTabelaNCM.pas' {FrmTabelaNCM} ,
   FOpcaoNotaFiscal
     in 'Fontes\TipoVenda\FOpcaoNotaFiscal.pas' {FrmOpcaoNotaFiscal} ,
   FOpcaoVenda in 'Fontes\TipoVenda\FOpcaoVenda.pas' {FrmOpcaoVenda} ,
   FTransferenciaContas
     in 'Fontes\Transferencia\FTransferenciaContas.pas' {FrmTransferenciaContas} ,
   FTransportadoras
     in 'Fontes\Transportadora\FTransportadoras.pas' {FrmTransportadoras} ,
   FAutenticarAcao
     in 'Fontes\Usuarios\FAutenticarAcao.pas' {FrmAutenticarAcao} ,
   FRelatorioUsuario
     in 'Fontes\Usuarios\FRelatorioUsuario.pas' {FrmUsuarioLog} ,
   FUsuarios in 'Fontes\Usuarios\FUsuarios.pas' {FrmUsuarios} ,
   FUsuariosOnLine
     in 'Fontes\Usuarios\FUsuariosOnLine.pas' {FrmUsuariosOnLine} ,
   FVendaExpressa
     in 'Fontes\VendaExpressa\FVendaExpressa.pas' {FrmVendaExpressa} ,
   FColaborador in 'Fontes\Vendedor\FColaborador.pas' {FrmColaborador} ,
   FNotaFiscalCartaCorrecao
     in 'Fontes\NotaFiscal\FNotaFiscalCartaCorrecao.pas' {FrmNotaFiscalCartaCorrecao} ,
   FNotaFiscalInutilizar
     in 'Fontes\NotaFiscal\FNotaFiscalInutilizar.pas' {FrmNotaFiscalInutilizar} ,
   FGraficos in 'Fontes\Graficos\FGraficos.pas' {FrmDashboardGrafico} ,
   FGeraParcelas
     in 'Fontes\Gerar_parcelas\FGeraParcelas.pas' {FrmGeraParcelas} ,
   FEmailTemplate
     in 'Fontes\TemplateCrud\FEmailTemplate.pas' {FrmEmailTemplate} ,
   FEnviarParaContabilidade
     in 'Fontes\NotaFiscal\FEnviarParaContabilidade.pas' {FrmEnviarParaContabilidade} ,
   FGeraParcelaNFe
     in 'Fontes\NotaFiscal\FGeraParcelaNFe.pas' {FrmGeraParcelaNFe} ,
   Vcl.Themes,
   Vcl.Styles,
   RecordFornecedor in 'Fontes\TiposRecord\RecordFornecedor.pas',
   RecordProduto in 'Fontes\TiposRecord\RecordProduto.pas',
   RecordIBPT in 'Fontes\TiposRecord\RecordIBPT.pas',
   RecordCliente in 'Fontes\TiposRecord\RecordCliente.pas',
   RecordTransporta in 'Fontes\TiposRecord\RecordTransporta.pas',
   FComprasImprimir
     in 'Fontes\EntradaXML\FComprasImprimir.pas' {FrmComprasImprimir} ,
   FRelCompras in 'Fontes\EntradaXML\FRelCompras.pas' {FrmRelCompras} ,
   FRelComprasFornecedor
     in 'Fontes\EntradaXML\FRelComprasFornecedor.pas' {FrmRelComprasFornecedor} ,
   FOpcaoNotaFiscalCompra
     in 'Fontes\EntradaXML\FOpcaoNotaFiscalCompra.pas' {FrmOpcaoNotaFiscalCompra};

{$R *.res}

begin

   Application.Initialize;
   Application.HintHidePause := MaxInt;
   Application.ShowHint := True;

   FrmSplash := TFrmSplash.Create(Application);
   FrmSplash.Show;
   FrmSplash.lblStatus.Caption := '[iniciando...]';
   Application.ProcessMessages;
   Application.Title := 'DBVenda';
   Application.CreateForm(TFrmPrincipal, FrmPrincipal);
   Application.ProcessMessages;
   Application.Run;

end.
