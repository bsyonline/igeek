/*
 * @(#)MenuDao.java	1.0 2015/7/3
 *
 */
package com.rolex.system.dao;

import com.rolex.common.BaseDao;
import com.rolex.system.po.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/3
 * version: 1.0
 */
@Repository
public class MenuDao extends BaseDao {

    public List<Menu> findMenusByParent(int pid) {
        if (pid == 0) {
            return getHibernateTemplate().find("from Menu m where m.parent is null order by m.order asc");
        } else {
            return getHibernateTemplate().find("from Menu m where m.parent.id=" + pid + " order by m.order asc");
        }
    }
}
