/*
 * @(#)Menu.java	1.0 2015/7/3
 *
 */
package com.rolex.system.po;

import javax.persistence.*;
import java.util.Comparator;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/3
 * version: 1.0
 */
@Entity
@Table(name = "sys_menu")
public class Menu implements Comparable{

    @Id
    @GeneratedValue
    int id;
    String title;
    String url;
    String icon;
    @Column(name="`menu_order`")
    Integer order;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "pid", nullable = true, insertable = false, updatable = false)
    Menu parent;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Menu getParent() {
        return parent;
    }

    public void setParent(Menu parent) {
        this.parent = parent;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public int compareTo(Object o) {
        return this.order-((Menu)o).order;
    }
}
