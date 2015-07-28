/*
 * @(#)Category.java	1.0 2015/5/18
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * 分类，如C和弦的转位和弦.
 * User: rolex
 * Date: 2015/5/18
 * version: 1.0
 */
@Entity
@Table(name = "igeek_category")
public class Category implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "category")
    private Set<Chord> chords;

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

    public Set<Chord> getChords() {
        return chords;
    }

    public void setChords(Set<Chord> chords) {
        this.chords = chords;
    }
}
