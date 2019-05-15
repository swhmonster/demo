
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class SqlCreate {

    /**
     * @author sunwenhao
     * @param args
     */
    private static String path = "F:\\15xsd修改\\03_SMD"; // execl保存路径

    private static String savepath = "F:\\15xsd修改\\增量脚本\\zlsql2.txt"; //拼接后的sql保存路径

    public static void main(String[] args) {
        try {
            File file = new File(path); //此处file不是文件，是路径
            FileOutputStream out = new FileOutputStream(savepath);
//            OutputStream out = new FileOutputStream(savepath);
            Workbook wb = null;
            int count = 0;
            for (File f : file.listFiles()) { //通过".listFiles()"方法遍历路径下文件
                count++;
                System.out.println("获取文件：" + f + "----" + count);
                InputStream excelFileInputStream = null;
                excelFileInputStream = new FileInputStream(f);
                wb = WorkbookFactory.create(excelFileInputStream);
                excelFileInputStream.close();

                Sheet st = wb.getSheet("TAB");
                Sheet sc = wb.getSheet("COL");

                int stl = st.getLastRowNum();
                int scl = sc.getLastRowNum();

                Row rowst = st.getRow(4);
                Cell cellschema = rowst.getCell(2);
//                System.out.println(cellschema);

                String sql = "";
                for (int i = 0; i < scl; i++) {
                    //                    String sql="";
                    Row row = sc.getRow(i);//获取Excel的行，下标从0开始
                    if (row == null) {//若行为空，则遍历下一行
                        continue;
                    }
                    Cell cell = row.getCell(1);//获取指定单元格，单元格从左到右下标从0开始
                    Cell cell2 = row.getCell(0);
                    if (cell != null
                            && cell.getStringCellValue().equals("C_DJHKYKWDCL")) {
//                        sql += "ALTER TABLE " + cellschema + "."+cell2
//                        + " RENAME N_DJHKYKWDCL TO C_DJHKYKWDCL;"+"\n" ;
                        sql += "ALTER TABLE " + cellschema + "." + cell2
                                + " ALTER C_DJHKYKWDCL TYPE TEXT;" + "\n";
                        System.out.println(sql);
                        byte[] a = sql.getBytes();
                        out.write(a);
                    }
                }
                //                Sheet sheet = wb.getSheet("TAB");                  //获取execl表格中的工作表sheet（此处工作表名为TAB）
                //                int frn = sheet.getFirstRowNum() + 3;              //设置获取表格行的起始位置
                //                int lrn = sheet.getLastRowNum();                     //设置获取表格行的结束位置
                //                Row row = null;
                //                Cell celltable = null;
                //                Cell cellshcema = null;
                //                String sql = "";
                //
                //                for (int i = frn; i <= lrn; i++) {                              //从设置行的起始位置按行遍历
                //                    row = sheet.getRow(i);                                     //获取表格第i行
                //                    if(row==null){                                                   //行为空跳出
                //                        continue;
                //                    }
                //                    cellshcema =row.getCell(2);                              //获取第i行第3列内容
                //                    celltable = row.getCell(1);                                  //获取第i行第2列内容
                //                    sql+="ALTER TABLE "+cellshcema+".T_XSYSDSRHZYSAR"+" ALTER C_RDZXCJ TYPE TEXT;"+"\r\n";
                //                    System.out.println(sql);
                //                    out.write(sql.getBytes());
                //
                //                }
                //            }
//                System.out.println("sql脚本生成完毕！！！");
            }

            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}