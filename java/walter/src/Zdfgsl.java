
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class Zdfgsl {

    public static void main(String[] args) throws Exception {
        String smdPath = "C:\\Users\\文浩.000\\Desktop\\smd";
//        String xmlPath = "C:\\Users\\文浩.000\\Desktop\\xml";
        String xmlPath ="E:\\IDEA\\export15xml\\src\\config\\tabledesc\\np";
        String savePath = "C:\\Users\\文浩.000\\Desktop\\字段覆盖梳理";
        String excelPath = "C:\\Users\\文浩.000\\Desktop\\字段覆盖梳理v2.1.6-patch5.xlsx";

        File smdFile = new File(smdPath);
        File xmlFile = new File(xmlPath);

        InputStream excelFileInputStream = null;
        SAXReader reader = new SAXReader();
        FileOutputStream fos = null;
        // BufferedWriter bw = null;

        Element element = null;
        Workbook wb = null;

        InputStream efis = new FileInputStream(new File(excelPath));
        Workbook workbook = WorkbookFactory.create(efis);

        int smdNo = 0;
        for (File smdName : smdFile.listFiles()) {
            for (File xmlName : xmlFile.listFiles()) {
                if (smdName.getName().replace("案件.xlsx", ".xml").equals(xmlName.getName())) {
                    System.out.println(smdName.getName() + "-----" + xmlName.getName());

                    // String sajm = null;
                    // String ajm = null;
                    String sajm = smdName.getName().replace(".xlsx", "");
                    String ajm = sajm.substring(5, sajm.length());

                    //写excel
                    if(workbook.getSheet("字段覆盖率")==null){
                        Sheet zdfgSheet=workbook.createSheet("字段覆盖率");
                    }
                    Sheet zdfgSheet = workbook.getSheet("字段覆盖率");
                    Row r = zdfgSheet.createRow(smdNo);
                    Cell ajmc = r.createCell(0);
                    ajmc.setCellValue(sajm);

                    excelFileInputStream = new FileInputStream(smdName);
                    wb = WorkbookFactory.create(excelFileInputStream);
                    Document document = reader.read(xmlName);

                    Sheet sheet = wb.getSheet("COL");
                    // 获取Excel的行数
                    int trLength = sheet.getLastRowNum();
                    String jdm = null;
                    List list = new LinkedList<String>();
                    List saveList = new LinkedList<String>();
                    List saveList2 = new LinkedList<String>();
                    int smdCount = 0;
                    int unableCount = 0;
                    for (int i = 15; i < trLength; i++) {
                        // 获取Excel的行，下标从0开始
                        Row row = sheet.getRow(i);
                        if ("<<<<".equals(row.getCell(0).getStringCellValue())) {
                            break;
                        }
                        // 若行为空，则遍历下一行
                        if (row == null) {
                            continue;
                        }
                        Cell a = row.getCell(0);
                        if ("----".equals(a.getStringCellValue())) {
                            jdm = null;
                            // 拿到：刑事提级管辖案件\结案信息
                            jdm = row.getCell(1).getStringCellValue();
                            if ((row.getCell(1).getStringCellValue()).contains("增量记录")) {
                                break;
                            }
                            continue;
                        }
                        if (row.getCell(2).getStringCellValue().equals("主键实体码") || row.getCell(2).getStringCellValue().equals("案件实体码")) {
                            continue;
                        }

                        smdCount++;
                        // 拿到：刑事提级管辖案件\结案信息\结案方式
                        String wjdm = jdm + "\\" + row.getCell(2).getStringCellValue();
                        String zdm = row.getCell(0).getStringCellValue() + "." + row.getCell(1).getStringCellValue();

                        // 去xml中寻找节点
                        element = document.getRootElement();
                        // 设置查找Property节点的xml路径
                        List l = document.selectNodes("/config/Property");
                        Iterator it = l.iterator();

                        while (it.hasNext()) {
                            Element elm = (Element) it.next();
                            list.add(elm.elementText("XMLNode"));
                        }
                        // xml所有节点是否包含smd拿到的节点
                        if (!list.contains(wjdm)) {
                            saveList.add(wjdm);
                            saveList2.add(zdm);
                            unableCount++;
                        }
                    }

                    // 计算字段覆盖率
                    double percent = Double.parseDouble(String.valueOf((smdCount - unableCount)))
                            / Double.parseDouble(String.valueOf(smdCount));

                    fos = new FileOutputStream(savePath + "\\" + sajm + ".txt");
                    String data = null;
                    Iterator itt = saveList.iterator();

                    Sheet sss = workbook.createSheet(sajm);
                    Row rrr0 = sss.createRow(0);
                    Cell cc = rrr0.createCell(0);
                    cc.setCellValue("节点名");
                    Cell cc2 = rrr0.createCell(1);
                    cc2.setCellValue("法标库字段");
                    Cell cc3 = rrr0.createCell(2);
                    cc3.setCellValue("是否导出");
                    Cell cc4 = rrr0.createCell(4);
                    cc4.setCellValue("导出版本");
                    Cell cc5 = rrr0.createCell(4);
                    cc5.setCellValue("未导出原因");
                    int ii = 1;
                    while (itt.hasNext()) {
                        String qqq = itt.next().toString();
                        Row rrr = sss.createRow(ii);
                        Cell ccc = rrr.createCell(0);
                        ccc.setCellValue(qqq);
                        Cell ccc2 = rrr.createCell(1);
                        ccc2.setCellValue(saveList2.get(ii - 1).toString());
                        Cell ccc3 = rrr.createCell(2);
                        ccc3.setCellValue("否");
                        Cell ccc4 = rrr.createCell(4);
                        ccc4.setCellValue("");
                        Cell ccc5 = rrr.createCell(4);
                        ccc5.setCellValue("模板未配置对应关系");
                        data = data + "\n" + qqq;
                        ii++;
                    }
                    NumberFormat nf = NumberFormat.getPercentInstance();
                    nf.setMinimumFractionDigits(2);
                    data = "字段覆盖率：" + String.valueOf(nf.format(percent)) + "\n" + "不导出的节点：" + "\n" + data;
                    Cell excelFgl = r.createCell(1);
                    excelFgl.setCellValue(String.valueOf(nf.format(percent)));
                    fos.write(data.getBytes());
                    // bw = new BufferedWriter(new FileWriter(new
                    // File(savePath + "\\" + sajm + ".txt")));
                    // bw.write(jdm+"\n");
                    OutputStream out = new FileOutputStream(excelPath);
                    workbook.write(out);
                }
            }
            smdNo++;
        }
        excelFileInputStream.close();
        fos.close();
        // bw.close();
    }

}
