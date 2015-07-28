/*
 * @(#)MD5.java	1.0 2015/7/6
 *
 */
package com.rolex.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/6
 * version: 1.0
 */
public class MD5 {

    public static String encrypt(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String cannot be null or zero length");
        }

        StringBuilder hexString = new StringBuilder();

        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte[] hash = md.digest();

            for (byte element : hash) {
                if ((0xff & element) < 0x10) {
                    hexString.append('0').append(Integer.toHexString((0xFF & element)));
                }
                else {
                    hexString.append(Integer.toHexString(0xFF & element));
                }
            }
        }
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        return hexString.toString();
    }

    public static void main(String[] args) {
        System.out.println(MD5.encrypt("123"));
    }
}
