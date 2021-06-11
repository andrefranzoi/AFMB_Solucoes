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

unit AppConstantes;

interface

uses System.Generics.Collections, Vcl.Graphics,  System.SysUtils, ACBrSATClass, ClasseDados;

Type
  Pessoa     = (tpFisica, tpJuridica);
  TipoPessoa = (tpCliente,tpFornecedor, tpTransportadora, tpVendedor);
  EIBPTExcecao = class(Exception);
  EClienteExcecao = class(Exception);

Const

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _ANOATUAL                = 2019;

  //--------------------------------------------------------------------
  // Segurança do sistema
  //--------------------------------------------------------------------
  _DIAS_EXPIRAR   = 35;
  _CHAVESEGREDO   = 1;     // Informe qualquer numero aqui de 1 a 999999
  CKEY1           = 2;     // Informe qualquer numero aqui de 1 a 999999
  CKEY2           = 3;     // Informe qualquer numero aqui de 1 a 999999
  _ERROCHAVE      = '<Erro na chave>';
  _INICIO_        = '{';
  _FIM_           = '}';

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  Base64Charset    = AnsiString('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/');

  //--------------------------------------------------------------------
  // Setar identificação do diretorio
  // Add: abril/2019
  //--------------------------------------------------------------------
  {$IFDEF MSWINDOWS}
    _DRIVE             = 'C:';
  {$ENDIF}
  {$IFDEF LINUX}
    _DRIVE             = '';
  {$ENDIF}

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _SISTEMA_NOME        = 'DBVenda';

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------

  PASTA_BINARIO              = 'Binarios';
  PASTA_DADOS                = 'DB';
  EXECUTAVEL_NOME            = _SISTEMA_NOME;
  CONFIG_INI                 = _SISTEMA_NOME+'.ini';
  _DRIVESISTEMA              = Concat(_DRIVE, PathDelim);
  _PASTASISTEMA              = Concat(_DRIVESISTEMA, _SISTEMA_NOME);
  _PASTASISTEMA_DB           = Concat(_DRIVESISTEMA, _SISTEMA_NOME, PathDelim, 'DB', PathDelim);
  _APP_PASTA_BINARIO         = Concat(_DRIVESISTEMA, _SISTEMA_NOME, PathDelim, PASTA_BINARIO, PathDelim);
  _PASTALOG                  = Concat(_PASTASISTEMA, PathDelim+'Log'+PathDelim);
  _LOGMAIL                   = Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim, PASTA_BINARIO, PathDelim, 'LogMails.log' );
  _LOCALINI                  = Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim, PASTA_BINARIO, PathDelim, CONFIG_INI );
  LOGO_NOME                  = 'logo.jpg';

  SITE_EMPRESA               = 'Autor: Adriano Zanini';
  EMAIL_EMPRESA              = 'indpcp2018@gmail.com';
  FONE_EMPRESA               = '(43) 99183-4746';

  _APP_PASTA_DADOS           = Concat(_DRIVESISTEMA, _SISTEMA_NOME, PathDelim, PASTA_DADOS, PathDelim);

  DATABASE_GERENCIADOR       = 'Firebird';
  DATABASE_VERSAO            = 'V2.5';

  _DATABASE_SERVIDOR          = '';
  _DATABASE_NOME              = _APP_PASTA_DADOS+_SISTEMA_NOME+'.fdb';
  _DATABASE_CONFIG_NOME       = _APP_PASTA_DADOS+_SISTEMA_NOME+'PDV'+'.fdb'; //Faz com que o Frente de Caixa tenha configurações independentes

  _DATABASE_DRIVER            = 'FB';
  _DATABASE_USUARIO           = 'SYSDBA';
  _DATABASE_SENHA             = 'masterkey';
  _DATABASE_SENHA_ENCRIPT     = 'xfjsdurbl'; // masterkey
  _DATABASE_PORTA             = 3050;

  MASTER_USUARIO             = 'SYSTEM';
  MASTER_SENHA               = 'SYSTEM';

  REMOTO_DATABASE_SERVIDOR   = SITE_EMPRESA;
  REMOTO_DATABASE_NOME       = 'informar banco de dados';
  REMOTO_DATABASE_USUARIO    = 'informar usuario';
  REMOTO_DATABASE_SENHA      = 'informar senha';
  REMOTO_DATABASE_PORTA      = 0;
  _ARQUIVOAUTENTICASENHA     = _APP_PASTA_BINARIO+_SISTEMA_NOME+'.txt';


  //--------------------------------------------------------------------
  // Cores
  //--------------------------------------------------------------------
  _COR_READONLY              = clBtnFace;
  _COR_HIGHLIGHT             = $0000D7FD;  // Cor das Linhas (exemplo,  grids)
  _COR_HIGHLIGHTBACKGROUND   = clWhite;    // Cor de fundo  (exemplo,  grids)

  //--------------------------------------------------------------------
  // versão DEMO
  //--------------------------------------------------------------------
  _DEMO_ATIVAR     = 'S';
  _DEMO_EXPIROU    = 'Essa versão de demonstração expirou (atingiu os 30 dias). '+slinebreak+
                     ' Entre em contato com a empresa no site [' +SITE_EMPRESA+'] Fone ['+FONE_EMPRESA+'] para obter licenciamento definitivo.';

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _DEVELOPER_ = _APP_PASTA_BINARIO+'developer.key';
  _ARQUIVO_EXPORTAR =  Concat(_PASTASISTEMA, PathDelim, 'Arquivos', PathDelim);

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _ERRODANFE = 'Sem recursos para visualizar/imprimir DANFE. Por falta de componentes necessários nas configurações do seu Windows. Isso não impede o uso do sistema.';

  //--------------------------------------------------------------------
  // NFC-E
  //--------------------------------------------------------------------
  _PULAR_LINHA = 3;
  _ARQUIVO_TEMP_VENDA = _PASTASISTEMA_DB+'venda.xml';
  _ARQUIVO_TEMP_ITENS = _PASTASISTEMA_DB+'vendaitens.xml';

  _SISTEMA_DESENVOLVEDOR   = ' Desenvolvedor ';
  _SISTEMA_EMISSOR         = ' ACBr ';

  //--------------------------------------------------------------------
  // Largura das colunas para imprimir NFC-e na impresssora Não Fiscal
  //--------------------------------------------------------------------
  _ITEM         = 04;
  _STATUS       = 01;
  _CODIGOBARRA  = 13;
  _DESCRICAO    = 16; //20;
  _UND          = 02;
  _QTDE         = 05;
  _VLRUNIT      = 09;
  _VLRTOTAL     = 10;
  _TAMANHOCODIGOBALANCA = 4;

  //--------------------------------------------------------------------
  // Arquivos DANFE (FastReport)
  // Add: abril/2019
  //--------------------------------------------------------------------
  _NFe_Arquivo_DANFE    = 'DanfeNFe.fr3';
  _NFCe_Arquivo_DANFE   = 'DanfeNFCe.fr3';
  _BOLETO_FR3           = 'Doletofr.fr3';

  //--------------------------------------------------------------------
  // Arquivos XSD (esquemas)
  // Add: abril/2019
  //--------------------------------------------------------------------
  _SAT_XSD_APL              = 'CfeDadosVendaAPL_0007.xsd';
  _SAT_XSD_SAT              = 'CfeDadosVendaSAT_0007.xsd';

  //--------------------------------------------------------------------
  // SubPastas
  // Add: abril/2019
  //--------------------------------------------------------------------
  _NFe_SUBPASTA     = Concat(PathDelim,  'NFe',   PathDelim);
  _NFCe_SUBPASTA    = Concat(PathDelim,  'NFCe',  PathDelim);
  _SAT_SUBPASTA     = Concat(PathDelim,  'SAT',   PathDelim);
  _NFSe_SUBPASTA    = Concat(PathDelim,  'NFSe',  PathDelim); // Atenção: ainda não terá utilidade... é para versões futuras.
  _CTe_SUBPASTA     = Concat(PathDelim,  'CTe',   PathDelim); // Atenção: ainda não terá utilidade...  é para versões futuras.
  _INTEGRADOR_PASTA = Concat('C:\Integrador\');


  //--------------------------------------------------------------------
  // Boletos Bancarios
  //--------------------------------------------------------------------
  _BOLETO_ARQREMESSA        =  _SISTEMA_NOME+'_Remessa';
  _BOLETO_ARQRETORNO        =  _SISTEMA_NOME+'_Retorno';
  _BOLETO_DIRLOGO           =  Concat(_PASTASISTEMA, PathDelim, 'Boletos', PathDelim, 'Logos');
  _BOLETO_REPORTFILE        =  Concat(_PASTASISTEMA, PathDelim, 'Boletos', PathDelim, 'Layout', PathDelim, _BOLETO_FR3);
  _BOLETO_DIRARQREMESSA     =  Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim,  'Boletos', PathDelim, 'Remessa', PathDelim);
  _BOLETO_DIRARQRETORNO     =  Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim,  'Boletos', PathDelim, 'Retorno', PathDelim);

  //--------------------------------------------------------------------
  // INTEGRADOR
  // Add: abril/2019
  //--------------------------------------------------------------------
  _INTEGRADOR_TIMEOUT = 30;
  _INTEGRADOR_LOCAL_PASTAS   : TArray<String> = [Concat(_INTEGRADOR_PASTA, 'Input'),
                                                 Concat(_INTEGRADOR_PASTA, 'Output') ];

  //--------------------------------------------------------------------
  // NF-e
  //--------------------------------------------------------------------
  _NFe_LOCAL_DANFE_NFe = Concat(_PASTASISTEMA, PathDelim, 'DANFE', PathDelim, _NFe_Arquivo_DANFE);

  _NFe_LOCAL_PASTAS   : TArray<String> = [Concat(_PASTASISTEMA,  PathDelim,      'Schemas'),       // Vetor 0
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'Inutilizadas'),  // Vetor 1
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'Geradas'),       // Vetor 2
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'Eventos'),       // Vetor 3
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'Salvar'),        // Vetor 4
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'PDF'),           // Vetor 5
                                           Concat(_PASTASISTEMA, _NFe_SUBPASTA,  'Log')];          // Vetor 6

  //--------------------------------------------------------------------
  // NFC-e
  //--------------------------------------------------------------------
  _NFCe_LOCAL_DANFE_NFCe    =  Concat(_PASTASISTEMA, PathDelim, 'DANFE', PathDelim, _NFCe_Arquivo_DANFE);

  _NFCe_LOCAL_PASTAS   : TArray<String> = [Concat(_PASTASISTEMA, PathDelim,       'Schemas'),      // Vetor 0
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'Inutilizadas'), // Vetor 1
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'Geradas'),      // Vetor 2
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'Eventos'),      // Vetor 3
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'Salvar'),       // Vetor 4
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'PDF'),          // Vetor 5
                                           Concat(_PASTASISTEMA, _NFCe_SUBPASTA,  'Log')];         // Vetor 6

  //--------------------------------------------------------------------
  // SAT
  //--------------------------------------------------------------------

  _SAT_PAGINADECODIGO     = 65001;
  _SAT_ARQUIVO_LOG        = 'SAT_log_%s.Log';
  _SAT_SCHEMAVENDAAPL     = Concat(_PASTASISTEMA,  PathDelim,  'Schemas',     PathDelim,  _SAT_XSD_APL );
  _SAT_SCHEMAVENDASAT     = Concat(_PASTASISTEMA,  PathDelim,  'Schemas',     PathDelim,  _SAT_XSD_SAT );

  _SAT_LOCAL_PASTAS   : TArray<String> = [Concat(_PASTASISTEMA, _SAT_SUBPASTA,  'Venda'),         // Vetor 0
                                          Concat(_PASTASISTEMA, _SAT_SUBPASTA,  'Cancelamento'),  // Vetor 1
                                          Concat(_PASTASISTEMA, _SAT_SUBPASTA,  'Envio'),         // Vetor 2
                                          Concat(_PASTASISTEMA, _SAT_SUBPASTA,  'PDF')];          // Vetor 3

implementation

end.
