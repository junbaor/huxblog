package com.junbaor.huxblog.common;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * Created by junbaor on 2016/4/29.
 */
@Component
public class Constant {
    public static String duoshuoUserName;
    public static String meDescrption;
    public static String meEmail;
    public static String meHeadImg;
    public static String blogTitle;
    public static String seoTitle;
    public static String seoDescription;
    public static String seoKeyword;
    public static String baiduId;

    public static String zhihu;
    public static String weibo;
    public static String github;
    public static String meUserName;
    public static String mePassword;

    @Value("${me.password}")
    public void setMePassword(String mePassword) {
        Constant.mePassword = mePassword;
    }

    @Value("${me.username}")
    public void setMeUserName(String meUserName) {
        Constant.meUserName = meUserName;
    }

    @Value("${zhihu}")
    public void setZhihu(String zhihu) {
        Constant.zhihu = zhihu;
    }

    @Value("${weibo}")
    public void setWeibo(String weibo) {
        Constant.weibo = weibo;
    }

    @Value("${github}")
    public void setGithub(String github) {
        Constant.github = github;
    }

    @Value("${me.headimg}")
    public void setMeHeadImg(String meHeadImg) {
        Constant.meHeadImg = meHeadImg;
    }

    @Value("${baidu.id}")
    public void setBaiduId(String baiduId) {
        Constant.baiduId = baiduId;
    }

    @Value("${duoshuo.username}")
    public void setDuoshuoUserName(String duoshuoUserName) {
        Constant.duoshuoUserName = duoshuoUserName;
    }

    @Value("${me.description}")
    public void setMeDescrption(String meDescrption) {
        Constant.meDescrption = meDescrption;
    }

    @Value("${me.email}")
    public void setMeEmail(String meEmail) {
        Constant.meEmail = meEmail;
    }

    @Value("${blog.title}")
    public void setBlogTitle(String blogTitle) {
        Constant.blogTitle = blogTitle;
    }

    @Value("${seo.title}")
    public void setSeoTitle(String seoTitle) {
        Constant.seoTitle = seoTitle;
    }

    @Value("${seo.description}")
    public void setSeoDescription(String seoDescription) {
        Constant.seoDescription = seoDescription;
    }

    @Value("${seo.keyword}")
    public void setSeoKeyword(String seoKeyword) {
        Constant.seoKeyword = seoKeyword;
    }
}
