package com.NoviceTeam.SE.domain.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@Entity
@Table(name = "playinfo")
public class Match implements Serializable {

    /**
     * serial version id.
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "ptime")
    @Temporal(TemporalType.DATE)
    private Date ptime;

    @Column(name = "loc")
    private String loc;

    @Column(name = "team1")
    private String team1;

    @Column(name = "team2")
    private String team2;

    @Column(name = "result")
    private String result;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getPtime() {
        return this.ptime;
    }

    public void setPtime(Date ptime) {
        this.ptime = ptime;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getTeam1() { return team1; }

    public void setTeam1(String team1) {
        this.team1 = team1;
    }

    public String getTeam2() { return team2; }

    public void setTeam2(String team2) {
        this.team2 = team2;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this,
                ToStringStyle.SHORT_PREFIX_STYLE);
    }
}
