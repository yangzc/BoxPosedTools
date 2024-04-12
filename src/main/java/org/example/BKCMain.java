package org.example;

import jdk.internal.org.objectweb.asm.util.CheckSignatureAdapter;
import org.apache.commons.io.FileUtils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.Checksum;

public class BKCMain {

    public static void main(String[] args) {

        File result = new File("/Users/yangzc/devsoft/bkc/result.txt");
        try(FileWriter writer = new FileWriter(result)) {
            try (FileReader fis = new FileReader("/Users/yangzc/devsoft/bkc/data.txt")) {
                BufferedReader reader = new BufferedReader(fis);
                String line;
                while ((line = reader.readLine()) != null) {
                    String[] idUrlPairs = line.split(" ");
                    String bookId = idUrlPairs[0];
                    if (bookId.length() == 3) {
                        bookId = "0" + bookId;
                    }
                    System.out.println(bookId + "==" + idUrlPairs[1]);
                    String imgUrl = "https://susuanqiniu.knowbox.cn/xhxx_book_cover_resized_" + bookId + ".png";
                    String bkcUrl = idUrlPairs[1].replace("knowapp.b0.upaiyun.com", "appd.knowbox.cn");
                    String fileName = bkcUrl.substring(bkcUrl.lastIndexOf("/") + 1).replace(".bkc", "");
                    fileName = fileName.substring(0, fileName.lastIndexOf("_"));
                    downLoadFromUrl(imgUrl, bookId + ".png", "/Users/yangzc/devsoft/bkc/" + bookId);
                    downLoadFromUrl(bkcUrl, bookId + ".bkc", "/Users/yangzc/devsoft/bkc/" + bookId);
                    System.out.println(fileName + "---> download success!!");
                    new CartoonDecoder(bookId).parse("/Users/yangzc/devsoft/bkc/" + bookId + '/' + bookId + ".bkc", "/Users/yangzc/devsoft/bkc/" + bookId + '/' + bookId);

                    File rawZip = new File("/Users/yangzc/devsoft/bkc/" + bookId + '/' + bookId + "_new.bkc");
                    String md5 = MD5Utils.getFileMD5(rawZip);
                    FileUtils.copyFile(rawZip, new File("/Users/yangzc/devsoft/bkc/" + fileName + "_" + md5 +  ".bkc"));

                    writer.append(idUrlPairs[0]).append(" https://knowapp.b0.upaiyun.com/ss/huiben/book2/").append(fileName).append("_").append(md5).append(".bkc\n");
                    FileUtils.cleanDirectory(new File("/Users/yangzc/devsoft/bkc/" + bookId));
                    new File("/Users/yangzc/devsoft/bkc/" + bookId).delete();
                    System.out.println(idUrlPairs[0] + " " + fileName +  " " + md5 + " done");
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public static void downLoadFromUrl(String urlStr, String fileName, String savePath) throws IOException {
        URL url = new URL(urlStr);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        //设置超时间为5秒
        conn.setConnectTimeout(5 * 1000);
        //防止屏蔽程序抓取而返回403错误
        conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");

        //得到输入流
        InputStream input = conn.getInputStream();
        //获取自己数组
        byte[] getData = readInputStream(input);

        //文件保存位置
        File saveDir = new File(savePath);
        if (!saveDir.exists()) {
            saveDir.mkdir();
        }
        File file = new File(saveDir + File.separator + fileName);
        FileOutputStream output = new FileOutputStream(file);
        output.write(getData);
        if (output != null) {
            output.close();
        }
        if (input != null) {
            input.close();
        }
    }

    public static byte[] readInputStream(InputStream inputStream) throws IOException {
        byte[] buffer = new byte[10240];
        int len = 0;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        while ((len = inputStream.read(buffer)) != -1) {
            bos.write(buffer, 0, len);
        }
        bos.close();
        return bos.toByteArray();
    }
}
