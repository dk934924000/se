package com.NoviceTeam.SE.app;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

public class MatchForm implements Serializable {
    /**
     * Validation group for create user
     */
    public static interface MatchCreateGroup {
    }

    /**
     * Validation group for update user
     */
    public static interface MatchUpdateGroup {
    }

    /**
     * Validation group for delete user
     */
    public static interface MatchDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @Null(groups = { MatchCreateGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchDeleteGroup.class })
    @Min(0)
    private Integer id;

    @Null(groups = { MatchDeleteGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchCreateGroup.class })
    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ptime;

    @Null(groups = { MatchDeleteGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchCreateGroup.class })
    private String loc;

    @Null(groups = { MatchDeleteGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchCreateGroup.class })
    private String team1;

    @Null(groups = { MatchDeleteGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchCreateGroup.class })
    private String team2;


    @Null(groups = { MatchDeleteGroup.class })
    @NotNull(groups = { MatchUpdateGroup.class, MatchCreateGroup.class })
    private String result;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getPtime() {
        return ptime;
    }

    public void setPtime(Date ptime) {
        this.ptime=ptime;
    }


//    public String getPtime() {
//        return ptime;
//    }
//
//    public void setPtime(String ptime) {
//        this.ptime = ptime;
//    }

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

}
