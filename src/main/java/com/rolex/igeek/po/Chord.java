/*
 * @(#)Chord.java	1.0 2015/5/11
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 和弦.
 * User: rolex
 * Date: 2015/5/11
 * version: 1.0
 */
@Entity
@Table(name = "igeek_chord")
public class Chord implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    @Column(name = "`desc`")
    private String desc;
    private String icon;
    private String level;

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = true, insertable = true, updatable = true)
    private Category category;

    @ManyToOne
    @JoinColumn(name = "key_id", nullable = true, insertable = true, updatable = true)
    private Key key;

    public Chord() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
