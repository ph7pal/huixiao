DROP TABLE IF EXISTS `pre_ads`;
CREATE TABLE `pre_ads` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL default '',
  `attachid` varchar(255) NOT NULL default '',
  `width` varchar(10) NOT NULL default '',
  `height` varchar(10) NOT NULL default '',
  `description` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `start_time` int(10) unsigned NOT NULL default '0',
  `expired_time` int(10) unsigned NOT NULL default '0',
  `position` char(40) NOT NULL default '',
  `order` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  `classify` char(16) NOT NULL,
  `uid` int(11) NOT NULL,
  `system` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `pre_ads` VALUES('9','全屏展示三','','23','','','','0','0','0','main','0','1','1397969886','flash','2','1');
INSERT INTO `pre_ads` VALUES('11','全屏展示一','','28','','','','0','0','0','main','0','1','1397997426','txt','2','1');
INSERT INTO `pre_ads` VALUES('12','xdfdfsdf','','29','','','','0','0','0','topbar','0','1','1398344520','flash','2','1');

DROP TABLE IF EXISTS `pre_album`;
CREATE TABLE `pre_album` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL default '0',
  `postid` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `classify` char(16) NOT NULL,
  `order` int(11) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  `reply_allow` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `pre_album` VALUES('5','2','0','hehehe','hehehehehehehe','page','0','1','1398002648','1');

