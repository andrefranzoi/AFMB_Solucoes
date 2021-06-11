object BaseDados: TBaseDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 506
  Width = 1040
  object db_Parametros: TFDQuery
    BeforeOpen = db_ParametrosBeforeOpen
    AfterOpen = db_ParametrosAfterOpen
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'EMPRESA'
    SQL.Strings = (
      'SELECT * FROM CONFIG_PARAMETROS'
      'WHERE '
      'EMPRESA=:EMPRESA')
    Left = 216
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object db_ctaReceber: TFDQuery
    BeforeOpen = db_ctaReceberBeforeOpen
    AfterOpen = db_ctaReceberAfterOpen
    AfterClose = db_ctaReceberAfterClose
    OnNewRecord = db_ctaReceberNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM FIN_CTARECEBER'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 40
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_ctaReceber: TDataSource
    AutoEdit = False
    DataSet = db_ctaReceber
    Left = 48
    Top = 112
  end
  object db_CtaPagar: TFDQuery
    BeforeOpen = db_CtaPagarBeforeOpen
    AfterOpen = db_CtaPagarAfterOpen
    AfterClose = db_CtaPagarAfterClose
    BeforePost = db_CtaPagarBeforePost
    OnNewRecord = db_CtaPagarNewRecord
    Connection = FrmPrincipal.DBConexao
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT *  FROM FIN_CTAPAGAR'
      'WHERE'
      'EMPRESA=:EMPRESA'
      'AND'
      'CODIGO=:CODIGO')
    Left = 136
    Top = 72
    ParamData = <
      item
        Name = 'EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DS_CtaPagar: TDataSource
    AutoEdit = False
    DataSet = db_CtaPagar
    Left = 136
    Top = 112
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libOpenSSL
    Configuracoes.Geral.SSLCryptLib = cryOpenSSL
    Configuracoes.Geral.SSLHttpLib = httpOpenSSL
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ForcarGerarTagRejeicao938 = fgtSempre
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'PR'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 56
    Top = 16
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 216
    Top = 16
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 256
    Top = 136
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    PaginaDeCodigo = pcNone
    EspacoEntreLinhas = 40
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 7
    ArqLOG = 'c:\temp\posprinter.log'
    Left = 71
    Top = 263
  end
  object ACBrSATExtratoFortes1: TACBrSATExtratoFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 4.000000000000000000
    MargemSuperior = 2.000000000000000000
    MargemEsquerda = 2.000000000000000000
    MargemDireita = 2.000000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrSAT = ACBrSAT1
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    FormularioContinuo = True
    EspacoFinal = 50
    Left = 208
    Top = 328
  end
  object ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    Site = 'http://www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    ImprimeDescAcrescItem = False
    FormularioContinuo = True
    PosPrinter = ACBrPosPrinter1
    Left = 376
    Top = 328
  end
  object ACBrSAT1: TACBrSAT
    MAIL = ACBrMail1
    Extrato = ACBrSATExtratoFortes1
    NomeDLL = 'c:\sat\SAT.DLL'
    ValidarNumeroSessaoResposta = True
    NumeroTentativasValidarSessao = 2
    Config.infCFe_versaoDadosEnt = 0.070000000000000010
    Config.ide_numeroCaixa = 0
    Config.ide_tpAmb = taHomologacao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSMicroempresaMunicipal
    Config.emit_indRatISSQN = irSim
    Config.EhUTF8 = True
    Config.PaginaDeCodigo = 65001
    Config.XmlSignLib = xsMsXml
    ConfigArquivos.SalvarCFe = True
    ConfigArquivos.SalvarCFeCanc = True
    ConfigArquivos.SalvarEnvio = True
    ConfigArquivos.SepararPorCNPJ = True
    ConfigArquivos.SepararPorModelo = True
    ConfigArquivos.SepararPorAno = True
    ConfigArquivos.SepararPorMes = True
    ConfigArquivos.SepararPorDia = True
    ConfigArquivos.PrefixoArqCFe = 'AD'
    ConfigArquivos.PrefixoArqCFeCanc = 'ADC'
    Rede.tipoInter = infETHE
    Rede.seg = segNONE
    Rede.tipoLan = lanIPFIX
    Rede.lanIP = '192.168.137.2'
    Rede.lanMask = '255.255.255.0'
    Rede.lanGW = '192.168.137.1'
    Rede.lanDNS1 = '192.168.137.1'
    Rede.lanDNS2 = '192.168.137.1'
    Rede.proxy = 0
    Rede.proxy_porta = 0
    Left = 512
    Top = 328
  end
end
