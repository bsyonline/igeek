/*
 * @(#)HomeController.java	1.0 2015/5/16
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.dao.ChordDao;
import com.rolex.igeek.po.Chord;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/16
 * version: 1.0
 */
@Controller
public class HomeController {

    @Resource
    private ChordDao chordDao;

    @RequestMapping("/home")
    public ModelAndView home() {

        Chord chord = chordDao.findById(1);

        System.out.println(chord.getName());
        return new ModelAndView("index");
    }
}