DROP TABLE IF EXISTS `pre_attachments`;
CREATE TABLE `pre_attachments` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `fileDesc` varchar(255) NOT NULL,
  `fileSize` char(32) NOT NULL,
  `width` smallint(5) unsigned NOT NULL,
  `height` smallint(5) unsigned NOT NULL,
  `classify` varchar(255) NOT NULL,
  `covered` tinyint(1) NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `cTime` int(11) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `logid` (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO `pre_attachments` VALUES('27','2','5','5353d6df103b0.jpg','5353d6df103b0.jpg','','0','0','album','0','0','1398003423','1');
INSERT INTO `pre_attachments` VALUES('25','2','5','5353d6da58298.jpg','5353d6da58298.jpg','','0','0','album','0','0','1398003418','1');
INSERT INTO `pre_attachments` VALUES('26','2','5','5353d6dcb1235.jpg','5353d6dcb1235.jpg','','0','0','album','0','0','1398003420','1');
INSERT INTO `pre_attachments` VALUES('18','2','31','5347fd9417786.jpg','5347fd9417786.jpg','','0','0','coverimg','0','0','1397226900','3');
INSERT INTO `pre_attachments` VALUES('19','2','35','534a02153194e.jpg','534a02153194e.jpg','','0','0','coverimg','0','0','1397359125','1');
INSERT INTO `pre_attachments` VALUES('20','2','34','534a71642e307.jpg','534a71642e307.jpg','','0','0','coverimg','0','0','1397387620','1');
INSERT INTO `pre_attachments` VALUES('21','2','2','534d3446cc1ad.jpg','534d3446cc1ad.jpg','','0','0','logo','0','0','1397568582','1');
INSERT INTO `pre_attachments` VALUES('23','2','9','53535901aa75c.jpg','53535901aa75c.jpg','','0','0','ads','0','0','1397971201','1');
INSERT INTO `pre_attachments` VALUES('28','2','11','53590b1288689.jpg','53590b1288689.jpg','','0','0','ads','0','0','1398344466','1');
INSERT INTO `pre_attachments` VALUES('29','2','12','53590b524bc4c.jpg','53590b524bc4c.jpg','','0','0','ads','0','0','1398344530','1');
INSERT INTO `pre_attachments` VALUES('30','2','39','535917aac03e0.jpg','535917aac03e0.jpg','','0','0','posts','0','0','1398347690','3');
INSERT INTO `pre_attachments` VALUES('31','2','38','535919d78cca0.jpg','535919d78cca0.jpg','','0','0','posts','0','0','1398348247','3');
INSERT INTO `pre_attachments` VALUES('32','2','40','53591b12092c3.jpg','53591b12092c3.jpg','','0','0','posts','0','0','1398348562','3');
INSERT INTO `pre_attachments` VALUES('33','2','40','53591c2e5b606.jpg','53591c2e5b606.jpg','','0','0','posts','0','0','1398348846','3');
INSERT INTO `pre_attachments` VALUES('34','2','40','53591c7ca8179.jpg','53591c7ca8179.jpg','','0','0','posts','0','0','1398348924','3');
INSERT INTO `pre_attachments` VALUES('35','2','40','53591d941eacb.jpg','53591d941eacb.jpg','','0','0','posts','0','0','1398349204','3');

DROP TABLE IF EXISTS `pre_columns`;
CREATE TABLE `pre_columns` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `belongid` int(10) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `title` varchar(100) NOT NULL,
  `second_title` varchar(100) NOT NULL default '',
  `classify` char(32) NOT NULL default '',
  `position` char(32) NOT NULL,
  `url` varchar(255) NOT NULL default '',
  `attachid` int(10) unsigned NOT NULL default '0',
  `order` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `cTime` int(10) unsigned NOT NULL default '0',
  `system` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO `pre_columns` VALUES('21','0','zhan shi ','展示','','logo','topbar','','0','0','0','1','1397142680','0');
INSERT INTO `pre_columns` VALUES('22','0','liu yan ','留言','','page','topbar','','0','0','0','1','1397142710','0');
INSERT INTO `pre_columns` VALUES('23','0','guan yu wo men ','关于我们','','page','topbar','','0','0','0','1','1397142728','0');
INSERT INTO `pre_columns` VALUES('20','0','huo dong ','活动','','page','topbar','','0','0','0','1','1396705594','0');
INSERT INTO `pre_columns` VALUES('24','0','cai dan ','菜单','','thumb','topbar','','0','0','0','1','1397142752','0');
INSERT INTO `pre_columns` VALUES('25','0','shi yong shui ming ','使用说明','','page','topbar','','0','0','0','1','1397142761','0');
INSERT INTO `pre_columns` VALUES('26','0','zhan shi ','展示','','thumb','topbar','','0','0','0','1','1397221924','1');
INSERT INTO `pre_columns` VALUES('27','0','guan yu wo men ','关于我们','','page','topbar','','0','0','0','1','1397221976','1');
INSERT INTO `pre_columns` VALUES('28','0','xin wen dong tai ','新闻动态','','list','topbar','','0','0','0','1','1397357928','0');
INSERT INTO `pre_columns` VALUES('29','0','guan yu wo men ','关于我们','','page','main','','0','0','0','1','1398345421','1');
INSERT INTO `pre_columns` VALUES('30','0','re men zhan shi ','热门展示','','thumb','main','','0','0','0','1','1398345937','1');
INSERT INTO `pre_columns` VALUES('31','0','xin wen dong tai ','新闻动态','','list','main','','0','0','0','1','1398350048','1');

DROP TABLE IF EXISTS `pre_comments`;
CREATE TABLE `pre_comments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `logid` int(10) unsigned NOT NULL default '0',
  `uid` int(10) unsigned NOT NULL default '0',
  `nickname` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL default '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `answer_status` tinyint(1) NOT NULL,
  `answer_content` text,
  `client_ip` char(16) NOT NULL,
  `cTime` int(10) unsigned NOT NULL,
  `ip` char(16) NOT NULL,
  `classify` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `pre_comments` VALUES('1','32','2','','','第一条评论','1','0','','','1397364439','2130706433','posts');
INSERT INTO `pre_comments` VALUES('2','32','0','呵呵','','不带登录的','1','0','','','1397385312','2130706433','posts');
INSERT INTO `pre_comments` VALUES('3','32','2','','','很供电局搜救分束带结发点击发送动静佛山的卷发的设计费松岛枫发电机偶发吉萨东京佛的是减肥的风景是东风街道师父桑德菲杰欧式的减肥的是减肥是的范德萨金佛寺的封建时代飞桑德菲杰度搜封建时代飞','1','0','','','1397388166','2130706433','posts');
INSERT INTO `pre_comments` VALUES('4','32','0','','','Hdjjdjdjkdndjdndkdkdjdj','1','0','','','1397388911','-1062731417','posts');

DROP TABLE IF EXISTS `pre_config`;
CREATE TABLE `pre_config` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `value` text,
  `description` varchar(255) NOT NULL default '',
  `classify` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO `pre_config` VALUES('5','sitename','新灵旅行','','baseinfo');
INSERT INTO `pre_config` VALUES('6','shortTitle','带上新的生活去旅行','','baseinfo');
INSERT INTO `pre_config` VALUES('7','domain','http://www.newsoul.cn','','baseinfo');
INSERT INTO `pre_config` VALUES('8','address','重庆市江北观音桥','','siteinfo');
INSERT INTO `pre_config` VALUES('9','phone','023-12345678','','siteinfo');
INSERT INTO `pre_config` VALUES('10','email','admin@admin.com','','siteinfo');
INSERT INTO `pre_config` VALUES('11','beian','渝备12345678','','siteinfo');
INSERT INTO `pre_config` VALUES('12','copyright','2012-2013','','siteinfo');
INSERT INTO `pre_config` VALUES('13','baseurl','http://localhost/wifi/','','baseinfo');
INSERT INTO `pre_config` VALUES('14','version','Alpha 1.0','','baseinfo');
INSERT INTO `pre_config` VALUES('15','imgUploadNum','1','','upload');
INSERT INTO `pre_config` VALUES('16','imgMinWidth','300','','upload');
INSERT INTO `pre_config` VALUES('17','imgMinHeight','300','','upload');
INSERT INTO `pre_config` VALUES('18','imgAllowTypes','*.jpg;*.png;*.jpeg','','upload');
INSERT INTO `pre_config` VALUES('19','imgThumbSize','124,200,300,600,origin','','upload');
INSERT INTO `pre_config` VALUES('20','imgMaxSize','1024000','','upload');
INSERT INTO `pre_config` VALUES('21','imgQuality','80','','upload');
INSERT INTO `pre_config` VALUES('22','closeSite','1','','base');
INSERT INTO `pre_config` VALUES('23','mobile','1','','base');
INSERT INTO `pre_config` VALUES('24','userDefaultGroup','5','','base');
INSERT INTO `pre_config` VALUES('25','attachDir','http://localhost/acopy/attachments/','','base');
INSERT INTO `pre_config` VALUES('26','service_aim_cn','致力于提升客户品牌形象、实现客户商业目标!','','base');
INSERT INTO `pre_config` VALUES('27','service_aim_en','Commitment to enhance customer brand image,customer business goals!','','base');
INSERT INTO `pre_config` VALUES('28','perPageNum','10','','base');
INSERT INTO `pre_config` VALUES('29','logo','common/images/logo.png','','base');
INSERT INTO `pre_config` VALUES('30','closeSiteReason','系统正在维护中，请稍后再访问！','','base');
INSERT INTO `pre_config` VALUES('31','readLocalDir','C:\\\\AppServ\\\\www\\\\wifi\\\\protected/../attachments/','','base');
INSERT INTO `pre_config` VALUES('32','downloadLocalDir','C:\\\\AppServ\\\\www\\\\wifi\\\\protected/../attachments/','','base');
INSERT INTO `pre_config` VALUES('34','shopGroupId','5','','base');
INSERT INTO `pre_config` VALUES('33','noticeall','近期收到举报，有部分网站有不良信息，望各位店家及时处理！','','base');
INSERT INTO `pre_config` VALUES('35','forbidnotshop','1','','base');
INSERT INTO `pre_config` VALUES('36','validateEmail','0','','base');
INSERT INTO `pre_config` VALUES('37','adminGroupIds','Array','','base');

DROP TABLE IF EXISTS `pre_group_powers`;
CREATE TABLE `pre_group_powers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `gid` varchar(50) NOT NULL,
  `powers` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

INSERT INTO `pre_group_powers` VALUES('1','4','checksetting');
INSERT INTO `pre_group_powers` VALUES('2','4','setting');
INSERT INTO `pre_group_powers` VALUES('3','4','addcolumns');
INSERT INTO `pre_group_powers` VALUES('4','4','editcolumns');
INSERT INTO `pre_group_powers` VALUES('5','4','delcolumns');
INSERT INTO `pre_group_powers` VALUES('6','4','upload');
INSERT INTO `pre_group_powers` VALUES('7','4','editattachments');
INSERT INTO `pre_group_powers` VALUES('8','4','delattachments');
INSERT INTO `pre_group_powers` VALUES('9','4','edittags');
INSERT INTO `pre_group_powers` VALUES('10','4','deltags');
INSERT INTO `pre_group_powers` VALUES('11','4','editcomments');
INSERT INTO `pre_group_powers` VALUES('12','4','delcomments');
INSERT INTO `pre_group_powers` VALUES('13','5','checksetting');
INSERT INTO `pre_group_powers` VALUES('14','5','setting');
INSERT INTO `pre_group_powers` VALUES('15','5','addcolumns');
INSERT INTO `pre_group_powers` VALUES('16','5','editcolumns');
INSERT INTO `pre_group_powers` VALUES('17','5','delcolumns');
INSERT INTO `pre_group_powers` VALUES('18','5','addposts');
INSERT INTO `pre_group_powers` VALUES('19','5','editposts');
INSERT INTO `pre_group_powers` VALUES('20','5','delposts');
INSERT INTO `pre_group_powers` VALUES('21','5','addusergroup');
INSERT INTO `pre_group_powers` VALUES('22','5','editusergroup');
INSERT INTO `pre_group_powers` VALUES('23','5','delusergroup');
INSERT INTO `pre_group_powers` VALUES('24','5','addusers');
INSERT INTO `pre_group_powers` VALUES('25','5','editusers');
INSERT INTO `pre_group_powers` VALUES('26','5','delusers');
INSERT INTO `pre_group_powers` VALUES('27','5','addlink');
INSERT INTO `pre_group_powers` VALUES('28','5','editlink');
INSERT INTO `pre_group_powers` VALUES('29','5','dellink');
INSERT INTO `pre_group_powers` VALUES('30','5','addads');
INSERT INTO `pre_group_powers` VALUES('31','5','editads');
INSERT INTO `pre_group_powers` VALUES('32','5','delads');
INSERT INTO `pre_group_powers` VALUES('33','5','addalbum');
INSERT INTO `pre_group_powers` VALUES('34','5','editalbum');
INSERT INTO `pre_group_powers` VALUES('35','5','delalbum');
INSERT INTO `pre_group_powers` VALUES('36','5','upload');
INSERT INTO `pre_group_powers` VALUES('37','5','editattachments');
INSERT INTO `pre_group_powers` VALUES('38','5','delattachments');
INSERT INTO `pre_group_powers` VALUES('39','5','deluseraction');
INSERT INTO `pre_group_powers` VALUES('40','5','edittags');
INSERT INTO `pre_group_powers` VALUES('41','5','deltags');
INSERT INTO `pre_group_powers` VALUES('42','5','addcomments');
INSERT INTO `pre_group_powers` VALUES('43','5','editcomments');
INSERT INTO `pre_group_powers` VALUES('44','5','delcomments');
INSERT INTO `pre_group_powers` VALUES('45','5','addquestions');
INSERT INTO `pre_group_powers` VALUES('46','5','editquestions');
INSERT INTO `pre_group_powers` VALUES('47','5','delquestions');
INSERT INTO `pre_group_powers` VALUES('51','6','checksetting');

DROP TABLE IF EXISTS `pre_link`;
CREATE TABLE `pre_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `classify` char(32) NOT NULL,
  `attachid` int(10) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `order` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `cTime` int(10) unsigned NOT NULL default '0',
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `pre_link` VALUES('4','新灵旅行','http://newsoul.cn','txt','0','1','0','0','1397996291','0');

DROP TABLE IF EXISTS `pre_posts`;
CREATE TABLE `pre_posts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `colid` smallint(5) unsigned NOT NULL default '0',
  `uid` int(10) unsigned NOT NULL default '1',
  `nickname` varchar(30) NOT NULL default '',
  `author` varchar(100) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL default '',
  `name` char(50) NOT NULL default '',
  `albumid` int(11) NOT NULL,
  `title_style` varchar(255) NOT NULL default '',
  `seo_title` varchar(255) NOT NULL default '',
  `seo_description` varchar(255) NOT NULL default '',
  `seo_keywords` varchar(255) NOT NULL default '',
  `intro` mediumtext NOT NULL,
  `content` text NOT NULL,
  `copy_from` varchar(100) NOT NULL default '',
  `copy_url` varchar(255) NOT NULL default '',
  `redirect_url` varchar(255) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '1',
  `order` int(10) unsigned NOT NULL default '0',
  `reply_allow` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL,
  `last_update_time` int(10) unsigned NOT NULL default '0',
  `cTime` int(10) unsigned NOT NULL default '0',
  `attachid` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

INSERT INTO `pre_posts` VALUES('39','30','2','','','未编辑','','','0','','','','','德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞德辅道是否是的发生的发但是','<p>德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞<span style=\"line-height: 16.899999618530273px; white-space: normal;\">德辅道是否是的发生的发但是辅导费方式的发的说法的的所发生的反对法桑福德飞 的地方飞</span></span></span></span></span></span></span></span>反对法桑福德飞 的地方飞</p>','','','','2','0','1','1','0','1397995760','9348');
INSERT INTO `pre_posts` VALUES('31','21','2','','','吮指鸡','','','0','','','','','吮指鸡吮指鸡吮指鸡吮指鸡','<p>吮指鸡吮指鸡吮指鸡吮指鸡吮指鸡吮</p><p>指鸡吮<strong>指鸡吮指鸡吮指</strong></p><p>鸡吮指鸡吮指鸡吮指鸡吮指鸡</p>','','','','3','0','1','1','0','1397222270','18');
INSERT INTO `pre_posts` VALUES('32','22','2','','','这是留言板','','','0','','','','','','<p>如果您对我们有什么意见或建议</p><p>觉得覅绝地反击的</p><p>觉得丰盛的见风使舵发</p><p><br/></p>','','','','2','0','1','1','0','1397358115','0');
INSERT INTO `pre_posts` VALUES('33','24','2','','','宫保鸡丁','','','0','','','','','','<p>宫保鸡丁</p><p>15京东方的件封id就</p>','','','','6','0','1','1','0','1397358184','0');
INSERT INTO `pre_posts` VALUES('34','24','2','','','红烧肉','','','0','','','','','美味多汁，入口即化','<p>哈的佛剑分说的风景的开发就佛顶山经发局佛得角发生的福建省豆腐机京东福建省东方骄傲积分</p>','','','','33','0','1','1','0','1397358303','20');
INSERT INTO `pre_posts` VALUES('35','21','2','','','香辣鸡翅','','','0','','','','','','<p>这里是一些描述</p><p><br/></p>','','','','34','0','1','1','0','1397359106','19');
INSERT INTO `pre_posts` VALUES('36','20','2','','','参与有奖','','','0','','','','','','<p>凡是关注官方微博的即送一瓶可乐，送完即止。</p>','','','','1','0','0','1','0','1397394723','0');
INSERT INTO `pre_posts` VALUES('37','28','2','','','新闻动态一','','','0','','','','','','<p>新闻动态一新闻动态一新闻动态一新闻动态一新闻动态一</p><p>新闻动态一新闻动态一新闻动态一新闻动态一新闻动态一</p><p>新闻动态一新闻动态一新闻动态一新闻动态一新闻动态一</p><p>新闻动态一新闻动态一新闻动态一新闻动态一新闻动态一</p>','','','','2','0','1','1','0','1397397069','0');
INSERT INTO `pre_posts` VALUES('38','29','2','','','系统的关于我们','','','0','','','','','南豆腐豆腐家都是发觉得是 发后低负荷地方和地方适当的佛说的见风使舵发金佛寺的见风使舵方式丰盛的见风使舵丰盛的见风使舵积分说的','<p class=\"lead\" style=\"margin-bottom: 20px; font-size: 21px; line-height: 1.4; font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal;\">把任何按钮放入<code style=\"font-size: 19px;\">.btn-group</code>然后加入正确的菜单标记，就可以做成下拉菜单触发器。</p><div class=\"bs-callout bs-callout-danger\" style=\"margin: 20px 0px; padding: 20px; border-left-width: 3px; border-left-style: solid; border-color: rgb(238, 211, 215); background-color: rgb(253, 247, 247); font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 14px; line-height: 20px; white-space: normal;\"><h4 style=\"font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; color: rgb(185, 74, 72); margin-top: 0px; margin-bottom: 5px;\">插件需求</h4><p style=\"line-height: 2;\">按钮下拉菜单需要你的版本的Bootstrap的<a href=\"http://v3.bootcss.com/javascript/#dropdowns\">下拉菜单插件</a>。</p></div><h3 id=\"btn-dropdowns-single\" style=\"font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; color: rgb(51, 51, 51); white-space: normal;\">单按钮下拉菜单</h3><p style=\"margin-bottom: 10px; line-height: 2; font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 14px; white-space: normal;\">只要改变一些基本的标记，就能把按钮变成下拉菜单开关。</p><p class=\"lead\" style=\"margin-bottom: 20px; font-size: 21px; line-height: 1.4; font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal;\">把任何按钮放入<code style=\"font-size: 19px;\">.btn-group</code>然后加入正确的菜单标记，就可以做成下拉菜单触发器。</p><div class=\"bs-callout bs-callout-danger\" style=\"margin: 20px 0px; padding: 20px; border-left-width: 3px; border-left-style: solid; border-color: rgb(238, 211, 215); background-color: rgb(253, 247, 247); font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 14px; line-height: 20px; white-space: normal;\"><h4 style=\"font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; color: rgb(185, 74, 72); margin-top: 0px; margin-bottom: 5px;\">插件需求</h4><p style=\"line-height: 2;\">按钮下拉菜单需要你的版本的Bootstrap的<a href=\"http://v3.bootcss.com/javascript/#dropdowns\">下拉菜单插件</a>。</p></div><div class=\"bs-callout bs-callout-danger\" style=\"margin: 20px 0px; padding: 20px; border-left-width: 3px; border-left-style: solid; border-color: rgb(238, 211, 215); background-color: rgb(253, 247, 247); font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 14px; line-height: 20px; white-space: normal;\"><p style=\"line-height: 2;\">按钮下拉菜单需要你的版本的Bootstrap的<a href=\"http://v3.bootcss.com/javascript/#dropdowns\">下拉菜单插件</a></p></div><p class=\"lead\" style=\"margin-bottom: 20px; font-size: 21px; line-height: 1.4; font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal;\">把任何按钮放入<code style=\"font-size: 19px;\">.btn-group</code>然后加入正确的菜单标记，就可以做成下拉菜单触发器。</p><div class=\"bs-callout bs-callout-danger\" style=\"margin: 20px 0px; padding: 20px; border-left-width: 3px; border-left-style: solid; border-color: rgb(238, 211, 215); background-color: rgb(253, 247, 247); font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 14px; line-height: 20px; white-space: normal;\"><h4 style=\"font-family: ff-tisa-web-pro-1, ff-tisa-web-pro-2, &#39;Lucida Grande&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;Hiragino Sans GB&#39;, &#39;Hiragino Sans GB W3&#39;, &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; color: rgb(185, 74, 72); margin-top: 0px; margin-bottom: 5px;\">插件需求</h4><p style=\"line-height: 2;\">按钮下拉菜单需要你的版本的Bootstrap的<a href=\"http://v3.bootcss.com/javascript/#dropdowns\">下拉菜单插件</a></p></div><p><br/></p>','','','','8','0','1','1','0','1397971575','9349');
INSERT INTO `pre_posts` VALUES('40','30','2','','','未编辑2','','','0','','','','','如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。\r\n\r\n打心底觉得人性本恶的、有反骨的人极少。\r\n\r\n我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。\r\n\r\n我们本就善良，我们总希望彼此和一切都好。\r\n\r\n因为人生太短，人应该来不及变坏。','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1398348549','934d');
INSERT INTO `pre_posts` VALUES('41','30','2','','','未编辑','','','0','','','','','我们班昨天的家庭作业是写一个关于“梦中人”的小报告。\r\n\r\n今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。\r\n\r\n当我打开他的作业，就看见上面写着一个字：“你”。','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p><br/></p>','','','','1','0','1','1','0','1398349471','');
INSERT INTO `pre_posts` VALUES('42','30','2','','','未编辑4','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','4','0','1','1','0','1398349503','');
INSERT INTO `pre_posts` VALUES('43','30','2','','','未编辑5','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','2','0','1','1','0','1398349582','');
INSERT INTO `pre_posts` VALUES('44','31','2','','','新闻动态1','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1398350078','');
INSERT INTO `pre_posts` VALUES('45','31','2','','','关于重庆的轻轨是否方便及票价等信息','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆轻轨（单轨）和重庆地铁都是重庆轨道交通的重要组成部分，在重庆目前运营和动工的四条轨道交通线路为轨道1、2、3、6号线。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆市轨道交通实行一人一票制，乘客每次乘车从刷卡入站到出站，在站时限不得超过180分钟，换乘最高票价9元。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">1号线：东起“朝天门”，西至“大学城”，远期将延伸至璧山，全长约46km；</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">2号线：东起市中心“较场口”，西至大渡口区钢铁基地“新山村”，全长19.15km。首末班时间为6:30-22:30，全线共18个车站，实行分段计价，票价2—5元；</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">3号线：已开通从“鱼洞”到“江北机场”的线路，运行全程需94分钟，成为目前世界上最长的一条跨座式单轨交通线路，首末班时间为6:30-22:30，实行分段计价，2-9元，龙头寺站于2013年2月4日正式开通。轻轨3号线设有“重庆北站”和“龙头寺站”，两站相距约1km，“重庆北站”目前已开通。需注意的是，前往重庆火车北站的乘客请在“重庆北站”下车；</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">6号线：起于南岸区茶园城市副中心，止于北碚区老城，并设礼嘉至悦来支线。目前已开通五里店至礼嘉段，运营时间为6:30-22:30，具体站点为礼嘉——九曲河——康庄——大竹林——光电园——冉家坝——大龙山——花卉园——红旗河沟——黄泥塝——红土地——五里店。冉家坝车站已于2013年1月20日正式开通营运，可以在此乘坐6号线列车，并可在红旗河沟换乘轨道3号线。</p><p><br/></p>','','','','1','0','1','1','0','1398350181','');
INSERT INTO `pre_posts` VALUES('46','31','2','','','关于重庆一些著名景点介绍','','','0','','','','','','<p><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆比较有名的景点就是解放碑、磁器口、洪崖洞。还有重庆人民大礼堂的建筑也很有特色，和三峡博物馆相对。路线大概是：解放碑-洪崖洞-人民大礼堂、三峡博物馆-磁器口（这些地方几乎都不没门票的）</span></p>','','','','1','0','1','1','0','1398350231','');
INSERT INTO `pre_posts` VALUES('47','31','2','','','重庆金源方特科幻公园都有什么？好玩么？','','','0','','','','','','<p><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">之前朋友有去过的说重庆金源方特科幻公园还不错，我这次想带爸妈一起去，想给他们玩好一点，重庆金源方特科幻公园都有什么？怎么样？具体位置在哪儿呢？</span></p>','','','','14','0','1','1','0','1398350261','');

DROP TABLE IF EXISTS `pre_questions`;
CREATE TABLE `pre_questions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) unsigned NOT NULL default '0',
  `classify` smallint(5) unsigned NOT NULL default '0',
  `username` varchar(100) NOT NULL default '',
  `truename` varchar(50) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `telephone` varchar(20) NOT NULL default '',
  `content` text NOT NULL,
  `contact` varchar(100) NOT NULL default '',
  `answer_status` tinyint(1) NOT NULL,
  `answer_content` text,
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pre_questions` VALUES('1','2','0','','','','','很好的话发电话发挥的的积分和电话发的说法','','1','第一条咨询回复测试','1','1398002187');
INSERT INTO `pre_questions` VALUES('2','2','0','','','','','新正结构的金佛的积分金佛寺点击发送点击发送的风景东方介绍的飞','','1','好的，很快就回答你的','1','1398173059');

DROP TABLE IF EXISTS `pre_user_action`;
CREATE TABLE `pre_user_action` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL,
  `classify` char(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cTime` int(11) unsigned NOT NULL,
  `ip` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_action` VALUES('1','2','16','editcolumns','编辑栏目','1395747327','2130706433');
INSERT INTO `pre_user_action` VALUES('2','2','17','editcolumns','编辑栏目','1395747351','2130706433');
INSERT INTO `pre_user_action` VALUES('3','2','18','editcolumns','编辑栏目','1395747369','2130706433');
INSERT INTO `pre_user_action` VALUES('4','2','0','setting','更新设置','1395748048','2130706433');
INSERT INTO `pre_user_action` VALUES('5','2','0','setting','更新设置','1395748061','2130706433');
INSERT INTO `pre_user_action` VALUES('6','2','0','setting','更新设置','1395748082','2130706433');
INSERT INTO `pre_user_action` VALUES('7','2','0','setting','更新设置','1395748165','2130706433');
INSERT INTO `pre_user_action` VALUES('8','2','0','setting','更新设置','1395748216','2130706433');
INSERT INTO `pre_user_action` VALUES('9','2','19','editcolumns','编辑栏目','1395748313','2130706433');
INSERT INTO `pre_user_action` VALUES('10','2','0','setting','更新设置','1395748842','2130706433');
INSERT INTO `pre_user_action` VALUES('11','2','0','setting','更新设置','1395748946','2130706433');
INSERT INTO `pre_user_action` VALUES('12','2','0','setting','更新设置','1395749476','2130706433');
INSERT INTO `pre_user_action` VALUES('13','2','27','editposts','编辑文章','1395749541','2130706433');
INSERT INTO `pre_user_action` VALUES('14','2','28','editposts','编辑文章','1395749560','2130706433');
INSERT INTO `pre_user_action` VALUES('15','2','29','editposts','编辑文章','1395751159','2130706433');
INSERT INTO `pre_user_action` VALUES('16','2','6','editads','新增展示','1395751348','2130706433');
INSERT INTO `pre_user_action` VALUES('17','2','7','editads','新增展示','1395751383','2130706433');
INSERT INTO `pre_user_action` VALUES('18','2','8','editads','新增展示','1395751448','2130706433');
INSERT INTO `pre_user_action` VALUES('19','2','0','delcolumns','删除栏目','1396792988','2130706433');
INSERT INTO `pre_user_action` VALUES('20','2','0','delcolumns','删除栏目','1396793007','2130706433');
INSERT INTO `pre_user_action` VALUES('21','2','0','delcolumns','删除栏目','1396793102','2130706433');
INSERT INTO `pre_user_action` VALUES('22','2','0','delcolumns','删除栏目','1396793109','2130706433');
INSERT INTO `pre_user_action` VALUES('23','2','0','delposts','删除文章','1396793454','2130706433');
INSERT INTO `pre_user_action` VALUES('24','2','0','delposts','删除文章','1396793511','2130706433');
INSERT INTO `pre_user_action` VALUES('25','2','0','delposts','删除文章','1396793513','2130706433');
INSERT INTO `pre_user_action` VALUES('26','2','0','setting','更新设置','1396852817','2130706433');
INSERT INTO `pre_user_action` VALUES('27','2','0','setting','更新设置','1396852860','2130706433');
INSERT INTO `pre_user_action` VALUES('28','2','0','delads','删除展示','1397051148','2130706433');
INSERT INTO `pre_user_action` VALUES('29','2','0','delads','删除展示','1397051151','2130706433');
INSERT INTO `pre_user_action` VALUES('30','2','0','delads','删除展示','1397051153','2130706433');
INSERT INTO `pre_user_action` VALUES('31','2','20','editcolumns','编辑栏目','1397142168','2130706433');
INSERT INTO `pre_user_action` VALUES('32','2','21','editcolumns','编辑栏目','1397142705','2130706433');
INSERT INTO `pre_user_action` VALUES('33','2','22','editcolumns','编辑栏目','1397142725','2130706433');
INSERT INTO `pre_user_action` VALUES('34','2','23','editcolumns','编辑栏目','1397142741','2130706433');
INSERT INTO `pre_user_action` VALUES('35','2','24','editcolumns','编辑栏目','1397142759','2130706433');
INSERT INTO `pre_user_action` VALUES('36','2','25','editcolumns','编辑栏目','1397142771','2130706433');
INSERT INTO `pre_user_action` VALUES('37','2','26','editcolumns','编辑栏目','1397221949','2130706433');
INSERT INTO `pre_user_action` VALUES('38','2','27','editcolumns','编辑栏目','1397222004','2130706433');
INSERT INTO `pre_user_action` VALUES('39','2','31','editposts','编辑文章','1397224774','2130706433');
INSERT INTO `pre_user_action` VALUES('40','2','31','editposts','编辑文章','1397226905','2130706433');
INSERT INTO `pre_user_action` VALUES('41','2','32','editposts','编辑文章','1397358160','2130706433');
INSERT INTO `pre_user_action` VALUES('42','2','33','editposts','编辑文章','1397358253','2130706433');
INSERT INTO `pre_user_action` VALUES('43','2','24','editcolumns','编辑栏目','1397358291','2130706433');
INSERT INTO `pre_user_action` VALUES('44','2','34','editposts','编辑文章','1397358331','2130706433');
INSERT INTO `pre_user_action` VALUES('45','2','35','editposts','编辑文章','1397359145','2130706433');
INSERT INTO `pre_user_action` VALUES('46','2','34','editposts','编辑文章','1397362455','2130706433');
INSERT INTO `pre_user_action` VALUES('47','2','34','editposts','编辑文章','1397387624','2130706433');
INSERT INTO `pre_user_action` VALUES('48','2','0','setting','更新设置','1397388867','2130706433');
INSERT INTO `pre_user_action` VALUES('49','2','36','editposts','编辑文章','1397394771','2130706433');
INSERT INTO `pre_user_action` VALUES('50','2','36','editposts','编辑文章','1397395427','2130706433');
INSERT INTO `pre_user_action` VALUES('51','2','28','editcolumns','编辑栏目','1397397047','2130706433');
INSERT INTO `pre_user_action` VALUES('52','2','37','editposts','编辑文章','1397397102','2130706433');
INSERT INTO `pre_user_action` VALUES('53','2','0','setting','更新设置','1397574827','2130706433');
INSERT INTO `pre_user_action` VALUES('54','2','0','setting','更新设置','1397745439','2130706433');
INSERT INTO `pre_user_action` VALUES('55','5','6','editusergroup','编辑用户组','1397832553','2130706433');
INSERT INTO `pre_user_action` VALUES('56','5','7','editusergroup','编辑用户组','1397832756','2130706433');
INSERT INTO `pre_user_action` VALUES('57','5','4','editusers','编辑用户','1397833042','2130706433');
INSERT INTO `pre_user_action` VALUES('58','2','4','editusers','编辑用户','1397833190','2130706433');
INSERT INTO `pre_user_action` VALUES('59','2','0','setting','更新设置','1397919065','2130706433');
INSERT INTO `pre_user_action` VALUES('60','2','6','editusergroup','编辑用户组','1397919180','2130706433');
INSERT INTO `pre_user_action` VALUES('61','2','6','editusergroup','编辑用户组','1397919200','2130706433');
INSERT INTO `pre_user_action` VALUES('62','2','6','editusergroup','编辑用户组','1397919342','2130706433');
INSERT INTO `pre_user_action` VALUES('63','2','6','editusergroup','编辑用户组','1397919360','2130706433');
INSERT INTO `pre_user_action` VALUES('64','2','6','editusergroup','编辑用户组','1397919364','2130706433');
INSERT INTO `pre_user_action` VALUES('65','2','0','setting','更新设置','1397919505','2130706433');
INSERT INTO `pre_user_action` VALUES('66','2','0','setting','更新设置','1397919820','2130706433');
INSERT INTO `pre_user_action` VALUES('67','2','0','delusers','删除用户','1397974731','2130706433');
INSERT INTO `pre_user_action` VALUES('68','2','0','delattachments','删除附件','1397982106','2130706433');
INSERT INTO `pre_user_action` VALUES('69','2','0','delattachments','删除附件','1397982316','2130706433');
INSERT INTO `pre_user_action` VALUES('70','2','0','delattachments','删除附件','1397982451','2130706433');
INSERT INTO `pre_user_action` VALUES('71','2','0','delattachments','删除附件','1397982541','2130706433');
INSERT INTO `pre_user_action` VALUES('72','2','0','delattachments','删除附件','1397982545','2130706433');
INSERT INTO `pre_user_action` VALUES('73','2','0','delattachments','删除附件','1397982561','2130706433');
INSERT INTO `pre_user_action` VALUES('74','2','0','delattachments','删除附件','1397982564','2130706433');
INSERT INTO `pre_user_action` VALUES('75','2','0','delads','删除展示','1397982581','2130706433');
INSERT INTO `pre_user_action` VALUES('76','2','0','delposts','删除文章','1397982596','2130706433');
INSERT INTO `pre_user_action` VALUES('77','2','4','editlink','编辑友链','1398000646','2130706433');
INSERT INTO `pre_user_action` VALUES('78','2','29','editcolumns','编辑栏目','1398345438','2130706433');
INSERT INTO `pre_user_action` VALUES('79','2','30','editcolumns','编辑栏目','1398345959','2130706433');
INSERT INTO `pre_user_action` VALUES('80','2','39','editposts','编辑文章','1398347727','2130706433');
INSERT INTO `pre_user_action` VALUES('81','2','38','editposts','编辑文章','1398348294','2130706433');
INSERT INTO `pre_user_action` VALUES('82','2','38','editposts','编辑文章','1398348379','2130706433');
INSERT INTO `pre_user_action` VALUES('83','2','40','editposts','编辑文章','1398349334','2130706433');
INSERT INTO `pre_user_action` VALUES('84','2','41','editposts','编辑文章','1398349498','2130706433');
INSERT INTO `pre_user_action` VALUES('85','2','42','editposts','编辑文章','1398349527','2130706433');
INSERT INTO `pre_user_action` VALUES('86','2','42','editposts','编辑文章','1398349540','2130706433');
INSERT INTO `pre_user_action` VALUES('87','2','43','editposts','编辑文章','1398349595','2130706433');
INSERT INTO `pre_user_action` VALUES('88','2','31','editcolumns','编辑栏目','1398350065','2130706433');
INSERT INTO `pre_user_action` VALUES('89','2','44','editposts','编辑文章','1398350106','2130706433');
INSERT INTO `pre_user_action` VALUES('90','2','45','editposts','编辑文章','1398350204','2130706433');
INSERT INTO `pre_user_action` VALUES('91','2','46','editposts','编辑文章','1398350249','2130706433');
INSERT INTO `pre_user_action` VALUES('92','2','47','editposts','编辑文章','1398350276','2130706433');
INSERT INTO `pre_user_action` VALUES('93','2','47','editposts','编辑文章','1398350286','2130706433');

DROP TABLE IF EXISTS `pre_user_group`;
CREATE TABLE `pre_user_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `powers` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_group` VALUES('5','系统','zmf','1','1383321578');
INSERT INTO `pre_user_group` VALUES('4','管理员','zmf','1','1383317395');
INSERT INTO `pre_user_group` VALUES('6','待激活','zmf','1','1397832525');
INSERT INTO `pre_user_group` VALUES('7','注册商家','zmf','1','1397832650');
INSERT INTO `pre_user_group` VALUES('8','','','0','1397832850');

DROP TABLE IF EXISTS `pre_user_info`;
CREATE TABLE `pre_user_info` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `classify` char(16) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_info` VALUES('29','2','column','21,22,20,24,28','column');
INSERT INTO `pre_user_info` VALUES('88','2','service_aim_en','Commitment to enhance customer brand image,customer business goals!','base');
INSERT INTO `pre_user_info` VALUES('82','2','domain','http://www.newsoul.cn','base');
INSERT INTO `pre_user_info` VALUES('83','2','baseurl','http://localhost/wifi/','base');
INSERT INTO `pre_user_info` VALUES('84','2','siteKeywords','美文客户见附件','base');
INSERT INTO `pre_user_info` VALUES('85','2','siteDesc','的发的说法的说法的说法的的冯绍峰的方式大幅桑德福的说法','base');
INSERT INTO `pre_user_info` VALUES('87','2','service_aim_cn','致力于提升客户品牌形象、实现客户商业目标!','base');
INSERT INTO `pre_user_info` VALUES('99','2','copyright','©2012-2013','siteinfo');
INSERT INTO `pre_user_info` VALUES('98','2','beian','渝备12345678','siteinfo');
INSERT INTO `pre_user_info` VALUES('96','2','phone','023-12345678','siteinfo');
INSERT INTO `pre_user_info` VALUES('97','2','email','ph7pal@qq.com','siteinfo');
INSERT INTO `pre_user_info` VALUES('86','2','version','Alpha 1.0','base');
INSERT INTO `pre_user_info` VALUES('80','2','sitename','新灵旅行','base');
INSERT INTO `pre_user_info` VALUES('81','2','shortTitle','带上新的生活去旅行','base');
INSERT INTO `pre_user_info` VALUES('50','2','1','11','weekly');
INSERT INTO `pre_user_info` VALUES('51','2','2','47','weekly');
INSERT INTO `pre_user_info` VALUES('52','2','3','1','weekly');
INSERT INTO `pre_user_info` VALUES('53','2','4','2','weekly');
INSERT INTO `pre_user_info` VALUES('54','2','5','1','weekly');
INSERT INTO `pre_user_info` VALUES('55','2','6','5','weekly');
INSERT INTO `pre_user_info` VALUES('56','2','7','4','weekly');
INSERT INTO `pre_user_info` VALUES('95','2','address','重庆市江北观音桥','siteinfo');
INSERT INTO `pre_user_info` VALUES('94','2','company','新灵旅行','siteinfo');
INSERT INTO `pre_user_info` VALUES('79','2','mobile','1','base');
INSERT INTO `pre_user_info` VALUES('78','2','closeSiteReason','哈哈哈就是不给你看','base');
INSERT INTO `pre_user_info` VALUES('76','2','logo','924a','base');
INSERT INTO `pre_user_info` VALUES('77','2','closeSite','1','base');
INSERT INTO `pre_user_info` VALUES('93','2','bgcolor','#99cc00','template');
INSERT INTO `pre_user_info` VALUES('92','2','align_bg','0','template');
INSERT INTO `pre_user_info` VALUES('100','2','4','16','yearly');

DROP TABLE IF EXISTS `pre_users`;
CREATE TABLE `pre_users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` char(50) NOT NULL,
  `password` char(32) NOT NULL,
  `truename` varchar(100) NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `last_login_ip` char(16) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `login_count` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) NOT NULL default '0',
  `emailstatus` tinyint(1) NOT NULL,
  `system` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `pre_users` VALUES('2','admin','d006e37c5d52563596bf37e581fdbb11','管理员','5','ph7pal@qq.com','12345678','12345678901','1234567','2130706433','1398352512','4','1','1383317699','0','0');
INSERT INTO `pre_users` VALUES('4','test1','e10adc3949ba59abbe56e057f20f883e','广告','6','ph7pal@qq.com','1125616251','18716690740','1234567','2130706433','0','0','1','1397746324','0','0');
INSERT INTO `pre_users` VALUES('5','test2','e10adc3949ba59abbe56e057f20f883e','阿飞','5','ph7pal@qq.com','','','','2130706433','1397746599','1','1','1397746599','0','0');
INSERT INTO `pre_users` VALUES('6','','','','0','','','','','','0','0','0','1398255573','0','0');

