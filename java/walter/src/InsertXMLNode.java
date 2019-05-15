
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;


import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

/**
 * InsertXMLNode
 *
 * @author huayu
 * @version 1.0
 */
public class InsertXMLNode {

    private static String path = "F:\\1\\破产监督.xml";

    public static void main(String[] args) {
        Element element = null;
        try {
            // 1.得到DOM解析器的工厂实例
//            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            // 2.从DOM工厂里获取DOM解析器
//            DocumentBuilder db = dbf.newDocumentBuilder();

            File file = new File(path);
            System.out.println("file:" + file.getName());
            // 3.解析XML文档，得到document，即DOM树
//            Document doc = db.parse(new FileInputStream(file));
            SAXReader reader = new SAXReader();
            Document doc = reader.read(file);
            System.out.println("获取文档对象:" + doc);
            //获取根节点
            element = doc.getRootElement();
//            System.out.println("根节点："+element.getNodeName());
//
//            // 创建节点
//            Element brandElement = doc.createElement("Property");
//            //brandElement.setAttribute("Name", "一审");
//            //创建type节点
//            Element typeElement1=doc.createElement("Name");
//            typeElement1.setTextContent("定期期限");
//            Element typeElement2=doc.createElement("Level");
//            typeElement2.setTextContent("2");
//            Element typeElement3=doc.createElement("IsKey");
//            typeElement3.setTextContent("0");
//            Element typeElement4=doc.createElement("Key");
//            //typeElement4.setTextContent("");
//            Element typeElement5=doc.createElement("stdTableName");
//            typeElement5.setTextContent("DB_XZYS.T_XZYS");
//            Element typeElement6=doc.createElement("stdFieldName");
//            typeElement6.setTextContent("N_DQQX");
//            Element typeElement7=doc.createElement("stdType");
//            typeElement7.setTextContent("Int");
//            Element typeElement8=doc.createElement("stdLength");
//            Element typeElement9=doc.createElement("XMLNode");
//            typeElement9.setTextContent("行政一审案件\\归档信息\\定期期限");
//            //Element typeElementa=doc.createElement("DefaultValue");
//            Element typeElement10=doc.createElement("TranslateType");
//            //typeElement10.setTextContent("");
//            Element typeElement11=doc.createElement("TranslateCondition");
//            //typeElement11.setTextContent("<![CDATA[]]>");
//            Element typeElement12=doc.createElement("PreCondition");
//            //添加父子关系
//            brandElement.appendChild(typeElement1);
//            brandElement.appendChild(typeElement2);
//            brandElement.appendChild(typeElement3);
//            brandElement.appendChild(typeElement4);
//            brandElement.appendChild(typeElement5);
//            brandElement.appendChild(typeElement6);
//            brandElement.appendChild(typeElement7);
//            brandElement.appendChild(typeElement8);
//            brandElement.appendChild(typeElement9);
//            brandElement.appendChild(typeElement10);
//            brandElement.appendChild(typeElement11);
//            brandElement.appendChild(typeElement12);
            //brandElement.appendChild(typeElementd);
//            Element phoneElement=(Element)doc.getElementsByTagName("config").item(0);
//            System.out.println("phoneElement:"+phoneElement);
//            phoneElement.appendChild(brandElement);

            OutputFormat format = OutputFormat.createPrettyPrint();
            format.setEncoding("UTF-8");
            format.setIndent(true);
            try {
                FileOutputStream out = new FileOutputStream(path);
                XMLWriter writer = new XMLWriter(out, format);
                writer.write(doc);
                out.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            //保存xml文件
            //TransformerFactory transformerFactory=TransformerFactory.newInstance();
            //Transformer transformer=transformerFactory.newTransformer();
            //DOMSource domSource=new DOMSource(doc);
            //设置编码类型
            //transformer.setOutputProperty(OutputKeys.ENCODING, "GBK");
            //StreamResult result=new StreamResult(new FileOutputStream(path));
            //把DOM树转换为xml文件
            //transformer.transform(domSource, result);


        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
        }
    }
}
