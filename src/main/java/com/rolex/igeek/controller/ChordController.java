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
import com.rolex.igeek.search.chord.ChordIndexer;
import com.rolex.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
@RequestMapping("/chord")
public class ChordController {

    @Resource
    private ChordDao chordDao;
    @Resource
    private KeyDao keyDao;
    @Resource
    private CategoryDao categoryDao;

    @RequestMapping(value = "/addOrUpdate", method = RequestMethod.POST)
    public ModelAndView addOrUpdate(Chord chord, HttpServletRequest request) {
        if (chord.getCategory().getId() == null) {
            chord.setCategory(null);
        }
        if (chord.getKey().getId() == null) {
            chord.setKey(null);
        }
        if (chord.getId() == null) {
            chordDao.save(chord);
            ChordIndexer.scheduleAddChordTask(chord);
        } else {
            chordDao.update(chord);
            ChordIndexer.scheduleUpdateChordTask(chord);
        }
        String realPath = request.getSession().getServletContext().getRealPath("/");
        FileUtil.moveFile(realPath + "/upload/temp/" + chord.getIcon(), realPath + "/upload/chord/");
        FileUtil.removeFile(realPath + "/upload/temp/" + chord.getIcon());
        return new ModelAndView("redirect:/chord/list");
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {
        List<Key> keys = keyDao.findAll();
        List<Category> categories = categoryDao.findAll();
        Map<String, List> map = new HashMap<String, List>();
        map.put("keys", keys);
        map.put("categories", categories);
        return new ModelAndView("/jsp/chord/add", "map", map);
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Integer id) {
        Chord chord = chordDao.findById(id);
        return new ModelAndView("/jsp/chord/add", "chord", chord);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list() {
        List<Chord> list = chordDao.findAll();
        return new ModelAndView("/jsp/chord/list", "list", list);
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Integer id) {
        Chord chord = chordDao.findById(id);
        chordDao.delete(chord);
        ChordIndexer.scheduleDeleteChordTask(chord);
        return new ModelAndView("redirect:/chord/list");
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable Integer id) {
        Chord chord = chordDao.findById(id);
        return new ModelAndView("/jsp/chord/view", "chord", chord);
    }
}
