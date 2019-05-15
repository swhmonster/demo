import lombok.SneakyThrows;
import org.apache.poi.ss.usermodel.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

public class AgxtZs {
    @SneakyThrows
    public static void main(String[] args) {
        int count = 1000;
        int xhadd = 8888;
        int xfbh = 10000;
        String path = "F:\\project\\导入模板.xlsx";
        InputStream is = new FileInputStream(new File(path));
        Workbook wb = WorkbookFactory.create(is);
        Sheet sheet = wb.getSheet("信访数据");
        for (int i = 1; i <= count; i++) {
            Row row = sheet.createRow(i);
            for (int j = 0; j < 15; j++) {
                Cell cell = row.createCell(j);
                switch (j) {
                    case 0:
                        cell.setCellValue(String.valueOf(i + j + xhadd));
                        break;
                    case 1:
                        cell.setCellValue(String.valueOf(i + j + xfbh));
                        break;
                    case 2:
                        break;
                    case 3:
                        cell.setCellValue("灵魂程序员" + i + j);
                        break;
                    case 4:
                        cell.setCellValue("个人");
                        break;
                    case 5:
                        cell.setCellValue("南京研发中心");
                        break;
                    case 6:
                        cell.setCellValue("党员");
                        break;
                    case 7:
                        cell.setCellValue("职员");
                        break;
                    case 8:
                        cell.setCellValue("男");
                        break;
                    case 9:
                        cell.setCellValue("一般干部");
                        break;
                    case 10:
                        cell.setCellValue("340826199003071776");
                        break;
                    case 11:
                        cell.setCellValue("朝阳人民群众" + i + j);
                        break;
                    case 12:
                        cell.setCellValue("江苏高院");
                        break;
                    case 13:
                        cell.setCellValue("1" + (int) ((Math.random() * 9 + 1) * 1000000000));
                        break;
                    case 14:
                        cell.setCellValue("邓紫棋皮裤");
                        break;
                }
            }
        }
        wb.write(new FileOutputStream(path));
        System.out.println("finish");
    }
}
