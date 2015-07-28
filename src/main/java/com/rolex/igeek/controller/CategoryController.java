/*
 * @(#)ChordController.java	1.0 2015/6/30
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.dao.CategoryDao;
import com.rolex.igeek.dao.ChordDao;
import com.rolex.igeek.dao.KeyDao;
import com.rolex.igeek.po.Category;
import com.rolex.igeek.po.Chord;
import com.rolex.igeek.po.Key;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/6/30
 * version: 1.0
 */
@Controller
public class CategoryController {

    @Resource
    private CategoryDao categoryDao;

    @RequestMapping(value="/category/saveOrUpdate",method = RequestMethod.POST)
    public ModelAndView saveOrUpdate(Category category){
        //System.out.println("id="+ category.getId() + ",name=" + category.getName());
        if(category.getId() == null){
            categoryDao.save(category);
        }else{
            categoryDao.update(category);
        }
        return new ModelAndView("redirect:/category/list");
    }

    @RequestMapping("/category/list")
    public ModelAndView list(){
        List<Category> list = categoryDao.findAll();
        return new ModelAndView("/jsp/category/list","list",list);
    }

    @RequestMapping(value="/category/update/{id}",method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Integer id){
        Category category = categoryDao.findById(id);
        return new ModelAndView("/jsp/category/add","category",category);
    }

    @RequestMapping(value="/category/add",method = RequestMethod.GET)
    public ModelAndView add(){
        return new ModelAndView("/jsp/category/add");
    }

    @RequestMapping(value="/category/delete/{id}",method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Integer id){
        //System.out.println("id="+ category.getId() + ",name=" + category.getName());
        Category category = categoryDao.findById(id);
        categoryDao.delete(category);
        return new ModelAndView("redirect:/category/list");
    }

    @RequestMapping(value = "category/view/{id}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable Integer id){
        Category category = categoryDao.findById(id);
        return new ModelAndView("/jsp/category/view","category",category);
    }
}
