
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

import com.alibaba.fastjson.JSONObject;

/**
 * Demo
 *
 * @author swh
 * @version 1.0
 * <dependency>
 * <groupId>commons-httpclient</groupId>
 * <artifactId>commons-httpclient</artifactId>
 * <version>3.0</version>
 * </dependency>
 */
public class RequestDemo {
    public static String sendPost(String url, String param) {
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
//            URL realUrl = new URL(url);
//            // 打开和URL之间的连接
//            URLConnection conn = realUrl.openConnection();
//            // 设置通用的请求属性
//            conn.setRequestProperty("accept", "*/*");
//            conn.setRequestProperty("connection", "Keep-Alive");
//            conn.setRequestProperty("user-agent",
//                "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
//            // 发送POST请求必须设置如下两行
//            conn.setDoOutput(true);
//            conn.setDoInput(true);
//            conn.setRequestProperty("test", param);
//            // 获取URLConnection对象对应的输出流
//            out = new PrintWriter(conn.getOutputStream());
//            // 发送请求参数
//            out.print(param);
//            // flush输出流的缓冲
//            out.flush();
//            // 定义BufferedReader输入流来读取URL的响应
//            in = new BufferedReader(
//                    new InputStreamReader(conn.getInputStream()));
//            String line;
//            while ((line = in.readLine()) != null) {
//                result += line;
//            }
            HttpClient httpClient = new HttpClient();
            PostMethod post = new PostMethod(url);
//            PostMethod p=new GetMethod(url);
            NameValuePair[] pa = new NameValuePair[1];
            pa[0] = new NameValuePair("fyId", param);
            post.setRequestBody(pa);
            httpClient.executeMethod(post);
            byte[] ss = post.getResponseBody();
            String t = new String(ss);
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！" + e);
            e.printStackTrace();
        }
        //使用finally块来关闭输出流、输入流
        finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }

    public static void main(String[] args) {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("fyId", "2400");
        jsonobject.put("gxrq", "2018/07/06 18:30:26");
        jsonobject.put("ajlx", "1");
        //发送 POST 请求
        String sr = RequestDemo.sendPost(
                "http://localhost:8585/export15xml_frame/.senddatas", jsonobject.toJSONString());
        System.out.println(sr);
    }
}
