--set search_path to db_sczx;
--commit;
CREATE OR REPLACE FUNCTION "db_sczx"."pr_del_sczx"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_SCZX.T_SCZX    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXXS   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCCDC   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYT   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCH    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXJC    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXSC    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXXSZX    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXSFSJ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCC      where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCF     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXKY    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXDJ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXQZGL   where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXHB     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPG     where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXPM    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXBM    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYWDZ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPDYJ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXKLYTQ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXQZQCYTC    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXQTQZCS  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXFK  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXJL  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXFZYS   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPCZR  where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXQZXZ     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXSXBZXR  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXBGHZJDSR   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXFCDQK   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXFJNJL  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXFSFJZQK where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXKJN where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXKFF    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXDXWDZX    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXDQZQ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXXZZX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCYFPXX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZDLX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXWTHYSZX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXYY   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXFAZXXWCL    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXHBQK    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXDBQK    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXSFJY    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXAJPY      where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXSWHTL     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXFY    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXLCJD    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXZTXX   where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXWQ     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPBBZXR     where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXRZ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXDBSX    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXDBXFJL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXWTXX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXWTSL    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXWTBL    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXWTBLQR  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZBHZDWLCXX  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZBCCCXXX  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZBHFJYJCLX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXBGCCL  where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXYHFF     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXKTC  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXWDJ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXWFF   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXWTC  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCPWSSWXX where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXCPWSBSWXX where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZLJL     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCXJ     where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXYCMCCYHCK    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCHLWJRXX    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQTZJ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCCL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZZYF    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCJSYDSYQ    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCGP  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCJJ  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZQ  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQTCCXQY   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCYC  where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXYCMCCCB     where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCGQ  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCSW   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZQXX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCCMJQSB   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCCMCPYCL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZSCQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCGWZH   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCTDCBJYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZJDSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCHYSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQTTDSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCSYYF   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCGYYF   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQTYF   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCHKQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQTJTYSGJ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCYBDC   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZFGJJ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCGXHL   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCSYLBX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCJRLCCP   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCSLLMSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCJTTDSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCZBYSSS   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCTKCKQ   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXYCMCCQT   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCFXF  where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCFBFJF where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXKYXK where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXKYBFJK    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXDJXD    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXDJBFJD    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPGPGBDW   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPMPMBDW   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPMPMBDWYXGMQK   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXBMBMMX   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXJZSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCXSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXPBSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXKFFMX    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXDXWZXQK    where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXCYFPMX    where N_AJBS  = ajbs      ;
	delete  from    DB_SCZX.T_SCZXZXZTXXZJXX         where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZJJZZ         where N_AJBS  = ajbs     ;
	delete  from    DB_SCZX.T_SCZXZXJZXX         where N_AJBS  = ajbs     ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_sczx"."pr_del_sczx"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_hfzx;
commit;
CREATE OR REPLACE FUNCTION "db_hfzx"."pr_del_hfzx"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_HFZX.T_HFZX    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXXS   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCCDC   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYT   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCH    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXJC    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXSC    where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXXSZX    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXSFSJ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCC      where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCF     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXKY    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXDJ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXQZGL   where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXHB     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPG     where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXPM    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXBM    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYWDZ   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPDYJ   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXKLYTQ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXQZQCYTC    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXQTQZCS  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXFK  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXJL  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXFZYS   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPCZR  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXQZXZ     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXSXBZXR  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXBGHZJDSR   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXFCDQK   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXFJNJL  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXFSFJZQK where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXKJN where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXKFF    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXDXWDZX    where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXDQZQ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXXZZX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCYFPXX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZDLX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXWTHYSZX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXYY   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXFAZXXWCL    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXHBQK    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXDBQK    where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXSFJY    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXAJPY      where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXSWHTL     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXFY    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXLCJD    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXZTXX   where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXWQ     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPBBZXR     where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXRZ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXDBSX    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXDBXFJL   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXWTXX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXWTSL    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXWTBL    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXWTBLQR  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXBGCCL  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYHFF  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXKTC   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXWDJ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXZXWFF     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXWTC  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCPWSSWXX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCPWSBSWXX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZLJL  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCXJ where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCYHCK where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCHLWJRXX     where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCQTZJ     where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCCL    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCZZYF    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCJSYDSYQ   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCGP   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCJJ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCZQ    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCQTCCXQY  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCYC  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCCB  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCGQ   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXYCMCCSW  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCZQXX  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCCMJQSB  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCCMCPYCL  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCZSCQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCGWZH  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCTDCBJYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCZJDSYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCHYSYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCQTTDSYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCSYYF  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCGYYF  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCQTYF  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCHKQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCQTJTYSGJ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCYBDC  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCZFGJJ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCGXHL  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCSYLBX  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCJRLCCP  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCSLLMSYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCJTTDSYQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCZBYSSS  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCTKCKQ  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXYCMCCQT  where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXCFXF  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCFBFJF   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXKYXK   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXKYBFJK  where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXDJXD where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXDJBFJD where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPGPGBDW    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPMPMBDW    where N_AJBS  = ajbs      ;
	delete  from    DB_HFZX.T_HFZXPMPMBDWYXGMQK    where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXBMBMMX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXJZSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCXSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXPBSXBZXR   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXKFFMX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXDXWZXQK   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXCYFPMX   where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXZTXXZJXX        where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZJJZZ        where N_AJBS  = ajbs     ;
	delete  from    DB_HFZX.T_HFZXZXJZXX        where N_AJBS  = ajbs     ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_hfzx"."pr_del_hfzx"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_ccbqzx;
