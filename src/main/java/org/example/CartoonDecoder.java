/**
 * Copyright (C) 2015 The AndroidRCStudent Project
 */
package org.example;


import brut.common.BrutException;
import brut.directory.ZipUtils;
import com.azul.crs.jar.ZipTools;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/**
 * 漫画文件解析器
 * @author yangzc
头描述信息
y(1byte)|version(2byte)|format(1byte:[1:zip,2:...])
内容描述信息
z(1byte)|page(2byte)|flag(1byte[0:none,1:])|
内容
c(1byte)|stream...
 */
public class CartoonDecoder {

	public static final int VERSION = 1;
	private static final int FORMAT_ZIP = 1;

	private File mTmpFile;
	private int format = FORMAT_ZIP;
	private int pageCnt = 1;
	private byte flag;

	public CartoonDecoder(String id){
		mTmpFile = new File("/Users/yangzc/devsoft/bkc/" + id, id + ".zip");
		if (mTmpFile.exists()) {
			mTmpFile.delete();
		}
	}

	/**
	 * 释放资源
	 */
	public void release(){
	}

	/**
	 * 获得页数
	 * @return
	 */
	public int getPageCnt(){
		return pageCnt;
	}

	/**
	 * 解析文件
	 * @param path
	 * @param dest
	 */
	public boolean parse(String path, String dest) {
//		System.out.println(path);
		File file = new File(path);
		if (!file.exists()) {
			return false;
		}

		DataInputStream dis = null;
		try {
			dis = new DataInputStream(new FileInputStream(file));
			byte syncMark = dis.readByte();
			if (syncMark == 'y') {
				short version = dis.readShort();
				switch (version) {
					case 1://第一个版本
						return parseVersion1(dest, dis);
					default:
						break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (dis != null) {
				try {
					dis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		if (mTmpFile.exists()) {
			mTmpFile.delete();
		}
		return false;
	}

	/**
	 * 解析第一个版本
	 * @param dis
	 * @param dest 路径
	 * @throws IOException
	 */
	private boolean parseVersion1(String dest, DataInputStream dis) throws IOException {
		format = dis.readByte();
		byte mark = dis.readByte();
		if (mark == 'z') {
			pageCnt = dis.readShort();
			flag = dis.readByte();//flag
			mark = dis.readByte();
			if (mark == 'c') {
				switch (format) {
					case FORMAT_ZIP: {
//						System.out.println(mTmpFile);
						IOUtils.copy(dis, new FileOutputStream(mTmpFile));
//					FileUtils.copyStream2File(dis, mTmpFile);
						if (mTmpFile.exists()) {
							File file = new File(dest);
							if (!file.exists()) {
								file.mkdirs();
							}
							unZipFolder(mTmpFile.getAbsolutePath(), file.getAbsolutePath());
							zipFolder();
						}
						break;
					}
					default:
						break;
				}
			}
		}
		return false;
	}

	/**
	 * 漫画文件解析器
	 * @author yangzc
	头描述信息
	y(1byte)|version(2byte)|format(1byte:[1:zip,2:...])
	内容描述信息
	z(1byte)|page(2byte)|flag(1byte[0:none,1:])|
	内容
	c(1byte)|stream...
	 */
	private boolean zipFolder() {
		String folder = mTmpFile.getAbsolutePath().replace(".zip", "");
		String newZip = mTmpFile.getAbsolutePath().replace(".zip", "_new.zip");
		try {
			ZipUtils.zipFolders(new File(folder), new File(newZip), null, null);
		} catch (BrutException | IOException e) {
			throw new RuntimeException(e);
		}
//		try(FileOutputStream fos = new FileOutputStream(newZip)) {
////			ZipTools.
//
////			compressDirectoryToZip(new File(folder), "", new ZipOutputStream(fos));
//		} catch (IOException e) {
//			throw new RuntimeException(e);
//		}

		String newFile = mTmpFile.getAbsolutePath().replace(".zip", "_new.bkc");
		try(DataOutputStream dos = new DataOutputStream(Files.newOutputStream(Paths.get(newFile)))) {
			dos.writeByte('y');
			dos.writeShort(1);
			dos.writeByte(1);
			dos.writeByte('z');
			dos.writeShort(pageCnt);
			dos.writeByte(flag);
			dos.writeByte('c');
			IOUtils.copy(Files.newInputStream(Paths.get(newZip)), dos);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		return true;
	}

	private static void compressDirectoryToZip(File directory, String parentDirName, ZipOutputStream zos) throws IOException {
		for (File file : Objects.requireNonNull(directory.listFiles())) {
			if (file.isDirectory()) {
				compressDirectoryToZip(file, file.getName(), zos);
				continue;
			}

			byte[] buffer = new byte[1024];
			FileInputStream fis = new FileInputStream(file);
			zos.putNextEntry(new ZipEntry(file.getName()));

			int length;
			while ((length = fis.read(buffer)) > 0) {
				zos.write(buffer, 0, length);
			}

			zos.closeEntry();
			fis.close();
		}
	}

	/**
	 * 解压动漫文件
	 * @param zipPath
	 * @param destDir
	 * @return
	 */
	private boolean unZipFolder(String zipPath, String destDir) {
		boolean result = false;
		ZipInputStream zis = null;
		try {
			zis = new ZipInputStream(new FileInputStream(zipPath));
			ZipEntry zipEntry;
			String szName = "";
			while ((zipEntry = zis.getNextEntry()) != null) {
				szName = zipEntry.getName();
				if (szName.contains("../")) {
					throw new Exception("发现不安全的zip文件解压路径！");
				}
				if (zipEntry.isDirectory()) {
					szName = szName.substring(0, szName.length() - 1);
					File folder = new File(destDir + File.separator + szName);
					folder.mkdirs();
				} else {
					File file = new File(destDir + File.separator + szName);
					file.createNewFile();
					FileOutputStream out = new FileOutputStream(file);
					int len;
					byte[] buffer = new byte[1024];
					while ((len = zis.read(buffer)) != -1) {
						out.write(buffer, 0, len);
						out.flush();
					}
					out.close();

					if (szName.contains("-0.png")) {
						file.delete();
						FileUtils.copyFile(new File(mTmpFile.getAbsolutePath().replace(".zip", ".png")), file);
					}
				}
			}
			result = true;
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		} finally {
			if (zis != null) {
				try {
					zis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
}
