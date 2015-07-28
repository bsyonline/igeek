/*
 * @(#)Dict.java	1.0 2015/7/6
 *
 */
package com.rolex.system.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/6
 * version: 1.0
 */
@Entity
@Table(name = "sys_dict")
public class Dict {

    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String value;
    private String memo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}
