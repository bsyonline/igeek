/*
 * @(#)FileUtil.java	1.0 2015/7/14
 *
 */
package com.rolex.util;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/14
 * version: 1.0
 */
public class FileUtil {

    public static void moveFile(String src,String dest){
        try {
            FileUtils.copyFileToDirectory(new File(src),new File(dest));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void removeFile(String path){
        try {
            File file = new File(path);
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
