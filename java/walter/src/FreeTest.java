import java.text.MessageFormat;

/**
 * @author swh
 * @date 2019/6/20 16:18
 */
public class FreeTest {
    public static void main(String[] args){
        String s="{1}号线索涉及{0}已经被{2}接收，请知晓。";
        System.out.println(MessageFormat.format(s,"a","2","3"));
    }
}