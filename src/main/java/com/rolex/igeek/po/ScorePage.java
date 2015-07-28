/*
 * @(#)ScorePage.java	1.0 2015/5/11
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 页.
 * User: rolex
 * Date: 2015/5/11
 * version: 1.0
 */
@Entity
@Table(name = "igeek_score_page")
public class ScorePage implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private String path;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "score_id")
    private Score score;

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

    public Score getScore() {
        return score;
    }

    public void setScore(Score score) {
        this.score = score;
    }

}
