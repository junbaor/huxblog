package com.junbaor.huxblog.service;


import com.junbaor.huxblog.common.AppUtils;
import com.junbaor.huxblog.common.CacheManager;
import com.junbaor.huxblog.dao.ArticleMapper;
import com.junbaor.huxblog.dao.ArticleTagMapper;
import com.junbaor.huxblog.dao.TagMapper;
import com.junbaor.huxblog.model.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by junbaor on 2016/5/5.
 */
@Service
public class MainService {

    private static final Logger logger = LoggerFactory.getLogger(MainService.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private CacheManager cacheManager;
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private TagMapper tagMapper;
    @Autowired
    private ArticleTagMapper articleTagMapper;

    public List<Tag> getTagAll() {
        return tagMapper.selectByExample(null);
    }

    public int saveInfo(Article article) {
        ArticleExample example = new ArticleExample();
        example.createCriteria().andTagEqualTo(Long.valueOf(1));
        List<Article> articles = articleMapper.selectByExample(example);
        articleMapper.selectByExample(example);
        if (articles.size() == 0) {
            article.setBm(AppUtils.getUUID());
            article.setTitle("about页面");
            article.setTag(Long.valueOf(1));
            return articleMapper.insertSelective(article);
        } else {
            article.setId(articles.get(0).getId());
            return articleMapper.updateByPrimaryKeySelective(article);
        }
    }

    public Article getInfo() {
        ArticleExample example = new ArticleExample();
        example.createCriteria().andTagEqualTo(Long.valueOf(1));
        return articleMapper.selectByExample(example).get(0);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public int saveArticle(Article article, String tags) {
        article.setBm(AppUtils.getUUID());
        int i = articleMapper.insertSelective(article);
        if (AppUtils.isNotBlank(tags)) {
            List<Tag> tagList = tagMapper.selectByExample(null);
            List<String> tagNames = new ArrayList<String>();
            for (Tag tag : tagList) {
                tagNames.add(tag.getTagName());
            }
            String[] split = tags.split(",");
            for (String s : split) {
                if (!tagNames.contains(s)) {
                    Tag tag = new Tag();
                    tag.setBm(AppUtils.getUUID());
                    tag.setTagName(s);
                    tagMapper.insertSelective(tag);
                }
            }
            TagExample tagExample = new TagExample();
            tagExample.createCriteria().andTagNameIn(Arrays.asList(split));
            List<Tag> list = tagMapper.selectByExample(tagExample);
            for (Tag tag : list) {
                ArticleTag articleTag = new ArticleTag();
                articleTag.setTagBm(tag.getBm());
                articleTag.setArticleBm(article.getBm());
                articleTagMapper.insertSelective(articleTag);
            }
        }
        return i;
    }

    public Article getArticleOne(String id) {
        ArticleExample example = new ArticleExample();
        example.createCriteria().andIdEqualTo(Integer.valueOf(id));
        return articleMapper.selectByExample(example).get(0);
    }


    public List<Article> getArticleAll() {
        ArticleExample example = new ArticleExample();
        example.createCriteria().andTagNotEqualTo(Long.valueOf(1));
        example.setOrderByClause("create_date desc");
        return articleMapper.selectByExample(example);
    }
}
