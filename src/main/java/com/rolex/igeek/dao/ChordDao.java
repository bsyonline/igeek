/*
 * @(#)ChordDao.java	1.0 2015/5/17
 *
 */
package com.rolex.igeek.dao;

import com.rolex.common.BaseDao;
import com.rolex.igeek.po.Chord;
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
public class ChordDao extends BaseDao {

    public void save(Chord chord) {
        getHibernateTemplate().save(chord);
    }

    public Chord findById(int id) {
        return getHibernateTemplate().get(Chord.class, id);
    }

    public List<Chord> findAll() {
        return getHibernateTemplate().find("from Chord c");
    }

    public void update(Chord chord) {
        getHibernateTemplate().update(chord);
    }

    public void delete(Chord chord) {
        getHibernateTemplate().delete(chord);
    }

    public Integer findMaxId() {
        Session session = getHibernateTemplate().getSessionFactory().openSession();
        Query query = session.createSQLQuery("select max(id) from igeek_chord");
        return (Integer) query.uniqueResult();
    }

    public List<Chord> findRange(Integer from, Integer to) {
        if (from < 0) {
            throw new IllegalArgumentException("The fromID < 0 is not allowed.");
        }
        if (to < from) {
            throw new IllegalArgumentException("toID < fromID is not allowed.");
        }
        return getHibernateTemplate().find("from Chord c where c.id>=" + from + " and c.id <= " + to + " order by c.id asc ");
    }
}
