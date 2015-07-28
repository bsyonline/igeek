/*
 * @(#)UserDao.java	1.0 2015/7/6
 *
 */
package com.rolex.system.dao;

import com.rolex.common.BaseDao;
import com.rolex.system.po.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/6
 * version: 1.0
 */
@Repository
public class UserDao extends BaseDao {

    public void save(User user) {
        getHibernateTemplate().save(user);
    }

    public List<User> findByName(String username) {
        return getHibernateTemplate().find("from User u where u.username='" + username + "'");
    }

    public void update(User user) {
        getHibernateTemplate().update(user);
    }

    public void delete(User user) {
        getHibernateTemplate().delete(user);
    }

    public User findById(int id) {
        return getHibernateTemplate().get(User.class, id);
    }

    public List<User> findAll() {
        return getHibernateTemplate().find("from User c");
    }
}
