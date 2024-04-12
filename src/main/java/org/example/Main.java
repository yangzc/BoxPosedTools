package org.example;

import brut.androlib.ApkBuilder;
import brut.androlib.ApkDecoder;
import brut.androlib.Config;
import brut.androlib.apk.ApkInfo;
import brut.androlib.exceptions.AndrolibException;
import brut.androlib.exceptions.CantFindFrameworkResException;
import brut.androlib.exceptions.InFileNotFoundException;
import brut.androlib.exceptions.OutDirExistsException;
import brut.common.BrutException;
import brut.directory.DirectoryException;
import brut.directory.ExtFile;
import org.apache.commons.cli.*;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;

public class Main {

    public static void main(String[] args) {
        String basePath = System.getProperty("user.dir");
        String zipAlignBinPath = basePath + "/bin/mac/zipalign";
        String keyStore = basePath + "/bin/we.ks";
        String codePath = basePath + "/bin/patchCode";
        String cacheDir = basePath + "/target/tmp";
        String keyStorePwd = "wework";
        String apkPath = "/Users/yangzc/Downloads/base_posed/WeCom_android_4.1.10.24949_arm64_100038.apk";

        CommandLineParser commandLineParser = new DefaultParser();
        Options options = new Options();
        options.addOption(Option.builder("h").longOpt("help").argName("帮助").desc("帮助").hasArg(true).build());
        options.addOption(Option.builder("p").longOpt("apk").argName("帮助").desc("帮助").hasArg(true).build());

//        CommandLine commandLine;
//        HelpFormatter hf = new HelpFormatter();
//        try {
//            commandLine = commandLineParser.parse(options, args, true);
//        } catch (ParseException e) {
//            hf.printHelp("BoxPosed", options);
//            return;
//        }
//
//        options.addOption("start", true, "开始");
//        options.addOption("end", true, "结束");
//        options.addOption("flag", false, "标志");
//        CommandLine commandLine = commandLineParser.parse(options, args);
//        if (commandLine.hasOption("flag")) {
//            System.out.println("0000000000");
//        }
//        System.out.println(commandLine.getOptionValue("start"));
//        System.out.println(commandLine.getOptionValue("end"));

//        if (true)
//            return;

        try {
            // 解压原始apk文件
            File sourceRoot = new File(cacheDir, new File(apkPath).getName().replace(".apk", ""));
            if (sourceRoot.exists()) {
                FileUtils.deleteQuietly(sourceRoot);
            }
            FileUtils.createParentDirectories(sourceRoot);
            decodeApk(apkPath, sourceRoot);
            File appFile = fineWwApplicationFile(sourceRoot);
            if (appFile != null) {
                File targetSmaliClassDir = new File(appFile.getAbsolutePath().substring(0, appFile.getAbsolutePath().indexOf("/com")));
                fixUpTargetSmaliClassDir(sourceRoot, targetSmaliClassDir);
                fixUpResourceFiles(sourceRoot);
                fixUpTargetSdkVersion(sourceRoot);
                patchWwApplication(appFile.getAbsolutePath());
                copyPatchFiles(sourceRoot, new File(codePath));

                File encodeApk = new File(sourceRoot, "dist/" + new File(apkPath).getName()
                        .replace(".apk", "") + "_unsigned.apk");
                if (!encodeApk.getParentFile().exists())
                    encodeApk.getParentFile().mkdirs();
                encodeApk(sourceRoot.getAbsolutePath(), encodeApk);
                // align
                File alignFile = new File(encodeApk.getParentFile(),
                        new File(apkPath).getName().replace(".apk", "_align.apk"));
                String alignCmd = zipAlignBinPath +
                        " -p -f -v 4 " +
                        encodeApk.getAbsolutePath() + " " + alignFile.getAbsolutePath();
                execCmd(alignCmd);

                // 签名
                String osName = System.getProperty("os.name");
                if (!osName.toUpperCase().contains("WINDOWS")) {
                    String cmd = "jarsigner " +
                            "-verbose " +
                            "-keystore " + keyStore + "  -storepass " + keyStorePwd + " -keypass " + keyStorePwd + " " +
                            "-signedjar " + new File(alignFile.getParentFile(),
                            new File(apkPath).getName().replace(".apk", "_fake.apk")).getAbsolutePath() + " " +
                            alignFile.getAbsolutePath() + " yangzc";
                    execCmd(cmd);
                }
            } else {
                throw new IOException("Application not found exception");
            }
        } catch (IOException | BrutException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    private static void execCmd(String cmd) throws IOException, InterruptedException {
        Process process = Runtime.getRuntime().exec(cmd);
        BufferedReader errorReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        String line;
        while ((line = errorReader.readLine()) != null) {
            System.out.println(line);
        }
        if (process.waitFor() != 0) {
            System.err.println("签名失败");
        }
    }

    private static void copyPatchFiles(File target, File resDir) throws IOException {
        // 拷贝so文件
        File[] soFiles = new File(resDir, "lib/arm64-v8a").listFiles();
        if (soFiles != null) {
            for (File file : soFiles) {
                FileUtils.copyFile(file
                        , new File(target, "lib/arm64-v8a/" + file.getName()));
            }
        }
        // 拷贝classes
        int smaliClassCnt = getSmaliClassCnt(target);
        if (smaliClassCnt > 0) {
            File targetSmaliCntFile = new File(target, "smali_classes" + (smaliClassCnt + 1));
            copyFolder(new File(resDir, "smali"), targetSmaliCntFile);
        }
        // 创建signature文件
        String signature = "MIICTTCCAbagAwIBAgIETJIV0jANBgkqhkiG9w0BAQUFADBrMQswCQYDVQQGEwJDTjELMAkGA1UE\n" +
                "CBMCR0QxEjAQBgNVBAcTCUd1YW5nemhvdTEQMA4GA1UEChMHVGVuY2VudDEWMBQGA1UECxMNM0cg\n" +
                "RGVwYXJ0bWVudDERMA8GA1UEAxMIV2lsc29uV3UwHhcNMTAwOTE2MTMwNDE4WhcNMzgwMjAxMTMw\n" +
                "NDE4WjBrMQswCQYDVQQGEwJDTjELMAkGA1UECBMCR0QxEjAQBgNVBAcTCUd1YW5nemhvdTEQMA4G\n" +
                "A1UEChMHVGVuY2VudDEWMBQGA1UECxMNM0cgRGVwYXJ0bWVudDERMA8GA1UEAxMIV2lsc29uV3Uw\n" +
                "gZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMKWEH9byyf8o0Bz5CzW6LtpcxILn4kbC7yROqWN\n" +
                "h3Gc2atdgkuAxQgHzxIiPDMx+PWiII6Pt16IY0ym4J2BuZS5Tkg/eaY+Ha9oQatMaRE+8LXQHPKy\n" +
                "SCTH5bJ1fuqESRikGlqpUbRXcjDBQEli/I0zy8cW02YzSJQ/OkRzPI5FAgMBAAEwDQYJKoZIhvcN\n" +
                "AQEFBQADgYEAs1vfGTl9m0DPZTOpZzwOkRBip7P01RZeHZ4+IaOHqOfV+bJIsRGC2pfA3NadO5Ne\n" +
                "12xPZKBwh5PzMYOJpCD7Tg8fTOopbY3hwmz0Ak4i/zv7xZzDLBaoEQ2tkJ6skH2Bt6yITAZvOMZW\n" +
                "YpLV1azOo1MY0bhtFE9bf+ITurV01MY=";
        byte[] bytes = signature.getBytes(StandardCharsets.UTF_8);
        Path path = Paths.get(new File(target, "assets/signature").getAbsolutePath());
        Files.write(path, bytes, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
    }

    private static int getSmaliClassCnt(File file) {
        File[] files = file.listFiles();
        if (files == null)
            return 0;
        int cnt = 0;
        for (File value : files) {
            if (value.getName().startsWith("smali")) {
                cnt++;
            }
        }
        return cnt;
    }

    private static File fineWwApplicationFile(File parentDir) {
        if (parentDir.isDirectory()) {
            File[] files = parentDir.listFiles();
            if (files != null) {
                for (File file : files) {
                    File result = fineWwApplicationFile(file);
                    if (result != null) {
                        return result;
                    }
                }
            }
        } else {
            if (parentDir.getName().equals("WwApplication.smali")) {
                return parentDir;
            }
        }
        return null;
    }

    /**
     * 因为有可能目标small_class目录就该之后方法数超过上线，所以需要重新整理要修改的smali_class
     *
     * @param sourceRoot    反编译之后的源码目录
     * @param smaliClassDir 要整理的smali_class目录
     */
    private static void fixUpTargetSmaliClassDir(File sourceRoot, File smaliClassDir) {
        File[] subFiles = smaliClassDir.listFiles();
        int smaliDirCnt = getSmaliClassCnt(sourceRoot);
        if (subFiles != null) {
            for (File subFile : subFiles) {
                if (subFile.isDirectory() && !subFile.getName().startsWith("com")) {
                    File newSmaliDir = new File(sourceRoot, "smali_classes" + (smaliDirCnt + 1));
                    if (!newSmaliDir.exists())
                        newSmaliDir.mkdirs();
                    subFile.renameTo(new File(newSmaliDir, subFile.getName()));
                }
            }
        }
    }

    private static void fixUpResourceFiles(File sourceRoot) {
        File color31File = new File(sourceRoot, "res/values-v31/colors.xml");
        try (FileInputStream fis = new FileInputStream(color31File)) {
            byte[] bytes = IOUtils.toByteArray(fis);
            String code = new String(bytes, StandardCharsets.UTF_8);
            code = code.replaceFirst("android:color/Indigo_800", "*android:color/Indigo_800");
            code = code.replaceFirst("android:color/Indigo_700", "*android:color/Indigo_700");
            code = code.replaceFirst("android:color/GM2_grey_800", "*android:color/GM2_grey_800");
            code = code.replaceFirst("android:color/Blue_800", "*android:color/Blue_800");
            code = code.replaceFirst("android:color/Blue_700", "*android:color/Blue_700");

            try (FileOutputStream fos = new FileOutputStream(color31File)) {
                fos.write(code.getBytes(StandardCharsets.UTF_8));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void fixUpTargetSdkVersion(File sourceRoot) throws AndrolibException {
        ApkInfo info = ApkInfo.load(sourceRoot);
        System.out.println(info.checkTargetSdkVersionBounds());
        info.setSdkInfoField("targetSdkVersion", "28");
        info.save(new File(sourceRoot, "/apktool.yml"));
    }

    private static void patchWwApplication(String filePath) {
        try (FileInputStream fis = new FileInputStream(filePath)) {
            byte[] bytes = IOUtils.toByteArray(fis);
            String code = new String(bytes, StandardCharsets.UTF_8);
            code = code.replaceFirst("# direct methods", "# direct methods\n" +
                    ".method static constructor <clinit>()V\n" +
                    "    .registers 0\n" +
                    "\n" +
                    "    .line 10\n" +
                    "    invoke-static {}, Lcn/xutils/boxposed/api/PatchUtils;->init()V\n" +
                    "\n" +
                    "    .line 11\n" +
                    "    return-void\n" +
                    ".end method\n");
            try (FileOutputStream fos = new FileOutputStream(filePath)) {
                fos.write(code.getBytes(StandardCharsets.UTF_8));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void encodeApk(String appDirName, File outFile) throws BrutException {
        Config config = Config.getDefaultConfig();
        config.forceApi = 28;
        config.forceBuildAll = true;
        (new ApkBuilder(config, new ExtFile(appDirName))).build(outFile);
    }

    private static void decodeApk(String apkName, File outDir) throws BrutException {
        Config config = Config.getDefaultConfig();
        ExtFile apkFile = new ExtFile(apkName);
        ApkDecoder decoder = new ApkDecoder(config, apkFile);
        try {
            decoder.decode(outDir);
        } catch (OutDirExistsException var7) {
            System.err.println("Destination directory (" + outDir.getAbsolutePath() + ") already exists. Use -f switch if you want to overwrite it.");
            System.exit(1);
        } catch (InFileNotFoundException var8) {
            System.err.println("Input file (" + apkFile.getAbsolutePath() + ") was not found or was not readable.");
            System.exit(1);
        } catch (CantFindFrameworkResException var9) {
            System.err.println("Can't find framework resources for package of id: " + var9.getPkgId() + ". You must install proper framework files, see project website for more info.");
            System.exit(1);
        } catch (IOException var10) {
            System.err.println("Could not modify file. Please ensure you have permission.");
            System.exit(1);
        } catch (DirectoryException var11) {
            System.err.println("Could not modify internal dex files. Please ensure you have permission.");
            System.exit(1);
        }
    }

    public static void copyFolder(File sourceFolder, File destinationFolder) throws IOException {
        // 如果目标文件夹不存在，则创建
        if (!destinationFolder.exists()) {
            destinationFolder.mkdirs();
        }

        // 获取源文件夹下的所有文件和子文件夹
        File[] sourceFiles = sourceFolder.listFiles();

        if (sourceFiles != null) {
            for (File sourceFile : sourceFiles) {
                // 构建目标文件或文件夹路径
                File destinationFile = new File(destinationFolder, sourceFile.getName());

                if (sourceFile.isDirectory()) {
                    // 如果是文件夹，则递归拷贝
                    copyFolder(sourceFile, destinationFile);
                } else {
                    // 如果是文件，则直接拷贝
                    Files.copy(sourceFile.toPath(), destinationFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                }
            }
        }
    }
}