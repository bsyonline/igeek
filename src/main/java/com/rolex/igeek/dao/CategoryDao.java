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
public class CategoryDao extends BaseDao{

    public void save(Category category){
        getHibernateTemplate().save(category);
    }

    public void update(Category category){
        getHibernateTemplate().update(category);
    }

    public void delete(Category category){
        getHibernateTemplate().delete(category);
    }

    public Category findById(int id){
        return getHibernateTemplate().get(Category.class,id);
    }

    public List<Category> findAll(){
        return getHibernateTemplate().find("from Category c");
    }
}
