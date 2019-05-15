
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class ModifySql {
    static String path = "E:\\np";
    static String goal = "E:\\re";

    public static void main(String[] args) {
        File file = new File(path);
        for (String fileName : file.list()) {
            int index = 0;
            String sqlPath = path + File.separator + fileName;
            String goalPath = goal + File.separator + fileName;
            BufferedReader br = null;
            BufferedWriter bw = null;

            try {
                br = new BufferedReader(new FileReader(sqlPath));
                bw = new BufferedWriter(new FileWriter(new File(goalPath)));
                String sbMaoKan = "";

                String buf = br.readLine();
                String db = buf.substring(buf.indexOf("DB_") + 3, buf.indexOf(";"));
                while (buf != null && buf != "") {
                    sbMaoKan = (buf + "\n");
                    buf = buf.replaceAll("N_AJBS", "C_STM_" + db).replaceAll("numeric", "varchar")
                            .replaceAll("17", "300")
                            .replaceAll("ajbs", "stm");
                    if (sbMaoKan.contains("SLZXQXGL") || sbMaoKan.contains("SKSFYYS")) {
                        buf = (buf.replaceAll("C_STM_" + db, "C_STM"));
                    }
                    if (index == 5) {
                        buf = (buf.replaceAll("C_STM_" + db, "C_STM"));
                    }
                    bw.write(buf + "\n");
                    bw.flush();
//                    System.out.println(buf);
                    buf = br.readLine();
                    index++;
                }
                System.out.println(index);
                bw.close();
                br.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
}
