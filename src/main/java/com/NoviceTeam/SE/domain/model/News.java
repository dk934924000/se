package com.NoviceTeam.SE.domain.model;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "newsinfo")
public class News {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long Id;

    @Column(name = "heading")
    @Size(max = 100)
    private String heading;

    @Column(name = "lead")
    @Size(max = 5000)
    private String lead;

    @NotNull
    @Length(min = 1, max = 100)
    @Column(name = "type")
    private String contentType;

    @Column(name = "length")
    private Long contentLength;

    @Column(name = "time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date localDateTime;

    @Column(name = "i_content")
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private byte[] content;
//
//    @Column(name = "image")
//    @OneToOne
//    @Lob
//    private Image image;

    @Column(name = "n_text")
    @Size(max = 10000)
    private String text;

    @Column(name = "author")
    private String Author;

    @Column(name="i_name")
    private String iname;

//    @Column(name = "category")
//    @ManyToMany
//    private List<Category> categoryList;

    @Column(name = "visits")
    private int visits;

    public String getIname() {
        return iname;
    }

    public void setIname(String iname) {
        this.iname = iname;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getHeading() {
        return heading;
    }

    public void setHeading(String heading) {
        this.heading = heading;
    }

    public String getLead() {
        return lead;
    }

    public void setLead(String lead) {
        this.lead = lead;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public Long getContentLength() {
        return contentLength;
    }

    public void setContentLength(Long contentLength) {
        this.contentLength = contentLength;
    }

    public Date getLocalDateTime() {
        return localDateTime;
    }

    public void setLocalDateTime(Date localDateTime) {
        this.localDateTime = localDateTime;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        Author = author;
    }

    public int getVisits() {
        return visits;
    }

    public void setVisits(int visits) {
        this.visits = visits;
    }
}