commit;
CREATE OR REPLACE FUNCTION "db_ccbqzx"."pr_del_ccbqzx"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_CCBQZX.T_CCBQZX    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCC   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXCF   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXKY   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXDJ   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXLCJD    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXZTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXWQ    where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXZXRZ    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXDBSX      where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXDBXFJL     where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXWTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXWTSL    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXWTBL   where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXWTBLQR     where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXCPWSSWXX     where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZLJL    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCXJ   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCYHCK   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCHLWJRXX    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQTZJ    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCCL  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZZYF  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCJSYDSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCGP   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCJJ  where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZQ     where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQTCCXQY  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCYC   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCCB   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCGQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCSW where N_AJBS  = ajbs      ;	
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZQXX  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCCMJQSB  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCCMCPYCL  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZSCQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCGWZH  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCTDCBJYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZJDSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCHYSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQTTDSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCSYYF  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCGYYF  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQTYF  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCHKQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQTJTYSGJ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCYBDC  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZFGJJ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCGXHL  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCSYLBX  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCJRLCCP  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCSLLMSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCJTTDSYQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCZBYSSS  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCTKCKQ  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXYCMCCQT  where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXCFXF    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXCFBFJF    where N_AJBS  = ajbs      ;
	delete  from    DB_CCBQZX.T_CCBQZXKYXK    where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXKYBFJK   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXDJXD   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXDJBFJD   where N_AJBS  = ajbs     ;
	delete  from    DB_CCBQZX.T_CCBQZXZXZTXXZJXX      where N_AJBS  = ajbs     ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_ccbqzx"."pr_del_ccbqzx"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_zxyy;
commit;
CREATE OR REPLACE FUNCTION "db_zxyy"."pr_del_zxyy"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_ZXYY.T_ZXYY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXYY.T_ZXYYZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYSFJY   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYAJPY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYSWHTL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYZXFY    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXYY.T_ZXYYZXLCJD    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYZXZTXX      where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYZXRZ     where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYCPWSSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXYY.T_ZXYYZLJL   where N_AJBS  = ajbs      ;
	delete  from    DB_ZXYY.T_ZXYYZXZTXXZJXX       where N_AJBS  = ajbs     ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_zxyy"."pr_del_zxyy"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_zxfy;
commit;
CREATE OR REPLACE FUNCTION "db_zxfy"."pr_del_zxfy"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_ZXFY.T_ZXFY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXFY.T_ZXFYZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYSFJY   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYAJPY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYSWHTL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYZXLCJD    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXFY.T_ZXFYZXZTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYZXRZ      where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYCPWSSWXX     where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYZLJL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXFY.T_ZXFYZXZTXXZJXX     where N_AJBS  = ajbs      ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_zxfy"."pr_del_zxfy"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_zxjd;
commit;
CREATE OR REPLACE FUNCTION "db_zxjd"."pr_del_zxjd"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_ZXJD.T_ZXJD    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXJD.T_ZXJDZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDSFJY   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDAJPY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDSWHTL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDZXLCJD    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXJD.T_ZXJDZXZTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDZXRZ      where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDCPWSSWXX     where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDZLJL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXJD.T_ZXJDZXZTXXZJXX     where N_AJBS  = ajbs      ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_zxjd"."pr_del_zxjd"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_zxxt;
commit;
CREATE OR REPLACE FUNCTION "db_zxxt"."pr_del_zxxt"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_ZXXT.T_ZXXT    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXXT.T_ZXXTZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTSFJY   where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTAJPY    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTSWHTL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTZXLCJD    where N_AJBS  = ajbs      ;
	delete  from    DB_ZXXT.T_ZXXTZXZTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTZXRZ      where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTCPWSSWXX     where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTZLJL    where N_AJBS  = ajbs     ;
	delete  from    DB_ZXXT.T_ZXXTZXZTXXZJXX     where N_AJBS  = ajbs      ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_zxxt"."pr_del_zxxt"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_qtzx;
