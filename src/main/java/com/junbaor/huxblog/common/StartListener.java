package com.junbaor.huxblog.common;

import com.junbaor.huxblog.model.Tag;
import com.junbaor.huxblog.service.MainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * Created by junbaor on 2016/5/5.
 */

public class StartListener implements ServletContextListener {
    private static final Logger logger = LoggerFactory.getLogger(StartListener.class);

    private MainService mainService;

    private CacheManager cacheManager;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
        mainService = (MainService) webApplicationContext.getBean("mainService");
        cacheManager = (CacheManager) webApplicationContext.getBean("cacheManager");
        logger.debug("StartListener.contextInitialized()...");
        ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("duoshuoUserName", Constant.duoshuoUserName);
        servletContext.setAttribute("meDescrption", Constant.meDescrption);
        servletContext.setAttribute("meEmail", Constant.meEmail);
        servletContext.setAttribute("blogTitle", Constant.blogTitle);
        servletContext.setAttribute("seoTitle", Constant.seoTitle);
        servletContext.setAttribute("seoDescription", Constant.seoDescription);
        servletContext.setAttribute("seoKeyword", Constant.seoKeyword);
        servletContext.setAttribute("baiduId", Constant.baiduId);
        servletContext.setAttribute("meHeadImg", Constant.meHeadImg);
        servletContext.setAttribute("zhihu", Constant.zhihu);
        servletContext.setAttribute("weibo", Constant.weibo);
        servletContext.setAttribute("github", Constant.github);
        servletContext.setAttribute("meUserName", Constant.meUserName);
        servletContext.setAttribute("mePassword", Constant.mePassword);
        List<Tag> tagAll = mainService.getTagAll();
        cacheManager.add(CacheManager.CACHE_TAG, tagAll);
        servletContext.setAttribute(CacheManager.CACHE_TAG, tagAll);
        logger.debug("标签缓存完成");
        logger.debug("StartListener.contextInitialized()...  end");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        logger.debug("StartListener.contextDestroyed()...");
    }

    public MainService getMainService() {
        return mainService;
    }

    public void setMainService(MainService mainService) {
        this.mainService = mainService;
    }

    public CacheManager getCacheManager() {
        return cacheManager;
    }

    public void setCacheManager(CacheManager cacheManager) {
        this.cacheManager = cacheManager;
    }

}
