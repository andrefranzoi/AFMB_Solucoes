{--------------------------------------------------------------------------------+
|  SISTEMA...............: DBVenda                                               |
|  PORTE DE EMPRESA......: Para micro e pequena empresa                          |
|  SEGMENTO..............: Comércio em geral que emita Vendas/NF-e/NFC-e/SAT     |   
|  LINGUAGEM/DB..........: Delphi 10.3 Rio (32 bits) / Firebird 2.5 (32 bits)    |
|--------------------------------------------------------------------------------|
**                          4                                                      **
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: indpcp2018@gmail.com                                  ||--------------------------------------------------------------------------------||  Você não pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}

unit App.Constantes;

interface

uses System.Generics.Collections, Vcl.Graphics, System.SysUtils;

Type
  Pessoa     = (tpFisica,  tpJuridica);
  TipoPessoa = (tpCliente, tpFornecedor, tpTransportadora, tpVendedor);

Const

  //--------------------------------------------------------------------
  // Segurança do sistema
  //--------------------------------------------------------------------
  _DIAS_EXPIRAR   = 30;
  _CHAVESEGREDO   = 524345; // Aleatório, coloque qualquer numero aqui
  CKEY1           = 11; // Aleatório, coloque qualquer numero aqui
  CKEY2           = 99; // Aleatório, coloque qualquer numero aqui
  _INICIO_        = '{';
  _FIM_           = '}';
  Base64Charset    = AnsiString('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/');

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
    _ANOATUAL                  = 2018;
  _SISTEMA_NOME              = 'IndPCP';
  EXECUTAVEL_NOME            = _SISTEMA_NOME;
  _VENDAEXPRESSA             = 'VendaExpressa';
  CONFIG_INI                 = _SISTEMA_NOME+'.ini';
  CONFIG_SQLITE              = _VENDAEXPRESSA+'.ini';
  _DRIVE                     = 'C:';
  PASTA_SEPARADOR            = '\';
  PASTA_BINARIO              = 'Binarios';
  PASTA_DADOS                = 'DB';
  _DRIVESISTEMA              = Concat(_DRIVE,PASTA_SEPARADOR);
  _PASTASISTEMA              = Concat(_DRIVESISTEMA,_SISTEMA_NOME);
  _PASTASISTEMA_DB           = Concat(_DRIVESISTEMA,_SISTEMA_NOME,'\DB\');
  _APP_PASTA_BINARIO         = Concat(_DRIVESISTEMA,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR);
  _PASTALOG                  = _PASTASISTEMA+PASTA_SEPARADOR+'log';
  _LOGMAIL                   = _PASTASISTEMA+'\Log\LogMails.log';
  _LOCALINI                  = Concat(_DRIVE,PASTA_SEPARADOR,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR,CONFIG_INI );
  LOGO_NOME                  = 'logo.jpg';
  SITE_EMPRESA               = 'www.seusite.com.br';
  EMAIL_EMPRESA              = 'contato@seusite.com.br';
  FONE_EMPRESA               = '(00) 00000-0000';

  _APP_PASTA_DADOS           = Concat(_DRIVESISTEMA,_SISTEMA_NOME,PASTA_SEPARADOR,PASTA_DADOS,PASTA_SEPARADOR);

  DATABASE_GERENCIADOR       = 'Firebird';
  DATABASE_VERSAO            = 'V2.5';

  _DATABASE_SERVIDOR          = '';
  _DATABASE_NOME              = _APP_PASTA_DADOS+_SISTEMA_NOME+'.fdb';
  _DATABASE_NOME_SQLITE       = _APP_PASTA_DADOS+_VENDAEXPRESSA+'.db'; // SQLITE

  _DATABASE_DRIVER            = 'FB';
  _DATABASE_DRIVERSQLITE      = 'SQLite';
  _DATABASE_USUARIO           = 'SYSDBA';
  _DATABASE_SENHA             = 'masterkey';
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
  _COR_HIGHLIGHT             = $0000D7FD;  // Cor das Linhas (exemplo, grids)
  _COR_HIGHLIGHTBACKGROUND   = clWhite;    // Cor de fundo  (exemplo, grids)

  //--------------------------------------------------------------------
  // Nota Fiscal Eletronica
  //--------------------------------------------------------------------
  _NFE_DANFE               = 'danfe.fr3';
  _NFE_LOCAL_DANFE         =  Concat(_PASTASISTEMA,'\DANFE\',_NFE_DANFE);
  _NFE_LOCAL_SCHEMA        =  Concat(_PASTASISTEMA,'\SCHEMAS');
  _NFE_LOCAL_PDF           =  Concat(_PASTASISTEMA,'\NFE\PDF');
  _NFE_LOCAL_INUTILIZADAS  =  Concat(_PASTASISTEMA,'\NFE\INUTILIZADAS');
  _NFE_LOCAL_GERADAS       =  CONCAT(_PASTASISTEMA,'\NFE\GERADAS');
  _NFE_LOCAL_EVENTO        =  CONCAT(_PASTASISTEMA,'\NFE\EVENTOS');
  _NFE_LOCAL_SALVAR        =  CONCAT(_PASTASISTEMA,'\NFE\SALVAR');
  _NFE_LOCAL_DOWNLOADS     =  CONCAT(_PASTASISTEMA,'\NFE\DOWNLOADS');


  //--------------------------------------------------------------------
  // Boletos Bancarios
  //--------------------------------------------------------------------
  _BOLETO_FR3               = 'boletofr.fr3';
  _BOLETO_ARQREMESSA        =  _SISTEMA_NOME+'_Remessa';
  _BOLETO_ARQRETORNO        =  _SISTEMA_NOME+'_Retorno';
  _BOLETO_DIRLOGO           =  Concat(_PASTASISTEMA,'\Boletos\Logos');
  _BOLETO_REPORTFILE        =  Concat(_PASTASISTEMA,'\Boletos\Layout\',_BOLETO_FR3);
  _BOLETO_DIRARQREMESSA     =  Concat(_DRIVE,'\',_SISTEMA_NOME,'\','Boletos\Remessa\');
  _BOLETO_DIRARQRETORNO     =  Concat(_DRIVE,'\',_SISTEMA_NOME,'\','Boletos\Retorno\');

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
  _ARQUIVO_EXPORTAR =  Concat(_PASTASISTEMA,'\Arquivos\');

  //--------------------------------------------------------------------
  //
  //--------------------------------------------------------------------
  _ERRODANFE = 'Sem recursos para visualizar/imprimir DANFE. Por falta de componentes necessários nas configurações do seu Windows. Isso não impede o uso do sistema.';

  //--------------------------------------------------------------------
  // NFC-E
  //--------------------------------------------------------------------
  _ARQUIVO_TEMP_VENDA = _PASTASISTEMA_DB+'venda.xml';
  _ARQUIVO_TEMP_ITENS = _PASTASISTEMA_DB+'vendaitens.xml';


implementation

end.
