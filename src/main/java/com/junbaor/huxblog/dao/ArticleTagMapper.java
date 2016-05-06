package com.junbaor.huxblog.dao;

import com.junbaor.huxblog.model.ArticleTag;
import com.junbaor.huxblog.model.ArticleTagExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleTagMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int countByExample(ArticleTagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int deleteByExample(ArticleTagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int insert(ArticleTag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int insertSelective(ArticleTag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    List<ArticleTag> selectByExample(ArticleTagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    ArticleTag selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") ArticleTag record, @Param("example") ArticleTagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") ArticleTag record, @Param("example") ArticleTagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(ArticleTag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_article_tag
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(ArticleTag record);
}