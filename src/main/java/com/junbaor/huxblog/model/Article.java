package com.junbaor.huxblog.model;

import java.util.Date;
import java.util.List;

public class Article {
    private List<Tag> tagList;

    public List<Tag> getTagList() {
        return tagList;
    }

    public void setTagList(List<Tag> tagList) {
        this.tagList = tagList;
    }

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.bm
     *
     * @mbggenerated
     */
    private String bm;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.title
     *
     * @mbggenerated
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.title_sub
     *
     * @mbggenerated
     */
    private String titleSub;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.content
     *
     * @mbggenerated
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.create_date
     *
     * @mbggenerated
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.tag
     *
     * @mbggenerated
     */
    private Long tag;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column huxblog_article.theme
     *
     * @mbggenerated
     */
    private String theme;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.id
     *
     * @return the value of huxblog_article.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.id
     *
     * @param id the value for huxblog_article.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.bm
     *
     * @return the value of huxblog_article.bm
     *
     * @mbggenerated
     */
    public String getBm() {
        return bm;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.bm
     *
     * @param bm the value for huxblog_article.bm
     *
     * @mbggenerated
     */
    public void setBm(String bm) {
        this.bm = bm == null ? null : bm.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.title
     *
     * @return the value of huxblog_article.title
     *
     * @mbggenerated
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.title
     *
     * @param title the value for huxblog_article.title
     *
     * @mbggenerated
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.title_sub
     *
     * @return the value of huxblog_article.title_sub
     *
     * @mbggenerated
     */
    public String getTitleSub() {
        return titleSub;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.title_sub
     *
     * @param titleSub the value for huxblog_article.title_sub
     *
     * @mbggenerated
     */
    public void setTitleSub(String titleSub) {
        this.titleSub = titleSub == null ? null : titleSub.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.content
     *
     * @return the value of huxblog_article.content
     *
     * @mbggenerated
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.content
     *
     * @param content the value for huxblog_article.content
     *
     * @mbggenerated
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.create_date
     *
     * @return the value of huxblog_article.create_date
     *
     * @mbggenerated
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.create_date
     *
     * @param createDate the value for huxblog_article.create_date
     *
     * @mbggenerated
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.tag
     *
     * @return the value of huxblog_article.tag
     *
     * @mbggenerated
     */
    public Long getTag() {
        return tag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.tag
     *
     * @param tag the value for huxblog_article.tag
     *
     * @mbggenerated
     */
    public void setTag(Long tag) {
        this.tag = tag;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column huxblog_article.theme
     *
     * @return the value of huxblog_article.theme
     *
     * @mbggenerated
     */
    public String getTheme() {
        return theme;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column huxblog_article.theme
     *
     * @param theme the value for huxblog_article.theme
     *
     * @mbggenerated
     */
    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }
}