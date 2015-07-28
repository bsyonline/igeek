/*
 * @(#)ServiceFactory.java	1.0 2015/7/16
 *
 */
package com.rolex.common;

import com.rolex.igeek.dao.ChordDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
public class ServiceFactory {

    private static ApplicationContext context = null;

    static {
        context = new ClassPathXmlApplicationContext("config/spring/beans.xml");
    }

    public static ChordDao getChordDao() {
        return (ChordDao) context.getBean("chordDao");
    }

}
