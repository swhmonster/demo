
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class InsertNodeSwh {

    private static String path = "F:\\15xsd修改\\testxml";

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

                //获取XMLNode节点，截取需要的节点内容
                String sElement1 = element.element("Property")
                        .element("XMLNode").getText();
                System.out.println("ss1获取节点的内容：" + sElement1);
                String ss1 = sElement1.substring(0, sElement1.indexOf("\\"));
                System.out.println("ss1截取的内容：" + ss1);

                System.out.println("**************************");

                String sElement2 = element.element("Property")
                        .element("stdTableName").getText();
                System.out.println("sElement获取节点的内容：" + sElement2);

                System.out
                        .println("===================================================================================================");

                //给根节点添加Property节点
                Element brandElement = element.addElement("Property");
                //给Property节点添加子节点
                Element typeElement1 = brandElement.addElement("Name");
                typeElement1.setText("定期期限");//添加节点内容
                Element typeElement2 = brandElement.addElement("Level");
                typeElement2.setText("1");
                Element typeElement3 = brandElement.addElement("IsKey");
                typeElement3.setText("0");
                Element typeElement4 = brandElement.addElement("Key");
                //typeElement4.setText("");
                Element typeElement5 = brandElement.addElement("stdTableName");
                typeElement5.setText(sElement2);
                Element typeElement6 = brandElement.addElement("stdFieldName");
                typeElement6.setText("N_DQQX");
                Element typeElement7 = brandElement.addElement("stdType");
                typeElement7.setText("Int");
                Element typeElement8 = brandElement.addElement("stdLength");
                //typeElement8.setText("");
                Element typeElement9 = brandElement.addElement("XMLNode");
                typeElement9.setText(ss1 + "\\归档信息\\定期期限");
                Element typeElement10 = brandElement.addElement("DefaultValue");
                //typeElement10.setText("");
                Element typeElement11 = brandElement
                        .addElement("TranslateType");
                //typeElement11.setText("");
                Element typeElement12 = brandElement
                        .addElement("TranslateCondition");
                //typeElement12.setText("");
                Element typeElement13 = brandElement.addElement("PreCondition");
                //typeElement13.setText("");

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
