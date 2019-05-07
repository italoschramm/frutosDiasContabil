unit UComissoes_Calculo;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, Mask, Grids, DBGrids, Registry,
  DB, ADODB, Math, DateUtils;

type
    comissoes = class
    public
    valor_cortesia : extended;
    desc_cortesia : string;
    constructor criar;
    destructor destruir;
    procedure pesquisar;
    procedure inserir;
    procedure acessorios;
    procedure cortesia;
    procedure fi;
    procedure total;
    end;

implementation

uses  UComissoes;

constructor  comissoes.criar;
begin

end;

destructor comissoes.destruir;
begin

end;

procedure comissoes.pesquisar;


begin



      f_vendas_comissoes.q_pesquisa1.Close;
      f_vendas_comissoes.q_pesquisa1.Params.ParamByName('data1').Value := f_vendas_comissoes.data_inicial;
      f_vendas_comissoes.q_pesquisa1.Params.ParamByName('data2').Value := f_vendas_comissoes.data_final;
      f_vendas_comissoes.q_pesquisa1.Params.ParamByName('data3').Value := f_vendas_comissoes.data_inicial;
      f_vendas_comissoes.q_pesquisa1.Params.ParamByName('data4').Value := f_vendas_comissoes.data_final;
      f_vendas_comissoes.q_pesquisa1.Open;

      inserir;

      acessorios;

      cortesia;

      fi;

      //total;



end;

procedure comissoes.inserir;
begin
         f_vendas_comissoes.q_pesquisa1.first;



      while f_vendas_comissoes.q_pesquisa1.Eof = false do
      begin
           f_vendas_comissoes.q_inserir.Close;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('data_venda').Value := formatdatetime ('DD/MM/YYYY',f_vendas_comissoes.q_pesquisa1.FieldByName('DATA_VENDA').AsDateTime);
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('veiculos_desc').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('DESCRICAO_MODELO').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('vendedor').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('VENDEDOR').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('vendedor_nome').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('NOME_COMPLETO').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('chassi').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_COMPLETO').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('chassi_resumido').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_RESUMIDO').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('nf').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CONTROLE').AsSTRING;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('valor_nf').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('TOTAL_NOTA').asfloat;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('data_nf_venda').Value := formatdatetime('DD/MM/YYYY', f_vendas_comissoes.q_pesquisa1.FieldByName('DATA_NOTA').asdatetime);
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('valor_nf_compra').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('TOTAL_NOTA_FABRICA').asfloat;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('lucro_bruto').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('bonus_gm').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('VALOR_BONUS').asfloat;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('total_incentivo').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('VALOR_BONUS').asfloat;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('desconto_comercial').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('DESCONTO_INCONDICIONAL').asfloat;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('despesa_fixa').Value := 860;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('financeira').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('ALIENACAO').asstring;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('custo_cortesia_adc').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('cliente').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('NOME').asstring;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('mes_ano').Value := f_vendas_comissoes.cbmes.text + '/' + f_vendas_comissoes.cbano.text;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('emplacamento').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('seguro').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('spm').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('campanha_tracker').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('lead_opv').Value := 0;
           f_vendas_comissoes.q_inserir.Parameters.ParamByName('premiacao_perfomance').Value := 0;
           f_vendas_comissoes.q_inserir.ExecSQL();


           f_vendas_comissoes.q_pesquisa1.Next;
      end;


end;

