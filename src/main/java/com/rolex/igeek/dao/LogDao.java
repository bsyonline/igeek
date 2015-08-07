/*
 * @(#)LogDao.java	1.0 2015/8/7
 *
 */
package com.rolex.igeek.dao;

import com.rolex.common.BaseDao;
import com.rolex.interceptor.LogInterceptor;
import com.rolex.system.po.User;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/8/7
 * version: 1.0
 */
@Repository
public class LogDao extends BaseDao {

    public void log(User user, String ip, String obj, String op, Integer id, String memo) {
        executeBySql("insert into sys_log (user_id,ip,username,op_time,op,op_obj,oid,memo) values (?,?,?,?,?,?,?,?)",
                new Object[]{user.getId(), ip, user.getUsername(), new Date(), op, obj, id, memo});
    }
}
