/*
 * @(#)SearchController.java	1.0 2015/7/16
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.po.Chord;
import com.rolex.igeek.search.chord.ChordIndexer;
import com.rolex.igeek.search.chord.ChordSearchQuery;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
@Controller
public class SearchController {

    @Resource
    private ChordSearchQuery chordSearchQuery;

    @RequestMapping("/search")
    public ModelAndView search(String searchString){
        chordSearchQuery.setSearchString(searchString);
        chordSearchQuery.searchDocuments(0, 10);
        List<Chord> list = chordSearchQuery.getSearchResult();
        System.out.println("searchString = " + searchString);
        for(Chord c : list){
            System.out.println("name = " + c.getName() + "\tdesc = " + c.getDesc());
        }

        return new ModelAndView();
    }

    @RequestMapping("/rebuildChordIndex")
    public ModelAndView rebuildChordIndex(){
        ChordIndexer.scheduleRebuildChordIndexTask();
        return null;
    }
}
