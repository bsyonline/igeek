/*
 * @(#)LoginController.java	1.0 2015/5/19
 *
 */
package com.rolex.igeek.controller;

import com.rolex.system.dao.MenuDao;
import com.rolex.system.dao.UserDao;
import com.rolex.system.po.Menu;
import com.rolex.system.po.User;
import com.rolex.util.MD5;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/19
 * version: 1.0
 */
@Controller
public class LoginController {

    @Resource
    private UserDao userDao;

    @RequestMapping("/login")
    public ModelAndView login(){
        return new ModelAndView("forward:/jsp/login.jsp");
    }

    @RequestMapping("/session")
    public ModelAndView session(HttpServletRequest request,String username,String password){

        List<User> users = userDao.findByName(username);
        if(users != null && users.size() > 0){
            User user = users.get(0);
            if(user.getPassword().equals(MD5.encrypt(password))){
                request.getSession().setAttribute("LOGIN_USER",user);
                Map<Menu,List<Menu>> map = (Map<Menu,List<Menu>>)request.getSession().getServletContext().getAttribute("MENU_MAP");
                return new ModelAndView("/jsp/dashboard","map",map);
            }
        }
        return new ModelAndView("/jsp/login");

    }
}
