/*
 * @(#)RecommendController.java	1.0 2015/8/7
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.dao.ScoreDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

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

    public ModelAndView recommend(){

        return null;
    }
}
