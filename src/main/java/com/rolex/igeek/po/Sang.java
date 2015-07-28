/*
 * @(#)Sang.java	1.0 2015/5/11
 *
 */
package com.rolex.igeek.po;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * 歌曲.
 * User: rolex
 * Date: 2015/5/11
 * version: 1.0
 */
@Entity
@Table(name = "igeek_sang")
public class Sang implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "sang_id", nullable = true, insertable = false, updatable = false)
    private Key key;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "sang_id", nullable = false, insertable = false, updatable = false)
    private Set<Audio> audios;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "sang_id", nullable = false, insertable = false, updatable = false)
    private Set<Video> videos;

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

    public Key getKey() {
        return key;
    }

    public void setKey(Key key) {
        this.key = key;
    }

    public Set<Audio> getAudios() {
        return audios;
    }

    public void setAudios(Set<Audio> audios) {
        this.audios = audios;
    }

    public Set<Video> getVideos() {
        return videos;
    }

    public void setVideos(Set<Video> videos) {
        this.videos = videos;
    }
}
