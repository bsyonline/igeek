/*
 * @(#)UploadController.java	1.0 2015/7/12
 *
 */
package com.rolex.system.controller;

import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/12
 * version: 1.0
 */
@Controller
public class UploadController {

    @RequestMapping("/upload2")
    public ModelAndView upload(MultipartFile file, HttpServletRequest request, HttpServletResponse response){
        String path = request.getSession().getServletContext().getRealPath("/upload/temp/");
        //String path = request.getContextPath();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        System.out.println(file);

        String fileName = file.getOriginalFilename();

        String name = fileName.substring(0,fileName.lastIndexOf("."));
        String ext = fileName.substring(fileName.lastIndexOf("."));
        Date date = new Date();
        Long l = date.getTime();

        String newFileName = name + "_" + l + ext;

        //path = path + File.separator + "upload" + File.separator + "temp" + File.separator;

        File dir = new File(path);
        if(!dir.exists()){
            dir.mkdirs();
        }

        try {
            file.transferTo(new File(path + File.separator + newFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        String json = "{\"name\":\""+newFileName+"\"}";

        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.print(json);
        out.close();

        return null;
    }
}
