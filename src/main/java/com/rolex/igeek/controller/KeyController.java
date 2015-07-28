/*
 * @(#)ChordController.java	1.0 2015/6/30
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.dao.KeyDao;
import com.rolex.igeek.dao.KeyDao;
import com.rolex.igeek.po.Key;
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
@RequestMapping("/key")
public class KeyController {

    @Resource
    private KeyDao keyDao;

    @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
    public ModelAndView saveOrUpdate(Key key) {
        //System.out.println("id="+ key.getId() + ",name=" + key.getName());
        if (key.getId() == null) {
            keyDao.save(key);
        } else {
            keyDao.update(key);
        }
        return new ModelAndView("redirect:/key/list");
    }

    @RequestMapping("/list")
    public ModelAndView list() {
        List<Key> list = keyDao.findAll();
        return new ModelAndView("/jsp/key/list", "list", list);
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Integer id) {
        Key key = keyDao.findById(id);
        return new ModelAndView("/jsp/key/add", "key", key);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {
        return new ModelAndView("/jsp/key/add");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Integer id) {
        //System.out.println("id="+ key.getId() + ",name=" + key.getName());
        Key key = keyDao.findById(id);
        keyDao.delete(key);
        return new ModelAndView("redirect:/key/list");
    }
}
