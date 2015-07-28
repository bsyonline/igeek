/*
 * @(#)MenuDao.java	1.0 2015/7/3
 *
 */
package com.rolex.system.dao;

import com.rolex.common.BaseDao;
import com.rolex.system.po.Dict;
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
public class DictDao extends BaseDao {

    public List<String> findKeys() {
        return getHibernateTemplate().find("select distinct d.name from Dict d");
    }

    public List<Dict> findValues(String key) {
        return getHibernateTemplate().find("from Dict d where d.name='" + key + "'");
    }
}
