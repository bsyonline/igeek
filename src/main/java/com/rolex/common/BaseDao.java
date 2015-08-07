/*
 * @(#)BaseDao.java	1.0 2015/5/17
 *
 */
package com.rolex.common;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/17
 * version: 1.0
 */
@Repository
public class BaseDao extends HibernateDaoSupport {

    public void executeBySql(final String sql,final Object... o){
        this.getHibernateTemplate().execute(new HibernateCallback<Object>() {
            @Override
            public Object doInHibernate(Session session) throws HibernateException, SQLException {
                Transaction tr = session.beginTransaction();
                SQLQuery query = session.createSQLQuery(sql);
                for(int i=0;i<o.length;i++) {
                    query.setParameter(i,o[i]);
                }
                query.executeUpdate();
                tr.commit();
                return null;
            }
        });
    }
}
