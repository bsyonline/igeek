/*
 * @(#)RecommendController.java	1.0 2015/8/7
 *
 */
package com.rolex.igeek.controller;

import com.google.gson.Gson;
import com.rolex.igeek.dao.ScoreDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/8/7
 * version: 1.0
 */
@Controller
public class RecommendController {

    @Resource
    public ScoreDao scoreDao;

    @RequestMapping("/recommend")
    public ModelAndView recommend(HttpServletResponse response){
        List list = scoreDao.recommend();
        Gson gson  = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);

        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try {
            PrintWriter out = response.getWriter();
            out.print(json);
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
