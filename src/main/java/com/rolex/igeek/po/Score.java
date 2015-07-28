/*
 * @(#)Score.java	1.0 2015/5/11
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * 歌谱.
 * User: rolex
 * Date: 2015/5/11
 * version: 1.0
 */
@Entity
@Table(name = "igeek_score")
public class Score implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private int pageCount;
    private String memo;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "score")
    private List<ScorePage> pages;

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

    public List<ScorePage> getPages() {
        return pages;
    }

    public void setPages(List<ScorePage> pages) {
        this.pages = pages;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}
