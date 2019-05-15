
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class ChangeNodeData {

    private static String path = "C:\\Users\\文浩.000\\Desktop\\test";

    public static void main(String[] args) {
        Element element = null;
        try {
            File folder = new File(path);
            //list()获取目录下所有文件
            //list()获取目录下所有文件及目录的绝对路径
            //使用增强for遍历目录下文件(批量处理xml文件)
            for (File f : folder.listFiles()) {
                System.out.println("获取文件：" + f);

                //创建SAXReader，调用起read方法解析xml文件
                SAXReader reader = new SAXReader();

                //读取文件，获取document对象
                Document document = reader.read(f);

                //获取根节点
                element = document.getRootElement();
                System.out.println("根节点：" + element);

                //根据xml节点路径查找节点
                List l = document.selectNodes("/config/Property");//设置查找Property节点的xml路径
                Iterator it = l.iterator();
                while (it.hasNext()) {
                    Element elm = (Element) it.next();
                    if (elm.elementText("Name").equals("冻结或扣押款物的处理")) {
                        elm.element("stdType").setText("TEXT");
                    }
//                    if(elm.elementText("Name").equals("鉴定内容")){
//                        elm.element("stdType").setText("TEXT");
//                    }

                }
                try {
                    Writer osWrite = new OutputStreamWriter(
                            new FileOutputStream(f));//创建输出流
                    OutputFormat format = OutputFormat.createPrettyPrint(); //获取输出的指定格式
                    format.setEncoding("UTF-8");//设置编码 ，确保解析的xml为UTF-8格式
                    XMLWriter writer = new XMLWriter(osWrite, format);//XMLWriter 指定输出文件以及格式
                    writer.write(document);//把document写入xmlFile指定的文件(可以为被解析的文件或者新创建的文件)
                    writer.flush();
                    writer.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
        }
    }
}
