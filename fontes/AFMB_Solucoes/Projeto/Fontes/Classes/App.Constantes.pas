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

unit App.Constantes;

interface

uses System.Generics.Collections, Vcl.Graphics, System.SysUtils;

Type
   Pessoa = (tpFisica, tpJuridica);
   TipoPessoa = (tpCliente, tpFornecedor, tpTransportadora, tpVendedor);
   TipoImagem = (tiPNG, tiJPG, tiBMP);
   TLocalDados = (ldPadrao, ldCEP);

Const
   // --------------------------------------------------------------------
   //
   // --------------------------------------------------------------------
   _ANOATUAL = 2019;

   // --------------------------------------------------------------------
   // Segurança do sistema
   // --------------------------------------------------------------------
   _DIAS_EXPIRAR = 35;
   _CHAVESEGREDO = 1; // Informe qualquer numero aqui de 1 a 999999
   CKEY1 = 2; // Informe qualquer numero aqui de 1 a 999999
   CKEY2 = 3; // Informe qualquer numero aqui de 1 a 999999
   _ERROCHAVE = '<Erro na chave>';
   _INICIO_ = '{';
   _FIM_ = '}';

   // --------------------------------------------------------------------
   //
   // --------------------------------------------------------------------
   Base64Charset = AnsiString
     ('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/');

   // --------------------------------------------------------------------
   //
   // --------------------------------------------------------------------
   _DRIVE = 'C:';
   _SISTEMA_NOME = 'AFMBServer';
   EXECUTAVEL_NOME = _SISTEMA_NOME;
   _VENDAEXPRESSA = 'FrenteCaixa';
   CONFIG_INI = _SISTEMA_NOME + '.ini';
   CONFIG_SQLITE = _VENDAEXPRESSA + '.ini';
   PASTA_BINARIO = 'Binarios';
   PASTA_DADOS = 'DB';
   LOGO_NOME = 'logo.jpg';
   _DRIVESISTEMA = Concat(_DRIVE, PathDelim);
   _PASTASISTEMA = Concat(_DRIVESISTEMA, _SISTEMA_NOME);
   _PASTASISTEMA_DB = Concat(_DRIVESISTEMA, _SISTEMA_NOME, PathDelim,
     PASTA_DADOS, PathDelim);
   _APP_PASTA_BINARIO = Concat(_DRIVESISTEMA, _SISTEMA_NOME, PathDelim,
     PASTA_BINARIO, PathDelim);
   _PASTALOG = _PASTASISTEMA + PathDelim + 'log' + PathDelim;
   _LOG_ERROS = Concat(_PASTALOG, 'excessoes.log');
   _LOGMAIL = Concat(_PASTASISTEMA, PathDelim, 'Log', PathDelim,
     'LogMails.log');
   _LOCALINI = Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim,
     PASTA_BINARIO, PathDelim, CONFIG_INI);

   SITE_EMPRESA = 'Autor: Nome da sua empresa';
   // seu nome ou nome da sua empresa
   EMAIL_EMPRESA = 'email@email.com.br'; // seu email
   FONE_EMPRESA = '(00) 00000-0000'; // seu celular/whatsapp

   DATABASE_GERENCIADOR = 'Firebird';
   DATABASE_VERSAO = '2.5 (32 bits)';

   _DATABASE_SERVIDOR = '';
   _BANCODADOS_PADRAO = _PASTASISTEMA_DB + _SISTEMA_NOME + '.fdb';
   _BANCODADOS_PDV = _PASTASISTEMA_DB + _SISTEMA_NOME + 'PDV' + '.fdb';
   _BANCODADOS_CEP = _PASTASISTEMA_DB + 'basecep' + '.fdb';
   // informe aqui se você tiver uma base de dados de CEP

   _DATABASE_DRIVERSQLITE = '';
   _DATABASE_DRIVER = 'FB';
   _DATABASE_USUARIO = 'SYSDBA';
   _DATABASE_SENHA = 'masterkey';
   _DATABASE_PORTA = 3050;

   MASTER_USUARIO = 'SYSTEM';
   MASTER_SENHA = 'SYSTEM';

   REMOTO_DATABASE_SERVIDOR = SITE_EMPRESA;
   REMOTO_DATABASE_NOME = 'informar banco de dados';
   REMOTO_DATABASE_USUARIO = 'informar usuario';
   REMOTO_DATABASE_SENHA = 'informar senha';
   REMOTO_DATABASE_PORTA = 0;
   // _ARQUIVOAUTENTICASENHA     = _APP_PASTA_BINARIO+_SISTEMA_NOME+'.txt';
   _ARQUIVOAUTENTICASENHA = _APP_PASTA_BINARIO + 'SenhaPadrao.txt';
   // _ARQUIVOAUTENTICASENHA     = ; // Esse arquivo quando for encontrado preenche campos Usuario/Senha na tela de login

   // --------------------------------------------------------------------
   // Cores
   // --------------------------------------------------------------------
   _COR_READONLY = clBtnFace;
   _COR_HIGHLIGHT = $0000D7FD; // Cor das Linhas (exemplo, grids)
   _COR_HIGHLIGHTBACKGROUND = clWhite; // Cor de fundo  (exemplo, grids)
   _COR_DA_FONTE = $009A562B;

   // --------------------------------------------------------------------
   // Nota Fiscal Eletronica
   // --------------------------------------------------------------------
   _NFE_DANFE = 'DANFeRetrato_2019.fr3';
   _NFE_LOCAL_DANFE = Concat(_PASTASISTEMA, PathDelim, 'DANFE', PathDelim,
     _NFE_DANFE);
   _NFE_LOCAL_SCHEMA = Concat(_PASTASISTEMA, PathDelim, 'SCHEMAS');
   _NFE_LOCAL_PDF = Concat(_PASTASISTEMA, PathDelim, 'NFE', PathDelim, 'PDF');
   _NFE_LOCAL_INUTILIZADAS = Concat(_PASTASISTEMA, PathDelim, 'NFE', PathDelim,
     'INUTILIZADAS');
   _NFE_LOCAL_GERADAS = Concat(_PASTASISTEMA, PathDelim, 'NFE', PathDelim,
     'GERADAS');
   _NFE_LOCAL_EVENTO = Concat(_PASTASISTEMA, PathDelim, 'NFE', PathDelim,
     'EVENTOS');
   _NFE_LOCAL_SALVAR = Concat(_PASTASISTEMA, PathDelim, 'NFE', PathDelim,
     'SALVAR');
   _NFCE_LOCAL_GERADAS = Concat(_PASTASISTEMA, PathDelim, 'NFCE', PathDelim,
     'GERADAS');
   _NFE_LOCAL_ZIPADOS = Concat(_PASTASISTEMA, PathDelim, 'ZIPADOS');

   // --------------------------------------------------------------------
   // Boletos Bancarios
   // --------------------------------------------------------------------
   _BOLETO_FR3 = 'Boleto.fr3';
   _BOLETO_ARQREMESSA = _SISTEMA_NOME + '_Remessa';
   _BOLETO_ARQRETORNO = _SISTEMA_NOME + '_Retorno';
   _BOLETO_DIRLOGO = Concat(_PASTASISTEMA, PathDelim, 'Boletos', PathDelim,
     'Logos', PathDelim, 'Colorido');
   _BOLETO_REPORTFILE = Concat(_PASTASISTEMA, PathDelim, 'Boletos', PathDelim,
     'Layout', PathDelim, _BOLETO_FR3);
   _BOLETO_DIRARQREMESSA = Concat(_DRIVE, PathDelim, '', _SISTEMA_NOME,
     PathDelim, '', 'Boletos', PathDelim, 'Remessa', PathDelim);
   _BOLETO_DIRARQRETORNO = Concat(_DRIVE, PathDelim, '', _SISTEMA_NOME,
     PathDelim, '', 'Boletos', PathDelim, 'Retorno', PathDelim);

   // --------------------------------------------------------------------
   // Licença vencida
   // --------------------------------------------------------------------

   _LICENCA_EXPIROU = 'Essa licença expirou o prazo de uso. ' + slinebreak +
     slinebreak + '[Entre em contato] ' + slinebreak + ' Site: %s' + slinebreak
     + ' Fone: %s' + slinebreak + ' E-Mail: %s';

   // --------------------------------------------------------------------
   //
   // --------------------------------------------------------------------
   _DEVELOPER_ = _APP_PASTA_BINARIO + 'semlogin.log';
   _ARQUIVO_EXPORTAR = Concat(_PASTASISTEMA, PathDelim, 'Arquivos', PathDelim);

   // --------------------------------------------------------------------
   //
   // --------------------------------------------------------------------
   _ERRODANFE =
     'Sem recursos para visualizar/imprimir DANFE.  Por falta de componentes necessários nas configurações do seu Windows. Isso não impede o uso do sistema.';

   // --------------------------------------------------------------------
   // NFC-E
   // --------------------------------------------------------------------
   _ARQUIVO_TEMP_VENDA = _PASTASISTEMA_DB + 'venda.xml';
   _ARQUIVO_TEMP_ITENS = _PASTASISTEMA_DB + 'vendaitens.xml';

   // --------------------------------------------------------------------
   // SAT
   // --------------------------------------------------------------------
   _SAT_INTEGRADOR_INPUT = Concat(_PASTASISTEMA, PathDelim, 'Integrador',
     PathDelim, 'Input', PathDelim);
   _SAT_INTEGRADOR_OUTPUT = Concat(_PASTASISTEMA, PathDelim, 'Integrador',
     PathDelim, 'Output', PathDelim);
   _SAT_SCHEMAVENDAAPL = Concat(_PASTASISTEMA, PathDelim, 'Schemas', PathDelim,
     'CfeDadosVendaAPL_0007.xsd');
   _SAT_SCHEMAVENDASAT = Concat(_PASTASISTEMA, PathDelim, 'Schemas', PathDelim,
     'CfeDadosVendaSAT_0007.xsd');
   _SAT_LOG = Concat(_PASTALOG, 'SAT_LOG');

   // --------------------------------------------------------------------
   // DLL Sistema
   // --------------------------------------------------------------------
   _DLL_IMAGENS = Concat(_DRIVE, PathDelim, _SISTEMA_NOME, PathDelim,
     PASTA_BINARIO, PathDelim, _SISTEMA_NOME + '.dll');

   // --------------------------------------------------------------------
   // Atualização de sistema via ftp
   // --------------------------------------------------------------------
   _FTP_HOST = '';
   _FTP_PORTA = 21;
   _FTP_USER = ''; // exemplo:
   _FTP_PASSWORD = ''; // exemplo:
   _FTP_PASSIVE = True;

implementation

end.
