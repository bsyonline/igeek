/*
 * @(#)ScoreController.java	1.0 2015/6/30
 *
 */
package com.rolex.igeek.controller;

import com.rolex.igeek.dao.CategoryDao;
import com.rolex.igeek.dao.ScoreDao;
import com.rolex.igeek.dao.KeyDao;
import com.rolex.igeek.po.Category;
import com.rolex.igeek.po.Score;
import com.rolex.igeek.po.Key;
import com.rolex.igeek.po.ScorePage;
import com.rolex.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.net.SocketTimeoutException;
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
@RequestMapping("/score")
public class ScoreController {

    @Resource
    private ScoreDao scoreDao;

    @RequestMapping(value = "/addOrUpdate", method = RequestMethod.POST)
    public ModelAndView addOrUpdate(Score score, String[] scorePages, HttpServletRequest request) {
        //String realPath = request.getSession().getServletContext().getRealPath("/");
        List<ScorePage> list = new ArrayList<ScorePage>();
        if (scorePages != null && scorePages.length > 0) {
            for (String s : scorePages) {
                ScorePage scorePage = new ScorePage();
                scorePage.setName(s.substring(0, s.lastIndexOf("_")));
                scorePage.setPath("/upload/score/" + s);
                scorePage.setScore(score);
                list.add(scorePage);
            }
        }
        score.setPages(list);
        if (score.getId() == null) {
            scoreDao.save(score);

        } else {
            scoreDao.update(score);

        }

        if (scorePages != null && scorePages.length > 0) {
            String realPath = request.getSession().getServletContext().getRealPath("/");
            String tempPath = realPath + File.separator + "upload" + File.separator + "temp";
            String savePath = realPath + File.separator + "upload" + File.separator + "score";

            for (String s : scorePages) {
                FileUtil.moveFile(tempPath + "/" + s, savePath);
                FileUtil.removeFile(tempPath + "/" + s);
            }
        }
        return new ModelAndView("redirect:/score/list");
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView add() {
        return new ModelAndView("/jsp/score/add");
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable Integer id) {
        Score score = scoreDao.findById(id);
        return new ModelAndView("/jsp/score/add", "score", score);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list() {
        List<Score> list = scoreDao.findAll();
        return new ModelAndView("/jsp/score/list", "list", list);
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Integer id) {
        Score score = scoreDao.findById(id);
        scoreDao.delete(score);

        return new ModelAndView("redirect:/score/list");
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable Integer id) {
        Score score = scoreDao.findById(id);
        return new ModelAndView("/jsp/score/view", "score", score);
    }
}
