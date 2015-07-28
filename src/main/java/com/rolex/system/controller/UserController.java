/*
 * @(#)ChordController.java	1.0 2015/6/30
 *
 */
package com.rolex.system.controller;

import com.rolex.system.dao.UserDao;
import com.rolex.system.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/6/30
 * version: 1.0
 */
@Controller
public class UserController {

    @Resource
    private UserDao userDao;

    @RequestMapping(value="/user/saveOrUpdate",method = RequestMethod.POST)
    public ModelAndView saveOrUpdate(User user){
        //System.out.println("id="+ user.getId() + ",name=" + user.getName());
        if(user.getId() == null){
            userDao.save(user);
        }else{
            userDao.update(user);
        }
        return new ModelAndView("redirect:/user/list");
    }

    @RequestMapping("/user/list")
    public ModelAndView list(){
        List<User> list = userDao.findAll();
        return new ModelAndView("/jsp/user/list","list",list);
    }

    @RequestMapping(value="/user/update/{id}",method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Integer id){
        User user = userDao.findById(id);
        return new ModelAndView("/jsp/user/add","user",user);
    }

    @RequestMapping(value="/user/add",method = RequestMethod.GET)
    public ModelAndView add(){
        return new ModelAndView("/jsp/user/add");
    }

    @RequestMapping(value="/user/delete/{id}",method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Integer id){
        //System.out.println("id="+ user.getId() + ",name=" + user.getName());
        User user = userDao.findById(id);
        userDao.delete(user);
        return new ModelAndView("redirect:/user/list");
    }

    @RequestMapping(value = "user/view/{id}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable Integer id){
        User user = userDao.findById(id);
        return new ModelAndView("/jsp/user/view","user",user);
    }
}
