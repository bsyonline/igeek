package com.rolex.common;

import com.rolex.system.dao.DictDao;
import com.rolex.system.dao.MenuDao;
import com.rolex.system.po.Dict;
import com.rolex.system.po.Menu;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/6
 * version: 1.0
 */

public class InitListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        System.out.println("---------init load dict data----------");
        ApplicationContext act = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
        MenuDao menuDao = (MenuDao)act.getBean("menuDao");
        Map<Menu,List<Menu>> map = new TreeMap<Menu, List<Menu>>();
        List<Menu> parents = menuDao.findMenusByParent(0);
        if(parents != null && parents.size() > 0) {
            for (Menu m : parents) {
                List<Menu> children = menuDao.findMenusByParent(m.getId());
                map.put(m, children);
            }
            sce.getServletContext().setAttribute("MENU_MAP", map);
        }
        DictDao dictDao = (DictDao)act.getBean("dictDao");
        List<String> dicts = dictDao.findKeys();
        if(dicts != null && dicts.size() > 0) {
            Map<String, List<Dict>> dictMap = new TreeMap<String, List<Dict>>();
            for (String d : dicts) {
                List<Dict> ds = dictDao.findValues(d);
                dictMap.put(d, ds);
            }
            sce.getServletContext().setAttribute("DICT_MAP", dictMap);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
