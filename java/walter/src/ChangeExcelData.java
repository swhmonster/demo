
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class ChangeExcelData {
    /**
     * @param args
     * @throws IOException
     * @throws EncryptedDocumentException
     * @throws InvalidFormatException
     * @author sunwenhao
     */
    public static void main(String[] args) throws IOException, EncryptedDocumentException, InvalidFormatException {
        String path = "F:\\15xsd修改\\03_SMD";
        File folder = new File(path);
        //list()获取目录下所有文件
        //list()获取目录下所有文件及目录的绝对路径
        //使用增强for遍历目录下文件(批量处理xml文件)
        InputStream excelFileInputStream = null;
        Workbook wb = null;

        for (File f : folder.listFiles()) {
            System.out.println("获取文件：" + f);
            //             创建 Excel 文件的输入流对象
            excelFileInputStream = new FileInputStream(f);
            //            FileOutputStream excelFileOutPutStream = new FileOutputStream(f);
            wb = WorkbookFactory.create(excelFileInputStream);
            excelFileInputStream.close();

            Sheet sheet = wb.getSheet("COL");
            //Sheet sheet = wb.getSheetAt(2);//获取Excel的工作表sheet，下标从0开始。
            int trLength = sheet.getLastRowNum();//获取Excel的行数
            for (int i = 0; i < trLength; i++) {
                Row row = sheet.getRow(i);//获取Excel的行，下标从0开始
                if (row == null) {//若行为空，则遍历下一行
                    continue;
                }
                Cell cell = row.getCell(1);//获取指定单元格，单元格从左到右下标从0开始
                Cell cell1 = row.getCell(6);
                if (cell != null
                        && cell.getStringCellValue().equals("C_JDNR")) {//获取单元格内容，作为String类型
                    System.out.println(cell);
                    cell1.setCellValue("TEXT");//给单元格设值
                    System.out.println(cell1);
                }
            }
            OutputStream out = new FileOutputStream(f);
            wb.write(out);
        }
    }
}
