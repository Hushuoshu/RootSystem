import java.io.*;
import java.net.URL;

/**
 * @author Vincent
 * @time 2015/8/31 16:01
 */
public class SqlUnionUtil {
    public static void main(String[] args) throws IOException {
        URL url = Thread.currentThread().getContextClassLoader().getResource("");
        File file = new File(url.getPath());
        final File parentFile = file.getParentFile().getParentFile();
        String path = parentFile.getPath() + "//sql";
        File sqlFile = new File(path);
        File[] files = sqlFile.listFiles(new FileFilter() {
            public boolean accept(File pathname) {
                String name = pathname.getName();
                if (!name.equals("urpAll.sql") && name.endsWith(".sql")) {
                    return true;
                }
                return false;
            }
        });

        File allFile = new File(path + "//urpAll.sql");
        allFile.delete();
        allFile.createNewFile();

        Writer writer = new FileWriter(allFile);
        BufferedWriter bw = new BufferedWriter(writer);

        for (File f : files) {
            Reader reader = new FileReader(f);
            BufferedReader br = new BufferedReader(reader);
            String s = "";
            while ((s = br.readLine()) != null) {
                bw.write(s + "\n\r");
            }
            br.close();
            reader.close();
        }
        bw.close();
        writer.close();
        System.out.println("合并完成");
    }
}
