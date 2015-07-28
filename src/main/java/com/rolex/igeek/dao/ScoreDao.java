/*
 * @(#)ScoreDao.java	1.0 2015/5/17
 *
 */
package com.rolex.igeek.dao;

import com.rolex.common.BaseDao;
import com.rolex.igeek.po.Score;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/17
 * version: 1.0
 */
@Repository
public class ScoreDao extends BaseDao {

    public void save(Score score) {
        getHibernateTemplate().save(score);
    }

    public Score findById(int id) {
        return getHibernateTemplate().get(Score.class, id);
    }

    public List<Score> findAll() {
        return getHibernateTemplate().find("from Score c");
    }

    public void update(Score score) {
        getHibernateTemplate().update(score);
    }

    public void delete(Score score) {
        getHibernateTemplate().delete(score);
    }

    public Integer findMaxId() {
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createSQLQuery("select max(id) from igeek_score");
        return (Integer) query.uniqueResult();
    }

    public List<Score> findRange(Integer from, Integer to) {
        if (from < 0) {
            throw new IllegalArgumentException("The fromID < 0 is not allowed.");
        }
        if (to < from) {
            throw new IllegalArgumentException("toID < fromID is not allowed.");
        }
        return getHibernateTemplate().find("from Score c where c.id>=" + from + " and c.id <= " + to + " order by c.id asc ");
    }
}