commit;
CREATE OR REPLACE FUNCTION "db_qtzx"."pr_del_qtzx"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_QTZX.T_QTZX    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXYZXAJXX    where N_AJBS  = ajbs      ;
	delete  from    DB_QTZX.T_QTZXZXZZCYZC    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXZXZZCYBGJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXKCZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXYZZXQXJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXFTSYJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXSDJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXPBJL   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXSFJY   where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXAJPY    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXSWHTL    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXZXLCJD    where N_AJBS  = ajbs      ;
	delete  from    DB_QTZX.T_QTZXZXZTXX    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXZXRZ      where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXCPWSSWXX     where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXCPWSBSWXX    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXZLJL    where N_AJBS  = ajbs     ;
	delete  from    DB_QTZX.T_QTZXZXZTXXZJXX     where N_AJBS  = ajbs      ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_qtzx"."pr_del_qtzx"("ajbs" numeric) OWNER TO "artbase";

--set search_path to db_ws;
commit;
CREATE OR REPLACE FUNCTION "db_ws"."pr_del_ws"("ajbs" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
	delete  from    DB_WS.T_WS    where N_AJBS  = ajbs     ;
	delete  from    DB_WS.T_WSZLJL     where N_AJBS  = ajbs     ;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_ws"."pr_del_ws"("ajbs" numeric) OWNER TO "artbase";


commit;

CREATE OR REPLACE FUNCTION "db_fy"."p_del_zzjg"("fydm" numeric)
  RETURNS "pg_catalog"."void" AS $BODY$
begin
delete from DB_FY.T_RY where N_SZJG IN (SELECT N_JGBS FROM DB_FY.T_JG WHERE N_FYDM =fydm);
delete from DB_FY.T_JG where N_FYDM =fydm;
end
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "db_fy"."p_del_zzjg"("fydm" numeric) OWNER TO "artbase";






--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_sczx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_SCZX(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_SCZX.T_SCZX
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_sczx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_hfzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_HFZX(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_HFZX.T_HFZX
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_hfzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_ccbqzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_CCBQZX(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_CCBQZX.T_CCBQZX
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_ccbqzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_zxyy"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_ZXYY(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_ZXYY.T_ZXYY
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_zxyy"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_zxfy"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_ZXFY(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_ZXFY.T_ZXFY
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_zxfy"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_zxjd"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_ZXJD(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_ZXJD.T_ZXJD
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_zxjd"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_zxxt"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_ZXXT(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_ZXXT.T_ZXXT
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_zxxt"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";


--set search_path to db_xa;
commit;

CREATE OR REPLACE FUNCTION "db_xa"."pr_ins_del_qtzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar)
RETURNS "pg_catalog"."void" AS $BODY$
begin
insert into db_xa.T_QTZX(C_ID,N_AJBS,C_BAAH,N_JBFY,D_LARQ,C_LAAY,D_JARQ,C_JAAY,C_JAFS,D_SCRQ,C_SCYY,N_SPRBS,C_SPR,N_SHRBS,C_SHR,C_SHJG,C_BTYYY,D_SHSJ,C_ID_TASK,D_CRSJ)
(select cid,N_AJBS,
C_AH,
N_FYDM,
D_SARQ,
null,
D_JARQ,
null,
C_JAFS,
deltime,
scyy,
cast(sprbs as integer),
spr,
null,
null,
null,
null,
null,
taskid,
now()
from DB_QTZX.T_QTZX
where C_ID = cid);

end
$BODY$
LANGUAGE 'plpgsql' VOLATILE COST 100
;
ALTER FUNCTION "db_xa"."pr_ins_del_qtzx"(cid varchar, ajbs numeric, deltime timestamp, scyy varchar, sprbs varchar, spr varchar, taskid varchar) OWNER TO "artbase";








