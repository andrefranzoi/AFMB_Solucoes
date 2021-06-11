unit RecordIBPT;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Data.DB,
   FireDAC.Comp.Client,
   System.StrUtils, System.Diagnostics, System.ZLib, System.TypInfo,
   ACBrUtil,
   ACBrSATClass,
   ACBrValidador,
   pcnConversao,
   pcnNFe,
   pcnConversaoNFe;

Type

   TIBPT = Record
      NCM: String;
      EXTIPI: String;
      ALiquotaFederal: Currency;
      AliquotaEstadual: Currency;
      AliquotaMunicipal: Currency;
      procedure Limpar;
      procedure GetIBPT(const aNCM: String; aExTipi: String;
        const aOrigem: NativeInt);
   end;

implementation

uses FPrincipal;

{ TIBPT }
procedure TIBPT.GetIBPT(const aNCM: String; aExTipi: String;
  const aOrigem: NativeInt);
Var
   mDataSet: TDataSet;
   mSQL: String;
begin
   mSQL := 'SELECT * FROM CAD_IBPT ' +
     Format('WHERE CAD_IBPT.ID = %s AND CAD_IBPT.EXTIPI = %s',
     [QuotedStr(aNCM), QuotedStr(aExTipi)]);
   try
      FrmPrincipal.DBConexao.ExecSQL(mSQL, nil, mDataSet);
      if mDataSet.IsEmpty then
         Exit;
      Limpar();
      NCM := mDataSet.FieldByName('ID').AsString.Trim;
      EXTIPI := mDataSet.FieldByName('EXTIPI').AsString.Trim;
      AliquotaEstadual := mDataSet.FieldByName('ALIQ_ESTADUAL').AsCurrency;
      AliquotaMunicipal := mDataSet.FieldByName('ALIQ_MUNICIPAL').AsCurrency;

      if aOrigem in [0, 3, 4, 5] then
         ALiquotaFederal := mDataSet.FieldByName('ALIQ_NACIONAL').AsCurrency
      else
         ALiquotaFederal := mDataSet.FieldByName('ALIQ_IMPORTADO').AsCurrency;
   finally
      mDataSet.Close;
      mDataSet.Free;
   end;
end;

procedure TIBPT.Limpar;
begin
   NCM := '';
   EXTIPI := '';
   ALiquotaFederal := 0;
   AliquotaEstadual := 0;
   AliquotaMunicipal := 0;
end;

end.
