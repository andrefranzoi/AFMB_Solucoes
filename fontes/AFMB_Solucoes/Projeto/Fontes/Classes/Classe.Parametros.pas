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

Unit Classe.Parametros;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.EMail;

type

   TParametrosEmpresa = Class
   Private
      FCodigo: Integer;
      FDataAtividade: TDateTime; // data inicial de atividade da empresa
      FNome: String;
      FNomeFantasia: String;
      FCNPJ: String;
      FIE: String;
      FIM: String;
      FCNAE: String;
      FEndereco: String;
      FNumero: String;
      FBairro: String;
      FComplemento: String;
      FCep: String;
      FFone: String;
      FFax: String;
      FEmail: String;
      FSite: String;
      FContato: String;
      FIDCidade: Integer;
      FIDUF: Integer;
      FCidade: String;
      FUF: String;
      FCodigoPais: Integer;
      FNomePais: String;
      FREGIME_TRIB: Integer;
      FREGIME_TRIBALIQ: Real;

   Public
      property Codigo: Integer Read FCodigo Write FCodigo;
      property DataAtividade: TDateTime Read FDataAtividade
        Write FDataAtividade;
      property Nome: String Read FNome Write FNome;
      property NomeFantasia: String Read FNomeFantasia Write FNomeFantasia;
      property CNPJ: String Read FCNPJ Write FCNPJ;
      property IE: String Read FIE Write FIE;
      property IM: String Read FIM Write FIM;
      property CNAE: String Read FCNAE Write FCNAE;
      property Endereco: String Read FEndereco Write FEndereco;
      property Numero: String Read FNumero Write FNumero;
      property Bairro: String Read FBairro Write FBairro;
      property Complemento: String Read FComplemento Write FComplemento;
      property Cep: String Read FCep Write FCep;
      property Fone: String Read FFone Write FFone;
      property Fax: String Read FFax Write FFax;
      property EMail: String Read FEmail Write FEmail;
      property Site: String Read FSite Write FSite;
      property Contato: String Read FContato Write FContato;
      property IDCidade: Integer Read FIDCidade Write FIDCidade;
      property IDUF: Integer Read FIDUF Write FIDUF;
      property Cidade: String Read FCidade Write FCidade;
      property UF: String Read FUF Write FUF;
      property CodigoPais: Integer Read FCodigoPais Write FCodigoPais;
      property NomePais: String Read FNomePais Write FNomePais;
      property REGIME_TRIB: Integer Read FREGIME_TRIB Write FREGIME_TRIB;
      property REGIME_TRIBALIQ: Real Read FREGIME_TRIBALIQ
        Write FREGIME_TRIBALIQ;

   End;

   TParametrosNFE = Class
   private
      { Private declarations }
      FAmbiente: Integer;
      FTipoDANFE: String;
      FFormaEmissao: String;
      FModelo: String;
      FSerie: String;
      FSequencia: Integer;
      FLote: Integer;
      FVersaoNFe: Integer;
      FCertArquivo: String;
      FCertSenha: String;
      FCertSerie: String;
      FEnviarEmail: Boolean;
      FGeradorDANFE: String;

      FRespTec_IDCSRT: String;
      FRespTec_CSRT: String;
      FRespTec_CNPJ: String;
      FRespTec_xContato: String;
      FRespTec_email: String;
      FRespTec_Fone: String;

   public
      { Public declarations }
      property Ambiente: Integer Read FAmbiente Write FAmbiente;
      property TipoDANFE: String Read FTipoDANFE Write FTipoDANFE;
      property FormaEmissao: String Read FFormaEmissao Write FFormaEmissao;
      property Modelo: String Read FModelo Write FModelo;
      property Serie: String Read FSerie Write FSerie;
      property Sequencia: Integer Read FSequencia Write FSequencia;
      property Lote: Integer Read FLote Write FLote;
      property VersaoNFe: Integer Read FVersaoNFe Write FVersaoNFe;

      property CertArquivo: String Read FCertArquivo Write FCertArquivo;
      property CertSenha: String Read FCertSenha Write FCertSenha;
      property CertSerie: String Read FCertSerie Write FCertSerie;
      property EnviarEmail: Boolean Read FEnviarEmail Write FEnviarEmail;
      property GeradorDANFE: String Read FGeradorDANFE Write FGeradorDANFE;

      property RespTec_IDCSRT: String Read FRespTec_IDCSRT
        Write FRespTec_IDCSRT;
      property RespTec_CSRT: String Read FRespTec_CSRT Write FRespTec_CSRT;
      property RespTec_CNPJ: String Read FRespTec_CNPJ Write FRespTec_CNPJ;
      property RespTec_xContato: String Read FRespTec_xContato
        Write FRespTec_xContato;
      property RespTec_email: String Read FRespTec_email Write FRespTec_email;
      property RespTec_Fone: String Read FRespTec_Fone Write FRespTec_Fone;
   End;

   TParametrosFinanceiro = Class
   Private
      FJuros: Real;
      FCartorio: Real;
      FCobrancaDias: Integer;
      FVendaVistaBaixar: String;
      FDiasBloqueio: Integer;
      FPagarLancarCaixa: String;
      FPagarLancarBanco: String;
      FPagarComissao: String;
      FPagarContaCaixa: Integer;
      FPagarPlanoContas: String;
      FPagarComissaoVencimento: Integer;
      FPagarComissaoContaCaixa: Integer;
      FPagarComissaoCentroCusto: Integer;
      FPagarComissaoPlanoConta: String;
      FReceberLancarCaixa: String;
      FReceberLancarBanco: String;
      FReceberContaCaixa: Integer;
      FReceberPlanoContas: String;
      FBalcaoLancarCaixa: String;
      FSiteCotacao: String;

   Public
      property Juros: Real Read FJuros Write FJuros;
      property Cartorio: Real Read FCartorio Write FCartorio;
      property CobrancaDias: Integer Read FCobrancaDias Write FCobrancaDias;
      property VendaVistaBaixar: String Read FVendaVistaBaixar
        Write FVendaVistaBaixar;
      property DiasBloqueio: Integer Read FDiasBloqueio Write FDiasBloqueio;
      property PagarLancarCaixa: String Read FPagarLancarCaixa
        Write FPagarLancarCaixa;
      property PagarLancarBanco: String Read FPagarLancarBanco
        Write FPagarLancarBanco;
      property PagarComissao: String Read FPagarComissao Write FPagarComissao;
      property PagarContaCaixa: Integer Read FPagarContaCaixa
        Write FPagarContaCaixa;
      property PagarPlanoContas: String Read FPagarPlanoContas
        Write FPagarPlanoContas;
      property PagarComissaoVencimento: Integer Read FPagarComissaoVencimento
        Write FPagarComissaoVencimento;
      property PagarComissaoContaCaixa: Integer Read FPagarComissaoContaCaixa
        Write FPagarComissaoContaCaixa;
      property PagarComissaoCentroCusto: Integer Read FPagarComissaoCentroCusto
        Write FPagarComissaoCentroCusto;
      property PagarComissaoPlanoconta: String Read FPagarComissaoPlanoConta
        Write FPagarComissaoPlanoConta;
      property ReceberLancarCaixa: String Read FReceberLancarCaixa
        Write FReceberLancarCaixa;
      property ReceberLancarBanco: String Read FReceberLancarBanco
        Write FReceberLancarBanco;
      property ReceberContaCaixa: Integer Read FReceberContaCaixa
        Write FReceberContaCaixa;
      property ReceberPlanoContas: String Read FReceberPlanoContas
        Write FReceberPlanoContas;
      property BalcaoLancarCaixa: String Read FBalcaoLancarCaixa
        Write FBalcaoLancarCaixa;
      property SiteCotacao: String Read FSiteCotacao Write FSiteCotacao;

   End;

   TParametrosCompra = Class
   Private
      FPlanoContas: String;
      FCFOP: Integer;
      FFornecedor: Integer;

   Public
      property Planocontas: String Read FPlanoContas Write FPlanoContas;
      property Fornecedor: Integer Read FFornecedor Write FFornecedor;
      property CFOP: Integer Read FCFOP Write FCFOP;

   End;

   TParametrosAlerta = Class
   Private
      FEstoque: String;
      FCtareceber: String;
      FCtareceberDias: Integer;
      FCtapagar: String;
      FCtapagarDias: Integer;
      FPedidos: String;
      FCobranca: String;
      FValidade: String;
      FValidadeDias: Integer;
      FPedidosCompras: String;

   Public
      property Estoque: String Read FEstoque Write FEstoque;
      property Ctareceber: String Read FCtareceber Write FCtareceber;
      property CtareceberDias: Integer Read FCtareceberDias
        Write FCtareceberDias;
      property Ctapagar: String Read FCtapagar Write FCtapagar;
      property CtapagarDias: Integer Read FCtapagarDias Write FCtapagarDias;
      property Pedidos: String Read FPedidos Write FPedidos;
      property Cobranca: String Read FCobranca Write FCobranca;
      property Validade: String Read FValidade Write FValidade;
      property ValidadeDias: Integer Read FValidadeDias Write FValidadeDias;
      property PedidosCompras: String Read FPedidosCompras
        Write FPedidosCompras;
   End;

   TParametrosCFOP = Class
   private
      { Private declarations }
      FVendaUFInterno: Integer;
      FVendaUFExterno: Integer;
      FDevolucaoUFLocal: Integer;
      FDevolucaoUFFora: Integer;
      FCompraUFLocal: Integer;
      FCompraUFFora: Integer;

   public
      { Public declarations }
      property VendaUFInterno: Integer Read FVendaUFInterno
        Write FVendaUFInterno;
      property VendaUFExterno: Integer Read FVendaUFExterno
        Write FVendaUFExterno;
      property DevolucaoUFLocal: Integer Read FDevolucaoUFLocal
        Write FDevolucaoUFLocal;
      property DevolucaoUFFora: Integer Read FDevolucaoUFFora
        Write FDevolucaoUFFora;
      property CompraUFLocal: Integer Read FCompraUFLocal Write FCompraUFLocal;
      property CompraUFFora: Integer Read FCompraUFFora Write FCompraUFFora;
   End;

   TParametrosLogotipo = Class
   Private
      FLogoPrincipal: String;
      FLogoRelatorios: String;

   Public
      property LogoPrincipal: String Read FLogoPrincipal Write FLogoPrincipal;
      property LogoRelatorios: String Read FLogoRelatorios
        Write FLogoRelatorios;
   End;

   TParametrosCliente = Class
   Private
      FInatividade: Integer;
      FAtrasoPermitido: Integer;

   Public
      property Inatividade: Integer Read FInatividade Write FInatividade;
      property Atrasopermitido: Integer Read FAtrasoPermitido
        Write FAtrasoPermitido;

   End;

   TParametrosPedidos = Class
   Private
      FEntrega: Integer;
      FBaixaEstoque: String;
      FMensagem: WideString;

   Public
      property Entrega: Integer Read FEntrega Write FEntrega;
      property Baixaestoque: String Read FBaixaEstoque Write FBaixaEstoque;
      property Mensagem: WideString Read FMensagem Write FMensagem;

   End;

   TParametrosVenda = Class
   Private
      FVendedor: Integer;
      FCliente: Integer;
      FIDPagto: Integer;
      FImprimeFatura: String;

   Public
      property Vendedor: Integer Read FVendedor Write FVendedor;
      property Cliente: Integer Read FCliente Write FCliente;
      property IDPagto: Integer Read FIDPagto Write FIDPagto;
      property Imprimefatura: String Read FImprimeFatura Write FImprimeFatura;

   End;

   TParametrosFrete = Class
   Private
      FPadrao: Integer;
   Public
      property Padrao: Integer Read FPadrao Write FPadrao;

   End;

   TParametros = Class(TPersistent)
   private
      { Private declarations }
      FEmpresa: TParametrosEmpresa;
      FEmail: TEmail;
      FFinanceiro: TParametrosFinanceiro;
      FCompra: TParametrosCompra;
      FAlerta: TParametrosAlerta;
      FCFOP: TParametrosCFOP;
      FNFE: TParametrosNFE;
      FConfiguracao: TParametrosLogotipo;
      FCliente: TParametrosCliente;
      FVenda: TParametrosVenda;
      FPedido: TParametrosPedidos;
      FFrete: TParametrosFrete;
   public
      { Public declarations }
      constructor Create;
      destructor Destroy; override;

      property Empresa: TParametrosEmpresa Read FEmpresa Write FEmpresa;
      property EMail: TEmail Read FEmail Write FEmail;
      property Financeiro: TParametrosFinanceiro Read FFinanceiro
        Write FFinanceiro;
      property Compra: TParametrosCompra Read FCompra Write FCompra;
      property Alerta: TParametrosAlerta Read FAlerta Write FAlerta;
      property CFOP: TParametrosCFOP Read FCFOP Write FCFOP;
      property NFE: TParametrosNFE Read FNFE Write FNFE;
      property Configuracao: TParametrosLogotipo Read FConfiguracao
        Write FConfiguracao;
      property Cliente: TParametrosCliente Read FCliente Write FCliente;
      property Venda: TParametrosVenda Read FVenda Write FVenda;
      property Pedido: TParametrosPedidos Read FPedido Write FPedido;
      property Frete: TParametrosFrete Read FFrete Write FFrete;
   End;

implementation

{ TParametros }
constructor TParametros.Create;
begin
   FEmpresa := TParametrosEmpresa.Create;
   FFinanceiro := TParametrosFinanceiro.Create;
   FCompra := TParametrosCompra.Create;
   FAlerta := TParametrosAlerta.Create;
   FCFOP := TParametrosCFOP.Create;
   FNFE := TParametrosNFE.Create;
   FConfiguracao := TParametrosLogotipo.Create;
   FCliente := TParametrosCliente.Create;
   FVenda := TParametrosVenda.Create;
   FPedido := TParametrosPedidos.Create;
   FFrete := TParametrosFrete.Create;
   FEmail := TEmail.Create;

end;

destructor TParametros.Destroy;
begin
   FFrete.Free;
   FEmpresa.Free;
   FFinanceiro.Free;
   FCompra.Free;
   FAlerta.Free;
   FCFOP.Free;
   FNFE.Free;
   FConfiguracao.Free;
   FCliente.Free;
   FVenda.Free;
   FPedido.Free;
   FEmail.Free;
end;

end.
