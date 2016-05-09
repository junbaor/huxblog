package com.junbaor.huxblog.controller;

import com.junbaor.huxblog.common.AppUtils;
import com.junbaor.huxblog.common.CacheManager;
import com.junbaor.huxblog.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by junbaor on 2016/4/29.
 */
@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    private MainService mainService;

    @RequestMapping
    public Object index(Model model) {
        model.addAttribute("articleList", mainService.getArticleAll());
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model) {
        model.addAttribute("info", mainService.getInfo());
        return "about";
    }

    @RequestMapping("/tags")
    public String tags(Model model)
    {
        model.addAttribute("tagList", CacheManager.get(CacheManager.CACHE_TAG));
        return "tags";
    }

    @RequestMapping("/article/{id}")
    public String getAll(@PathVariable("id") String id, Model model) {
        if (AppUtils.isBlank(id)) {
            return "redirect:/";
        }
        model.addAttribute("article", mainService.getArticleOne(id));
        return "article";
    }

}
