
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipOutputStream;
import org.dom4j.Document;
import org.dom4j.Node;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class CreateAjXml {
    private static String path = "F:\\AJ_3003";
    private static String zipPath = "F:/1GMzip";
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    private static int zipNum = 50;
    private static String fyid = "3003";

    static {
        File store = new File(zipPath);
        if (!store.exists()) {
            store.mkdirs();
        }
    }

    public static void main(String[] args) {

        for (int i = 0; i < zipNum; i++) {
            execute();
            System.out.println(i);
        }
        System.out.println("完成");
    }

    private static void execute() {
        ZipOutputStream zos = null;
        try {
            zos = new ZipOutputStream(new FileOutputStream(new File(zipPath + File.separator + "AJ_" + fyid + "_" + sdf.format(new Date()) + "_01_2017.zip")));
            zos.setLevel(-1);
        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
        }
        writeOneZip(zos);

        try {
            zos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private static void writeOneZip(ZipOutputStream zos) {
        File files = new File(path);
        for (String xml : files.list()) {
            String xmlPath = path + File.separator + xml;

            SAXReader sax = new SAXReader();
            try {
                Document xmldoc = sax.read(new File(xmlPath));

                Node ajbs = xmldoc.selectSingleNode("//*[name()='案件标识']");
                modifyAjbs(ajbs);

                @SuppressWarnings("unchecked")
                List<Node> stms = xmldoc.selectNodes("//*[name()='实体码']");
                modifyStm(stms);

                ZipEntry entry = new ZipEntry(xml.split("_")[0] + "_" + ajbs.getText() + ".xml");
                zos.putNextEntry(entry);
                OutputFormat opf = OutputFormat.createPrettyPrint();
                opf.setEncoding("UTF-8");
                XMLWriter xw = new XMLWriter(zos, opf);
                xw.write(xmldoc);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static void modifyStm(List<Node> stms) {
        for (Node node : stms) {
            String oStm = node.getText();
            node.setText(oStm.substring(0, 4) + UUID.randomUUID().toString().replaceAll("-", "").toLowerCase());
        }
    }

    private static void modifyAjbs(Node ajbs) {
        String oldAjbs = ajbs.getText();
        DecimalFormat df = new DecimalFormat("000000");
        String newAjbs = oldAjbs.substring(0, 12) + ((df.format((int) (Math.random() * 999998)) + 1));

        ajbs.setText(newAjbs);
    }
}
