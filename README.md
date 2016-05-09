# huxblog

### 简介
`jekyll` 静态博客的 `Java` 版本
主题是从 [黄玄](http://huangxuan.me/) 博客扒取的,是国人很喜欢的一套 `jekyll` 主题

### 相关技术
* Spinrg
* Spring MVC
* MyBatis
* My SQL
* Maven

### 修改说明
* 文章头部的图片改为css实现的纯色
* 后台使用富文本编辑器,不支持 markdown

### 使用说明
* fork 本项目 clone 到本地并修改 `src/main/resources/config.properties` 文件 (详见注释)
* 将 `init.sql` 导入到自己的数据库中
* 执行 `mvn tomcat7:run` 命令,在浏览器中访问 `http://127.0.0.1:8080/huxblog`
* 如果要部署到 tomcat 之类的中间件可以运行 `mvn package` 在 target 目录下会生成 `huxblog.war`

> 后台地址：`http://127.0.0.1:8080/huxblog/admin`, 需要使用 config.properties 中配置的用户名密码登录

### 截图

![图片描述](http://img.junbaor.com/20160509D2CFA6F79F69C7F309962789D8CCD6F8.png)
![图片描述](http://img.junbaor.com/20160509D6A117E95DEBA62FF63AAA104E57286A.png)
![图片描述](http://img.junbaor.com/20160509F6AE93D6A02AB81F876A72E851659075.png)
![图片描述](http://img.junbaor.com/20160509A299C7D0CD6EC80F51D5DC3AB193798A.png)
![图片描述](http://img.junbaor.com/201605099E7158C819A5A0DC789845D9816ACC8F.png)


