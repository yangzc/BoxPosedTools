package org.example;


import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.*;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.lang3.StringUtils;

public class HttpClient {

    public static final String TAG = "HttpClient";
    private static final String BOUNDARY = "---------------------------7d4a6d158c9";

    private static final class DefaultTrustManager implements X509TrustManager {
        @Override
        public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public static boolean download(final String urlStr, String destFileDir, String destFileName, final OnDownloadListener listener) {
        //储存下载文件的目录

        final File destFile = new File(destFileDir, destFileName);
        if(destFile.exists()){
            listener.onDownloadSuccess(destFile);
            return false;
        }
        File dir = destFile.getParentFile();
        if (!dir.exists()) {
            dir.mkdirs();
        }
        final File tmpFile = new File(destFile.getAbsoluteFile() + ".temp" );
        if(tmpFile.exists()){
            tmpFile.delete();
        }
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(tmpFile);
            final FileOutputStream finalFos = fos;
            return doRequest(urlStr, true, null, null, new OnProcessListener() {
                long sum = 0;

                @Override
                public void onSuccess() {
                    tmpFile.renameTo(destFile);
                    listener.onDownloadSuccess(destFile);
                }

                @Override
                public void onProcess(byte[] buf, int len, long total) throws IOException {
                    sum += len;
                    int progress = (int) (sum * 1.0f / total * 100);
                    finalFos.write(buf, 0, len);
                    if (listener != null) {
                        listener.onDownloading(progress);
                    }
                }

                @Override
                public void onFail(Exception e) {
                    if (listener != null) {
                        listener.onDownloadFailed(e);
                    }
                }
            });
        } catch (Throwable e) {
            if (listener != null) {
                listener.onDownloadFailed(e);
            }
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static String doGet(String url, HashMap header) {
        final ByteArrayOutputStream baos = new ByteArrayOutputStream();
        doRequest(url, true, header, null, new OnProcessListener() {
            @Override
            public void onSuccess() {
            }

            @Override
            public void onProcess(byte[] buf, int len, long total) throws IOException {
                baos.write(buf, 0, len);
            }

            @Override
            public void onFail(Exception e) {
            }
        });
        byte bytes[] = baos.toByteArray();
        return new String(bytes);
    }

    public static String doPost(String url, HashMap header, String body) {
        final ByteArrayOutputStream baos = new ByteArrayOutputStream();
        boolean success = doRequest(url, false, header, body, new OnProcessListener() {
            @Override
            public void onSuccess() {
            }

            @Override
            public void onProcess(byte[] buf, int len, long total) throws IOException {
                baos.write(buf, 0, len);
            }

            @Override
            public void onFail(Exception e) {
            }
        });
        if (!success)
            return null;
        byte bytes[] = baos.toByteArray();
        String result = new String(bytes);
        return result;
    }

    public static String upload(String urlStr, String name, String localPath) {
        InputStream is = null;
        OutputStream os = null;
        try {
            SSLContext ctx = null;
            try {
                ctx = SSLContext.getInstance("TLS");
                ctx.init(new KeyManager[0], new TrustManager[]{new DefaultTrustManager()}, new SecureRandom());
            } catch (KeyManagementException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            SSLSocketFactory ssf = ctx.getSocketFactory();

            URL url = new URL(urlStr);
            HttpURLConnection connection;
            if (urlStr.startsWith("https")) {
                connection = (HttpsURLConnection) url.openConnection();
                ((HttpsURLConnection) connection).setSSLSocketFactory(ssf);
                ((HttpsURLConnection) connection).setHostnameVerifier(new HostnameVerifier() {
                    @Override
                    public boolean verify(String arg0, SSLSession arg1) {
                        return true;
                    }
                });
            } else {
                connection = (HttpURLConnection) url.openConnection();
            }
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Connection", "Keep-Alive");
            connection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + BOUNDARY);
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setUseCaches(false);

            //write data
            os = connection.getOutputStream();
            os.write(("--" + BOUNDARY + "\r\n").getBytes());
            os.write(("Content-Disposition: form-data; name=\"file"
                    + "\"; filename=\"" + name + "\"\r\n").getBytes());
            os.write(("Content-Type: \r\n").getBytes());
            os.write("Content-Transfer-Encoding: binary\r\n".getBytes());
            os.write("\r\n".getBytes());
//            os.write(FileUtils.INSTANCE.getBytes(new File(localPath)));
            os.write("\r\n".getBytes());
            os.write(("--" + BOUNDARY + "--\r\n").getBytes());

            is = connection.getInputStream();
            byte buf[] = new byte[1024];
            int len;
            ByteArrayOutputStream bs = new ByteArrayOutputStream();
            while ((len = is.read(buf, 0, 1024)) != -1) {
                //下载中更新进度条
                bs.write(buf, 0, len);
            }
            return new String(bs.toByteArray());
        } catch (IOException e) {
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException e) {
            }
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "";
    }

    public static boolean doRequest(final String urlStr, boolean isGet, HashMap<String, String> header, String body, OnProcessListener listener) {
        InputStream is = null;
        OutputStream os = null;
        try {
            SSLContext ctx = null;
            try {
                ctx = SSLContext.getInstance("TLS");
                ctx.init(new KeyManager[0], new TrustManager[]{new DefaultTrustManager()}, new SecureRandom());
            } catch (KeyManagementException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            SSLSocketFactory ssf = ctx.getSocketFactory();

            URL url = new URL(urlStr);
            HttpURLConnection connection;
            if (urlStr.startsWith("https")) {
                connection = (HttpsURLConnection) url.openConnection();
                ((HttpsURLConnection) connection).setSSLSocketFactory(ssf);
                ((HttpsURLConnection) connection).setHostnameVerifier(new HostnameVerifier() {
                    @Override
                    public boolean verify(String arg0, SSLSession arg1) {
                        return true;
                    }
                });
            } else {
                connection = (HttpURLConnection) url.openConnection();
            }
            connection.setRequestMethod(isGet ? "GET" : "POST");
            connection.setReadTimeout(10000);
            connection.setConnectTimeout(10000);
            if (header != null) {
                Iterator<String> iterator = header.keySet().iterator();
                while (iterator.hasNext()) {
                    String key = iterator.next();
                    String value = header.get(key);
                    connection.addRequestProperty(key, value);
                }
            }
            connection.setRequestProperty("Connection", "Keep-Alive");
            if (!isGet) {
                connection.setDoOutput(true);
                os = connection.getOutputStream();
                if (!StringUtils.isEmpty(body)) {
                    os.write(body.getBytes());
                }
            }
            int responseStatusCode = connection.getResponseCode();
            Map<String, List<String>> headers = connection.getHeaderFields();
            for(String head: headers.keySet()) {
                System.out.println(head + "  " + headers.get(head));
            }
            if(responseStatusCode != HttpURLConnection.HTTP_OK) {
                String error = getError(connection);
                System.out.println(error);
            }
            is = connection.getInputStream();
            byte buf[] = new byte[1024];
            int len = -1;
            long total = connection.getContentLength();
            while ((len = is.read(buf, 0, 1024)) != -1) {
//                sum += len;
//                int progress = (int) (sum * 1.0f / total * 100);
                //下载中更新进度条
                if (listener != null)
                    listener.onProcess(buf, len, total);
            }
            if (listener != null)
                listener.onSuccess();
            return true;
        } catch (IOException e) {
//            LogUtils.e(TAG, "", e);
            e.printStackTrace();
            if (listener != null)
                listener.onFail(e);
        } finally {
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException e) {
            }
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static String getError(HttpURLConnection connection){
        try {
            final ByteArrayOutputStream baos = new ByteArrayOutputStream();
            InputStream is = connection.getErrorStream();

            byte buf[] = new byte[1024];
            int len = -1;
            long total = connection.getContentLength();
            while ((len = is.read(buf, 0, 1024)) != -1) {
                baos.write(buf, 0, len);
            }
            byte bytes[] = baos.toByteArray();
            String result = new String(bytes);
            return result;
        }catch (Throwable e){
            return "";
        }
    }

    public interface OnProcessListener {
        void onSuccess();

        void onProcess(byte buf[], int len, long total) throws IOException;

        void onFail(Exception e);
    }


    public interface OnDownloadListener {
        void onDownloadSuccess(File file);

        void onDownloading(int progress);

        void onDownloadFailed(Throwable e);
    }

}
