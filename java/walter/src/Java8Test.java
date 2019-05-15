import java.util.HashMap;
import java.util.Map;

/**
 * @author swh
 * @date 2019/5/4 10:26
 */
public class Java8Test {
    public static void main(String[] args){
        Map map=new HashMap();
//        String value="v1";
//        String newvalue="v2";
        map.merge(9,"v1",(value,newvalue)->value.concat());
    }
}
