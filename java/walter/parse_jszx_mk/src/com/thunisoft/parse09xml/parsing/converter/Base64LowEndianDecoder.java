package com.thunisoft.parse09xml.parsing.converter;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 小尾风格base64解码，适合于复选类型的数据解析
 * Base64LowEndianDecoder
 * @author hufafu
 * @version 1.0
 *
 */
public class Base64LowEndianDecoder implements Converter{
    private static Logger logger = LoggerFactory.getLogger(Base64LowEndianDecoder.class); 
    public Object convert(String val,int maxLen) {
        if(StringUtils.isBlank(val)){
            return val;
        }
        try {
            //首先将字符串解码成字节数组
            byte[] b = Base64.decodeBase64(val);
            String ret = "";
            //每两个字节一组循环
            if(b.length % 2 != 0){
                logger.error("解析失败，字节长度不符，val:{}",val);
                if(val.length() > maxLen){
                    return val.substring(0, maxLen);
                }
                return val;
            }
            for(int i = 0; i < b.length; i=i+2){
                String hex = changeByteToHex(b[i+1]) + changeByteToHex(b[i]);
                int n = Integer.parseInt(hex,16);
                ret += n;
                if(i < b.length-2){
                    ret += ";";
                }
            }
            return ret.subSequence(0, Math.min(ret.length(), maxLen));
        } catch (Exception e) {
            logger.error(val, e);
            return val;
        }
    }
    /**
     * 将字节数转成16进制字符串
     * @param b
     * @return
     */
    private String changeByteToHex(byte b){
        String hex = Integer.toHexString(b & 0xFF); 
        if (hex.length() == 1) { 
          hex = '0' + hex; 
        } 
        return hex;
    }
    public static void main(String[] args) {
    	Base64LowEndianDecoder b = new Base64LowEndianDecoder();
    	String val = "6KKr5ZGK5Lq65p2O6Imv5L+t5Zug6YK76YeM57qg57q35LiO5LuW5Lq65Y+R55Sf5omt5omT77yM6Ie05Lq65Y+X5Lyk57uP5rK755aX5peg5pWI5q275Lqh77yM5YW26KGM5Li65bey5p6E5oiQ5pWF5oSP5Lyk5a6z572q44CC5YWs6K+J5py65YWz5oyH5o6n572q5ZCN5oiQ56uL44CC5qC55o2u44CK5Lq65rCR5rOV6Zmi6YeP5YiR5oyH5a+85oSP6KeB44CL55qE6KeE5a6a77yM57uT5ZCI6KKr5ZGK5Lq654qv572q5omL5q6177yM5oOF6IqC5ZKM6YCg5oiQ55qE5ZCO5p6c77yM6YeP5YiR6LW354K55Li65Y2B5bm077yM5Z+65YeG5YiR5Li65Y2B5bm044CC6KKr5ZGK5Lq65p2O6Imv5L+t54qv572q5pe25bey5bm05ruh5LiD5Y2B5LqU5ZGo5bKB77yM5L6d5rOV5Y+v5YeP6L275aSE572a77yM5YeP5bCR5Z+65YeG5YiRMzAl77yb6KKr5ZGK5Lq65p2O6Imv5L+t5Yiw5qGI5ZCO6IO95aaC5a6e5L6b6L+w54qv572q5LqL5a6e77yM5L6d5rOV5Y+v5a+55YW25LuO6L275aSE572a77yM5YeP5bCR5Z+65YeG5YiRNSXvvJvmnKzmoYjns7vpgrvph4znuqDnurfvvIzooqvlrrPkurrmnY7luobnpa/lrZjlnKjph43lpKfov4fplJnvvIzkuJTlhbbmrbvkuqHkuI7oh6rouqvlgaXlurfnirblhrXkuI3kvbPnmoTlm6DntKDmnInlhbPvvIzooqvlkYrkurrlrrblsZ7lt7LotZTlgb/ljp/lkYrkurrkuIDpg6jliIbmjZ/lpLHvvIzku6XkuIrlnYflj6/lr7nooqvlkYrkurrphYzmg4Xku47ovbvlpITnvZrvvIzlh4/lsJHln7rlh4bliJExNSXjgILnu7zkuIrvvIzph4fnlKjlkIzlkJHnm7jliqDvvIzpgIblkJHnm7jlh4/mlrnms5XorqHnrpflkI7vvIznoa7lrprlj6/lh4/lsJHln7rlh4bliJE1MCXvvIzlrqPlkYrliJHlj6/noa7lrprkuLrmnInmnJ/lvpLliJHkupTlubTjgILooqvlkYrkurrmnY7oia/kv63nmoTniq/nvarooYzkuLrnu5npmYTluKbmsJHkuovor4norrzljp/lkYrkurrpgKDmiJDnmoTnu4/mtY7mjZ/lpLHlupTlvZPotZTlgb/vvIzpmYTluKbmsJHkuovor4norrzljp/lkYrkurropoHmsYLotZTlgb/nmoTnu4/mtY7mjZ/lpLHkuK3lkIjnkIbnmoTpg6jliIbljbMyMjY4NDAuN+WFg+S6iOS7peaUr+aMge+8jOi2heWHuueahOmDqOWIhuWPiuayoeacieivgeaNruivgeWunueahOivt+axguS4jeS6iOaUr+aMgeOAgumJtOS6juiiq+Wus+S6uuadjuW6huelr+WtmOWcqOmHjeWkp+i/h+mUme+8jOS4lOWFtuatu+S6oeS4juiHqui6q+WBpeW6t+eKtuWGteS4jeS9s+eahOWboOe0oOacieWFs++8jOiiq+WRiuS6uuW6lOaJv+aLhTQwJeeahOawkeS6i+i1lOWBv+i0o+S7u++8jOWNs+i1lOWBv+iiq+Wus+S6uue7j+a1juaNn+WksTkwNzM25YWD77yM6KKr5a6z5Lq65Zyo5pys5qGI5Lit5Lmf5bqU5om/5ouF5LiA5a6a55qE6LSj5Lu744CC6KKr5ZGK5Lq65a625bGe5bey57uP5pSv5LuY6LWU5YG/6YeRNjAwMDDlhYPlupTkuojmiaPpmaTjgILpmYTluKbmsJHkuovor4norrzljp/lkYrkurrmnY7ml6XlurfopoHmsYLpmYTluKbmsJHkuovor4norrzooqvlkYrkurrmnY7luobmlofotZTlgb/nmoTor4norrzor7fmsYLvvIzlm6Dnm67liY3msqHmnInor4Hmja7or4HmmI7mnY7luobmloflj4LkuI7kvKTlrrPooqvlrrPkurrmnY7luobnpa/vvIzmlYXmnKzpmaLlr7nor6Xor7fmsYLkuI3kuojmlK/mjIHjgILpmYTluKbmsJHkuovor4norrzooqvlkYrkurrmnY7luobmlofnu4/mnKzpmaLlkIjms5XkvKDllKTvvIzml6DmraPlvZPnkIbnlLHmi5LkuI3liLDluq3vvIzmnKzpmaLkuojku6XnvLrluK3lrqHnkIbjgILkvp3nhafjgIrkuK3ljY7kurrmsJHlhbHlkozlm73liJHms5XjgIvnrKzkuoznmb7kuInljYHlm5vmnaHnrKzkuIDmrL7jgIHnrKzkuInljYHlha3mnaHjgIHnrKzljYHkuIPmnaHnrKzkupTmrL7jgIHnrKzlha3ljYHkuIPmnaHnrKzkuInmrL7jgIHjgIrkuK3ljY7kurrmsJHlhbHlkozlm73msJHkuovor4norrzms5XjgIvnrKzlha3ljYHlm5vmnaHnrKzkuIDmrL7jgIHnrKzkuIDnmb7lm5vljYHlm5vmnaHjgIHjgIrkuK3ljY7kurrmsJHlhbHlkozlm73msJHms5XpgJrliJnjgIvnrKzkuIDnmb7kuIDljYHkuZ3mnaHjgIHmnIDpq5jkurrmsJHms5XpmaLjgIrlhbPkuo7lrqHnkIbkurrouqvmjZ/lrrPotZTlgb/moYjku7bpgILnlKjms5Xlvovoi6XlubLpl67popjnmoTop6Pph4rjgIvnrKzljYHkuIPmnaHkuYvop4TlrprvvIzmi5/liKTlhrPlpoLkuIvvvJoNCuS4gOOAgeiiq+WRiuS6uuadjuiJr+S/reeKr+aVheaEj+S8pOWus+e9qu+8jOWIpOWkhOacieacn+W+kuWIkeS6lOW5tOOAgg0K5LqM44CB6KKr5ZGK5Lq65p2O6Imv5L+t5bqU6LWU5YG/6ZmE5bim5rCR5LqL6K+J6K685Y6f5ZGK5Lq65p2O5pel5bq357uP5rWO5o2f5aSx5Lq65rCR5biBMzA3MzblhYPvvIjmiaPpmaTlt7Lnu4/mlK/ku5jnmoQ2MDAwMOWFg++8ie+8jOasvuS6juacrOWIpOWGs+eUn+aViOS5i+aXpeS7mOa4heOAgg0K5LiJ44CB6amz5Zue6ZmE5bim5rCR5LqL6K+J6K685Y6f5ZGK5Lq65p2O5pel5bq36KaB5rGC6ZmE5bim5rCR5LqL6K+J6K686KKr5ZGK5Lq65p2O5bqG5paH6LWU5YG/55qE6K+J6K686K+35rGC44C";
		System.out.println(b.convert(val,600));
	}
    
}
