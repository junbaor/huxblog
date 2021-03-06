package com.junbaor.huxblog.dao;

import com.junbaor.huxblog.model.Tag;
import com.junbaor.huxblog.model.TagExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TagMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int countByExample(TagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int deleteByExample(TagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int insert(Tag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int insertSelective(Tag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    List<Tag> selectByExample(TagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    Tag selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") Tag record, @Param("example") TagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") Tag record, @Param("example") TagExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Tag record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table huxblog_tag
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Tag record);
}