procedure comissoes.acessorios;
begin
      f_vendas_comissoes.q_acessorios.Close;
      f_vendas_comissoes.q_acessorios.Params.ParamByName('data1').Value := f_vendas_comissoes.data_inicial;
      f_vendas_comissoes.q_acessorios.Params.ParamByName('data2').Value := f_vendas_comissoes.data_final;
      f_vendas_comissoes.q_acessorios.Open;

      f_vendas_comissoes.q_acessorios.first;

      while f_vendas_comissoes.q_acessorios.Eof = false do
      begin
           f_vendas_comissoes.q_update.Close;
            f_vendas_comissoes.q_update.SQL.Clear;
            f_vendas_comissoes.q_update.SQL.Add('UPDATE VENDAS_COMISSOES SET ACESSORIOS = :valor WHERE VENDEDOR = :vendedor');
            f_vendas_comissoes.q_update.Parameters.ParamByName('valor').Value := f_vendas_comissoes.q_acessorios.FieldByName('VALOR').ASFLOAT;
            f_vendas_comissoes.q_update.Parameters.ParamByName('vendedor').Value := f_vendas_comissoes.q_acessorios.FieldByName('VENDEDOR_VEICULO').AsString;
            f_vendas_comissoes.q_update.ExecSQL();

            f_vendas_comissoes.q_acessorios.Next;
      end;
end;

procedure comissoes.cortesia;
begin
        f_vendas_comissoes.q_pesquisa1.first;

      while f_vendas_comissoes.q_pesquisa1.Eof = false do
      begin
            f_vendas_comissoes.q_busca_os.Close;
            f_vendas_comissoes.q_busca_os.Params.ParamByName('chassi').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_COMPLETO').AsString;
            f_vendas_comissoes.q_busca_os.Open;

            f_vendas_comissoes.q_busca_os.First;

            valor_cortesia := 0;
            desc_cortesia := '';

            while f_vendas_comissoes.q_busca_os.Eof = false do
            begin
                 valor_cortesia := valor_cortesia + f_vendas_comissoes.q_busca_os.FieldByName('VALOR').AsFloat;
                 desc_cortesia := f_vendas_comissoes.q_busca_os.FieldByName('DESCRICAO').asstring + ' ' + desc_cortesia;
                 f_vendas_comissoes.q_busca_os.Next;
            end;

            f_vendas_comissoes.q_update.Close;
            f_vendas_comissoes.q_update.SQL.Clear;
            f_vendas_comissoes.q_update.SQL.Add('UPDATE VENDAS_COMISSOES SET CUSTO_CORTESIA = :valor_cortesia , CORTESIA_DESC = :desc_cortesia WHERE CHASSI = :chassi');
            f_vendas_comissoes.q_update.Parameters.ParamByName('valor_cortesia').Value := valor_cortesia;
            f_vendas_comissoes.q_update.Parameters.ParamByName('desc_cortesia').Value := desc_cortesia;
            f_vendas_comissoes.q_update.Parameters.ParamByName('chassi').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_COMPLETO').AsString;
            f_vendas_comissoes.q_update.ExecSQL();


            f_vendas_comissoes.q_pesquisa1.next;
      end;
end;

procedure comissoes.fi;
begin
       f_vendas_comissoes.q_pesquisa1.first;

      while f_vendas_comissoes.q_pesquisa1.Eof = false do
      begin
            f_vendas_comissoes.q_busca_fi.Close;
            f_vendas_comissoes.q_busca_fi.Params.ParamByName('chassi_resumido').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_RESUMIDO').AsString;
            f_vendas_comissoes.q_busca_fi.Open;

            f_vendas_comissoes.q_update.Close;
            f_vendas_comissoes.q_update.SQL.Clear;
            f_vendas_comissoes.q_update.SQL.Add('UPDATE VENDAS_COMISSOES SET FI_RETORNO_BRUTO = :valor , TOTAL_FI = :valor2 WHERE CHASSI = :chassi');
            f_vendas_comissoes.q_update.Parameters.ParamByName('valor').Value := f_vendas_comissoes.q_busca_fi.FieldByName('VALOR').Asfloat;
            f_vendas_comissoes.q_update.Parameters.ParamByName('valor2').Value := f_vendas_comissoes.q_busca_fi.FieldByName('VALOR').Asfloat;
            f_vendas_comissoes.q_update.Parameters.ParamByName('chassi').Value := f_vendas_comissoes.q_pesquisa1.FieldByName('CHASSI_COMPLETO').AsString;
            f_vendas_comissoes.q_update.ExecSQL();


            f_vendas_comissoes.q_pesquisa1.next;
      end;
end;

procedure comissoes.total;
begin
      
end;

end.

