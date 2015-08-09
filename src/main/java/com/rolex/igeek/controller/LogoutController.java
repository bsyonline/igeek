/*
 * @(#)LoginController.java	1.0 2015/5/19
 *
 */
package com.rolex.igeek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/19
 * version: 1.0
 */
@Controller
public class LogoutController {

    @RequestMapping("/logout")
    public ModelAndView logout1(HttpServletRequest request) {
        request.getSession().invalidate();
        request.getSession().setAttribute("LOGIN_USER",null);
        return new ModelAndView("redirect:/login");
    }


}
