/*
 * @(#)HibernateUtil.java	1.0 2015/5/14
 *
 */
package com.rolex.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/14
 * version: 1.0
 */
public class HibernateUtil {

    private static SessionFactory sessionFactory;

    static{
        try {
            sessionFactory = new Configuration().configure("config/hibernate/hibernate.cfg.xml").buildSessionFactory();
        }catch (Throwable e){
            throw new ExceptionInInitializerError(e);
        }
    }

    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }

    public static void shutdown(){
        getSessionFactory().close();
    }
}
