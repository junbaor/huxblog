package com.junbaor.huxblog.controller;

import com.junbaor.huxblog.common.Constant;
import com.junbaor.huxblog.model.Article;
import com.junbaor.huxblog.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by junbaor on 2016/5/5.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private MainService mainService;

    @RequestMapping
    public String index() {
        return "admin/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "admin/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Object doLogin(String username, String password) {
        if (username.equals(Constant.meUserName) && password.equals(Constant.mePassword)) {
            return 1;
        }
        return 0;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public Object save(Article article, String tags) {
        int i = mainService.saveArticle(article, tags);
        return i;
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(Model model) {
        model.addAttribute("content", mainService.getInfo().getContent());
        return "admin/info";
    }

    @RequestMapping(value = "/info", method = RequestMethod.POST)
    @ResponseBody
    public Object doInfo(Article article) {
        return mainService.saveInfo(article);
    }


}
