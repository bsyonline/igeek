/*
 * @(#)Vedio.java	1.0 2015/5/11
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/11
 * version: 1.0
 */
@Entity
@Table(name = "igeek_video")
public class Video implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private String path;
    private String desc;
    private String author;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "sang_id", nullable = false, insertable = false, updatable = false)
    private Sang sang;

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

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Sang getSang() {
        return sang;
    }

    public void setSang(Sang sang) {
        this.sang = sang;
    }
}
