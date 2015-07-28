/*
 * @(#)ChordDao.java	1.0 2015/5/17
 *
 */
package com.rolex.igeek.dao;

import com.rolex.common.BaseDao;
import com.rolex.igeek.po.Category;
import com.rolex.igeek.po.Key;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/17
 * version: 1.0
 */
@Repository
public class KeyDao extends BaseDao {

    public void save(Key key) {
        getHibernateTemplate().save(key);
    }

    public Key findById(int id) {
        return getHibernateTemplate().get(Key.class, id);
    }

    public void update(Key key) {
        getHibernateTemplate().update(key);
    }

    public void delete(Key key) {
        getHibernateTemplate().delete(key);
    }

    public List<Key> findAll() {
        return getHibernateTemplate().find("from Key k");
    }
}
