CREATE DATABASE huxblog DEFAULT CHARACTER SET utf8;

DROP TABLE IF EXISTS `huxblog_article`;

CREATE TABLE `huxblog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bm` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_sub` varchar(100) DEFAULT NULL,
  `content` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag` decimal(10,0) DEFAULT '0' COMMENT '0博客文章1个人简介',
  `theme` varchar(30) DEFAULT '#293696' COMMENT '文章头部颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `huxblog_article`(`id`,`bm`,`title`,`title_sub`,`content`,`create_date`,`tag`,`theme`) values (1,'3D9540497587418DA8787AC839829306','about页面',NULL,'<p>你可以在这里编辑一些介绍自己的文字。</p><p><br></p>','2016-05-06 17:25:15','1','#293696'),(2,'D757831311144077AA01D06B4D8246C7','Hello Word','第一篇博文','<p>如果你能看到这篇文章说明博客已经正确安装。</p>','2016-05-06 17:26:39','0','#293696');

DROP TABLE IF EXISTS `huxblog_article_tag`;

CREATE TABLE `huxblog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_bm` varchar(100) DEFAULT NULL,
  `tag_bm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `huxblog_article_tag`(`id`,`article_bm`,`tag_bm`) values (1,'D757831311144077AA01D06B4D8246C7','776A673066454E8C8F0329F1513C338B'),(2,'D757831311144077AA01D06B4D8246C7','A02DD40894F249C6A981C382E9295911');

DROP TABLE IF EXISTS `huxblog_tag`;

CREATE TABLE `huxblog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bm` varchar(100) DEFAULT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `huxblog_tag`(`id`,`bm`,`tag_name`) values (1,'776A673066454E8C8F0329F1513C338B','技术'),(2,'A02DD40894F249C6A981C382E9295911','入门');
