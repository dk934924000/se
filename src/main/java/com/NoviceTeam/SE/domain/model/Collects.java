package com.NoviceTeam.SE.domain.model;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "collectinfo")
public class Collects {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    @Size(max = 100)
    private String name;

    @NotNull
    @Length(min = 1, max = 100)
    @Column(name = "type")
    private String type;

    @Column(name = "oid")
    private Long oid;

    @Column(name = "oname")
    @Size(max = 100)
    private String oname;

    @Column(name = "time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;

//
//    @Column(name = "image")
//    @OneToOne
//    @Lob
//    private Image image;


//    @Column(name = "category")
//    @ManyToMany
//    private List<Category> categoryList;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getOid() {
        return oid;
    }

    public void setOid(Long oid) {
        this.oid = oid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

}
