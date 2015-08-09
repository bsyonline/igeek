/*
 * @(#)Log.java	1.0 2015/8/9
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/8/9
 * version: 1.0
 */
@Entity
@Table(name="sys_log")
public class Log {

    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "user_id")
    private Integer userId;
    private String username;
    private String ip;
    private String op;
    @Column(name = "op_id")
    private String opId;
    @Column(name = "op_obj")
    private String obj;
    @Column(name = "op_time")
    private Date opTime;
    private String memo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getOpId() {
        return opId;
    }

    public void setOpId(String opId) {
        this.opId = opId;
    }

    public String getObj() {
        return obj;
    }

    public void setObj(String obj) {
        this.obj = obj;
    }

    public Date getOpTime() {
        return opTime;
    }

    public void setOpTime(Date opTime) {
        this.opTime = opTime;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}
