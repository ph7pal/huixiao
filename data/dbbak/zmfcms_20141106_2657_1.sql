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
  `code` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO `pre_ads` VALUES('13','全屏美女','http://newsoul.cn','36','','','','0','1397865600','1397952000','topbar','0','1','1398434226','flash','2','1','');
INSERT INTO `pre_ads` VALUES('14','','','','','','','0','0','0','','0','3','1398569922','empty','5','0','');
INSERT INTO `pre_ads` VALUES('15','test3的展示','','41','','','','0','0','0','topbar','0','1','1399027738','flash','7','0','');
INSERT INTO `pre_ads` VALUES('16','注册页面的','','43','','','','0','1399075200','1399075200','regpage','0','1','1399084712','flash','2','1','');
INSERT INTO `pre_ads` VALUES('17','登录页面的','','44','','','','0','1399075200','1399075200','logpage','0','1','1399084983','flash','2','1','');

DROP TABLE IF EXISTS `pre_agent`;
CREATE TABLE `pre_agent` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `jobname` varchar(255) NOT NULL,
  `officurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_agent` VALUES('1','2','0','104','聚易开放式技术实验室','聚易开放式技术实验室','的发送到发生的方式','是的撒的撒的撒','这里是联系人姓名','是倒萨大的撒','撒旦撒大声地撒的','四大四大是的撒该死的发是的范德萨','1413122099','0','0','2','0','','');

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

DROP TABLE IF EXISTS `pre_area`;
CREATE TABLE `pre_area` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3274 DEFAULT CHARSET=utf8;

INSERT INTO `pre_area` VALUES('1','0','北京','1');
INSERT INTO `pre_area` VALUES('2','0','上海','2');
INSERT INTO `pre_area` VALUES('3','0','天津','3');
INSERT INTO `pre_area` VALUES('4','0','重庆','4');
INSERT INTO `pre_area` VALUES('5','0','河北','5');
INSERT INTO `pre_area` VALUES('6','0','山西','6');
INSERT INTO `pre_area` VALUES('7','0','内蒙古','7');
INSERT INTO `pre_area` VALUES('8','0','辽宁','8');
INSERT INTO `pre_area` VALUES('9','0','吉林','9');
INSERT INTO `pre_area` VALUES('10','0','黑龙江','10');
INSERT INTO `pre_area` VALUES('11','0','江苏','11');
INSERT INTO `pre_area` VALUES('12','0','浙江','12');
INSERT INTO `pre_area` VALUES('13','0','安徽','13');
INSERT INTO `pre_area` VALUES('14','0','福建','14');
INSERT INTO `pre_area` VALUES('15','0','江西','15');
INSERT INTO `pre_area` VALUES('16','0','山东','16');
INSERT INTO `pre_area` VALUES('17','0','河南','17');
INSERT INTO `pre_area` VALUES('18','0','湖北','18');
INSERT INTO `pre_area` VALUES('19','0','湖南','19');
INSERT INTO `pre_area` VALUES('20','0','广东','20');
INSERT INTO `pre_area` VALUES('21','0','广西','21');
INSERT INTO `pre_area` VALUES('22','0','海南','22');
INSERT INTO `pre_area` VALUES('23','0','四川','23');
INSERT INTO `pre_area` VALUES('24','0','贵州','24');
INSERT INTO `pre_area` VALUES('25','0','云南','25');
INSERT INTO `pre_area` VALUES('26','0','西藏','26');
INSERT INTO `pre_area` VALUES('27','0','陕西','27');
INSERT INTO `pre_area` VALUES('28','0','甘肃','28');
INSERT INTO `pre_area` VALUES('29','0','青海','29');
INSERT INTO `pre_area` VALUES('30','0','宁夏','30');
INSERT INTO `pre_area` VALUES('31','0','新疆','31');
INSERT INTO `pre_area` VALUES('32','0','香港','32');
INSERT INTO `pre_area` VALUES('33','0','澳门','33');
INSERT INTO `pre_area` VALUES('34','0','台湾','34');
INSERT INTO `pre_area` VALUES('35','5','石家庄市','35');
INSERT INTO `pre_area` VALUES('36','5','唐山市','36');
INSERT INTO `pre_area` VALUES('37','5','秦皇岛','37');
INSERT INTO `pre_area` VALUES('38','5','邯郸市','38');
INSERT INTO `pre_area` VALUES('39','5','邢台市','39');
INSERT INTO `pre_area` VALUES('40','5','保定','40');
INSERT INTO `pre_area` VALUES('41','5','张家口','41');
INSERT INTO `pre_area` VALUES('42','5','承德市','42');
INSERT INTO `pre_area` VALUES('43','5','沧州市','43');
INSERT INTO `pre_area` VALUES('44','5','廊坊市','44');
INSERT INTO `pre_area` VALUES('45','5','衡水市','45');
INSERT INTO `pre_area` VALUES('47','1','西城区','47');
INSERT INTO `pre_area` VALUES('46','1','东城区','46');
INSERT INTO `pre_area` VALUES('48','1','崇文区','48');
INSERT INTO `pre_area` VALUES('49','1','宣武区','49');
INSERT INTO `pre_area` VALUES('50','1','朝阳区','50');
INSERT INTO `pre_area` VALUES('51','1','丰台区','51');
INSERT INTO `pre_area` VALUES('52','1','石景山区','52');
INSERT INTO `pre_area` VALUES('53','1','海淀区','53');
INSERT INTO `pre_area` VALUES('54','1','门头沟区','54');
INSERT INTO `pre_area` VALUES('55','1','房山区','55');
INSERT INTO `pre_area` VALUES('56','1','通州区','56');
INSERT INTO `pre_area` VALUES('57','1','顺义区','57');
INSERT INTO `pre_area` VALUES('58','1','昌平区','58');
INSERT INTO `pre_area` VALUES('59','1','大兴区','59');
INSERT INTO `pre_area` VALUES('60','1','怀柔区','60');
INSERT INTO `pre_area` VALUES('61','1','平谷区','61');
INSERT INTO `pre_area` VALUES('62','1','密云县','62');
INSERT INTO `pre_area` VALUES('63','1','延庆县','63');
INSERT INTO `pre_area` VALUES('64','2','黄浦区','64');
INSERT INTO `pre_area` VALUES('65','2','卢湾区','65');
INSERT INTO `pre_area` VALUES('66','2','徐汇区','66');
INSERT INTO `pre_area` VALUES('67','2','徐家汇','67');
INSERT INTO `pre_area` VALUES('68','2','长宁区','68');
INSERT INTO `pre_area` VALUES('69','2','静安区','69');
INSERT INTO `pre_area` VALUES('70','2','普陀区','70');
INSERT INTO `pre_area` VALUES('71','2','闸北区','71');
INSERT INTO `pre_area` VALUES('72','2','虹口区','72');
INSERT INTO `pre_area` VALUES('73','2','杨浦区','73');
INSERT INTO `pre_area` VALUES('74','2','宝山区','74');
INSERT INTO `pre_area` VALUES('75','2','闵行区','75');
INSERT INTO `pre_area` VALUES('76','2','嘉定区','76');
INSERT INTO `pre_area` VALUES('77','2','浦东新区','77');
INSERT INTO `pre_area` VALUES('78','2','松江区','78');
INSERT INTO `pre_area` VALUES('79','2','金山区','79');
INSERT INTO `pre_area` VALUES('80','2','青浦区','80');
INSERT INTO `pre_area` VALUES('81','2','南汇区','81');
INSERT INTO `pre_area` VALUES('82','2','奉贤区','82');
INSERT INTO `pre_area` VALUES('83','2','崇明县','83');
INSERT INTO `pre_area` VALUES('84','3','和平区','84');
INSERT INTO `pre_area` VALUES('85','3','河东区','85');
INSERT INTO `pre_area` VALUES('86','3','河西区','86');
INSERT INTO `pre_area` VALUES('87','3','南开区','87');
INSERT INTO `pre_area` VALUES('88','3','河北区','88');
INSERT INTO `pre_area` VALUES('89','3','红桥区','89');
INSERT INTO `pre_area` VALUES('90','3','塘沽区','90');
INSERT INTO `pre_area` VALUES('91','3','汉沽区','91');
INSERT INTO `pre_area` VALUES('92','3','大港区','92');
INSERT INTO `pre_area` VALUES('93','3','东丽区','93');
INSERT INTO `pre_area` VALUES('94','3','西青区','94');
INSERT INTO `pre_area` VALUES('95','3','北辰区','95');
INSERT INTO `pre_area` VALUES('96','3','津南区','96');
INSERT INTO `pre_area` VALUES('97','3','武清区','97');
INSERT INTO `pre_area` VALUES('98','3','宝坻区','98');
INSERT INTO `pre_area` VALUES('99','3','静海县','99');
INSERT INTO `pre_area` VALUES('100','3','宁河县','100');
INSERT INTO `pre_area` VALUES('101','3','蓟县','101');
INSERT INTO `pre_area` VALUES('102','4','渝中区','102');
INSERT INTO `pre_area` VALUES('103','4','大渡口区','103');
INSERT INTO `pre_area` VALUES('104','4','江北区','104');
INSERT INTO `pre_area` VALUES('105','4','沙坪坝区','105');
INSERT INTO `pre_area` VALUES('106','4','九龙坡区','106');
INSERT INTO `pre_area` VALUES('107','4','南岸区','107');
INSERT INTO `pre_area` VALUES('108','4','北碚区','108');
INSERT INTO `pre_area` VALUES('109','4','万盛区','109');
INSERT INTO `pre_area` VALUES('110','4','双桥区','110');
INSERT INTO `pre_area` VALUES('111','4','渝北区','111');
INSERT INTO `pre_area` VALUES('112','4','巴南区','112');
INSERT INTO `pre_area` VALUES('113','4','万州区','113');
INSERT INTO `pre_area` VALUES('114','4','涪陵区','114');
INSERT INTO `pre_area` VALUES('115','4','黔江区','115');
INSERT INTO `pre_area` VALUES('116','4','长寿区','116');
INSERT INTO `pre_area` VALUES('117','4','永川市','117');
INSERT INTO `pre_area` VALUES('118','4','合川市','118');
INSERT INTO `pre_area` VALUES('119','4','江津市','119');
INSERT INTO `pre_area` VALUES('120','4','南川市','120');
INSERT INTO `pre_area` VALUES('121','4','綦江县','121');
INSERT INTO `pre_area` VALUES('122','4','潼南县','122');
INSERT INTO `pre_area` VALUES('123','4','荣昌县','123');
INSERT INTO `pre_area` VALUES('124','4','璧山县','124');
INSERT INTO `pre_area` VALUES('125','4','大足县','125');
INSERT INTO `pre_area` VALUES('126','4','铜梁县','126');
INSERT INTO `pre_area` VALUES('127','4','梁平县','127');
INSERT INTO `pre_area` VALUES('128','4','城口县','128');
INSERT INTO `pre_area` VALUES('129','4','垫江县','129');
INSERT INTO `pre_area` VALUES('130','4','武隆县','130');
INSERT INTO `pre_area` VALUES('131','4','丰都县','131');
INSERT INTO `pre_area` VALUES('132','4','奉节县','132');
INSERT INTO `pre_area` VALUES('133','4','开县','133');
INSERT INTO `pre_area` VALUES('134','4','云阳县','134');
INSERT INTO `pre_area` VALUES('135','4','忠县','135');
INSERT INTO `pre_area` VALUES('136','4','巫溪县','136');
INSERT INTO `pre_area` VALUES('137','4','巫山县','137');
INSERT INTO `pre_area` VALUES('138','4','石柱县','138');
INSERT INTO `pre_area` VALUES('139','4','秀山县','139');
INSERT INTO `pre_area` VALUES('140','4','酉阳县','140');
INSERT INTO `pre_area` VALUES('141','4','彭水县','141');
INSERT INTO `pre_area` VALUES('142','8','沈阳市','142');
INSERT INTO `pre_area` VALUES('143','8','大连市','143');
INSERT INTO `pre_area` VALUES('144','8','鞍山市','144');
INSERT INTO `pre_area` VALUES('145','8','抚顺市','145');
INSERT INTO `pre_area` VALUES('146','8','本溪市','146');
INSERT INTO `pre_area` VALUES('147','8','丹东市','147');
INSERT INTO `pre_area` VALUES('148','8','锦州市','148');
INSERT INTO `pre_area` VALUES('149','8','葫芦岛市','149');
INSERT INTO `pre_area` VALUES('150','8','营口市','150');
INSERT INTO `pre_area` VALUES('151','8','盘锦市','151');
INSERT INTO `pre_area` VALUES('152','8','阜新市','152');
INSERT INTO `pre_area` VALUES('153','8','辽阳市','153');
INSERT INTO `pre_area` VALUES('154','8','铁岭市','154');
INSERT INTO `pre_area` VALUES('155','8','朝阳市','155');
INSERT INTO `pre_area` VALUES('156','34','台北市','156');
INSERT INTO `pre_area` VALUES('157','34','高雄市','157');
INSERT INTO `pre_area` VALUES('158','34','基隆市','158');
INSERT INTO `pre_area` VALUES('159','34','台中市','159');
INSERT INTO `pre_area` VALUES('160','34','台南市','160');
INSERT INTO `pre_area` VALUES('161','34','新竹市','161');
INSERT INTO `pre_area` VALUES('162','34','嘉义市','162');
INSERT INTO `pre_area` VALUES('163','34','北县','163');
INSERT INTO `pre_area` VALUES('164','34','板桥市','164');
INSERT INTO `pre_area` VALUES('165','34','宜兰县','165');
INSERT INTO `pre_area` VALUES('166','34','宜兰市','166');
INSERT INTO `pre_area` VALUES('167','34','桃园县','167');
INSERT INTO `pre_area` VALUES('168','34','桃园市','168');
INSERT INTO `pre_area` VALUES('169','34','新竹县','169');
INSERT INTO `pre_area` VALUES('170','34','竹北市','170');
INSERT INTO `pre_area` VALUES('171','34','苗栗县','171');
INSERT INTO `pre_area` VALUES('172','34','苗栗市','172');
INSERT INTO `pre_area` VALUES('173','34','台中县','173');
INSERT INTO `pre_area` VALUES('174','34','丰原市','174');
INSERT INTO `pre_area` VALUES('175','34','彰化县','175');
INSERT INTO `pre_area` VALUES('176','34','彰化市','176');
INSERT INTO `pre_area` VALUES('177','34','南投县','177');
INSERT INTO `pre_area` VALUES('178','34','南投市','178');
INSERT INTO `pre_area` VALUES('179','34','云林县','179');
INSERT INTO `pre_area` VALUES('180','34','斗六市','180');
INSERT INTO `pre_area` VALUES('181','34','嘉义县','181');
INSERT INTO `pre_area` VALUES('182','34','太保市','182');
INSERT INTO `pre_area` VALUES('183','34','台南县','183');
INSERT INTO `pre_area` VALUES('184','34','新营市','184');
INSERT INTO `pre_area` VALUES('185','34','高雄县','185');
INSERT INTO `pre_area` VALUES('186','34','凤山市','186');
INSERT INTO `pre_area` VALUES('187','34','屏东县','187');
INSERT INTO `pre_area` VALUES('188','34','屏东市','188');
INSERT INTO `pre_area` VALUES('189','34','澎湖县','189');
INSERT INTO `pre_area` VALUES('190','34','马东市','190');
INSERT INTO `pre_area` VALUES('191','34','台东县','191');
INSERT INTO `pre_area` VALUES('192','34','台东市','192');
INSERT INTO `pre_area` VALUES('193','34','花莲县','193');
INSERT INTO `pre_area` VALUES('194','34','花莲市','194');
INSERT INTO `pre_area` VALUES('195','34','金门县','195');
INSERT INTO `pre_area` VALUES('196','34','连江县','196');
INSERT INTO `pre_area` VALUES('197','33','花王堂區','197');
INSERT INTO `pre_area` VALUES('198','33','望德堂區','198');
INSERT INTO `pre_area` VALUES('199','33','風順堂區','199');
INSERT INTO `pre_area` VALUES('200','33','大堂區','200');
INSERT INTO `pre_area` VALUES('201','33','花地瑪堂區','201');
INSERT INTO `pre_area` VALUES('202','33','嘉模堂區(氹仔)','202');
INSERT INTO `pre_area` VALUES('203','33','聖方濟各堂區(路環)','203');
INSERT INTO `pre_area` VALUES('204','32','九龙城区','204');
INSERT INTO `pre_area` VALUES('205','32','观塘区','205');
INSERT INTO `pre_area` VALUES('206','32','深水埗区','206');
INSERT INTO `pre_area` VALUES('207','32','黄大仙区','207');
INSERT INTO `pre_area` VALUES('208','32','湾仔区','208');
INSERT INTO `pre_area` VALUES('209','32','油尖旺区','209');
INSERT INTO `pre_area` VALUES('210','32','离岛区','210');
INSERT INTO `pre_area` VALUES('211','32','葵青区','211');
INSERT INTO `pre_area` VALUES('212','32','西贡区','212');
INSERT INTO `pre_area` VALUES('213','32','沙田区','213');
INSERT INTO `pre_area` VALUES('214','32','屯门区','214');
INSERT INTO `pre_area` VALUES('215','32','大埔区','215');
INSERT INTO `pre_area` VALUES('216','32','荃湾区','216');
INSERT INTO `pre_area` VALUES('217','32','元朗区','217');
INSERT INTO `pre_area` VALUES('218','9','长春市','218');
INSERT INTO `pre_area` VALUES('219','9','吉林市','219');
INSERT INTO `pre_area` VALUES('220','9','四平市','220');
INSERT INTO `pre_area` VALUES('221','9','辽源市','221');
INSERT INTO `pre_area` VALUES('222','9','通化市','222');
INSERT INTO `pre_area` VALUES('223','9','白山市','223');
INSERT INTO `pre_area` VALUES('224','9','延边朝鲜族自治州','224');
INSERT INTO `pre_area` VALUES('225','9','白城市','225');
INSERT INTO `pre_area` VALUES('226','9','松原市','226');
INSERT INTO `pre_area` VALUES('688','228','道里区','688');
INSERT INTO `pre_area` VALUES('228','10','哈尔滨市','228');
INSERT INTO `pre_area` VALUES('229','10','齐齐哈尔市','229');
INSERT INTO `pre_area` VALUES('230','10','鹤岗市','230');
INSERT INTO `pre_area` VALUES('231','10','双鸭山市','231');
INSERT INTO `pre_area` VALUES('232','10','鸡西市','232');
INSERT INTO `pre_area` VALUES('233','10','大庆市','233');
INSERT INTO `pre_area` VALUES('234','10','伊春市','234');
INSERT INTO `pre_area` VALUES('235','10','牡丹江市','235');
INSERT INTO `pre_area` VALUES('236','10','佳木斯市','236');
INSERT INTO `pre_area` VALUES('237','10','七台河市','237');
INSERT INTO `pre_area` VALUES('238','10','黑河市','238');
INSERT INTO `pre_area` VALUES('239','10','绥化市','239');
INSERT INTO `pre_area` VALUES('240','10','大兴安岭地区','240');
INSERT INTO `pre_area` VALUES('241','6','太原市','241');
INSERT INTO `pre_area` VALUES('242','6','大同市','242');
INSERT INTO `pre_area` VALUES('243','6','阳泉市','243');
INSERT INTO `pre_area` VALUES('244','6','长治市','244');
INSERT INTO `pre_area` VALUES('245','6','晋城市','245');
INSERT INTO `pre_area` VALUES('246','6','朔州市','246');
INSERT INTO `pre_area` VALUES('247','6','晋中市','247');
INSERT INTO `pre_area` VALUES('248','6','运城市','248');
INSERT INTO `pre_area` VALUES('249','6','忻州市','249');
INSERT INTO `pre_area` VALUES('250','6','临汾市','250');
INSERT INTO `pre_area` VALUES('251','6','吕梁地区','251');
INSERT INTO `pre_area` VALUES('252','17','郑州市','252');
INSERT INTO `pre_area` VALUES('253','17','开封市','253');
INSERT INTO `pre_area` VALUES('254','17','洛阳市','254');
INSERT INTO `pre_area` VALUES('255','17','平顶山市','255');
INSERT INTO `pre_area` VALUES('256','17','焦作市','256');
INSERT INTO `pre_area` VALUES('257','17','鹤壁市','257');
INSERT INTO `pre_area` VALUES('258','17','新乡市','258');
INSERT INTO `pre_area` VALUES('259','17','安阳市','259');
INSERT INTO `pre_area` VALUES('260','17','濮阳市','260');
INSERT INTO `pre_area` VALUES('261','17','许昌市','261');
INSERT INTO `pre_area` VALUES('262','17','漯河市','262');
INSERT INTO `pre_area` VALUES('263','17','三门峡市','263');
INSERT INTO `pre_area` VALUES('264','17','南阳市','264');
INSERT INTO `pre_area` VALUES('265','17','商丘市','265');
INSERT INTO `pre_area` VALUES('266','17','信阳市','266');
INSERT INTO `pre_area` VALUES('267','17','周口市','267');
INSERT INTO `pre_area` VALUES('268','17','驻马店市','268');
INSERT INTO `pre_area` VALUES('269','17','济源市','269');
INSERT INTO `pre_area` VALUES('270','16','济南市','270');
INSERT INTO `pre_area` VALUES('271','16','青岛市','271');
INSERT INTO `pre_area` VALUES('272','16','淄博市','272');
INSERT INTO `pre_area` VALUES('273','16','枣庄市','273');
INSERT INTO `pre_area` VALUES('274','16','东营市','274');
INSERT INTO `pre_area` VALUES('275','16','潍坊市','275');
INSERT INTO `pre_area` VALUES('276','16','烟台市','276');
INSERT INTO `pre_area` VALUES('277','16','威海市','277');
INSERT INTO `pre_area` VALUES('278','16','济宁市','278');
INSERT INTO `pre_area` VALUES('279','16','泰安市','279');
INSERT INTO `pre_area` VALUES('280','16','日照市','280');
INSERT INTO `pre_area` VALUES('281','16','莱芜市','281');
INSERT INTO `pre_area` VALUES('282','16','临沂市','282');
INSERT INTO `pre_area` VALUES('283','16','德州市','283');
INSERT INTO `pre_area` VALUES('284','16','聊城市','284');
INSERT INTO `pre_area` VALUES('285','16','滨州市','285');
INSERT INTO `pre_area` VALUES('286','16','菏泽市','286');
INSERT INTO `pre_area` VALUES('287','11','南京市','287');
INSERT INTO `pre_area` VALUES('288','11','徐州市','288');
INSERT INTO `pre_area` VALUES('289','11','连云港市','289');
INSERT INTO `pre_area` VALUES('290','11','淮安市','290');
INSERT INTO `pre_area` VALUES('291','11','宿迁市','291');
INSERT INTO `pre_area` VALUES('292','11','盐城市','292');
INSERT INTO `pre_area` VALUES('293','11','扬州市','293');
INSERT INTO `pre_area` VALUES('294','11','泰州市','294');
INSERT INTO `pre_area` VALUES('295','11','南通市','295');
INSERT INTO `pre_area` VALUES('296','11','镇江市','296');
INSERT INTO `pre_area` VALUES('297','11','常州市','297');
INSERT INTO `pre_area` VALUES('298','11','无锡市','298');
INSERT INTO `pre_area` VALUES('299','11','苏州市','299');
INSERT INTO `pre_area` VALUES('300','13','合肥市','300');
INSERT INTO `pre_area` VALUES('301','13','芜湖市','301');
INSERT INTO `pre_area` VALUES('302','13','蚌埠市','302');
INSERT INTO `pre_area` VALUES('303','13','淮南市','303');
INSERT INTO `pre_area` VALUES('304','13','马鞍山市','304');
INSERT INTO `pre_area` VALUES('305','13','淮北市','305');
INSERT INTO `pre_area` VALUES('306','13','铜陵市','306');
INSERT INTO `pre_area` VALUES('307','13','安庆市','307');
INSERT INTO `pre_area` VALUES('308','13','黄山市','308');
INSERT INTO `pre_area` VALUES('309','13','滁州市','309');
INSERT INTO `pre_area` VALUES('310','13','阜阳市','310');
INSERT INTO `pre_area` VALUES('311','13','宿州市','311');
INSERT INTO `pre_area` VALUES('312','13','巢湖市','312');
INSERT INTO `pre_area` VALUES('313','13','六安市','313');
INSERT INTO `pre_area` VALUES('314','13','亳州市','314');
INSERT INTO `pre_area` VALUES('315','13','池州市','315');
INSERT INTO `pre_area` VALUES('316','13','宣城市','316');
INSERT INTO `pre_area` VALUES('317','15','南昌市','317');
INSERT INTO `pre_area` VALUES('318','15','萍乡市','318');
INSERT INTO `pre_area` VALUES('319','15','九江市','319');
INSERT INTO `pre_area` VALUES('320','15','新余市','320');
INSERT INTO `pre_area` VALUES('321','15','鹰潭市','321');
INSERT INTO `pre_area` VALUES('322','15','赣州市','322');
INSERT INTO `pre_area` VALUES('323','15','吉安市','323');
INSERT INTO `pre_area` VALUES('324','15','宜春市','324');
INSERT INTO `pre_area` VALUES('325','15','抚州市','325');
INSERT INTO `pre_area` VALUES('326','15','上饶市','326');
INSERT INTO `pre_area` VALUES('327','12','杭州市','327');
INSERT INTO `pre_area` VALUES('328','12','宁波市','328');
INSERT INTO `pre_area` VALUES('329','12','温州市','329');
INSERT INTO `pre_area` VALUES('330','12','嘉兴市','330');
INSERT INTO `pre_area` VALUES('331','12','湖州市','331');
INSERT INTO `pre_area` VALUES('332','12','绍兴市','332');
INSERT INTO `pre_area` VALUES('333','12','金华市','333');
INSERT INTO `pre_area` VALUES('334','12','衢州市','334');
INSERT INTO `pre_area` VALUES('335','12','舟山市','335');
INSERT INTO `pre_area` VALUES('336','12','台州市','336');
INSERT INTO `pre_area` VALUES('337','12','丽水市','337');
INSERT INTO `pre_area` VALUES('338','14','福州市','338');
INSERT INTO `pre_area` VALUES('339','14','厦门市','339');
INSERT INTO `pre_area` VALUES('340','14','三明市','340');
INSERT INTO `pre_area` VALUES('341','14','莆田市','341');
INSERT INTO `pre_area` VALUES('342','14','泉州市','342');
INSERT INTO `pre_area` VALUES('343','14','漳州市','343');
INSERT INTO `pre_area` VALUES('344','14','南平市','344');
INSERT INTO `pre_area` VALUES('345','14','龙岩市','345');
INSERT INTO `pre_area` VALUES('346','14','宁德市','346');
INSERT INTO `pre_area` VALUES('347','20','广州市','347');
INSERT INTO `pre_area` VALUES('348','20','深圳市','348');
INSERT INTO `pre_area` VALUES('349','20','珠海市','349');
INSERT INTO `pre_area` VALUES('350','20','汕头市','350');
INSERT INTO `pre_area` VALUES('351','20','韶关市','351');
INSERT INTO `pre_area` VALUES('352','20','惠州市','352');
INSERT INTO `pre_area` VALUES('353','20','河源市','353');
INSERT INTO `pre_area` VALUES('354','20','梅州市','354');
INSERT INTO `pre_area` VALUES('355','20','汕尾市','355');
INSERT INTO `pre_area` VALUES('356','20','东莞市','356');
INSERT INTO `pre_area` VALUES('357','20','中山市','357');
INSERT INTO `pre_area` VALUES('358','20','江门市','358');
INSERT INTO `pre_area` VALUES('359','20','佛山市','359');
INSERT INTO `pre_area` VALUES('360','20','阳江市','360');
INSERT INTO `pre_area` VALUES('361','20','湛江市','361');
INSERT INTO `pre_area` VALUES('362','20','茂名市','362');
INSERT INTO `pre_area` VALUES('363','20','肇庆市','363');
INSERT INTO `pre_area` VALUES('364','20','清远市','364');
INSERT INTO `pre_area` VALUES('365','20','潮州市','365');
INSERT INTO `pre_area` VALUES('366','20','揭阳市','366');
INSERT INTO `pre_area` VALUES('367','20','云浮市','367');
INSERT INTO `pre_area` VALUES('368','22','海口市','368');
INSERT INTO `pre_area` VALUES('369','22','三亚市','369');
INSERT INTO `pre_area` VALUES('370','24','贵阳市','370');
INSERT INTO `pre_area` VALUES('371','24','六盘水市','371');
INSERT INTO `pre_area` VALUES('372','24','遵义市','372');
INSERT INTO `pre_area` VALUES('373','24','安顺市','373');
INSERT INTO `pre_area` VALUES('374','24','铜仁地区','374');
INSERT INTO `pre_area` VALUES('375','24','毕节地区','375');
INSERT INTO `pre_area` VALUES('376','24','黔西南布依族苗族自治州','376');
INSERT INTO `pre_area` VALUES('377','24','黔东南南苗族侗族自治州','377');
INSERT INTO `pre_area` VALUES('378','24','黔南布依族苗族自治州','378');
INSERT INTO `pre_area` VALUES('379','25','昆明市','379');
INSERT INTO `pre_area` VALUES('380','25','曲靖市','380');
INSERT INTO `pre_area` VALUES('381','25','玉溪市','381');
INSERT INTO `pre_area` VALUES('382','25','保山市','382');
INSERT INTO `pre_area` VALUES('383','25','昭通市','383');
INSERT INTO `pre_area` VALUES('384','25','思茅地区','384');
INSERT INTO `pre_area` VALUES('385','25','临沧地区','385');
INSERT INTO `pre_area` VALUES('386','25','丽江地区','386');
INSERT INTO `pre_area` VALUES('387','25','红河哈尼族彝族自治州','387');
INSERT INTO `pre_area` VALUES('388','25','西双版纳傣族自治州','388');
INSERT INTO `pre_area` VALUES('389','25','楚雄彝族自治州','389');
INSERT INTO `pre_area` VALUES('390','25','大理白族自治州','390');
INSERT INTO `pre_area` VALUES('391','25','怒江傈僳族自治州','391');
INSERT INTO `pre_area` VALUES('392','25','迪庆藏族自治州','392');
INSERT INTO `pre_area` VALUES('393','23','成都市','393');
INSERT INTO `pre_area` VALUES('394','23','自贡市','394');
INSERT INTO `pre_area` VALUES('395','23','攀枝花市','395');
INSERT INTO `pre_area` VALUES('396','23','泸州市','396');
INSERT INTO `pre_area` VALUES('397','23','德阳市','397');
INSERT INTO `pre_area` VALUES('398','23','绵阳市','398');
INSERT INTO `pre_area` VALUES('399','23','广元市','399');
INSERT INTO `pre_area` VALUES('400','23','遂宁市','400');
INSERT INTO `pre_area` VALUES('401','23','内江市','401');
INSERT INTO `pre_area` VALUES('402','23','乐山市','402');
INSERT INTO `pre_area` VALUES('403','23','南充市','403');
INSERT INTO `pre_area` VALUES('404','23','宜宾市','404');
INSERT INTO `pre_area` VALUES('405','23','广安市','405');
INSERT INTO `pre_area` VALUES('406','23','达州市','406');
INSERT INTO `pre_area` VALUES('407','23','眉山市','407');
INSERT INTO `pre_area` VALUES('408','23','雅安市','408');
INSERT INTO `pre_area` VALUES('409','23','巴中市','409');
INSERT INTO `pre_area` VALUES('410','23','资阳市','410');
INSERT INTO `pre_area` VALUES('411','23','阿坝藏族羌族自治州','411');
INSERT INTO `pre_area` VALUES('412','23','凉山彝族自治州','412');
INSERT INTO `pre_area` VALUES('413','19','长沙市','413');
INSERT INTO `pre_area` VALUES('414','19','株洲市','414');
INSERT INTO `pre_area` VALUES('415','19','湘潭市','415');
INSERT INTO `pre_area` VALUES('416','19','衡阳市','416');
INSERT INTO `pre_area` VALUES('417','19','邵阳市','417');
INSERT INTO `pre_area` VALUES('418','19','岳阳市','418');
INSERT INTO `pre_area` VALUES('419','19','常德市','419');
INSERT INTO `pre_area` VALUES('420','19','张家界市','420');
INSERT INTO `pre_area` VALUES('421','19','益阳市','421');
INSERT INTO `pre_area` VALUES('422','19','郴州市','422');
INSERT INTO `pre_area` VALUES('423','19','永州市','423');
INSERT INTO `pre_area` VALUES('424','19','怀化市','424');
INSERT INTO `pre_area` VALUES('425','19','娄底市','425');
INSERT INTO `pre_area` VALUES('426','19','湘西土家族苗族自治州','426');
INSERT INTO `pre_area` VALUES('427','18','武汉市','427');
INSERT INTO `pre_area` VALUES('428','18','黄石市','428');
INSERT INTO `pre_area` VALUES('429','18','襄樊市','429');
INSERT INTO `pre_area` VALUES('430','18','十堰市','430');
INSERT INTO `pre_area` VALUES('431','18','荆州市','431');
INSERT INTO `pre_area` VALUES('432','18','宜昌市','432');
INSERT INTO `pre_area` VALUES('433','18','荆门市','433');
INSERT INTO `pre_area` VALUES('434','18','鄂州市','434');
INSERT INTO `pre_area` VALUES('435','18','孝感市','435');
INSERT INTO `pre_area` VALUES('436','18','黄冈市','436');
INSERT INTO `pre_area` VALUES('437','18','咸宁市','437');
INSERT INTO `pre_area` VALUES('438','18','随州市','438');
INSERT INTO `pre_area` VALUES('439','18','恩施土家族苗族自治州','439');
INSERT INTO `pre_area` VALUES('440','18','仙桃市','440');
INSERT INTO `pre_area` VALUES('441','18','天门市','441');
INSERT INTO `pre_area` VALUES('442','18','潜江市','442');
INSERT INTO `pre_area` VALUES('443','18','神农架林区','443');
INSERT INTO `pre_area` VALUES('444','27','西安市','444');
INSERT INTO `pre_area` VALUES('445','27','铜川市','445');
INSERT INTO `pre_area` VALUES('446','27','宝鸡市','446');
INSERT INTO `pre_area` VALUES('447','27','咸阳市','447');
INSERT INTO `pre_area` VALUES('448','27','渭南市','448');
INSERT INTO `pre_area` VALUES('449','27','延安市','449');
INSERT INTO `pre_area` VALUES('450','27','汉中市','450');
INSERT INTO `pre_area` VALUES('451','27','榆林市','451');
INSERT INTO `pre_area` VALUES('452','27','安康市','452');
INSERT INTO `pre_area` VALUES('453','27','商洛市','453');
INSERT INTO `pre_area` VALUES('454','29','西宁市','454');
INSERT INTO `pre_area` VALUES('455','29','海东地区','455');
INSERT INTO `pre_area` VALUES('456','29','海北藏族自治州','456');
INSERT INTO `pre_area` VALUES('457','29','黄南藏族自治州','457');
INSERT INTO `pre_area` VALUES('458','29','海南藏族自治州','458');
INSERT INTO `pre_area` VALUES('459','29','果洛藏族自治州','459');
INSERT INTO `pre_area` VALUES('460','29','玉树藏族自治州','460');
INSERT INTO `pre_area` VALUES('461','29','海西蒙古族藏族自治州','461');
INSERT INTO `pre_area` VALUES('462','7','呼和浩特市','462');
INSERT INTO `pre_area` VALUES('463','7','包头市','463');
INSERT INTO `pre_area` VALUES('464','7','乌海市','464');
INSERT INTO `pre_area` VALUES('465','7','赤峰市','465');
INSERT INTO `pre_area` VALUES('466','7','通辽市','466');
INSERT INTO `pre_area` VALUES('467','7','鄂尔多斯市','467');
INSERT INTO `pre_area` VALUES('468','7','呼伦贝尔市','468');
INSERT INTO `pre_area` VALUES('469','7','乌兰察布盟','469');
INSERT INTO `pre_area` VALUES('470','7','锡林郭勒盟','470');
INSERT INTO `pre_area` VALUES('471','7','巴彦淖尔盟','471');
INSERT INTO `pre_area` VALUES('472','7','阿拉善盟','472');
INSERT INTO `pre_area` VALUES('473','7','兴安盟','473');
INSERT INTO `pre_area` VALUES('474','26','拉萨市','474');
INSERT INTO `pre_area` VALUES('475','26','那曲地区','475');
INSERT INTO `pre_area` VALUES('476','26','昌都地区','476');
INSERT INTO `pre_area` VALUES('477','26','山南地区','477');
INSERT INTO `pre_area` VALUES('478','26','日喀则地区','478');
INSERT INTO `pre_area` VALUES('479','26','阿里地区','479');
INSERT INTO `pre_area` VALUES('480','26','林芝地区','480');
INSERT INTO `pre_area` VALUES('481','31','乌鲁木齐市','481');
INSERT INTO `pre_area` VALUES('482','31','克拉玛依市','482');
INSERT INTO `pre_area` VALUES('483','31','吐鲁番地区','483');
INSERT INTO `pre_area` VALUES('484','31','哈密地区','484');
INSERT INTO `pre_area` VALUES('485','31','和田地区','485');
INSERT INTO `pre_area` VALUES('486','31','阿克苏地区','486');
INSERT INTO `pre_area` VALUES('487','31','喀什地区','487');
INSERT INTO `pre_area` VALUES('488','31','克孜勒苏柯尔克孜自治州','488');
INSERT INTO `pre_area` VALUES('489','31','巴音郭楞州','489');
INSERT INTO `pre_area` VALUES('490','31','昌吉州','490');
INSERT INTO `pre_area` VALUES('491','31','博尔塔拉州','491');
INSERT INTO `pre_area` VALUES('492','31','伊犁哈萨克自治州','492');
INSERT INTO `pre_area` VALUES('493','31','塔城地区','493');
INSERT INTO `pre_area` VALUES('494','31','阿勒泰州','494');
INSERT INTO `pre_area` VALUES('495','31','石河子市','495');
INSERT INTO `pre_area` VALUES('496','31','阿拉尔市','496');
INSERT INTO `pre_area` VALUES('497','31','图木舒克市','497');
INSERT INTO `pre_area` VALUES('498','31','五家渠市','498');
INSERT INTO `pre_area` VALUES('499','21','南宁市','499');
INSERT INTO `pre_area` VALUES('500','21','柳州市','500');
INSERT INTO `pre_area` VALUES('501','21','桂林市','501');
INSERT INTO `pre_area` VALUES('502','21','梧州市','502');
INSERT INTO `pre_area` VALUES('503','21','北海市','503');
INSERT INTO `pre_area` VALUES('504','21','防城港市','504');
INSERT INTO `pre_area` VALUES('505','21','钦州市','505');
INSERT INTO `pre_area` VALUES('506','21','贵港市','506');
INSERT INTO `pre_area` VALUES('507','21','玉林市','507');
INSERT INTO `pre_area` VALUES('508','21','百色市','508');
INSERT INTO `pre_area` VALUES('509','21','贺州市','509');
INSERT INTO `pre_area` VALUES('510','21','河池市','510');
INSERT INTO `pre_area` VALUES('511','21','来宾市','511');
INSERT INTO `pre_area` VALUES('512','21','崇左市','512');
INSERT INTO `pre_area` VALUES('513','30','银川市','513');
INSERT INTO `pre_area` VALUES('514','30','石嘴山市','514');
INSERT INTO `pre_area` VALUES('515','30','吴忠市','515');
INSERT INTO `pre_area` VALUES('516','30','固原市','516');
INSERT INTO `pre_area` VALUES('517','28','兰州市','517');
INSERT INTO `pre_area` VALUES('518','28','金昌市','518');
INSERT INTO `pre_area` VALUES('519','28','白银市','519');
INSERT INTO `pre_area` VALUES('520','28','天水市','520');
INSERT INTO `pre_area` VALUES('521','28','武威市','521');
INSERT INTO `pre_area` VALUES('522','28','张掖市','522');
INSERT INTO `pre_area` VALUES('523','28','平凉市','523');
INSERT INTO `pre_area` VALUES('524','28','酒泉市','524');
INSERT INTO `pre_area` VALUES('525','28','庆阳市','525');
INSERT INTO `pre_area` VALUES('526','28','甘南藏族自治州','526');
INSERT INTO `pre_area` VALUES('527','28','临夏回族自治州','527');
INSERT INTO `pre_area` VALUES('528','28','定西地区','528');
INSERT INTO `pre_area` VALUES('529','142','和平区','529');
INSERT INTO `pre_area` VALUES('530','142','大东区','530');
INSERT INTO `pre_area` VALUES('531','142','铁西区','531');
INSERT INTO `pre_area` VALUES('532','142','东陵区','532');
INSERT INTO `pre_area` VALUES('533','142','于洪区','533');
INSERT INTO `pre_area` VALUES('534','142','康平县','534');
INSERT INTO `pre_area` VALUES('535','142','新民市','535');
INSERT INTO `pre_area` VALUES('536','142','沈河区','536');
INSERT INTO `pre_area` VALUES('537','142','皇姑区','537');
INSERT INTO `pre_area` VALUES('538','142','苏家屯区','538');
INSERT INTO `pre_area` VALUES('539','142','新城子区','539');
INSERT INTO `pre_area` VALUES('540','142','辽中县','540');
INSERT INTO `pre_area` VALUES('541','142','法库县','541');
INSERT INTO `pre_area` VALUES('542','143','中山区','542');
INSERT INTO `pre_area` VALUES('543','143','沙河口区','543');
INSERT INTO `pre_area` VALUES('544','143','旅顺口区','544');
INSERT INTO `pre_area` VALUES('545','143','长海县','545');
INSERT INTO `pre_area` VALUES('546','143','普兰店市','546');
INSERT INTO `pre_area` VALUES('547','143','庄河市','547');
INSERT INTO `pre_area` VALUES('548','143','西岗区','548');
INSERT INTO `pre_area` VALUES('549','143','甘井子区','549');
INSERT INTO `pre_area` VALUES('550','143','金州区','550');
INSERT INTO `pre_area` VALUES('551','143','瓦房店市','551');
INSERT INTO `pre_area` VALUES('552','144','铁东区','552');
INSERT INTO `pre_area` VALUES('553','144','立山区','553');
INSERT INTO `pre_area` VALUES('554','144','台安县','554');
INSERT INTO `pre_area` VALUES('555','144','海城市','555');
INSERT INTO `pre_area` VALUES('556','144','铁西区','556');
INSERT INTO `pre_area` VALUES('557','144','千山区','557');
INSERT INTO `pre_area` VALUES('558','144','岫岩满族自治县','558');
INSERT INTO `pre_area` VALUES('559','145','新抚区','559');
INSERT INTO `pre_area` VALUES('560','145','望花区','560');
INSERT INTO `pre_area` VALUES('561','145','抚顺县','561');
INSERT INTO `pre_area` VALUES('562','145','清原满族自治县','562');
INSERT INTO `pre_area` VALUES('563','145','东洲区','563');
INSERT INTO `pre_area` VALUES('564','145','顺城区','564');
INSERT INTO `pre_area` VALUES('565','145','新宾满族自治县','565');
INSERT INTO `pre_area` VALUES('566','146','平山区','566');
INSERT INTO `pre_area` VALUES('567','146','明山区','567');
INSERT INTO `pre_area` VALUES('568','146','本溪满族自治县','568');
INSERT INTO `pre_area` VALUES('569','146','桓仁满族自治县','569');
INSERT INTO `pre_area` VALUES('570','146','溪湖区','570');
INSERT INTO `pre_area` VALUES('571','146','南芬区','571');
INSERT INTO `pre_area` VALUES('572','147','元宝区','572');
INSERT INTO `pre_area` VALUES('573','147','振安区','573');
INSERT INTO `pre_area` VALUES('574','147','东港市','574');
INSERT INTO `pre_area` VALUES('575','147','凤城市','575');
INSERT INTO `pre_area` VALUES('576','147','振兴区','576');
INSERT INTO `pre_area` VALUES('577','147','宽甸满族自治县','577');
INSERT INTO `pre_area` VALUES('578','148','古塔区','578');
INSERT INTO `pre_area` VALUES('579','148','太和区','579');
INSERT INTO `pre_area` VALUES('580','148','义县','580');
INSERT INTO `pre_area` VALUES('581','148','北宁市','581');
INSERT INTO `pre_area` VALUES('582','148','凌河区','582');
INSERT INTO `pre_area` VALUES('583','148','黑山县','583');
INSERT INTO `pre_area` VALUES('584','148','凌海市','584');
INSERT INTO `pre_area` VALUES('585','149','连山区','585');
INSERT INTO `pre_area` VALUES('586','149','南票区','586');
INSERT INTO `pre_area` VALUES('587','149','建昌县','587');
INSERT INTO `pre_area` VALUES('588','149','兴城市','588');
INSERT INTO `pre_area` VALUES('589','149','龙港区','589');
INSERT INTO `pre_area` VALUES('590','149','绥中县','590');
INSERT INTO `pre_area` VALUES('591','150','站前区','591');
INSERT INTO `pre_area` VALUES('592','150','鲅鱼圈区','592');
INSERT INTO `pre_area` VALUES('593','150','盖州市','593');
INSERT INTO `pre_area` VALUES('594','150','大石桥市','594');
INSERT INTO `pre_area` VALUES('595','150','西市区','595');
INSERT INTO `pre_area` VALUES('596','150','老边区','596');
INSERT INTO `pre_area` VALUES('597','151','双台子区','597');
INSERT INTO `pre_area` VALUES('598','151','大洼县','598');
INSERT INTO `pre_area` VALUES('599','151','盘山县','599');
INSERT INTO `pre_area` VALUES('600','151','兴隆台区','600');
INSERT INTO `pre_area` VALUES('601','152','海州区','601');
INSERT INTO `pre_area` VALUES('602','152','太平区','602');
INSERT INTO `pre_area` VALUES('603','152','细河区','603');
INSERT INTO `pre_area` VALUES('604','152','彰武县','604');
INSERT INTO `pre_area` VALUES('605','152','新邱区','605');
INSERT INTO `pre_area` VALUES('606','152','清河门区','606');
INSERT INTO `pre_area` VALUES('607','152','阜新蒙古族自治县','607');
INSERT INTO `pre_area` VALUES('608','153','白塔区','608');
INSERT INTO `pre_area` VALUES('609','153','宏伟区','609');
INSERT INTO `pre_area` VALUES('610','153','太子河区','610');
INSERT INTO `pre_area` VALUES('611','153','灯塔市','611');
INSERT INTO `pre_area` VALUES('612','153','文圣区','612');
INSERT INTO `pre_area` VALUES('613','153','弓长岭区','613');
INSERT INTO `pre_area` VALUES('614','153','辽阳县','614');
INSERT INTO `pre_area` VALUES('615','154','银州区','615');
INSERT INTO `pre_area` VALUES('616','154','铁岭县','616');
INSERT INTO `pre_area` VALUES('617','154','昌图县','617');
INSERT INTO `pre_area` VALUES('618','154','开原市','618');
INSERT INTO `pre_area` VALUES('619','154','清河区','619');
INSERT INTO `pre_area` VALUES('620','154','西丰县','620');
INSERT INTO `pre_area` VALUES('621','155','双塔区','621');
INSERT INTO `pre_area` VALUES('622','155','朝阳县','622');
INSERT INTO `pre_area` VALUES('623','155','喀喇沁左翼蒙古族自治县','623');
INSERT INTO `pre_area` VALUES('624','155','凌源市','624');
INSERT INTO `pre_area` VALUES('625','155','龙城区','625');
INSERT INTO `pre_area` VALUES('626','155','建平县','626');
INSERT INTO `pre_area` VALUES('627','155','北票市','627');
INSERT INTO `pre_area` VALUES('628','218','南关区','628');
INSERT INTO `pre_area` VALUES('629','218','朝阳区','629');
INSERT INTO `pre_area` VALUES('630','218','绿园区','630');
INSERT INTO `pre_area` VALUES('631','218','农安县','631');
INSERT INTO `pre_area` VALUES('632','218','榆树市','632');
INSERT INTO `pre_area` VALUES('633','218','德惠市','633');
INSERT INTO `pre_area` VALUES('634','218','宽城区','634');
INSERT INTO `pre_area` VALUES('635','218','二道区','635');
INSERT INTO `pre_area` VALUES('636','218','双阳区','636');
INSERT INTO `pre_area` VALUES('637','218','九台市','637');
INSERT INTO `pre_area` VALUES('638','219','昌邑区','638');
INSERT INTO `pre_area` VALUES('639','219','船营区','639');
INSERT INTO `pre_area` VALUES('640','219','永吉县','640');
INSERT INTO `pre_area` VALUES('641','219','桦甸市','641');
INSERT INTO `pre_area` VALUES('642','219','磐石市','642');
INSERT INTO `pre_area` VALUES('643','219','龙潭区','643');
INSERT INTO `pre_area` VALUES('644','219','丰满区','644');
INSERT INTO `pre_area` VALUES('645','219','蛟河市','645');
INSERT INTO `pre_area` VALUES('646','219','舒兰市','646');
INSERT INTO `pre_area` VALUES('647','220','铁西区','647');
INSERT INTO `pre_area` VALUES('648','220','梨树县','648');
INSERT INTO `pre_area` VALUES('649','220','公主岭市','649');
INSERT INTO `pre_area` VALUES('650','220','双辽市','650');
INSERT INTO `pre_area` VALUES('651','220','铁东区','651');
INSERT INTO `pre_area` VALUES('652','220','伊通满族自治县','652');
INSERT INTO `pre_area` VALUES('653','221','龙山区','653');
INSERT INTO `pre_area` VALUES('654','221','东丰县','654');
INSERT INTO `pre_area` VALUES('655','221','东辽县','655');
INSERT INTO `pre_area` VALUES('656','221','西安区','656');
INSERT INTO `pre_area` VALUES('657','222','东昌区','657');
INSERT INTO `pre_area` VALUES('658','222','通化县','658');
INSERT INTO `pre_area` VALUES('659','222','柳河县','659');
INSERT INTO `pre_area` VALUES('660','222','集安市','660');
INSERT INTO `pre_area` VALUES('661','222','二道江区','661');
INSERT INTO `pre_area` VALUES('662','222','辉南县','662');
INSERT INTO `pre_area` VALUES('663','222','梅河口市','663');
INSERT INTO `pre_area` VALUES('664','223','八道江区','664');
INSERT INTO `pre_area` VALUES('665','223','靖宇县','665');
INSERT INTO `pre_area` VALUES('666','223','江源县','666');
INSERT INTO `pre_area` VALUES('667','223','临江市','667');
INSERT INTO `pre_area` VALUES('668','223','抚松县','668');
INSERT INTO `pre_area` VALUES('669','223','长白朝鲜族自治县','669');
INSERT INTO `pre_area` VALUES('670','224','延吉市','670');
INSERT INTO `pre_area` VALUES('671','224','敦化市','671');
INSERT INTO `pre_area` VALUES('672','224','龙井市','672');
INSERT INTO `pre_area` VALUES('673','224','安图县','673');
INSERT INTO `pre_area` VALUES('674','224','汪清县','674');
INSERT INTO `pre_area` VALUES('675','224','图们市','675');
INSERT INTO `pre_area` VALUES('676','224','珲春市','676');
INSERT INTO `pre_area` VALUES('677','224','和龙市','677');
INSERT INTO `pre_area` VALUES('678','225','洮北区','678');
INSERT INTO `pre_area` VALUES('679','225','通榆县','679');
INSERT INTO `pre_area` VALUES('680','225','大安市','680');
INSERT INTO `pre_area` VALUES('681','225','镇赉县','681');
INSERT INTO `pre_area` VALUES('682','225','洮南市','682');
INSERT INTO `pre_area` VALUES('683','226','宁江区','683');
INSERT INTO `pre_area` VALUES('684','226','长岭县','684');
INSERT INTO `pre_area` VALUES('685','226','扶余县','685');
INSERT INTO `pre_area` VALUES('686','226','前郭尔罗斯蒙古族自治县','686');
INSERT INTO `pre_area` VALUES('687','226','乾安县','687');
INSERT INTO `pre_area` VALUES('689','228','道外区','689');
INSERT INTO `pre_area` VALUES('690','228','动力区','690');
INSERT INTO `pre_area` VALUES('691','228','松北区','691');
INSERT INTO `pre_area` VALUES('692','228','依兰县','692');
INSERT INTO `pre_area` VALUES('693','228','宾县','693');
INSERT INTO `pre_area` VALUES('694','228','木兰县','694');
INSERT INTO `pre_area` VALUES('695','228','延寿县','695');
INSERT INTO `pre_area` VALUES('696','228','双城市','696');
INSERT INTO `pre_area` VALUES('697','228','五常市','697');
INSERT INTO `pre_area` VALUES('698','228','南岗区','698');
INSERT INTO `pre_area` VALUES('699','228','香坊区','699');
INSERT INTO `pre_area` VALUES('700','228','平房区','700');
INSERT INTO `pre_area` VALUES('701','228','呼兰区','701');
INSERT INTO `pre_area` VALUES('702','228','方正县','702');
INSERT INTO `pre_area` VALUES('703','228','巴彦县','703');
INSERT INTO `pre_area` VALUES('704','228','通河县','704');
INSERT INTO `pre_area` VALUES('705','228','阿城市','705');
INSERT INTO `pre_area` VALUES('706','228','尚志市','706');
INSERT INTO `pre_area` VALUES('707','229','龙沙区','707');
INSERT INTO `pre_area` VALUES('708','229','铁锋区','708');
INSERT INTO `pre_area` VALUES('709','229','富拉尔基区','709');
INSERT INTO `pre_area` VALUES('710','229','梅里斯达斡尔族区','710');
INSERT INTO `pre_area` VALUES('711','229','依安县','711');
INSERT INTO `pre_area` VALUES('712','229','甘南县','712');
INSERT INTO `pre_area` VALUES('713','229','克山县','713');
INSERT INTO `pre_area` VALUES('714','229','拜泉县','714');
INSERT INTO `pre_area` VALUES('715','229','建华区','715');
INSERT INTO `pre_area` VALUES('716','229','昂昂溪区','716');
INSERT INTO `pre_area` VALUES('717','229','碾子山区','717');
INSERT INTO `pre_area` VALUES('718','229','龙江县','718');
INSERT INTO `pre_area` VALUES('719','229','泰来县','719');
INSERT INTO `pre_area` VALUES('720','229','富裕县','720');
INSERT INTO `pre_area` VALUES('721','229','克东县','721');
INSERT INTO `pre_area` VALUES('722','229','讷河市','722');
INSERT INTO `pre_area` VALUES('723','230','向阳区','723');
INSERT INTO `pre_area` VALUES('724','230','南山区','724');
INSERT INTO `pre_area` VALUES('725','230','东山区','725');
INSERT INTO `pre_area` VALUES('726','230','萝北县','726');
INSERT INTO `pre_area` VALUES('727','230','工农区','727');
INSERT INTO `pre_area` VALUES('728','230','兴安区','728');
INSERT INTO `pre_area` VALUES('729','230','兴山区','729');
INSERT INTO `pre_area` VALUES('730','230','绥滨县','730');
INSERT INTO `pre_area` VALUES('731','231','尖山区','731');
INSERT INTO `pre_area` VALUES('732','231','四方台区','732');
INSERT INTO `pre_area` VALUES('733','231','集贤县','733');
INSERT INTO `pre_area` VALUES('734','231','宝清县','734');
INSERT INTO `pre_area` VALUES('735','231','岭东区','735');
INSERT INTO `pre_area` VALUES('736','231','宝山区','736');
INSERT INTO `pre_area` VALUES('737','231','友谊县','737');
INSERT INTO `pre_area` VALUES('738','231','饶河县','738');
INSERT INTO `pre_area` VALUES('739','232','鸡冠区','739');
INSERT INTO `pre_area` VALUES('740','232','滴道区','740');
INSERT INTO `pre_area` VALUES('741','232','城子河区','741');
INSERT INTO `pre_area` VALUES('742','232','鸡东县','742');
INSERT INTO `pre_area` VALUES('743','232','密山市','743');
INSERT INTO `pre_area` VALUES('744','232','恒山区','744');
INSERT INTO `pre_area` VALUES('745','232','梨树区','745');
INSERT INTO `pre_area` VALUES('746','232','麻山区','746');
INSERT INTO `pre_area` VALUES('747','232','虎林市','747');
INSERT INTO `pre_area` VALUES('748','233','萨尔图区','748');
INSERT INTO `pre_area` VALUES('749','233','让胡路区','749');
INSERT INTO `pre_area` VALUES('750','233','大同区','750');
INSERT INTO `pre_area` VALUES('751','233','肇源县','751');
INSERT INTO `pre_area` VALUES('752','233','杜尔伯特蒙古族自治县','752');
INSERT INTO `pre_area` VALUES('753','233','龙凤区','753');
INSERT INTO `pre_area` VALUES('754','233','红岗区','754');
INSERT INTO `pre_area` VALUES('755','233','肇州县','755');
INSERT INTO `pre_area` VALUES('756','233','林甸县','756');
INSERT INTO `pre_area` VALUES('757','234','伊春区','757');
INSERT INTO `pre_area` VALUES('758','234','友好区','758');
INSERT INTO `pre_area` VALUES('759','234','翠峦区','759');
INSERT INTO `pre_area` VALUES('760','234','美溪区','760');
INSERT INTO `pre_area` VALUES('761','234','五营区','761');
INSERT INTO `pre_area` VALUES('762','234','汤旺河区','762');
INSERT INTO `pre_area` VALUES('763','234','乌伊岭区','763');
INSERT INTO `pre_area` VALUES('764','234','上甘岭区','764');
INSERT INTO `pre_area` VALUES('765','234','铁力市','765');
INSERT INTO `pre_area` VALUES('766','234','南岔区','766');
INSERT INTO `pre_area` VALUES('767','234','西林区','767');
INSERT INTO `pre_area` VALUES('768','234','新青区','768');
INSERT INTO `pre_area` VALUES('769','234','金山屯区','769');
INSERT INTO `pre_area` VALUES('770','234','乌马河区','770');
INSERT INTO `pre_area` VALUES('771','234','带岭区','771');
INSERT INTO `pre_area` VALUES('772','234','红星区','772');
INSERT INTO `pre_area` VALUES('773','234','嘉荫县','773');
INSERT INTO `pre_area` VALUES('774','235','东安区','774');
INSERT INTO `pre_area` VALUES('775','235','爱民区','775');
INSERT INTO `pre_area` VALUES('776','235','东宁县','776');
INSERT INTO `pre_area` VALUES('777','235','绥芬河市','777');
INSERT INTO `pre_area` VALUES('778','235','宁安市','778');
INSERT INTO `pre_area` VALUES('779','235','阳明区','779');
INSERT INTO `pre_area` VALUES('780','235','西安区','780');
INSERT INTO `pre_area` VALUES('781','235','林口县','781');
INSERT INTO `pre_area` VALUES('782','235','海林市','782');
INSERT INTO `pre_area` VALUES('783','235','穆棱市','783');
INSERT INTO `pre_area` VALUES('784','236','永红区','784');
INSERT INTO `pre_area` VALUES('785','236','前进区','785');
INSERT INTO `pre_area` VALUES('786','236','郊区','786');
INSERT INTO `pre_area` VALUES('787','236','桦川县','787');
INSERT INTO `pre_area` VALUES('788','236','抚远县','788');
INSERT INTO `pre_area` VALUES('789','236','富锦市','789');
INSERT INTO `pre_area` VALUES('790','236','向阳区','790');
INSERT INTO `pre_area` VALUES('791','236','东风区','791');
INSERT INTO `pre_area` VALUES('792','236','桦南县','792');
INSERT INTO `pre_area` VALUES('793','236','汤原县','793');
INSERT INTO `pre_area` VALUES('794','236','同江市','794');
INSERT INTO `pre_area` VALUES('795','237','新兴区','795');
INSERT INTO `pre_area` VALUES('796','237','桃山区','796');
INSERT INTO `pre_area` VALUES('797','237','茄子河区','797');
INSERT INTO `pre_area` VALUES('798','237','勃利县','798');
INSERT INTO `pre_area` VALUES('799','238','爱辉区','799');
INSERT INTO `pre_area` VALUES('800','238','逊克县','800');
INSERT INTO `pre_area` VALUES('801','238','北安市','801');
INSERT INTO `pre_area` VALUES('802','238','嫩江县','802');
INSERT INTO `pre_area` VALUES('803','238','孙吴县','803');
INSERT INTO `pre_area` VALUES('804','238','五大连池市','804');
INSERT INTO `pre_area` VALUES('805','239','北林区','805');
INSERT INTO `pre_area` VALUES('806','239','兰西县','806');
INSERT INTO `pre_area` VALUES('807','239','庆安县','807');
INSERT INTO `pre_area` VALUES('808','239','绥棱县','808');
INSERT INTO `pre_area` VALUES('809','239','肇东市','809');
INSERT INTO `pre_area` VALUES('810','239','望奎县','810');
INSERT INTO `pre_area` VALUES('811','239','青冈县','811');
INSERT INTO `pre_area` VALUES('812','239','明水县','812');
INSERT INTO `pre_area` VALUES('813','239','安达市','813');
INSERT INTO `pre_area` VALUES('814','239','海伦市','814');
INSERT INTO `pre_area` VALUES('815','240','呼玛县','815');
INSERT INTO `pre_area` VALUES('816','240','漠河县','816');
INSERT INTO `pre_area` VALUES('817','240','塔河县','817');
INSERT INTO `pre_area` VALUES('818','35','长安区','818');
INSERT INTO `pre_area` VALUES('819','35','桥西区','819');
INSERT INTO `pre_area` VALUES('820','35','井陉矿区','820');
INSERT INTO `pre_area` VALUES('821','35','井陉县','821');
INSERT INTO `pre_area` VALUES('822','35','栾城县','822');
INSERT INTO `pre_area` VALUES('823','35','灵寿县','823');
INSERT INTO `pre_area` VALUES('824','35','深泽县','824');
INSERT INTO `pre_area` VALUES('825','35','无极县','825');
INSERT INTO `pre_area` VALUES('826','35','元氏县','826');
INSERT INTO `pre_area` VALUES('827','35','辛集市','827');
INSERT INTO `pre_area` VALUES('828','35','晋州市','828');
INSERT INTO `pre_area` VALUES('829','35','鹿泉市','829');
INSERT INTO `pre_area` VALUES('830','35','桥东区','830');
INSERT INTO `pre_area` VALUES('831','35','新华区','831');
INSERT INTO `pre_area` VALUES('832','35','裕华区','832');
INSERT INTO `pre_area` VALUES('833','35','正定县','833');
INSERT INTO `pre_area` VALUES('834','35','行唐县','834');
INSERT INTO `pre_area` VALUES('835','35','高邑县','835');
INSERT INTO `pre_area` VALUES('836','35','赞皇县','836');
INSERT INTO `pre_area` VALUES('837','35','平山县','837');
INSERT INTO `pre_area` VALUES('838','35','赵县','838');
INSERT INTO `pre_area` VALUES('839','35','藁城市','839');
INSERT INTO `pre_area` VALUES('840','35','新乐市','840');
INSERT INTO `pre_area` VALUES('841','36','路南区','841');
INSERT INTO `pre_area` VALUES('842','36','古冶区','842');
INSERT INTO `pre_area` VALUES('843','36','丰南区','843');
INSERT INTO `pre_area` VALUES('844','36','滦县','844');
INSERT INTO `pre_area` VALUES('845','36','乐亭县','845');
INSERT INTO `pre_area` VALUES('846','36','玉田县','846');
INSERT INTO `pre_area` VALUES('847','36','遵化市','847');
INSERT INTO `pre_area` VALUES('848','36','路北区','848');
INSERT INTO `pre_area` VALUES('849','36','开平区','849');
INSERT INTO `pre_area` VALUES('850','36','丰润区','850');
INSERT INTO `pre_area` VALUES('851','36','滦南县','851');
INSERT INTO `pre_area` VALUES('852','36','迁西县','852');
INSERT INTO `pre_area` VALUES('853','36','唐海县','853');
INSERT INTO `pre_area` VALUES('854','36','迁安市','854');
INSERT INTO `pre_area` VALUES('855','37','海港区','855');
INSERT INTO `pre_area` VALUES('856','37','北戴河区','856');
INSERT INTO `pre_area` VALUES('857','37','昌黎县','857');
INSERT INTO `pre_area` VALUES('858','37','卢龙县','858');
INSERT INTO `pre_area` VALUES('859','37','山海关区','859');
INSERT INTO `pre_area` VALUES('860','37','青龙满族自治县','860');
INSERT INTO `pre_area` VALUES('861','37','抚宁县','861');
INSERT INTO `pre_area` VALUES('862','38','邯山区','862');
INSERT INTO `pre_area` VALUES('863','38','复兴区','863');
INSERT INTO `pre_area` VALUES('864','38','邯郸县','864');
INSERT INTO `pre_area` VALUES('865','38','成安县','865');
INSERT INTO `pre_area` VALUES('866','38','涉县','866');
INSERT INTO `pre_area` VALUES('867','38','肥乡县','867');
INSERT INTO `pre_area` VALUES('868','38','邱县','868');
INSERT INTO `pre_area` VALUES('869','38','广平县','869');
INSERT INTO `pre_area` VALUES('870','38','魏县','870');
INSERT INTO `pre_area` VALUES('871','38','武安市','871');
INSERT INTO `pre_area` VALUES('872','38','丛台区','872');
INSERT INTO `pre_area` VALUES('873','38','峰峰矿区','873');
INSERT INTO `pre_area` VALUES('874','38','临漳县','874');
INSERT INTO `pre_area` VALUES('875','38','大名县','875');
INSERT INTO `pre_area` VALUES('876','38','磁县','876');
INSERT INTO `pre_area` VALUES('877','38','永年县','877');
INSERT INTO `pre_area` VALUES('878','38','鸡泽县','878');
INSERT INTO `pre_area` VALUES('879','38','馆陶县','879');
INSERT INTO `pre_area` VALUES('880','38','曲周县','880');
INSERT INTO `pre_area` VALUES('881','39','桥东区','881');
INSERT INTO `pre_area` VALUES('882','39','邢台县','882');
INSERT INTO `pre_area` VALUES('883','39','内丘县','883');
INSERT INTO `pre_area` VALUES('884','39','隆尧县','884');
INSERT INTO `pre_area` VALUES('885','39','南和县','885');
INSERT INTO `pre_area` VALUES('886','39','巨鹿县','886');
INSERT INTO `pre_area` VALUES('887','39','广宗县','887');
INSERT INTO `pre_area` VALUES('888','39','威县','888');
INSERT INTO `pre_area` VALUES('889','39','临西县','889');
INSERT INTO `pre_area` VALUES('890','39','沙河市','890');
INSERT INTO `pre_area` VALUES('891','39','桥西区','891');
INSERT INTO `pre_area` VALUES('892','39','临城县','892');
INSERT INTO `pre_area` VALUES('893','39','柏乡县','893');
INSERT INTO `pre_area` VALUES('894','39','任县','894');
INSERT INTO `pre_area` VALUES('895','39','宁晋县','895');
INSERT INTO `pre_area` VALUES('896','39','新河县','896');
INSERT INTO `pre_area` VALUES('897','39','平乡县','897');
INSERT INTO `pre_area` VALUES('898','39','清河县','898');
INSERT INTO `pre_area` VALUES('899','39','南宫市','899');
INSERT INTO `pre_area` VALUES('900','40','新市区','900');
INSERT INTO `pre_area` VALUES('901','40','南市区','901');
INSERT INTO `pre_area` VALUES('902','40','清苑县','902');
INSERT INTO `pre_area` VALUES('903','40','阜平县','903');
INSERT INTO `pre_area` VALUES('904','40','定兴县','904');
INSERT INTO `pre_area` VALUES('905','40','高阳县','905');
INSERT INTO `pre_area` VALUES('906','40','涞源县','906');
INSERT INTO `pre_area` VALUES('907','40','安新县','907');
INSERT INTO `pre_area` VALUES('908','40','曲阳县','908');
INSERT INTO `pre_area` VALUES('909','40','顺平县','909');
INSERT INTO `pre_area` VALUES('910','40','雄县','910');
INSERT INTO `pre_area` VALUES('911','40','定州市','911');
INSERT INTO `pre_area` VALUES('912','40','高碑店市','912');
INSERT INTO `pre_area` VALUES('913','40','北市区','913');
INSERT INTO `pre_area` VALUES('914','40','满城县','914');
INSERT INTO `pre_area` VALUES('915','40','涞水县','915');
INSERT INTO `pre_area` VALUES('916','40','徐水县','916');
INSERT INTO `pre_area` VALUES('917','40','唐县','917');
INSERT INTO `pre_area` VALUES('918','40','容城县','918');
INSERT INTO `pre_area` VALUES('919','40','望都县','919');
INSERT INTO `pre_area` VALUES('920','40','易县','920');
INSERT INTO `pre_area` VALUES('921','40','蠡县','921');
INSERT INTO `pre_area` VALUES('922','40','博野县','922');
INSERT INTO `pre_area` VALUES('923','40','涿州市','923');
INSERT INTO `pre_area` VALUES('924','40','安国市','924');
INSERT INTO `pre_area` VALUES('925','41','桥东区','925');
INSERT INTO `pre_area` VALUES('926','41','宣化区','926');
INSERT INTO `pre_area` VALUES('927','41','宣化县','927');
INSERT INTO `pre_area` VALUES('928','41','康保县','928');
INSERT INTO `pre_area` VALUES('929','41','尚义县','929');
INSERT INTO `pre_area` VALUES('930','41','阳原县','930');
INSERT INTO `pre_area` VALUES('931','41','万全县','931');
INSERT INTO `pre_area` VALUES('932','41','涿鹿县','932');
INSERT INTO `pre_area` VALUES('933','41','崇礼县','933');
INSERT INTO `pre_area` VALUES('934','41','桥西区','934');
INSERT INTO `pre_area` VALUES('935','41','下花园区','935');
INSERT INTO `pre_area` VALUES('936','41','张北县','936');
INSERT INTO `pre_area` VALUES('937','41','沽源县','937');
INSERT INTO `pre_area` VALUES('938','41','蔚县','938');
INSERT INTO `pre_area` VALUES('939','41','怀安县','939');
INSERT INTO `pre_area` VALUES('940','41','怀来县','940');
INSERT INTO `pre_area` VALUES('941','41','赤城县','941');
INSERT INTO `pre_area` VALUES('942','42','双桥区','942');
INSERT INTO `pre_area` VALUES('943','42','鹰手营子矿区','943');
INSERT INTO `pre_area` VALUES('944','42','兴隆县','944');
INSERT INTO `pre_area` VALUES('945','42','滦平县','945');
INSERT INTO `pre_area` VALUES('946','42','丰宁满族自治县','946');
INSERT INTO `pre_area` VALUES('947','42','围场满族蒙古族自治县','947');
INSERT INTO `pre_area` VALUES('948','42','双滦区','948');
INSERT INTO `pre_area` VALUES('949','42','承德县','949');
INSERT INTO `pre_area` VALUES('950','42','平泉县','950');
INSERT INTO `pre_area` VALUES('951','42','隆化县','951');
INSERT INTO `pre_area` VALUES('952','42','宽城满族自治县','952');
INSERT INTO `pre_area` VALUES('953','44','安次区','953');
INSERT INTO `pre_area` VALUES('954','44','固安县','954');
INSERT INTO `pre_area` VALUES('955','44','香河县','955');
INSERT INTO `pre_area` VALUES('956','44','文安县','956');
INSERT INTO `pre_area` VALUES('957','44','霸州市','957');
INSERT INTO `pre_area` VALUES('958','44','广阳区','958');
INSERT INTO `pre_area` VALUES('959','44','永清县','959');
INSERT INTO `pre_area` VALUES('960','44','大城县','960');
INSERT INTO `pre_area` VALUES('961','44','大厂回族自治县','961');
INSERT INTO `pre_area` VALUES('962','44','三河市','962');
INSERT INTO `pre_area` VALUES('963','45','桃城区','963');
INSERT INTO `pre_area` VALUES('964','45','武邑县','964');
INSERT INTO `pre_area` VALUES('965','45','饶阳县','965');
INSERT INTO `pre_area` VALUES('966','45','故城县','966');
INSERT INTO `pre_area` VALUES('967','45','阜城县','967');
INSERT INTO `pre_area` VALUES('968','45','深州市','968');
INSERT INTO `pre_area` VALUES('969','45','枣强县','969');
INSERT INTO `pre_area` VALUES('970','45','武强县','970');
INSERT INTO `pre_area` VALUES('971','45','安平县','971');
INSERT INTO `pre_area` VALUES('972','45','景县','972');
INSERT INTO `pre_area` VALUES('973','45','冀州市','973');
INSERT INTO `pre_area` VALUES('974','43','新华区','974');
INSERT INTO `pre_area` VALUES('975','43','沧县','975');
INSERT INTO `pre_area` VALUES('976','43','东光县','976');
INSERT INTO `pre_area` VALUES('977','43','盐山县','977');
INSERT INTO `pre_area` VALUES('978','43','南皮县','978');
INSERT INTO `pre_area` VALUES('979','43','献县','979');
INSERT INTO `pre_area` VALUES('980','43','泊头市','980');
INSERT INTO `pre_area` VALUES('981','43','黄骅市','981');
INSERT INTO `pre_area` VALUES('982','43','运河区','982');
INSERT INTO `pre_area` VALUES('983','43','青县','983');
INSERT INTO `pre_area` VALUES('984','43','海兴县','984');
INSERT INTO `pre_area` VALUES('985','43','肃宁县','985');
INSERT INTO `pre_area` VALUES('986','43','吴桥县','986');
INSERT INTO `pre_area` VALUES('987','43','孟村回族自治县','987');
INSERT INTO `pre_area` VALUES('988','43','任丘市','988');
INSERT INTO `pre_area` VALUES('989','43','河间市','989');
INSERT INTO `pre_area` VALUES('990','241','小店区','990');
INSERT INTO `pre_area` VALUES('991','241','杏花岭区','991');
INSERT INTO `pre_area` VALUES('992','241','万柏林区','992');
INSERT INTO `pre_area` VALUES('993','241','清徐县','993');
INSERT INTO `pre_area` VALUES('994','241','娄烦县','994');
INSERT INTO `pre_area` VALUES('995','241','古交市','995');
INSERT INTO `pre_area` VALUES('996','241','迎泽区','996');
INSERT INTO `pre_area` VALUES('997','241','尖草坪区','997');
INSERT INTO `pre_area` VALUES('998','241','晋源区','998');
INSERT INTO `pre_area` VALUES('999','241','阳曲县','999');
INSERT INTO `pre_area` VALUES('1000','242','城区','1000');
INSERT INTO `pre_area` VALUES('1001','242','南郊区','1001');
INSERT INTO `pre_area` VALUES('1002','242','阳高县','1002');
INSERT INTO `pre_area` VALUES('1003','242','广灵县','1003');
INSERT INTO `pre_area` VALUES('1004','242','浑源县','1004');
INSERT INTO `pre_area` VALUES('1005','242','大同县','1005');
INSERT INTO `pre_area` VALUES('1006','242','矿区','1006');
INSERT INTO `pre_area` VALUES('1007','242','新荣区','1007');
INSERT INTO `pre_area` VALUES('1008','242','天镇县','1008');
INSERT INTO `pre_area` VALUES('1009','242','灵丘县','1009');
INSERT INTO `pre_area` VALUES('1010','242','左云县','1010');
INSERT INTO `pre_area` VALUES('1011','243','城区','1011');
INSERT INTO `pre_area` VALUES('1012','243','郊区','1012');
INSERT INTO `pre_area` VALUES('1013','243','盂县','1013');
INSERT INTO `pre_area` VALUES('1014','243','矿区','1014');
INSERT INTO `pre_area` VALUES('1015','243','平定县','1015');
INSERT INTO `pre_area` VALUES('1016','244','城区','1016');
INSERT INTO `pre_area` VALUES('1017','244','长治县','1017');
INSERT INTO `pre_area` VALUES('1018','244','屯留县','1018');
INSERT INTO `pre_area` VALUES('1019','244','黎城县','1019');
INSERT INTO `pre_area` VALUES('1020','244','长子县','1020');
INSERT INTO `pre_area` VALUES('1021','244','沁县','1021');
INSERT INTO `pre_area` VALUES('1022','244','潞城市','1022');
INSERT INTO `pre_area` VALUES('1023','244','郊区','1023');
INSERT INTO `pre_area` VALUES('1024','244','襄垣县','1024');
INSERT INTO `pre_area` VALUES('1025','244','平顺县','1025');
INSERT INTO `pre_area` VALUES('1026','244','壶关县','1026');
INSERT INTO `pre_area` VALUES('1027','244','武乡县','1027');
INSERT INTO `pre_area` VALUES('1028','244','沁源县','1028');
INSERT INTO `pre_area` VALUES('1029','245','城区','1029');
INSERT INTO `pre_area` VALUES('1030','245','阳城县','1030');
INSERT INTO `pre_area` VALUES('1031','245','泽州县','1031');
INSERT INTO `pre_area` VALUES('1032','245','高平市','1032');
INSERT INTO `pre_area` VALUES('1033','245','沁水县','1033');
INSERT INTO `pre_area` VALUES('1034','245','陵川县','1034');
INSERT INTO `pre_area` VALUES('1035','246','朔城区','1035');
INSERT INTO `pre_area` VALUES('1036','246','怀仁县','1036');
INSERT INTO `pre_area` VALUES('1037','246','平鲁区','1037');
INSERT INTO `pre_area` VALUES('1038','246','山阴县','1038');
INSERT INTO `pre_area` VALUES('1039','246','右玉县','1039');
INSERT INTO `pre_area` VALUES('1040','246','应县','1040');
INSERT INTO `pre_area` VALUES('1041','247','榆次区','1041');
INSERT INTO `pre_area` VALUES('1042','247','左权县','1042');
INSERT INTO `pre_area` VALUES('1043','247','昔阳县','1043');
INSERT INTO `pre_area` VALUES('1044','247','太谷县','1044');
INSERT INTO `pre_area` VALUES('1045','247','平遥县','1045');
INSERT INTO `pre_area` VALUES('1046','247','介休市','1046');
INSERT INTO `pre_area` VALUES('1047','247','榆社县','1047');
INSERT INTO `pre_area` VALUES('1048','247','和顺县','1048');
INSERT INTO `pre_area` VALUES('1049','247','寿阳县','1049');
INSERT INTO `pre_area` VALUES('1050','247','祁县','1050');
INSERT INTO `pre_area` VALUES('1051','247','灵石县','1051');
INSERT INTO `pre_area` VALUES('1052','248','盐湖区','1052');
INSERT INTO `pre_area` VALUES('1053','248','万荣县','1053');
INSERT INTO `pre_area` VALUES('1054','248','稷山县','1054');
INSERT INTO `pre_area` VALUES('1055','248','绛县','1055');
INSERT INTO `pre_area` VALUES('1056','248','夏县','1056');
INSERT INTO `pre_area` VALUES('1057','248','芮城县','1057');
INSERT INTO `pre_area` VALUES('1058','248','河津市','1058');
INSERT INTO `pre_area` VALUES('1059','248','临猗县','1059');
INSERT INTO `pre_area` VALUES('1060','248','闻喜县','1060');
INSERT INTO `pre_area` VALUES('1061','248','新绛县','1061');
INSERT INTO `pre_area` VALUES('1062','248','垣曲县','1062');
INSERT INTO `pre_area` VALUES('1063','248','平陆县','1063');
INSERT INTO `pre_area` VALUES('1064','248','永济市','1064');
INSERT INTO `pre_area` VALUES('1065','249','忻府区','1065');
INSERT INTO `pre_area` VALUES('1066','249','五台县','1066');
INSERT INTO `pre_area` VALUES('1067','249','繁峙县','1067');
INSERT INTO `pre_area` VALUES('1068','249','静乐县','1068');
INSERT INTO `pre_area` VALUES('1069','249','五寨县','1069');
INSERT INTO `pre_area` VALUES('1070','249','河曲县','1070');
INSERT INTO `pre_area` VALUES('1071','249','偏关县','1071');
INSERT INTO `pre_area` VALUES('1072','249','原平市','1072');
INSERT INTO `pre_area` VALUES('1073','249','定襄县','1073');
INSERT INTO `pre_area` VALUES('1074','249','代县','1074');
INSERT INTO `pre_area` VALUES('1075','249','宁武县','1075');
INSERT INTO `pre_area` VALUES('1076','249','神池县','1076');
INSERT INTO `pre_area` VALUES('1077','249','岢岚县','1077');
INSERT INTO `pre_area` VALUES('1078','249','保德县','1078');
INSERT INTO `pre_area` VALUES('1079','250','尧都区','1079');
INSERT INTO `pre_area` VALUES('1080','250','翼城县','1080');
INSERT INTO `pre_area` VALUES('1081','250','洪洞县','1081');
INSERT INTO `pre_area` VALUES('1082','250','安泽县','1082');
INSERT INTO `pre_area` VALUES('1083','250','吉县','1083');
INSERT INTO `pre_area` VALUES('1084','250','大宁县','1084');
INSERT INTO `pre_area` VALUES('1085','250','永和县','1085');
INSERT INTO `pre_area` VALUES('1086','250','汾西县','1086');
INSERT INTO `pre_area` VALUES('1087','250','霍州市','1087');
INSERT INTO `pre_area` VALUES('1088','250','曲沃县','1088');
INSERT INTO `pre_area` VALUES('1089','250','襄汾县','1089');
INSERT INTO `pre_area` VALUES('1090','250','古县','1090');
INSERT INTO `pre_area` VALUES('1091','250','浮山县乡宁县','1091');
INSERT INTO `pre_area` VALUES('1092','250','隰县','1092');
INSERT INTO `pre_area` VALUES('1093','250','蒲县','1093');
INSERT INTO `pre_area` VALUES('1094','250','侯马市','1094');
INSERT INTO `pre_area` VALUES('1095','251','离石区','1095');
INSERT INTO `pre_area` VALUES('1096','251','交城县','1096');
INSERT INTO `pre_area` VALUES('1097','251','临县','1097');
INSERT INTO `pre_area` VALUES('1098','251','石楼县','1098');
INSERT INTO `pre_area` VALUES('1099','251','方山县','1099');
INSERT INTO `pre_area` VALUES('1100','251','交口县','1100');
INSERT INTO `pre_area` VALUES('1101','251','汾阳市','1101');
INSERT INTO `pre_area` VALUES('1102','251','文水县','1102');
INSERT INTO `pre_area` VALUES('1103','251','兴县','1103');
INSERT INTO `pre_area` VALUES('1104','251','柳林县','1104');
INSERT INTO `pre_area` VALUES('1105','251','岚县','1105');
INSERT INTO `pre_area` VALUES('1106','251','中阳县','1106');
INSERT INTO `pre_area` VALUES('1107','251','孝义市','1107');
INSERT INTO `pre_area` VALUES('1108','252','中原区','1108');
INSERT INTO `pre_area` VALUES('1109','252','管城回族区','1109');
INSERT INTO `pre_area` VALUES('1110','252','上街区','1110');
INSERT INTO `pre_area` VALUES('1111','252','中牟县','1111');
INSERT INTO `pre_area` VALUES('1112','252','荥阳市','1112');
INSERT INTO `pre_area` VALUES('1113','252','新郑市','1113');
INSERT INTO `pre_area` VALUES('1114','252','登封市','1114');
INSERT INTO `pre_area` VALUES('1115','252','二七区','1115');
INSERT INTO `pre_area` VALUES('1116','252','金水区','1116');
INSERT INTO `pre_area` VALUES('1117','252','邙山区','1117');
INSERT INTO `pre_area` VALUES('1118','252','巩义市','1118');
INSERT INTO `pre_area` VALUES('1119','252','新密市','1119');
INSERT INTO `pre_area` VALUES('1120','253','龙亭区','1120');
INSERT INTO `pre_area` VALUES('1121','253','鼓楼区','1121');
INSERT INTO `pre_area` VALUES('1122','253','郊区','1122');
INSERT INTO `pre_area` VALUES('1123','253','通许县','1123');
INSERT INTO `pre_area` VALUES('1124','253','开封县','1124');
INSERT INTO `pre_area` VALUES('1125','253','兰考县','1125');
INSERT INTO `pre_area` VALUES('1126','253','顺河回族区','1126');
INSERT INTO `pre_area` VALUES('1127','253','南关区','1127');
INSERT INTO `pre_area` VALUES('1128','253','杞县','1128');
INSERT INTO `pre_area` VALUES('1129','253','尉氏县','1129');
INSERT INTO `pre_area` VALUES('1130','254','老城区','1130');
INSERT INTO `pre_area` VALUES('1131','254','廛河回族区','1131');
INSERT INTO `pre_area` VALUES('1132','254','吉利区','1132');
INSERT INTO `pre_area` VALUES('1133','254','孟津县','1133');
INSERT INTO `pre_area` VALUES('1134','254','栾川县','1134');
INSERT INTO `pre_area` VALUES('1135','254','汝阳县','1135');
INSERT INTO `pre_area` VALUES('1136','254','洛宁县','1136');
INSERT INTO `pre_area` VALUES('1137','254','偃师市','1137');
INSERT INTO `pre_area` VALUES('1138','254','西工区','1138');
INSERT INTO `pre_area` VALUES('1139','254','涧西区','1139');
INSERT INTO `pre_area` VALUES('1140','254','洛龙区','1140');
INSERT INTO `pre_area` VALUES('1141','254','新安县','1141');
INSERT INTO `pre_area` VALUES('1142','254','嵩县','1142');
INSERT INTO `pre_area` VALUES('1143','254','宜阳县','1143');
INSERT INTO `pre_area` VALUES('1144','254','伊川县','1144');
INSERT INTO `pre_area` VALUES('1145','255','新华区','1145');
INSERT INTO `pre_area` VALUES('1146','255','石龙区','1146');
INSERT INTO `pre_area` VALUES('1147','255','宝丰县','1147');
INSERT INTO `pre_area` VALUES('1148','255','鲁山县','1148');
INSERT INTO `pre_area` VALUES('1149','255','舞钢市','1149');
INSERT INTO `pre_area` VALUES('1150','255','汝州市','1150');
INSERT INTO `pre_area` VALUES('1151','255','卫东区','1151');
INSERT INTO `pre_area` VALUES('1152','255','湛河区','1152');
INSERT INTO `pre_area` VALUES('1153','255','叶县','1153');
INSERT INTO `pre_area` VALUES('1154','255','郏县','1154');
INSERT INTO `pre_area` VALUES('1155','255','林州市','1155');
INSERT INTO `pre_area` VALUES('1156','256','解放区','1156');
INSERT INTO `pre_area` VALUES('1157','256','马村区','1157');
INSERT INTO `pre_area` VALUES('1158','256','修武县','1158');
INSERT INTO `pre_area` VALUES('1159','256','武陟县','1159');
INSERT INTO `pre_area` VALUES('1160','256','济源市','1160');
INSERT INTO `pre_area` VALUES('1161','256','孟州市','1161');
INSERT INTO `pre_area` VALUES('1162','256','中站区','1162');
INSERT INTO `pre_area` VALUES('1163','256','山阳区','1163');
INSERT INTO `pre_area` VALUES('1164','256','博爱县','1164');
INSERT INTO `pre_area` VALUES('1165','256','温县','1165');
INSERT INTO `pre_area` VALUES('1166','256','沁阳市','1166');
INSERT INTO `pre_area` VALUES('1167','257','鹤山区','1167');
INSERT INTO `pre_area` VALUES('1168','257','淇滨区','1168');
INSERT INTO `pre_area` VALUES('1169','257','淇县','1169');
INSERT INTO `pre_area` VALUES('1170','257','山城区','1170');
INSERT INTO `pre_area` VALUES('1171','257','浚县','1171');
INSERT INTO `pre_area` VALUES('1172','258','红旗区','1172');
INSERT INTO `pre_area` VALUES('1173','258','获嘉县','1173');
INSERT INTO `pre_area` VALUES('1174','258','延津县','1174');
INSERT INTO `pre_area` VALUES('1175','258','长垣县','1175');
INSERT INTO `pre_area` VALUES('1176','258','红旗区','1176');
INSERT INTO `pre_area` VALUES('1177','258','获嘉县','1177');
INSERT INTO `pre_area` VALUES('1178','258','延津县','1178');
INSERT INTO `pre_area` VALUES('1179','258','长垣县','1179');
INSERT INTO `pre_area` VALUES('1180','259','文峰区','1180');
INSERT INTO `pre_area` VALUES('1181','259','殷都区','1181');
INSERT INTO `pre_area` VALUES('1182','259','安阳县','1182');
INSERT INTO `pre_area` VALUES('1183','259','滑县','1183');
INSERT INTO `pre_area` VALUES('1184','259','北关区','1184');
INSERT INTO `pre_area` VALUES('1185','259','龙安区','1185');
INSERT INTO `pre_area` VALUES('1186','259','汤阴县','1186');
INSERT INTO `pre_area` VALUES('1187','259','内黄县','1187');
INSERT INTO `pre_area` VALUES('1188','260','清丰县','1188');
INSERT INTO `pre_area` VALUES('1189','260','范县','1189');
INSERT INTO `pre_area` VALUES('1190','260','濮阳县','1190');
INSERT INTO `pre_area` VALUES('1191','260','南乐县','1191');
INSERT INTO `pre_area` VALUES('1192','260','台前县','1192');
INSERT INTO `pre_area` VALUES('1193','261','魏都区','1193');
INSERT INTO `pre_area` VALUES('1194','261','鄢陵县','1194');
INSERT INTO `pre_area` VALUES('1195','261','禹州市','1195');
INSERT INTO `pre_area` VALUES('1196','261','长葛市','1196');
INSERT INTO `pre_area` VALUES('1197','261','许昌县','1197');
INSERT INTO `pre_area` VALUES('1198','261','襄城县','1198');
INSERT INTO `pre_area` VALUES('1199','262','源汇区','1199');
INSERT INTO `pre_area` VALUES('1200','262','召陵区','1200');
INSERT INTO `pre_area` VALUES('1201','262','临颍县','1201');
INSERT INTO `pre_area` VALUES('1202','262','郾城区','1202');
INSERT INTO `pre_area` VALUES('1203','262','舞阳县','1203');
INSERT INTO `pre_area` VALUES('1204','263','湖滨区','1204');
INSERT INTO `pre_area` VALUES('1205','263','陕县','1205');
INSERT INTO `pre_area` VALUES('1206','263','义马市','1206');
INSERT INTO `pre_area` VALUES('1207','263','灵宝市','1207');
INSERT INTO `pre_area` VALUES('1208','263','渑池县','1208');
INSERT INTO `pre_area` VALUES('1209','263','卢氏县','1209');
INSERT INTO `pre_area` VALUES('1210','264','宛城区','1210');
INSERT INTO `pre_area` VALUES('1211','264','南召县','1211');
INSERT INTO `pre_area` VALUES('1212','264','西峡县','1212');
INSERT INTO `pre_area` VALUES('1213','264','内乡县','1213');
INSERT INTO `pre_area` VALUES('1214','264','社旗县','1214');
INSERT INTO `pre_area` VALUES('1215','264','新野县','1215');
INSERT INTO `pre_area` VALUES('1216','264','邓州市','1216');
INSERT INTO `pre_area` VALUES('1217','264','卧龙区','1217');
INSERT INTO `pre_area` VALUES('1218','264','方城县','1218');
INSERT INTO `pre_area` VALUES('1219','264','镇平县','1219');
INSERT INTO `pre_area` VALUES('1220','264','淅川县','1220');
INSERT INTO `pre_area` VALUES('1221','264','唐河县','1221');
INSERT INTO `pre_area` VALUES('1222','264','桐柏县','1222');
INSERT INTO `pre_area` VALUES('1223','265','梁园区','1223');
INSERT INTO `pre_area` VALUES('1224','265','民权县','1224');
INSERT INTO `pre_area` VALUES('1225','265','宁陵县','1225');
INSERT INTO `pre_area` VALUES('1226','265','虞城县','1226');
INSERT INTO `pre_area` VALUES('1227','265','永城市','1227');
INSERT INTO `pre_area` VALUES('1228','265','睢阳区','1228');
INSERT INTO `pre_area` VALUES('1229','265','睢县','1229');
INSERT INTO `pre_area` VALUES('1230','265','柘城县','1230');
INSERT INTO `pre_area` VALUES('1231','265','夏邑县','1231');
INSERT INTO `pre_area` VALUES('1232','266','师河区','1232');
INSERT INTO `pre_area` VALUES('1233','266','罗山县','1233');
INSERT INTO `pre_area` VALUES('1234','266','新县','1234');
INSERT INTO `pre_area` VALUES('1235','266','固始县','1235');
INSERT INTO `pre_area` VALUES('1236','266','淮滨县','1236');
INSERT INTO `pre_area` VALUES('1237','266','息县','1237');
INSERT INTO `pre_area` VALUES('1238','266','平桥区','1238');
INSERT INTO `pre_area` VALUES('1239','266','光山县','1239');
INSERT INTO `pre_area` VALUES('1240','266','商城县','1240');
INSERT INTO `pre_area` VALUES('1241','266','潢川县','1241');
INSERT INTO `pre_area` VALUES('1242','267','川汇区','1242');
INSERT INTO `pre_area` VALUES('1243','267','西华县','1243');
INSERT INTO `pre_area` VALUES('1244','267','沈丘县','1244');
INSERT INTO `pre_area` VALUES('1245','267','淮阳县','1245');
INSERT INTO `pre_area` VALUES('1246','267','鹿邑县','1246');
INSERT INTO `pre_area` VALUES('1247','267','项城市','1247');
INSERT INTO `pre_area` VALUES('1248','267','扶沟县','1248');
INSERT INTO `pre_area` VALUES('1249','267','商水县','1249');
INSERT INTO `pre_area` VALUES('1250','267','郸城县','1250');
INSERT INTO `pre_area` VALUES('1251','267','太康县','1251');
INSERT INTO `pre_area` VALUES('1252','268','驿城区','1252');
INSERT INTO `pre_area` VALUES('1253','268','上蔡县','1253');
INSERT INTO `pre_area` VALUES('1254','268','正阳县','1254');
INSERT INTO `pre_area` VALUES('1255','268','泌阳县','1255');
INSERT INTO `pre_area` VALUES('1256','268','遂平县','1256');
INSERT INTO `pre_area` VALUES('1257','268','新蔡县','1257');
INSERT INTO `pre_area` VALUES('1258','268','西平县','1258');
INSERT INTO `pre_area` VALUES('1259','268','平舆县','1259');
INSERT INTO `pre_area` VALUES('1260','268','确山县','1260');
INSERT INTO `pre_area` VALUES('1261','268','汝南县','1261');
INSERT INTO `pre_area` VALUES('1262','270','历下区','1262');
INSERT INTO `pre_area` VALUES('1263','270','槐荫区','1263');
INSERT INTO `pre_area` VALUES('1264','270','历城区','1264');
INSERT INTO `pre_area` VALUES('1265','270','平阴县','1265');
INSERT INTO `pre_area` VALUES('1266','270','商河县','1266');
INSERT INTO `pre_area` VALUES('1267','270','章丘市','1267');
INSERT INTO `pre_area` VALUES('1268','270','市中区','1268');
INSERT INTO `pre_area` VALUES('1269','270','天桥区','1269');
INSERT INTO `pre_area` VALUES('1270','270','长清区','1270');
INSERT INTO `pre_area` VALUES('1271','270','济阳县','1271');
INSERT INTO `pre_area` VALUES('1272','271','市南区','1272');
INSERT INTO `pre_area` VALUES('1273','271','四方区','1273');
INSERT INTO `pre_area` VALUES('1274','271','崂山区','1274');
INSERT INTO `pre_area` VALUES('1275','271','城阳区','1275');
INSERT INTO `pre_area` VALUES('1276','271','即墨市','1276');
INSERT INTO `pre_area` VALUES('1277','271','胶南市','1277');
INSERT INTO `pre_area` VALUES('1278','271','莱西市','1278');
INSERT INTO `pre_area` VALUES('1279','271','市北区','1279');
INSERT INTO `pre_area` VALUES('1280','271','黄岛区','1280');
INSERT INTO `pre_area` VALUES('1281','271','李沧区','1281');
INSERT INTO `pre_area` VALUES('1282','271','胶州市','1282');
INSERT INTO `pre_area` VALUES('1283','271','平度市','1283');
INSERT INTO `pre_area` VALUES('1284','272','淄川区','1284');
INSERT INTO `pre_area` VALUES('1285','272','博山区','1285');
INSERT INTO `pre_area` VALUES('1286','272','周村区','1286');
INSERT INTO `pre_area` VALUES('1287','272','高青县','1287');
INSERT INTO `pre_area` VALUES('1288','272','沂源县','1288');
INSERT INTO `pre_area` VALUES('1289','272','张店区','1289');
INSERT INTO `pre_area` VALUES('1290','272','临淄区','1290');
INSERT INTO `pre_area` VALUES('1291','272','桓台县','1291');
INSERT INTO `pre_area` VALUES('1292','273','市中区','1292');
INSERT INTO `pre_area` VALUES('1293','273','峄城区','1293');
INSERT INTO `pre_area` VALUES('1294','273','山亭区','1294');
INSERT INTO `pre_area` VALUES('1295','273','滕州市','1295');
INSERT INTO `pre_area` VALUES('1296','273','薛城区','1296');
INSERT INTO `pre_area` VALUES('1297','273','台儿庄区','1297');
INSERT INTO `pre_area` VALUES('1298','274','东营区','1298');
INSERT INTO `pre_area` VALUES('1299','274','垦利县','1299');
INSERT INTO `pre_area` VALUES('1300','274','广饶县','1300');
INSERT INTO `pre_area` VALUES('1301','274','河口区','1301');
INSERT INTO `pre_area` VALUES('1302','274','利津县','1302');
INSERT INTO `pre_area` VALUES('1303','275','潍城区','1303');
INSERT INTO `pre_area` VALUES('1304','275','坊子区','1304');
INSERT INTO `pre_area` VALUES('1305','275','临朐县','1305');
INSERT INTO `pre_area` VALUES('1306','275','青州市','1306');
INSERT INTO `pre_area` VALUES('1307','275','寿光市','1307');
INSERT INTO `pre_area` VALUES('1308','275','高密市','1308');
INSERT INTO `pre_area` VALUES('1309','275','昌邑市','1309');
INSERT INTO `pre_area` VALUES('1310','275','寒亭区','1310');
INSERT INTO `pre_area` VALUES('1311','275','奎文区','1311');
INSERT INTO `pre_area` VALUES('1312','275','昌乐县','1312');
INSERT INTO `pre_area` VALUES('1313','275','诸城市','1313');
INSERT INTO `pre_area` VALUES('1314','275','安丘市','1314');
INSERT INTO `pre_area` VALUES('1315','276','芝罘区','1315');
INSERT INTO `pre_area` VALUES('1316','276','牟平区','1316');
INSERT INTO `pre_area` VALUES('1317','276','长岛县','1317');
INSERT INTO `pre_area` VALUES('1318','276','莱阳市','1318');
INSERT INTO `pre_area` VALUES('1319','276','蓬莱市','1319');
INSERT INTO `pre_area` VALUES('1320','276','栖霞市','1320');
INSERT INTO `pre_area` VALUES('1321','276','海阳市','1321');
INSERT INTO `pre_area` VALUES('1322','276','福山区','1322');
INSERT INTO `pre_area` VALUES('1323','276','莱山区','1323');
INSERT INTO `pre_area` VALUES('1324','276','龙口市','1324');
INSERT INTO `pre_area` VALUES('1325','276','莱州市','1325');
INSERT INTO `pre_area` VALUES('1326','276','招远市','1326');
INSERT INTO `pre_area` VALUES('1327','277','环翠区','1327');
INSERT INTO `pre_area` VALUES('1328','277','荣成市','1328');
INSERT INTO `pre_area` VALUES('1329','277','乳山市','1329');
INSERT INTO `pre_area` VALUES('1330','277','文登市','1330');
INSERT INTO `pre_area` VALUES('1331','278','市中区','1331');
INSERT INTO `pre_area` VALUES('1332','278','微山县','1332');
INSERT INTO `pre_area` VALUES('1333','278','金乡县','1333');
INSERT INTO `pre_area` VALUES('1334','278','汶上县','1334');
INSERT INTO `pre_area` VALUES('1335','278','梁山县','1335');
INSERT INTO `pre_area` VALUES('1336','278','兖州市','1336');
INSERT INTO `pre_area` VALUES('1337','278','邹城市','1337');
INSERT INTO `pre_area` VALUES('1338','278','任城区','1338');
INSERT INTO `pre_area` VALUES('1339','278','鱼台县','1339');
INSERT INTO `pre_area` VALUES('1340','278','嘉祥县','1340');
INSERT INTO `pre_area` VALUES('1341','278','泗水县','1341');
INSERT INTO `pre_area` VALUES('1342','278','曲阜市','1342');
INSERT INTO `pre_area` VALUES('1343','279','泰山区','1343');
INSERT INTO `pre_area` VALUES('1344','279','宁阳县','1344');
INSERT INTO `pre_area` VALUES('1345','279','新泰市','1345');
INSERT INTO `pre_area` VALUES('1346','279','肥城市','1346');
INSERT INTO `pre_area` VALUES('1347','279','岱岳区','1347');
INSERT INTO `pre_area` VALUES('1348','279','东平县','1348');
INSERT INTO `pre_area` VALUES('1349','280','东港区','1349');
INSERT INTO `pre_area` VALUES('1350','280','五莲县','1350');
INSERT INTO `pre_area` VALUES('1351','280','莒县','1351');
INSERT INTO `pre_area` VALUES('1352','280','岚山区','1352');
INSERT INTO `pre_area` VALUES('1353','281','莱城区','1353');
INSERT INTO `pre_area` VALUES('1354','281','钢城区','1354');
INSERT INTO `pre_area` VALUES('1355','282','兰山区','1355');
INSERT INTO `pre_area` VALUES('1356','282','河东区','1356');
INSERT INTO `pre_area` VALUES('1357','282','郯城县','1357');
INSERT INTO `pre_area` VALUES('1358','282','苍山县','1358');
INSERT INTO `pre_area` VALUES('1359','282','平邑县','1359');
INSERT INTO `pre_area` VALUES('1360','282','蒙阴县','1360');
INSERT INTO `pre_area` VALUES('1361','282','临沭县','1361');
INSERT INTO `pre_area` VALUES('1362','282','罗庄区','1362');
INSERT INTO `pre_area` VALUES('1363','282','沂南县','1363');
INSERT INTO `pre_area` VALUES('1364','282','沂水县','1364');
INSERT INTO `pre_area` VALUES('1365','282','费县','1365');
INSERT INTO `pre_area` VALUES('1366','282','莒南县','1366');
INSERT INTO `pre_area` VALUES('1367','283','德城区','1367');
INSERT INTO `pre_area` VALUES('1368','283','宁津县','1368');
INSERT INTO `pre_area` VALUES('1369','283','临邑县','1369');
INSERT INTO `pre_area` VALUES('1370','283','平原县','1370');
INSERT INTO `pre_area` VALUES('1371','283','武城县','1371');
INSERT INTO `pre_area` VALUES('1372','283','禹城市','1372');
INSERT INTO `pre_area` VALUES('1373','283','陵县','1373');
INSERT INTO `pre_area` VALUES('1374','283','庆云县','1374');
INSERT INTO `pre_area` VALUES('1375','283','齐河县','1375');
INSERT INTO `pre_area` VALUES('1376','283','夏津县','1376');
INSERT INTO `pre_area` VALUES('1377','283','乐陵市','1377');
INSERT INTO `pre_area` VALUES('1378','284','东昌府区','1378');
INSERT INTO `pre_area` VALUES('1379','284','莘县','1379');
INSERT INTO `pre_area` VALUES('1380','284','东阿县','1380');
INSERT INTO `pre_area` VALUES('1381','284','高唐县','1381');
INSERT INTO `pre_area` VALUES('1382','284','临清市','1382');
INSERT INTO `pre_area` VALUES('1383','284','阳谷县','1383');
INSERT INTO `pre_area` VALUES('1384','284','茌平县','1384');
INSERT INTO `pre_area` VALUES('1385','284','冠县','1385');
INSERT INTO `pre_area` VALUES('1386','285','滨城区','1386');
INSERT INTO `pre_area` VALUES('1387','285','阳信县','1387');
INSERT INTO `pre_area` VALUES('1388','285','沾化县','1388');
INSERT INTO `pre_area` VALUES('1389','285','邹平县','1389');
INSERT INTO `pre_area` VALUES('1390','285','惠民县','1390');
INSERT INTO `pre_area` VALUES('1391','285','无棣县','1391');
INSERT INTO `pre_area` VALUES('1392','285','博兴县','1392');
INSERT INTO `pre_area` VALUES('1393','286','牡丹区','1393');
INSERT INTO `pre_area` VALUES('1394','286','单县','1394');
INSERT INTO `pre_area` VALUES('1395','286','巨野县','1395');
INSERT INTO `pre_area` VALUES('1396','286','东明县','1396');
INSERT INTO `pre_area` VALUES('1397','286','曹县','1397');
INSERT INTO `pre_area` VALUES('1398','286','成武县','1398');
INSERT INTO `pre_area` VALUES('1399','286','郓城县','1399');
INSERT INTO `pre_area` VALUES('1400','286','鄄城县','1400');
INSERT INTO `pre_area` VALUES('1401','286','定陶县','1401');
INSERT INTO `pre_area` VALUES('1402','287','玄武区','1402');
INSERT INTO `pre_area` VALUES('1403','287','秦淮区','1403');
INSERT INTO `pre_area` VALUES('1404','287','鼓楼区','1404');
INSERT INTO `pre_area` VALUES('1405','287','浦口区','1405');
INSERT INTO `pre_area` VALUES('1406','287','雨花台区','1406');
INSERT INTO `pre_area` VALUES('1407','287','六合区','1407');
INSERT INTO `pre_area` VALUES('1408','287','高淳县','1408');
INSERT INTO `pre_area` VALUES('1409','287','白下区','1409');
INSERT INTO `pre_area` VALUES('1410','287','建邺区','1410');
INSERT INTO `pre_area` VALUES('1411','287','下关区','1411');
INSERT INTO `pre_area` VALUES('1412','287','栖霞区','1412');
INSERT INTO `pre_area` VALUES('1413','287','江宁区','1413');
INSERT INTO `pre_area` VALUES('1414','287','溧水县','1414');
INSERT INTO `pre_area` VALUES('1415','288','鼓楼区','1415');
INSERT INTO `pre_area` VALUES('1416','288','九里区','1416');
INSERT INTO `pre_area` VALUES('1417','288','泉山区','1417');
INSERT INTO `pre_area` VALUES('1418','288','沛县','1418');
INSERT INTO `pre_area` VALUES('1419','288','睢宁县','1419');
INSERT INTO `pre_area` VALUES('1420','288','邳州市','1420');
INSERT INTO `pre_area` VALUES('1421','288','云龙区','1421');
INSERT INTO `pre_area` VALUES('1422','288','贾汪区','1422');
INSERT INTO `pre_area` VALUES('1423','288','丰县','1423');
INSERT INTO `pre_area` VALUES('1424','288','铜山县','1424');
INSERT INTO `pre_area` VALUES('1425','288','新沂市','1425');
INSERT INTO `pre_area` VALUES('1426','289','连云区','1426');
INSERT INTO `pre_area` VALUES('1427','289','海州区','1427');
INSERT INTO `pre_area` VALUES('1428','289','东海县','1428');
INSERT INTO `pre_area` VALUES('1429','289','灌南县','1429');
INSERT INTO `pre_area` VALUES('1430','289','新浦区','1430');
INSERT INTO `pre_area` VALUES('1431','289','赣榆县','1431');
INSERT INTO `pre_area` VALUES('1432','289','灌云县','1432');
INSERT INTO `pre_area` VALUES('1433','290','清河区','1433');
INSERT INTO `pre_area` VALUES('1434','290','淮阴区','1434');
INSERT INTO `pre_area` VALUES('1435','290','涟水县','1435');
INSERT INTO `pre_area` VALUES('1436','290','盱眙县','1436');
INSERT INTO `pre_area` VALUES('1437','290','金湖县','1437');
INSERT INTO `pre_area` VALUES('1438','290','楚州区','1438');
INSERT INTO `pre_area` VALUES('1439','290','清浦区','1439');
INSERT INTO `pre_area` VALUES('1440','290','洪泽县','1440');
INSERT INTO `pre_area` VALUES('1441','291','宿城区','1441');
INSERT INTO `pre_area` VALUES('1442','291','沭阳县','1442');
INSERT INTO `pre_area` VALUES('1443','291','泗洪县','1443');
INSERT INTO `pre_area` VALUES('1444','291','宿豫区','1444');
INSERT INTO `pre_area` VALUES('1445','291','泗阳县','1445');
INSERT INTO `pre_area` VALUES('1446','292','盐都区','1446');
INSERT INTO `pre_area` VALUES('1447','292','滨海县','1447');
INSERT INTO `pre_area` VALUES('1448','292','射阳县','1448');
INSERT INTO `pre_area` VALUES('1449','292','东台市','1449');
INSERT INTO `pre_area` VALUES('1450','292','大丰市','1450');
INSERT INTO `pre_area` VALUES('1451','292','响水县','1451');
INSERT INTO `pre_area` VALUES('1452','292','阜宁县','1452');
INSERT INTO `pre_area` VALUES('1453','292','建湖县','1453');
INSERT INTO `pre_area` VALUES('1454','293','广陵区','1454');
INSERT INTO `pre_area` VALUES('1455','293','宝应县','1455');
INSERT INTO `pre_area` VALUES('1456','293','高邮市','1456');
INSERT INTO `pre_area` VALUES('1457','293','江都市','1457');
INSERT INTO `pre_area` VALUES('1458','293','邗江区','1458');
INSERT INTO `pre_area` VALUES('1459','293','仪征市','1459');
INSERT INTO `pre_area` VALUES('1460','294','海陵区','1460');
INSERT INTO `pre_area` VALUES('1461','294','姜堰市','1461');
INSERT INTO `pre_area` VALUES('1462','294','高港区','1462');
INSERT INTO `pre_area` VALUES('1463','294','兴化市','1463');
INSERT INTO `pre_area` VALUES('1464','294','泰兴市','1464');
INSERT INTO `pre_area` VALUES('1465','294','靖江市','1465');
INSERT INTO `pre_area` VALUES('1466','295','海门市','1466');
INSERT INTO `pre_area` VALUES('1467','295','崇川区','1467');
INSERT INTO `pre_area` VALUES('1468','295','海安县','1468');
INSERT INTO `pre_area` VALUES('1469','295','启东市','1469');
INSERT INTO `pre_area` VALUES('1470','295','通州市','1470');
INSERT INTO `pre_area` VALUES('1471','295','港闸区','1471');
INSERT INTO `pre_area` VALUES('1472','295','如东县','1472');
INSERT INTO `pre_area` VALUES('1473','295','如皋市','1473');
INSERT INTO `pre_area` VALUES('1474','296','京口区','1474');
INSERT INTO `pre_area` VALUES('1475','296','丹徒区','1475');
INSERT INTO `pre_area` VALUES('1476','296','扬中市','1476');
INSERT INTO `pre_area` VALUES('1477','296','句容市','1477');
INSERT INTO `pre_area` VALUES('1478','296','润州区','1478');
INSERT INTO `pre_area` VALUES('1479','296','丹阳市','1479');
INSERT INTO `pre_area` VALUES('1480','297','天宁区','1480');
INSERT INTO `pre_area` VALUES('1481','297','戚墅堰区','1481');
INSERT INTO `pre_area` VALUES('1482','297','溧阳市','1482');
INSERT INTO `pre_area` VALUES('1483','297','金坛市','1483');
INSERT INTO `pre_area` VALUES('1484','297','钟楼区','1484');
INSERT INTO `pre_area` VALUES('1485','297','武进区','1485');
INSERT INTO `pre_area` VALUES('1486','298','崇安区','1486');
INSERT INTO `pre_area` VALUES('1487','298','北塘区','1487');
INSERT INTO `pre_area` VALUES('1488','298','惠山区','1488');
INSERT INTO `pre_area` VALUES('1489','298','宜兴市','1489');
INSERT INTO `pre_area` VALUES('1490','298','南长区','1490');
INSERT INTO `pre_area` VALUES('1491','298','锡山区','1491');
INSERT INTO `pre_area` VALUES('1492','298','江阴市','1492');
INSERT INTO `pre_area` VALUES('1493','299','沧浪区','1493');
INSERT INTO `pre_area` VALUES('1494','299','金阊区','1494');
INSERT INTO `pre_area` VALUES('1495','299','吴中区','1495');
INSERT INTO `pre_area` VALUES('1496','299','常熟市','1496');
INSERT INTO `pre_area` VALUES('1497','299','昆山市','1497');
INSERT INTO `pre_area` VALUES('1498','299','太仓市','1498');
INSERT INTO `pre_area` VALUES('1499','299','平江区','1499');
INSERT INTO `pre_area` VALUES('1500','299','虎丘区','1500');
INSERT INTO `pre_area` VALUES('1501','299','相城区','1501');
INSERT INTO `pre_area` VALUES('1502','299','张家港市','1502');
INSERT INTO `pre_area` VALUES('1503','299','吴江市','1503');
INSERT INTO `pre_area` VALUES('1504','300','长丰县','1504');
INSERT INTO `pre_area` VALUES('1505','300','肥东县','1505');
INSERT INTO `pre_area` VALUES('1506','300','肥西县','1506');
INSERT INTO `pre_area` VALUES('1507','301','镜湖区','1507');
INSERT INTO `pre_area` VALUES('1508','301','新芜区','1508');
INSERT INTO `pre_area` VALUES('1509','301','芜湖县','1509');
INSERT INTO `pre_area` VALUES('1510','301','南陵县','1510');
INSERT INTO `pre_area` VALUES('1511','301','马塘区','1511');
INSERT INTO `pre_area` VALUES('1512','301','鸠江区','1512');
INSERT INTO `pre_area` VALUES('1513','301','繁昌县','1513');
INSERT INTO `pre_area` VALUES('1514','302','龙子湖区','1514');
INSERT INTO `pre_area` VALUES('1515','302','禹会区','1515');
INSERT INTO `pre_area` VALUES('1516','302','怀远县','1516');
INSERT INTO `pre_area` VALUES('1517','302','固镇县','1517');
INSERT INTO `pre_area` VALUES('1518','302','蚌山区','1518');
INSERT INTO `pre_area` VALUES('1519','302','淮上区','1519');
INSERT INTO `pre_area` VALUES('1520','302','五河县','1520');
INSERT INTO `pre_area` VALUES('1521','303','大通区','1521');
INSERT INTO `pre_area` VALUES('1522','303','谢家集区','1522');
INSERT INTO `pre_area` VALUES('1523','303','潘集区','1523');
INSERT INTO `pre_area` VALUES('1524','303','凤台县','1524');
INSERT INTO `pre_area` VALUES('1525','303','田家庵区','1525');
INSERT INTO `pre_area` VALUES('1526','303','八公山区','1526');
INSERT INTO `pre_area` VALUES('1527','304','金家庄区','1527');
INSERT INTO `pre_area` VALUES('1528','304','雨山区','1528');
INSERT INTO `pre_area` VALUES('1529','304','当涂县','1529');
INSERT INTO `pre_area` VALUES('1530','304','花山区','1530');
INSERT INTO `pre_area` VALUES('1531','305','杜集区','1531');
INSERT INTO `pre_area` VALUES('1532','305','烈山区','1532');
INSERT INTO `pre_area` VALUES('1533','305','濉溪县','1533');
INSERT INTO `pre_area` VALUES('1534','305','相山区','1534');
INSERT INTO `pre_area` VALUES('1535','306','铜官山区','1535');
INSERT INTO `pre_area` VALUES('1536','306','郊区','1536');
INSERT INTO `pre_area` VALUES('1537','306','铜陵县','1537');
INSERT INTO `pre_area` VALUES('1538','306','狮子山区','1538');
INSERT INTO `pre_area` VALUES('1539','307','迎江区','1539');
INSERT INTO `pre_area` VALUES('1540','307','郊区','1540');
INSERT INTO `pre_area` VALUES('1541','307','枞阳县','1541');
INSERT INTO `pre_area` VALUES('1542','307','太湖县','1542');
INSERT INTO `pre_area` VALUES('1543','307','望江县','1543');
INSERT INTO `pre_area` VALUES('1544','307','桐城市','1544');
INSERT INTO `pre_area` VALUES('1545','307','大观区','1545');
INSERT INTO `pre_area` VALUES('1546','307','怀宁县','1546');
INSERT INTO `pre_area` VALUES('1547','307','潜山县','1547');
INSERT INTO `pre_area` VALUES('1548','307','宿松县','1548');
INSERT INTO `pre_area` VALUES('1549','307','岳西县','1549');
INSERT INTO `pre_area` VALUES('1550','308','屯溪区','1550');
INSERT INTO `pre_area` VALUES('1551','308','徽州区','1551');
INSERT INTO `pre_area` VALUES('1552','308','休宁县','1552');
INSERT INTO `pre_area` VALUES('1553','308','祁门县','1553');
INSERT INTO `pre_area` VALUES('1554','308','黄山区','1554');
INSERT INTO `pre_area` VALUES('1555','308','歙县','1555');
INSERT INTO `pre_area` VALUES('1556','308','黟县','1556');
INSERT INTO `pre_area` VALUES('1557','309','琅琊区','1557');
INSERT INTO `pre_area` VALUES('1558','309','来安县','1558');
INSERT INTO `pre_area` VALUES('1559','309','定远县','1559');
INSERT INTO `pre_area` VALUES('1560','309','天长市','1560');
INSERT INTO `pre_area` VALUES('1561','309','明光市','1561');
INSERT INTO `pre_area` VALUES('1562','309','南谯区','1562');
INSERT INTO `pre_area` VALUES('1563','309','全椒县','1563');
INSERT INTO `pre_area` VALUES('1564','309','凤阳县','1564');
INSERT INTO `pre_area` VALUES('1565','310','颍州区','1565');
INSERT INTO `pre_area` VALUES('1566','310','颍泉区','1566');
INSERT INTO `pre_area` VALUES('1567','310','太和县','1567');
INSERT INTO `pre_area` VALUES('1568','310','颍上县','1568');
INSERT INTO `pre_area` VALUES('1569','310','界首市','1569');
INSERT INTO `pre_area` VALUES('1570','310','颍东区','1570');
INSERT INTO `pre_area` VALUES('1571','310','临泉县','1571');
INSERT INTO `pre_area` VALUES('1572','310','阜南县','1572');
INSERT INTO `pre_area` VALUES('1573','311','墉桥区','1573');
INSERT INTO `pre_area` VALUES('1574','311','萧县','1574');
INSERT INTO `pre_area` VALUES('1575','311','泗县','1575');
INSERT INTO `pre_area` VALUES('1576','311','砀山县','1576');
INSERT INTO `pre_area` VALUES('1577','311','灵璧县','1577');
INSERT INTO `pre_area` VALUES('1578','312','居巢区','1578');
INSERT INTO `pre_area` VALUES('1579','312','无为县','1579');
INSERT INTO `pre_area` VALUES('1580','312','和县','1580');
INSERT INTO `pre_area` VALUES('1581','312','庐江县','1581');
INSERT INTO `pre_area` VALUES('1582','312','含山县','1582');
INSERT INTO `pre_area` VALUES('1583','313','金安区','1583');
INSERT INTO `pre_area` VALUES('1584','313','寿县','1584');
INSERT INTO `pre_area` VALUES('1585','313','舒城县','1585');
INSERT INTO `pre_area` VALUES('1586','313','裕安区','1586');
INSERT INTO `pre_area` VALUES('1587','313','霍邱县','1587');
INSERT INTO `pre_area` VALUES('1588','313','金寨县','1588');
INSERT INTO `pre_area` VALUES('1589','314','谯城区','1589');
INSERT INTO `pre_area` VALUES('1590','314','蒙城县','1590');
INSERT INTO `pre_area` VALUES('1591','314','利辛县','1591');
INSERT INTO `pre_area` VALUES('1592','314','涡阳县','1592');
INSERT INTO `pre_area` VALUES('1593','315','贵池区','1593');
INSERT INTO `pre_area` VALUES('1594','315','石台县','1594');
INSERT INTO `pre_area` VALUES('1595','315','青阳县','1595');
INSERT INTO `pre_area` VALUES('1596','315','东至县','1596');
INSERT INTO `pre_area` VALUES('1597','316','宣州区','1597');
INSERT INTO `pre_area` VALUES('1598','316','广德县','1598');
INSERT INTO `pre_area` VALUES('1599','316','绩溪县','1599');
INSERT INTO `pre_area` VALUES('1600','316','宁国市','1600');
INSERT INTO `pre_area` VALUES('1601','316','郎溪县','1601');
INSERT INTO `pre_area` VALUES('1602','316','泾县','1602');
INSERT INTO `pre_area` VALUES('1603','316','旌德县','1603');
INSERT INTO `pre_area` VALUES('1604','317','东湖区','1604');
INSERT INTO `pre_area` VALUES('1605','317','青云谱区','1605');
INSERT INTO `pre_area` VALUES('1606','317','南昌县','1606');
INSERT INTO `pre_area` VALUES('1607','317','安义县','1607');
INSERT INTO `pre_area` VALUES('1608','317','进贤县','1608');
INSERT INTO `pre_area` VALUES('1609','317','西湖区','1609');
INSERT INTO `pre_area` VALUES('1610','317','湾里区','1610');
INSERT INTO `pre_area` VALUES('1611','317','新建县','1611');
INSERT INTO `pre_area` VALUES('1612','15','景德镇市','1612');
INSERT INTO `pre_area` VALUES('1613','1612','昌江区','1613');
INSERT INTO `pre_area` VALUES('1614','1612','浮梁县','1614');
INSERT INTO `pre_area` VALUES('1615','1612','乐平市','1615');
INSERT INTO `pre_area` VALUES('1616','1612','珠山区','1616');
INSERT INTO `pre_area` VALUES('1617','318','安源区','1617');
INSERT INTO `pre_area` VALUES('1618','318','莲花县','1618');
INSERT INTO `pre_area` VALUES('1619','318','芦溪县','1619');
INSERT INTO `pre_area` VALUES('1620','318','湘东区','1620');
INSERT INTO `pre_area` VALUES('1621','318','上栗县','1621');
INSERT INTO `pre_area` VALUES('1622','319','庐山区','1622');
INSERT INTO `pre_area` VALUES('1623','319','九江县','1623');
INSERT INTO `pre_area` VALUES('1624','319','修水县','1624');
INSERT INTO `pre_area` VALUES('1625','319','德安县','1625');
INSERT INTO `pre_area` VALUES('1626','319','都昌县','1626');
INSERT INTO `pre_area` VALUES('1627','319','彭泽县','1627');
INSERT INTO `pre_area` VALUES('1628','319','瑞昌市','1628');
INSERT INTO `pre_area` VALUES('1629','319','浔阳区','1629');
INSERT INTO `pre_area` VALUES('1630','319','武宁县','1630');
INSERT INTO `pre_area` VALUES('1631','319','永修县','1631');
INSERT INTO `pre_area` VALUES('1632','319','星子县','1632');
INSERT INTO `pre_area` VALUES('1633','319','湖口县','1633');
INSERT INTO `pre_area` VALUES('1634','320','渝水区','1634');
INSERT INTO `pre_area` VALUES('1635','320','分宜县','1635');
INSERT INTO `pre_area` VALUES('1636','321','月湖区','1636');
INSERT INTO `pre_area` VALUES('1637','321','贵溪市','1637');
INSERT INTO `pre_area` VALUES('1638','321','余江县','1638');
INSERT INTO `pre_area` VALUES('1639','322','章贡区','1639');
INSERT INTO `pre_area` VALUES('1640','322','信丰县','1640');
INSERT INTO `pre_area` VALUES('1641','322','上犹县','1641');
INSERT INTO `pre_area` VALUES('1642','322','安远县','1642');
INSERT INTO `pre_area` VALUES('1643','322','定南县','1643');
INSERT INTO `pre_area` VALUES('1644','322','宁都县','1644');
INSERT INTO `pre_area` VALUES('1645','322','兴国县','1645');
INSERT INTO `pre_area` VALUES('1646','322','寻乌县','1646');
INSERT INTO `pre_area` VALUES('1647','322','瑞金市','1647');
INSERT INTO `pre_area` VALUES('1648','322','南康市','1648');
INSERT INTO `pre_area` VALUES('1649','322','赣县','1649');
INSERT INTO `pre_area` VALUES('1650','322','大余县','1650');
INSERT INTO `pre_area` VALUES('1651','322','崇义县','1651');
INSERT INTO `pre_area` VALUES('1652','322','龙南县','1652');
INSERT INTO `pre_area` VALUES('1653','322','全南县','1653');
INSERT INTO `pre_area` VALUES('1654','322','于都县','1654');
INSERT INTO `pre_area` VALUES('1655','322','会昌县','1655');
INSERT INTO `pre_area` VALUES('1656','322','石城县','1656');
INSERT INTO `pre_area` VALUES('1657','323','吉州区','1657');
INSERT INTO `pre_area` VALUES('1658','323','吉安县','1658');
INSERT INTO `pre_area` VALUES('1659','323','峡江县','1659');
INSERT INTO `pre_area` VALUES('1660','323','永丰县','1660');
INSERT INTO `pre_area` VALUES('1661','323','遂川县','1661');
INSERT INTO `pre_area` VALUES('1662','323','安福县','1662');
INSERT INTO `pre_area` VALUES('1663','323','井冈山市','1663');
INSERT INTO `pre_area` VALUES('1664','323','青原区','1664');
INSERT INTO `pre_area` VALUES('1665','323','吉水县','1665');
INSERT INTO `pre_area` VALUES('1666','323','新干县','1666');
INSERT INTO `pre_area` VALUES('1667','323','泰和县','1667');
INSERT INTO `pre_area` VALUES('1668','323','万安县','1668');
INSERT INTO `pre_area` VALUES('1669','323','永新县','1669');
INSERT INTO `pre_area` VALUES('1670','324','袁州区','1670');
INSERT INTO `pre_area` VALUES('1671','324','万载县','1671');
INSERT INTO `pre_area` VALUES('1672','324','宜丰县','1672');
INSERT INTO `pre_area` VALUES('1673','324','铜鼓县','1673');
INSERT INTO `pre_area` VALUES('1674','324','樟树市','1674');
INSERT INTO `pre_area` VALUES('1675','324','高安市','1675');
INSERT INTO `pre_area` VALUES('1676','324','奉新县','1676');
INSERT INTO `pre_area` VALUES('1677','324','上高县','1677');
INSERT INTO `pre_area` VALUES('1678','324','靖安县','1678');
INSERT INTO `pre_area` VALUES('1679','324','丰城市','1679');
INSERT INTO `pre_area` VALUES('1680','325','临川区','1680');
INSERT INTO `pre_area` VALUES('1681','325','黎川县','1681');
INSERT INTO `pre_area` VALUES('1682','325','崇仁县','1682');
INSERT INTO `pre_area` VALUES('1683','325','宜黄县','1683');
INSERT INTO `pre_area` VALUES('1684','325','资溪县','1684');
INSERT INTO `pre_area` VALUES('1685','325','广昌县','1685');
INSERT INTO `pre_area` VALUES('1686','325','南城县','1686');
INSERT INTO `pre_area` VALUES('1687','325','南丰县','1687');
INSERT INTO `pre_area` VALUES('1688','325','乐安县','1688');
INSERT INTO `pre_area` VALUES('1689','325','金溪县','1689');
INSERT INTO `pre_area` VALUES('1690','325','东乡县','1690');
INSERT INTO `pre_area` VALUES('1691','326','信州区','1691');
INSERT INTO `pre_area` VALUES('1692','326','广丰县','1692');
INSERT INTO `pre_area` VALUES('1693','326','铅山县','1693');
INSERT INTO `pre_area` VALUES('1694','326','弋阳县','1694');
INSERT INTO `pre_area` VALUES('1695','326','鄱阳县','1695');
INSERT INTO `pre_area` VALUES('1696','326','婺源县','1696');
INSERT INTO `pre_area` VALUES('1697','326','德兴市','1697');
INSERT INTO `pre_area` VALUES('1698','326','上饶县','1698');
INSERT INTO `pre_area` VALUES('1699','326','玉山县','1699');
INSERT INTO `pre_area` VALUES('1700','326','横峰县','1700');
INSERT INTO `pre_area` VALUES('1701','326','余干县','1701');
INSERT INTO `pre_area` VALUES('1702','326','万年县','1702');
INSERT INTO `pre_area` VALUES('1703','327','上城区','1703');
INSERT INTO `pre_area` VALUES('1704','327','江干区','1704');
INSERT INTO `pre_area` VALUES('1705','327','西湖区','1705');
INSERT INTO `pre_area` VALUES('1706','327','萧山区','1706');
INSERT INTO `pre_area` VALUES('1707','327','桐庐县','1707');
INSERT INTO `pre_area` VALUES('1708','327','建德市','1708');
INSERT INTO `pre_area` VALUES('1709','327','临安市','1709');
INSERT INTO `pre_area` VALUES('1710','327','下城区','1710');
INSERT INTO `pre_area` VALUES('1711','327','拱墅区','1711');
INSERT INTO `pre_area` VALUES('1712','327','滨江区','1712');
INSERT INTO `pre_area` VALUES('1713','327','余杭区','1713');
INSERT INTO `pre_area` VALUES('1714','327','淳安县','1714');
INSERT INTO `pre_area` VALUES('1715','327','富阳市','1715');
INSERT INTO `pre_area` VALUES('1716','328','海曙区','1716');
INSERT INTO `pre_area` VALUES('1717','328','江北区','1717');
INSERT INTO `pre_area` VALUES('1718','328','镇海区','1718');
INSERT INTO `pre_area` VALUES('1719','328','象山县','1719');
INSERT INTO `pre_area` VALUES('1720','328','余姚市','1720');
INSERT INTO `pre_area` VALUES('1721','328','奉化市','1721');
INSERT INTO `pre_area` VALUES('1722','328','江东区','1722');
INSERT INTO `pre_area` VALUES('1723','328','北仑区','1723');
INSERT INTO `pre_area` VALUES('1724','328','鄞州区','1724');
INSERT INTO `pre_area` VALUES('1725','328','宁海县','1725');
INSERT INTO `pre_area` VALUES('1726','328','慈溪市','1726');
INSERT INTO `pre_area` VALUES('1727','329','鹿城区','1727');
INSERT INTO `pre_area` VALUES('1728','329','瓯海区','1728');
INSERT INTO `pre_area` VALUES('1729','329','永嘉县','1729');
INSERT INTO `pre_area` VALUES('1730','329','苍南县','1730');
INSERT INTO `pre_area` VALUES('1731','329','泰顺县','1731');
INSERT INTO `pre_area` VALUES('1732','329','乐清市','1732');
INSERT INTO `pre_area` VALUES('1733','329','龙湾区','1733');
INSERT INTO `pre_area` VALUES('1734','329','洞头县','1734');
INSERT INTO `pre_area` VALUES('1735','329','平阳县','1735');
INSERT INTO `pre_area` VALUES('1736','329','文成县','1736');
INSERT INTO `pre_area` VALUES('1737','329','瑞安市','1737');
INSERT INTO `pre_area` VALUES('1738','330','秀城区','1738');
INSERT INTO `pre_area` VALUES('1739','330','海盐县','1739');
INSERT INTO `pre_area` VALUES('1740','330','桐乡市','1740');
INSERT INTO `pre_area` VALUES('1741','330','平湖市','1741');
INSERT INTO `pre_area` VALUES('1742','330','嘉善县','1742');
INSERT INTO `pre_area` VALUES('1743','330','海宁市','1743');
INSERT INTO `pre_area` VALUES('1744','331','吴兴区','1744');
INSERT INTO `pre_area` VALUES('1745','331','德清县','1745');
INSERT INTO `pre_area` VALUES('1746','331','安吉县','1746');
INSERT INTO `pre_area` VALUES('1747','331','南浔区','1747');
INSERT INTO `pre_area` VALUES('1748','331','长兴县','1748');
INSERT INTO `pre_area` VALUES('1749','332','越城区','1749');
INSERT INTO `pre_area` VALUES('1750','332','嵊州市','1750');
INSERT INTO `pre_area` VALUES('1751','332','绍兴县','1751');
INSERT INTO `pre_area` VALUES('1752','332','新昌县','1752');
INSERT INTO `pre_area` VALUES('1753','332','上虞市','1753');
INSERT INTO `pre_area` VALUES('1754','332','诸暨市','1754');
INSERT INTO `pre_area` VALUES('1755','333','婺城区','1755');
INSERT INTO `pre_area` VALUES('1756','333','武义县','1756');
INSERT INTO `pre_area` VALUES('1757','333','磐安县','1757');
INSERT INTO `pre_area` VALUES('1758','333','义乌市','1758');
INSERT INTO `pre_area` VALUES('1759','333','永康市','1759');
INSERT INTO `pre_area` VALUES('1760','333','金东区','1760');
INSERT INTO `pre_area` VALUES('1761','333','浦江县','1761');
INSERT INTO `pre_area` VALUES('1762','333','兰溪市','1762');
INSERT INTO `pre_area` VALUES('1763','333','东阳市','1763');
INSERT INTO `pre_area` VALUES('1764','334','柯城区','1764');
INSERT INTO `pre_area` VALUES('1765','334','常山县','1765');
INSERT INTO `pre_area` VALUES('1766','334','龙游县','1766');
INSERT INTO `pre_area` VALUES('1767','334','江山市','1767');
INSERT INTO `pre_area` VALUES('1768','334','衢江区','1768');
INSERT INTO `pre_area` VALUES('1769','334','开化县','1769');
INSERT INTO `pre_area` VALUES('1770','335','定海区','1770');
INSERT INTO `pre_area` VALUES('1771','335','岱山县','1771');
INSERT INTO `pre_area` VALUES('1772','335','嵊泗县','1772');
INSERT INTO `pre_area` VALUES('1773','335','普陀区','1773');
INSERT INTO `pre_area` VALUES('1774','336','椒江区','1774');
INSERT INTO `pre_area` VALUES('1775','336','路桥区','1775');
INSERT INTO `pre_area` VALUES('1776','336','三门县','1776');
INSERT INTO `pre_area` VALUES('1777','336','仙居县','1777');
INSERT INTO `pre_area` VALUES('1778','336','临海市','1778');
INSERT INTO `pre_area` VALUES('1779','336','黄岩区','1779');
INSERT INTO `pre_area` VALUES('1780','336','玉环县','1780');
INSERT INTO `pre_area` VALUES('1781','336','天台县','1781');
INSERT INTO `pre_area` VALUES('1782','336','温岭市','1782');
INSERT INTO `pre_area` VALUES('1783','337','莲都区','1783');
INSERT INTO `pre_area` VALUES('1784','337','缙云县','1784');
INSERT INTO `pre_area` VALUES('1785','337','松阳县','1785');
INSERT INTO `pre_area` VALUES('1786','337','庆元县','1786');
INSERT INTO `pre_area` VALUES('1787','337','龙泉市','1787');
INSERT INTO `pre_area` VALUES('1788','337','青田县','1788');
INSERT INTO `pre_area` VALUES('1789','337','遂昌县','1789');
INSERT INTO `pre_area` VALUES('1790','337','云和县','1790');
INSERT INTO `pre_area` VALUES('1791','337','景宁畲族自治县','1791');
INSERT INTO `pre_area` VALUES('1792','338','鼓楼区','1792');
INSERT INTO `pre_area` VALUES('1793','338','仓山区','1793');
INSERT INTO `pre_area` VALUES('1794','338','晋安区','1794');
INSERT INTO `pre_area` VALUES('1795','338','连江县','1795');
INSERT INTO `pre_area` VALUES('1796','338','闽清县','1796');
INSERT INTO `pre_area` VALUES('1797','338','平潭县','1797');
INSERT INTO `pre_area` VALUES('1798','338','长乐市','1798');
INSERT INTO `pre_area` VALUES('1799','338','台江区','1799');
INSERT INTO `pre_area` VALUES('1800','338','马尾区','1800');
INSERT INTO `pre_area` VALUES('1801','338','闽侯县','1801');
INSERT INTO `pre_area` VALUES('1802','338','罗源县','1802');
INSERT INTO `pre_area` VALUES('1803','338','永泰县','1803');
INSERT INTO `pre_area` VALUES('1804','338','福清市','1804');
INSERT INTO `pre_area` VALUES('1805','339','思明区','1805');
INSERT INTO `pre_area` VALUES('1806','339','湖里区','1806');
INSERT INTO `pre_area` VALUES('1807','339','同安区','1807');
INSERT INTO `pre_area` VALUES('1808','339','翔安区','1808');
INSERT INTO `pre_area` VALUES('1809','339','海沧区','1809');
INSERT INTO `pre_area` VALUES('1810','339','集美区','1810');
INSERT INTO `pre_area` VALUES('1811','340','梅列区','1811');
INSERT INTO `pre_area` VALUES('1812','340','明溪县','1812');
INSERT INTO `pre_area` VALUES('1813','340','宁化县','1813');
INSERT INTO `pre_area` VALUES('1814','340','尤溪县','1814');
INSERT INTO `pre_area` VALUES('1815','340','将乐县','1815');
INSERT INTO `pre_area` VALUES('1816','340','建宁县','1816');
INSERT INTO `pre_area` VALUES('1817','340','永安市','1817');
INSERT INTO `pre_area` VALUES('1818','340','三元区','1818');
INSERT INTO `pre_area` VALUES('1819','340','清流县','1819');
INSERT INTO `pre_area` VALUES('1820','340','大田县','1820');
INSERT INTO `pre_area` VALUES('1821','340','沙县','1821');
INSERT INTO `pre_area` VALUES('1822','340','泰宁县','1822');
INSERT INTO `pre_area` VALUES('1823','341','城厢区','1823');
INSERT INTO `pre_area` VALUES('1824','341','荔城区','1824');
INSERT INTO `pre_area` VALUES('1825','341','仙游县','1825');
INSERT INTO `pre_area` VALUES('1826','341','涵江区','1826');
INSERT INTO `pre_area` VALUES('1827','341','秀屿区','1827');
INSERT INTO `pre_area` VALUES('1828','342','鲤城区','1828');
INSERT INTO `pre_area` VALUES('1829','342','洛江区','1829');
INSERT INTO `pre_area` VALUES('1830','342','惠安县','1830');
INSERT INTO `pre_area` VALUES('1831','342','永春县','1831');
INSERT INTO `pre_area` VALUES('1832','342','金门县','1832');
INSERT INTO `pre_area` VALUES('1833','342','晋江市','1833');
INSERT INTO `pre_area` VALUES('1834','342','南安市','1834');
INSERT INTO `pre_area` VALUES('1835','342','丰泽区','1835');
INSERT INTO `pre_area` VALUES('1836','342','泉港区','1836');
INSERT INTO `pre_area` VALUES('1837','342','安溪县','1837');
INSERT INTO `pre_area` VALUES('1838','342','德化县','1838');
INSERT INTO `pre_area` VALUES('1839','342','石狮市','1839');
INSERT INTO `pre_area` VALUES('1840','343','芗城区','1840');
INSERT INTO `pre_area` VALUES('1841','343','云霄县','1841');
INSERT INTO `pre_area` VALUES('1842','343','诏安县','1842');
INSERT INTO `pre_area` VALUES('1843','343','东山县','1843');
INSERT INTO `pre_area` VALUES('1844','343','平和县','1844');
INSERT INTO `pre_area` VALUES('1845','343','龙海市','1845');
INSERT INTO `pre_area` VALUES('1846','343','龙文区','1846');
INSERT INTO `pre_area` VALUES('1847','343','漳浦县','1847');
INSERT INTO `pre_area` VALUES('1848','343','长泰县','1848');
INSERT INTO `pre_area` VALUES('1849','343','南靖县','1849');
INSERT INTO `pre_area` VALUES('1850','343','华安县','1850');
INSERT INTO `pre_area` VALUES('1851','344','延平区','1851');
INSERT INTO `pre_area` VALUES('1852','344','浦城县','1852');
INSERT INTO `pre_area` VALUES('1853','344','松溪县','1853');
INSERT INTO `pre_area` VALUES('1854','344','邵武市','1854');
INSERT INTO `pre_area` VALUES('1855','344','建瓯市','1855');
INSERT INTO `pre_area` VALUES('1856','344','建阳市','1856');
INSERT INTO `pre_area` VALUES('1857','344','顺昌县','1857');
INSERT INTO `pre_area` VALUES('1858','344','光泽县','1858');
INSERT INTO `pre_area` VALUES('1859','344','政和县','1859');
INSERT INTO `pre_area` VALUES('1860','344','武夷山市','1860');
INSERT INTO `pre_area` VALUES('1861','345','新罗区','1861');
INSERT INTO `pre_area` VALUES('1862','345','永定县','1862');
INSERT INTO `pre_area` VALUES('1863','345','武平县','1863');
INSERT INTO `pre_area` VALUES('1864','345','漳平市','1864');
INSERT INTO `pre_area` VALUES('1865','345','长汀县','1865');
INSERT INTO `pre_area` VALUES('1866','345','上杭县','1866');
INSERT INTO `pre_area` VALUES('1867','345','连城县','1867');
INSERT INTO `pre_area` VALUES('1868','346','蕉城区','1868');
INSERT INTO `pre_area` VALUES('1869','346','古田县','1869');
INSERT INTO `pre_area` VALUES('1870','346','寿宁县','1870');
INSERT INTO `pre_area` VALUES('1871','346','柘荣县','1871');
INSERT INTO `pre_area` VALUES('1872','346','福鼎市','1872');
INSERT INTO `pre_area` VALUES('1873','346','霞浦县','1873');
INSERT INTO `pre_area` VALUES('1874','346','屏南县','1874');
INSERT INTO `pre_area` VALUES('1875','346','周宁县','1875');
INSERT INTO `pre_area` VALUES('1876','346','福安市','1876');
INSERT INTO `pre_area` VALUES('1877','347','东山区','1877');
INSERT INTO `pre_area` VALUES('1878','347','越秀区','1878');
INSERT INTO `pre_area` VALUES('1879','347','天河区','1879');
INSERT INTO `pre_area` VALUES('1880','347','白云区','1880');
INSERT INTO `pre_area` VALUES('1881','347','番禺区','1881');
INSERT INTO `pre_area` VALUES('1882','347','增城市','1882');
INSERT INTO `pre_area` VALUES('1883','347','从化市','1883');
INSERT INTO `pre_area` VALUES('1884','347','荔湾区','1884');
INSERT INTO `pre_area` VALUES('1885','347','海珠区','1885');
INSERT INTO `pre_area` VALUES('1886','347','芳村区','1886');
INSERT INTO `pre_area` VALUES('1887','347','黄埔区','1887');
INSERT INTO `pre_area` VALUES('1888','347','花都区','1888');
INSERT INTO `pre_area` VALUES('1889','348','罗湖区','1889');
INSERT INTO `pre_area` VALUES('1890','348','福田区','1890');
INSERT INTO `pre_area` VALUES('1891','348','南山区','1891');
INSERT INTO `pre_area` VALUES('1892','348','宝安区','1892');
INSERT INTO `pre_area` VALUES('1893','348','龙岗区','1893');
INSERT INTO `pre_area` VALUES('1894','348','盐田区','1894');
INSERT INTO `pre_area` VALUES('1895','349','香洲区','1895');
INSERT INTO `pre_area` VALUES('1896','349','拱北区','1896');
INSERT INTO `pre_area` VALUES('1897','349','前山区','1897');
INSERT INTO `pre_area` VALUES('1898','349','金湾区','1898');
INSERT INTO `pre_area` VALUES('1899','349','斗门区','1899');
INSERT INTO `pre_area` VALUES('1900','350','龙湖区','1900');
INSERT INTO `pre_area` VALUES('1901','350','濠江区','1901');
INSERT INTO `pre_area` VALUES('1902','350','潮南区','1902');
INSERT INTO `pre_area` VALUES('1903','350','澄海区','1903');
INSERT INTO `pre_area` VALUES('1904','350','金平区','1904');
INSERT INTO `pre_area` VALUES('1905','350','潮阳区','1905');
INSERT INTO `pre_area` VALUES('1906','350','南澳县','1906');
INSERT INTO `pre_area` VALUES('1907','351','武江区','1907');
INSERT INTO `pre_area` VALUES('1908','351','曲江区','1908');
INSERT INTO `pre_area` VALUES('1909','351','仁化县','1909');
INSERT INTO `pre_area` VALUES('1910','351','乳源瑶族自治县','1910');
INSERT INTO `pre_area` VALUES('1911','351','乐昌市','1911');
INSERT INTO `pre_area` VALUES('1912','351','南雄市','1912');
INSERT INTO `pre_area` VALUES('1913','351','浈江区','1913');
INSERT INTO `pre_area` VALUES('1914','351','始兴县','1914');
INSERT INTO `pre_area` VALUES('1915','351','翁源县','1915');
INSERT INTO `pre_area` VALUES('1916','351','新丰县','1916');
INSERT INTO `pre_area` VALUES('1917','352','惠城区','1917');
INSERT INTO `pre_area` VALUES('1918','352','博罗县','1918');
INSERT INTO `pre_area` VALUES('1919','352','龙门县','1919');
INSERT INTO `pre_area` VALUES('1920','352','惠阳区','1920');
INSERT INTO `pre_area` VALUES('1921','352','惠东县','1921');
INSERT INTO `pre_area` VALUES('1922','353','东源县','1922');
INSERT INTO `pre_area` VALUES('1923','353','源城区','1923');
INSERT INTO `pre_area` VALUES('1924','353','龙川县','1924');
INSERT INTO `pre_area` VALUES('1925','353','和平县','1925');
INSERT INTO `pre_area` VALUES('1926','353','紫金县','1926');
INSERT INTO `pre_area` VALUES('1927','353','连平县','1927');
INSERT INTO `pre_area` VALUES('1928','354','梅江区','1928');
INSERT INTO `pre_area` VALUES('1929','354','大埔县','1929');
INSERT INTO `pre_area` VALUES('1930','354','五华县','1930');
INSERT INTO `pre_area` VALUES('1931','354','蕉岭县','1931');
INSERT INTO `pre_area` VALUES('1932','354','兴宁市','1932');
INSERT INTO `pre_area` VALUES('1933','354','梅县','1933');
INSERT INTO `pre_area` VALUES('1934','354','丰顺县','1934');
INSERT INTO `pre_area` VALUES('1935','354','平远县','1935');
INSERT INTO `pre_area` VALUES('1936','355','城区','1936');
INSERT INTO `pre_area` VALUES('1937','355','陆河县','1937');
INSERT INTO `pre_area` VALUES('1938','355','陆丰市','1938');
INSERT INTO `pre_area` VALUES('1939','355','海丰县','1939');
INSERT INTO `pre_area` VALUES('1940','358','蓬江区','1940');
INSERT INTO `pre_area` VALUES('1941','358','恩平市','1941');
INSERT INTO `pre_area` VALUES('1942','358','江海区','1942');
INSERT INTO `pre_area` VALUES('1943','358','新会区','1943');
INSERT INTO `pre_area` VALUES('1944','358','开平市','1944');
INSERT INTO `pre_area` VALUES('1945','358','台山市','1945');
INSERT INTO `pre_area` VALUES('1946','358','鹤山市','1946');
INSERT INTO `pre_area` VALUES('1947','359','禅城区','1947');
INSERT INTO `pre_area` VALUES('1948','359','顺德区','1948');
INSERT INTO `pre_area` VALUES('1949','359','高明区','1949');
INSERT INTO `pre_area` VALUES('1950','359','南海区','1950');
INSERT INTO `pre_area` VALUES('1951','359','三水区','1951');
INSERT INTO `pre_area` VALUES('1952','360','江城区','1952');
INSERT INTO `pre_area` VALUES('1953','360','阳东县','1953');
INSERT INTO `pre_area` VALUES('1954','360','阳春市','1954');
INSERT INTO `pre_area` VALUES('1955','360','阳西县','1955');
INSERT INTO `pre_area` VALUES('1956','361','赤坎区','1956');
INSERT INTO `pre_area` VALUES('1957','361','坡头区','1957');
INSERT INTO `pre_area` VALUES('1958','361','遂溪县','1958');
INSERT INTO `pre_area` VALUES('1959','361','廉江市','1959');
INSERT INTO `pre_area` VALUES('1960','361','吴川市','1960');
INSERT INTO `pre_area` VALUES('1961','361','霞山区','1961');
INSERT INTO `pre_area` VALUES('1962','361','麻章区','1962');
INSERT INTO `pre_area` VALUES('1963','361','徐闻县','1963');
INSERT INTO `pre_area` VALUES('1964','361','雷州市','1964');
INSERT INTO `pre_area` VALUES('1965','362','茂南区','1965');
INSERT INTO `pre_area` VALUES('1966','362','电白县','1966');
INSERT INTO `pre_area` VALUES('1967','362','化州市','1967');
INSERT INTO `pre_area` VALUES('1968','362','信宜市','1968');
INSERT INTO `pre_area` VALUES('1969','362','茂港区','1969');
INSERT INTO `pre_area` VALUES('1970','362','高州市','1970');
INSERT INTO `pre_area` VALUES('1971','363','端州区','1971');
INSERT INTO `pre_area` VALUES('1972','363','广宁县','1972');
INSERT INTO `pre_area` VALUES('1973','363','封开县','1973');
INSERT INTO `pre_area` VALUES('1974','363','高要市','1974');
INSERT INTO `pre_area` VALUES('1975','363','四会市','1975');
INSERT INTO `pre_area` VALUES('1976','363','鼎湖区','1976');
INSERT INTO `pre_area` VALUES('1977','363','怀集县','1977');
INSERT INTO `pre_area` VALUES('1978','363','德庆县','1978');
INSERT INTO `pre_area` VALUES('1979','364','清城区','1979');
INSERT INTO `pre_area` VALUES('1980','364','阳山县','1980');
INSERT INTO `pre_area` VALUES('1981','364','连南瑶族自治县','1981');
INSERT INTO `pre_area` VALUES('1982','364','英德市','1982');
INSERT INTO `pre_area` VALUES('1983','364','连州市','1983');
INSERT INTO `pre_area` VALUES('1984','364','佛冈县','1984');
INSERT INTO `pre_area` VALUES('1985','364','连山壮族瑶族自治县','1985');
INSERT INTO `pre_area` VALUES('1986','364','清新县','1986');
INSERT INTO `pre_area` VALUES('1987','365','湘桥区','1987');
INSERT INTO `pre_area` VALUES('1988','365','饶平县','1988');
INSERT INTO `pre_area` VALUES('1989','365','潮安县','1989');
INSERT INTO `pre_area` VALUES('1990','366','榕城区','1990');
INSERT INTO `pre_area` VALUES('1991','366','揭西县','1991');
INSERT INTO `pre_area` VALUES('1992','366','普宁市','1992');
INSERT INTO `pre_area` VALUES('1993','366','揭东县','1993');
INSERT INTO `pre_area` VALUES('1994','366','惠来县','1994');
INSERT INTO `pre_area` VALUES('1995','367','云城区','1995');
INSERT INTO `pre_area` VALUES('1996','367','郁南县','1996');
INSERT INTO `pre_area` VALUES('1997','367','罗定市','1997');
INSERT INTO `pre_area` VALUES('1998','367','新兴县','1998');
INSERT INTO `pre_area` VALUES('1999','367','云安县','1999');
INSERT INTO `pre_area` VALUES('2000','368','秀英区','2000');
INSERT INTO `pre_area` VALUES('2001','368','琼山区','2001');
INSERT INTO `pre_area` VALUES('2002','368','美兰区','2002');
INSERT INTO `pre_area` VALUES('2003','368','龙华区','2003');
INSERT INTO `pre_area` VALUES('2004','369','五指山市','2004');
INSERT INTO `pre_area` VALUES('2005','369','儋州市','2005');
INSERT INTO `pre_area` VALUES('2006','369','万宁市','2006');
INSERT INTO `pre_area` VALUES('2007','369','定安县','2007');
INSERT INTO `pre_area` VALUES('2008','369','澄迈县','2008');
INSERT INTO `pre_area` VALUES('2009','369','白沙黎族自治县','2009');
INSERT INTO `pre_area` VALUES('2010','369','乐东黎族自治县','2010');
INSERT INTO `pre_area` VALUES('2011','369','保亭黎族苗族自治县','2011');
INSERT INTO `pre_area` VALUES('2012','369','西沙群岛','2012');
INSERT INTO `pre_area` VALUES('2013','369','中沙群岛的岛','2013');
INSERT INTO `pre_area` VALUES('2014','369','礁及其海域','2014');
INSERT INTO `pre_area` VALUES('2015','369','琼海市','2015');
INSERT INTO `pre_area` VALUES('2016','369','文昌市','2016');
INSERT INTO `pre_area` VALUES('2017','369','东方市','2017');
INSERT INTO `pre_area` VALUES('2018','369','屯昌县','2018');
INSERT INTO `pre_area` VALUES('2019','369','临高县','2019');
INSERT INTO `pre_area` VALUES('2020','369','昌江黎族自治县','2020');
INSERT INTO `pre_area` VALUES('2021','369','陵水黎族自治县','2021');
INSERT INTO `pre_area` VALUES('2022','369','琼中黎族苗族自治县','2022');
INSERT INTO `pre_area` VALUES('2023','369','南沙群岛','2023');
INSERT INTO `pre_area` VALUES('2024','370','南明区','2024');
INSERT INTO `pre_area` VALUES('2025','370','花溪区','2025');
INSERT INTO `pre_area` VALUES('2026','370','白云区','2026');
INSERT INTO `pre_area` VALUES('2027','370','开阳县','2027');
INSERT INTO `pre_area` VALUES('2028','370','修文县','2028');
INSERT INTO `pre_area` VALUES('2029','370','清镇市','2029');
INSERT INTO `pre_area` VALUES('2030','370','云岩区','2030');
INSERT INTO `pre_area` VALUES('2031','370','乌当区','2031');
INSERT INTO `pre_area` VALUES('2032','370','小河区','2032');
INSERT INTO `pre_area` VALUES('2033','370','息烽县','2033');
INSERT INTO `pre_area` VALUES('2034','371','钟山区','2034');
INSERT INTO `pre_area` VALUES('2035','371','水城县','2035');
INSERT INTO `pre_area` VALUES('2036','371','盘县','2036');
INSERT INTO `pre_area` VALUES('2037','371','六枝特区','2037');
INSERT INTO `pre_area` VALUES('2038','372','红花岗区','2038');
INSERT INTO `pre_area` VALUES('2039','372','遵义县','2039');
INSERT INTO `pre_area` VALUES('2040','372','绥阳县','2040');
INSERT INTO `pre_area` VALUES('2041','372','道真仡佬族苗族自治县','2041');
INSERT INTO `pre_area` VALUES('2042','372','凤冈县','2042');
INSERT INTO `pre_area` VALUES('2043','372','余庆县','2043');
INSERT INTO `pre_area` VALUES('2044','372','赤水市','2044');
INSERT INTO `pre_area` VALUES('2045','372','仁怀市','2045');
INSERT INTO `pre_area` VALUES('2046','372','汇川区','2046');
INSERT INTO `pre_area` VALUES('2047','372','桐梓县','2047');
INSERT INTO `pre_area` VALUES('2048','372','正安县','2048');
INSERT INTO `pre_area` VALUES('2049','372','务川仡佬族苗族自治县','2049');
INSERT INTO `pre_area` VALUES('2050','372','湄潭县','2050');
INSERT INTO `pre_area` VALUES('2051','372','习水县','2051');
INSERT INTO `pre_area` VALUES('2052','373','西秀区','2052');
INSERT INTO `pre_area` VALUES('2053','373','普定县','2053');
INSERT INTO `pre_area` VALUES('2054','373','关岭布依族苗族自治县','2054');
INSERT INTO `pre_area` VALUES('2055','373','紫云苗族布依族自治县','2055');
INSERT INTO `pre_area` VALUES('2056','373','平坝县','2056');
INSERT INTO `pre_area` VALUES('2057','373','镇宁布依族苗族自治县','2057');
INSERT INTO `pre_area` VALUES('2058','374','铜仁市','2058');
INSERT INTO `pre_area` VALUES('2059','374','玉屏侗族自治县','2059');
INSERT INTO `pre_area` VALUES('2060','374','思南县','2060');
INSERT INTO `pre_area` VALUES('2061','374','德江县','2061');
INSERT INTO `pre_area` VALUES('2062','374','松桃苗族自治县','2062');
INSERT INTO `pre_area` VALUES('2063','374','万山特区','2063');
INSERT INTO `pre_area` VALUES('2064','374','江口县','2064');
INSERT INTO `pre_area` VALUES('2065','374','石阡县','2065');
INSERT INTO `pre_area` VALUES('2066','374','印江土家族苗族自治县','2066');
INSERT INTO `pre_area` VALUES('2067','374','沿河土家族自治县','2067');
INSERT INTO `pre_area` VALUES('2068','375','毕节市','2068');
INSERT INTO `pre_area` VALUES('2069','375','黔西县','2069');
INSERT INTO `pre_area` VALUES('2070','375','织金县','2070');
INSERT INTO `pre_area` VALUES('2071','375','威宁彝族回族苗族自治县','2071');
INSERT INTO `pre_area` VALUES('2072','375','赫章县','2072');
INSERT INTO `pre_area` VALUES('2073','375','大方县','2073');
INSERT INTO `pre_area` VALUES('2074','375','金沙县','2074');
INSERT INTO `pre_area` VALUES('2075','375','纳雍县','2075');
INSERT INTO `pre_area` VALUES('2076','376','安龙县','2076');
INSERT INTO `pre_area` VALUES('2077','376','兴义市','2077');
INSERT INTO `pre_area` VALUES('2078','376','普安县','2078');
INSERT INTO `pre_area` VALUES('2079','376','贞丰县','2079');
INSERT INTO `pre_area` VALUES('2080','376','册亨县','2080');
INSERT INTO `pre_area` VALUES('2081','376','兴仁县','2081');
INSERT INTO `pre_area` VALUES('2082','376','晴隆县','2082');
INSERT INTO `pre_area` VALUES('2083','376','望谟县','2083');
INSERT INTO `pre_area` VALUES('2084','377','凯里市','2084');
INSERT INTO `pre_area` VALUES('2085','377','施秉县','2085');
INSERT INTO `pre_area` VALUES('2086','377','镇远县','2086');
INSERT INTO `pre_area` VALUES('2087','377','天柱县','2087');
INSERT INTO `pre_area` VALUES('2088','377','剑河县','2088');
INSERT INTO `pre_area` VALUES('2089','377','黎平县','2089');
INSERT INTO `pre_area` VALUES('2090','377','从江县','2090');
INSERT INTO `pre_area` VALUES('2091','377','麻江县','2091');
INSERT INTO `pre_area` VALUES('2092','377','丹寨县','2092');
INSERT INTO `pre_area` VALUES('2093','377','黄平县','2093');
INSERT INTO `pre_area` VALUES('2094','377','三穗县','2094');
INSERT INTO `pre_area` VALUES('2095','377','岑巩县','2095');
INSERT INTO `pre_area` VALUES('2096','377','锦屏县','2096');
INSERT INTO `pre_area` VALUES('2097','377','台江县','2097');
INSERT INTO `pre_area` VALUES('2098','377','榕江县','2098');
INSERT INTO `pre_area` VALUES('2099','377','雷山县','2099');
INSERT INTO `pre_area` VALUES('2100','378','都匀市','2100');
INSERT INTO `pre_area` VALUES('2101','378','荔波县','2101');
INSERT INTO `pre_area` VALUES('2102','378','平塘县','2102');
INSERT INTO `pre_area` VALUES('2103','378','长顺县','2103');
INSERT INTO `pre_area` VALUES('2104','378','平塘县','2104');
INSERT INTO `pre_area` VALUES('2105','378','长顺县','2105');
INSERT INTO `pre_area` VALUES('2106','378','惠水县','2106');
INSERT INTO `pre_area` VALUES('2107','378','三都水族自治县','2107');
INSERT INTO `pre_area` VALUES('2108','378','福泉市','2108');
INSERT INTO `pre_area` VALUES('2109','378','贵定县','2109');
INSERT INTO `pre_area` VALUES('2110','378','独山县','2110');
INSERT INTO `pre_area` VALUES('2111','378','罗甸县','2111');
INSERT INTO `pre_area` VALUES('2112','378','龙里县','2112');
INSERT INTO `pre_area` VALUES('2113','378','瓮安县','2113');
INSERT INTO `pre_area` VALUES('2114','379','五华区','2114');
INSERT INTO `pre_area` VALUES('2115','379','官渡区','2115');
INSERT INTO `pre_area` VALUES('2116','379','东川区','2116');
INSERT INTO `pre_area` VALUES('2117','379','晋宁县','2117');
INSERT INTO `pre_area` VALUES('2118','379','宜良县','2118');
INSERT INTO `pre_area` VALUES('2119','379','嵩明县','2119');
INSERT INTO `pre_area` VALUES('2120','379','寻甸回族彝族自治县','2120');
INSERT INTO `pre_area` VALUES('2121','379','盘龙区','2121');
INSERT INTO `pre_area` VALUES('2122','379','西山区','2122');
INSERT INTO `pre_area` VALUES('2123','379','呈贡县','2123');
INSERT INTO `pre_area` VALUES('2124','379','富民县','2124');
INSERT INTO `pre_area` VALUES('2125','379','石林彝族自治县','2125');
INSERT INTO `pre_area` VALUES('2126','379','禄劝彝族苗族自治县','2126');
INSERT INTO `pre_area` VALUES('2127','379','安宁市','2127');
INSERT INTO `pre_area` VALUES('2128','380','麒麟区','2128');
INSERT INTO `pre_area` VALUES('2129','380','陆良县','2129');
INSERT INTO `pre_area` VALUES('2130','380','罗平县','2130');
INSERT INTO `pre_area` VALUES('2131','380','会泽县','2131');
INSERT INTO `pre_area` VALUES('2132','380','马龙县','2132');
INSERT INTO `pre_area` VALUES('2133','380','师宗县','2133');
INSERT INTO `pre_area` VALUES('2134','380','富源县','2134');
INSERT INTO `pre_area` VALUES('2135','380','沾益县','2135');
INSERT INTO `pre_area` VALUES('2136','380','宣威市','2136');
INSERT INTO `pre_area` VALUES('2137','381','红塔区','2137');
INSERT INTO `pre_area` VALUES('2138','381','澄江县','2138');
INSERT INTO `pre_area` VALUES('2139','381','华宁县','2139');
INSERT INTO `pre_area` VALUES('2140','381','峨山彝族自治县','2140');
INSERT INTO `pre_area` VALUES('2141','381','元江哈尼族彝族傣族自治县','2141');
INSERT INTO `pre_area` VALUES('2142','381','江川县','2142');
INSERT INTO `pre_area` VALUES('2143','381','通海县','2143');
INSERT INTO `pre_area` VALUES('2144','381','易门县','2144');
INSERT INTO `pre_area` VALUES('2145','381','新平彝族傣族自治县','2145');
INSERT INTO `pre_area` VALUES('2146','382','隆阳区','2146');
INSERT INTO `pre_area` VALUES('2147','382','腾冲县','2147');
INSERT INTO `pre_area` VALUES('2148','382','昌宁县','2148');
INSERT INTO `pre_area` VALUES('2149','382','施甸县','2149');
INSERT INTO `pre_area` VALUES('2150','382','龙陵县','2150');
INSERT INTO `pre_area` VALUES('2151','383','昭阳区','2151');
INSERT INTO `pre_area` VALUES('2152','383','巧家县','2152');
INSERT INTO `pre_area` VALUES('2153','383','大关县','2153');
INSERT INTO `pre_area` VALUES('2154','383','绥江县','2154');
INSERT INTO `pre_area` VALUES('2155','383','彝良县','2155');
INSERT INTO `pre_area` VALUES('2156','383','水富县','2156');
INSERT INTO `pre_area` VALUES('2157','383','鲁甸县','2157');
INSERT INTO `pre_area` VALUES('2158','383','盐津县','2158');
INSERT INTO `pre_area` VALUES('2159','383','永善县','2159');
INSERT INTO `pre_area` VALUES('2160','383','镇雄县','2160');
INSERT INTO `pre_area` VALUES('2161','383','威信县','2161');
INSERT INTO `pre_area` VALUES('2162','384','翠云区','2162');
INSERT INTO `pre_area` VALUES('2163','384','墨江哈尼族自治县','2163');
INSERT INTO `pre_area` VALUES('2164','384','景谷傣族彝族自治县','2164');
INSERT INTO `pre_area` VALUES('2165','384','江城哈尼族彝族自治县','2165');
INSERT INTO `pre_area` VALUES('2166','384','澜沧拉祜族自治县','2166');
INSERT INTO `pre_area` VALUES('2167','384','西盟佤族自治县','2167');
INSERT INTO `pre_area` VALUES('2168','384','普洱哈尼族彝族自治县','2168');
INSERT INTO `pre_area` VALUES('2169','384','景东彝族自治县','2169');
INSERT INTO `pre_area` VALUES('2170','384','镇沅彝族哈尼族拉祜族自治县','2170');
INSERT INTO `pre_area` VALUES('2171','384','孟连傣族拉祜族佤族自治县','2171');
INSERT INTO `pre_area` VALUES('2172','385','临翔区','2172');
INSERT INTO `pre_area` VALUES('2173','385','云县','2173');
INSERT INTO `pre_area` VALUES('2174','385','镇康县','2174');
INSERT INTO `pre_area` VALUES('2175','385','耿马傣族佤族自治县','2175');
INSERT INTO `pre_area` VALUES('2176','385','沧源佤族自治县','2176');
INSERT INTO `pre_area` VALUES('2177','385','凤庆县','2177');
INSERT INTO `pre_area` VALUES('2178','385','永德县','2178');
INSERT INTO `pre_area` VALUES('2179','385','双江拉祜族佤族布朗族傣族自治县','2179');
INSERT INTO `pre_area` VALUES('2180','386','宁蒗彝族自治县','2180');
INSERT INTO `pre_area` VALUES('2181','386','古城区','2181');
INSERT INTO `pre_area` VALUES('2182','386','永胜县','2182');
INSERT INTO `pre_area` VALUES('2183','386','玉龙纳西族自治县','2183');
INSERT INTO `pre_area` VALUES('2184','386','华坪县','2184');
INSERT INTO `pre_area` VALUES('2185','387','个旧市','2185');
INSERT INTO `pre_area` VALUES('2186','387','蒙自县','2186');
INSERT INTO `pre_area` VALUES('2187','387','建水县','2187');
INSERT INTO `pre_area` VALUES('2188','387','弥勒县','2188');
INSERT INTO `pre_area` VALUES('2189','387','元阳县','2189');
INSERT INTO `pre_area` VALUES('2190','387','金平苗族瑶族傣族自治县','2190');
INSERT INTO `pre_area` VALUES('2191','387','河口瑶族自治县','2191');
INSERT INTO `pre_area` VALUES('2192','387','开远市','2192');
INSERT INTO `pre_area` VALUES('2193','387','屏边苗族自治县','2193');
INSERT INTO `pre_area` VALUES('2194','387','石屏县','2194');
INSERT INTO `pre_area` VALUES('2195','387','泸西县','2195');
INSERT INTO `pre_area` VALUES('2196','387','红河县','2196');
INSERT INTO `pre_area` VALUES('2197','387','绿春县','2197');
INSERT INTO `pre_area` VALUES('2198','388','景洪市','2198');
INSERT INTO `pre_area` VALUES('2199','388','勐腊县','2199');
INSERT INTO `pre_area` VALUES('2200','388','勐海县','2200');
INSERT INTO `pre_area` VALUES('2201','389','楚雄市','2201');
INSERT INTO `pre_area` VALUES('2202','389','牟定县','2202');
INSERT INTO `pre_area` VALUES('2203','389','姚安县','2203');
INSERT INTO `pre_area` VALUES('2204','389','永仁县','2204');
INSERT INTO `pre_area` VALUES('2205','389','武定县','2205');
INSERT INTO `pre_area` VALUES('2206','389','禄丰县','2206');
INSERT INTO `pre_area` VALUES('2207','389','双柏县','2207');
INSERT INTO `pre_area` VALUES('2208','389','南华县','2208');
INSERT INTO `pre_area` VALUES('2209','389','大姚县','2209');
INSERT INTO `pre_area` VALUES('2210','389','元谋县','2210');
INSERT INTO `pre_area` VALUES('2211','390','大理市','2211');
INSERT INTO `pre_area` VALUES('2212','390','祥云县','2212');
INSERT INTO `pre_area` VALUES('2213','390','弥渡县','2213');
INSERT INTO `pre_area` VALUES('2214','390','巍山彝族回族自治县','2214');
INSERT INTO `pre_area` VALUES('2215','390','云龙县','2215');
INSERT INTO `pre_area` VALUES('2216','390','剑川县','2216');
INSERT INTO `pre_area` VALUES('2217','390','鹤庆县','2217');
INSERT INTO `pre_area` VALUES('2218','390','漾濞彝族自治县','2218');
INSERT INTO `pre_area` VALUES('2219','390','宾川县','2219');
INSERT INTO `pre_area` VALUES('2220','390','南涧彝族自治县','2220');
INSERT INTO `pre_area` VALUES('2221','390','永平县','2221');
INSERT INTO `pre_area` VALUES('2222','390','洱源县','2222');
INSERT INTO `pre_area` VALUES('2223','391','泸水县','2223');
INSERT INTO `pre_area` VALUES('2224','391','贡山独龙族怒族自治县','2224');
INSERT INTO `pre_area` VALUES('2225','391','维西傈僳族自治县','2225');
INSERT INTO `pre_area` VALUES('2226','391','福贡县','2226');
INSERT INTO `pre_area` VALUES('2227','391','兰坪白族普米族自治县','2227');
INSERT INTO `pre_area` VALUES('2228','392','香格里拉县','2228');
INSERT INTO `pre_area` VALUES('2229','392','德钦县','2229');
INSERT INTO `pre_area` VALUES('2230','25','文山壮族苗族自治州','2230');
INSERT INTO `pre_area` VALUES('2231','25','德宏傣族景颇族自治州','2231');
INSERT INTO `pre_area` VALUES('2232','2230','富宁县','2232');
INSERT INTO `pre_area` VALUES('2233','2230','文山县','2233');
INSERT INTO `pre_area` VALUES('2234','2230','西畴县','2234');
INSERT INTO `pre_area` VALUES('2235','2230','马关县','2235');
INSERT INTO `pre_area` VALUES('2236','2230','广南县','2236');
INSERT INTO `pre_area` VALUES('2237','2230','砚山县','2237');
INSERT INTO `pre_area` VALUES('2238','2230','麻栗坡县','2238');
INSERT INTO `pre_area` VALUES('2239','2230','丘北县','2239');
INSERT INTO `pre_area` VALUES('2240','2231','瑞丽市','2240');
INSERT INTO `pre_area` VALUES('2241','2231','梁河县','2241');
INSERT INTO `pre_area` VALUES('2242','2231','陇川县','2242');
INSERT INTO `pre_area` VALUES('2243','2231','潞西市','2243');
INSERT INTO `pre_area` VALUES('2244','2231','盈江县','2244');
INSERT INTO `pre_area` VALUES('2245','393','锦江区','2245');
INSERT INTO `pre_area` VALUES('2246','393','金牛区','2246');
INSERT INTO `pre_area` VALUES('2247','393','成华区','2247');
INSERT INTO `pre_area` VALUES('2248','393','青白江区','2248');
INSERT INTO `pre_area` VALUES('2249','393','金堂县','2249');
INSERT INTO `pre_area` VALUES('2250','393','温江县','2250');
INSERT INTO `pre_area` VALUES('2251','393','大邑县','2251');
INSERT INTO `pre_area` VALUES('2252','393','新津县','2252');
INSERT INTO `pre_area` VALUES('2253','393','彭州市','2253');
INSERT INTO `pre_area` VALUES('2254','393','崇州市','2254');
INSERT INTO `pre_area` VALUES('2255','393','青羊区','2255');
INSERT INTO `pre_area` VALUES('2256','393','武侯区','2256');
INSERT INTO `pre_area` VALUES('2257','393','龙泉驿区','2257');
INSERT INTO `pre_area` VALUES('2258','393','新都区','2258');
INSERT INTO `pre_area` VALUES('2259','393','双流县','2259');
INSERT INTO `pre_area` VALUES('2260','393','郫县','2260');
INSERT INTO `pre_area` VALUES('2261','393','蒲江县','2261');
INSERT INTO `pre_area` VALUES('2262','393','都江堰市','2262');
INSERT INTO `pre_area` VALUES('2263','393','邛崃市','2263');
INSERT INTO `pre_area` VALUES('2264','394','自流井区','2264');
INSERT INTO `pre_area` VALUES('2265','394','大安区','2265');
INSERT INTO `pre_area` VALUES('2266','394','荣县','2266');
INSERT INTO `pre_area` VALUES('2267','394','富顺县','2267');
INSERT INTO `pre_area` VALUES('2268','394','贡井区','2268');
INSERT INTO `pre_area` VALUES('2269','394','沿滩区','2269');
INSERT INTO `pre_area` VALUES('2270','395','东区','2270');
INSERT INTO `pre_area` VALUES('2271','395','仁和区','2271');
INSERT INTO `pre_area` VALUES('2272','395','盐边县','2272');
INSERT INTO `pre_area` VALUES('2273','395','西区','2273');
INSERT INTO `pre_area` VALUES('2274','395','米易县','2274');
INSERT INTO `pre_area` VALUES('2275','396','江阳区','2275');
INSERT INTO `pre_area` VALUES('2276','396','龙马潭区','2276');
INSERT INTO `pre_area` VALUES('2277','396','合江县','2277');
INSERT INTO `pre_area` VALUES('2278','396','古蔺县','2278');
INSERT INTO `pre_area` VALUES('2279','396','纳溪区','2279');
INSERT INTO `pre_area` VALUES('2280','396','泸县','2280');
INSERT INTO `pre_area` VALUES('2281','396','叙永县','2281');
INSERT INTO `pre_area` VALUES('2282','397','旌阳区','2282');
INSERT INTO `pre_area` VALUES('2283','397','罗江县','2283');
INSERT INTO `pre_area` VALUES('2284','397','什邡市','2284');
INSERT INTO `pre_area` VALUES('2285','397','绵竹市','2285');
INSERT INTO `pre_area` VALUES('2286','397','中江县','2286');
INSERT INTO `pre_area` VALUES('2287','397','广汉市','2287');
INSERT INTO `pre_area` VALUES('2288','398','涪城区','2288');
INSERT INTO `pre_area` VALUES('2289','398','三台县','2289');
INSERT INTO `pre_area` VALUES('2290','398','江油市','2290');
INSERT INTO `pre_area` VALUES('2291','398','游仙区','2291');
INSERT INTO `pre_area` VALUES('2292','398','盐亭县','2292');
INSERT INTO `pre_area` VALUES('2293','398','安县','2293');
INSERT INTO `pre_area` VALUES('2294','398','平武县','2294');
INSERT INTO `pre_area` VALUES('2295','398','梓潼县','2295');
INSERT INTO `pre_area` VALUES('2296','399','市中区','2296');
INSERT INTO `pre_area` VALUES('2297','399','朝天区','2297');
INSERT INTO `pre_area` VALUES('2298','399','青川县','2298');
INSERT INTO `pre_area` VALUES('2299','399','苍溪县','2299');
INSERT INTO `pre_area` VALUES('2300','399','元坝区','2300');
INSERT INTO `pre_area` VALUES('2301','399','旺苍县','2301');
INSERT INTO `pre_area` VALUES('2302','399','剑阁县','2302');
INSERT INTO `pre_area` VALUES('2303','400','船山区','2303');
INSERT INTO `pre_area` VALUES('2304','400','蓬溪县','2304');
INSERT INTO `pre_area` VALUES('2305','400','大英县','2305');
INSERT INTO `pre_area` VALUES('2306','400','安居区','2306');
INSERT INTO `pre_area` VALUES('2307','400','射洪县','2307');
INSERT INTO `pre_area` VALUES('2308','401','市中区','2308');
INSERT INTO `pre_area` VALUES('2309','401','威远县','2309');
INSERT INTO `pre_area` VALUES('2310','401','隆昌县','2310');
INSERT INTO `pre_area` VALUES('2311','401','东兴区','2311');
INSERT INTO `pre_area` VALUES('2312','401','资中县','2312');
INSERT INTO `pre_area` VALUES('2313','402','市中区','2313');
INSERT INTO `pre_area` VALUES('2314','402','五通桥区','2314');
INSERT INTO `pre_area` VALUES('2315','402','犍为县','2315');
INSERT INTO `pre_area` VALUES('2316','402','夹江县','2316');
INSERT INTO `pre_area` VALUES('2317','402','峨边彝族自治县','2317');
INSERT INTO `pre_area` VALUES('2318','402','峨眉山市','2318');
INSERT INTO `pre_area` VALUES('2319','402','沙湾区','2319');
INSERT INTO `pre_area` VALUES('2320','402','金口河区','2320');
INSERT INTO `pre_area` VALUES('2321','402','井研县','2321');
INSERT INTO `pre_area` VALUES('2322','402','沐川县','2322');
INSERT INTO `pre_area` VALUES('2323','402','马边彝族自治县','2323');
INSERT INTO `pre_area` VALUES('2324','403','顺庆区','2324');
INSERT INTO `pre_area` VALUES('2325','403','嘉陵区','2325');
INSERT INTO `pre_area` VALUES('2326','403','营山县','2326');
INSERT INTO `pre_area` VALUES('2327','403','仪陇县','2327');
INSERT INTO `pre_area` VALUES('2328','403','阆中市','2328');
INSERT INTO `pre_area` VALUES('2329','403','高坪区','2329');
INSERT INTO `pre_area` VALUES('2330','403','南部县','2330');
INSERT INTO `pre_area` VALUES('2331','403','蓬安县','2331');
INSERT INTO `pre_area` VALUES('2332','403','西充县','2332');
INSERT INTO `pre_area` VALUES('2333','404','屏山县','2333');
INSERT INTO `pre_area` VALUES('2334','404','翠屏区','2334');
INSERT INTO `pre_area` VALUES('2335','404','南溪县','2335');
INSERT INTO `pre_area` VALUES('2336','404','长宁县','2336');
INSERT INTO `pre_area` VALUES('2337','404','珙县','2337');
INSERT INTO `pre_area` VALUES('2338','404','兴文县','2338');
INSERT INTO `pre_area` VALUES('2339','404','宜宾县','2339');
INSERT INTO `pre_area` VALUES('2340','404','江安县','2340');
INSERT INTO `pre_area` VALUES('2341','404','高县','2341');
INSERT INTO `pre_area` VALUES('2342','404','筠连县','2342');
INSERT INTO `pre_area` VALUES('2343','405','广安区','2343');
INSERT INTO `pre_area` VALUES('2344','405','武胜县','2344');
INSERT INTO `pre_area` VALUES('2345','405','华莹市','2345');
INSERT INTO `pre_area` VALUES('2346','405','岳池县','2346');
INSERT INTO `pre_area` VALUES('2347','405','邻水县','2347');
INSERT INTO `pre_area` VALUES('2348','406','通川区','2348');
INSERT INTO `pre_area` VALUES('2349','406','宣汉县','2349');
INSERT INTO `pre_area` VALUES('2350','406','大竹县','2350');
INSERT INTO `pre_area` VALUES('2351','406','万源市','2351');
INSERT INTO `pre_area` VALUES('2352','406','达县','2352');
INSERT INTO `pre_area` VALUES('2353','406','开江县','2353');
INSERT INTO `pre_area` VALUES('2354','406','渠县','2354');
INSERT INTO `pre_area` VALUES('2355','407','东坡区','2355');
INSERT INTO `pre_area` VALUES('2356','407','彭山县','2356');
INSERT INTO `pre_area` VALUES('2357','407','丹棱县','2357');
INSERT INTO `pre_area` VALUES('2358','407','青神县','2358');
INSERT INTO `pre_area` VALUES('2359','407','仁寿县','2359');
INSERT INTO `pre_area` VALUES('2360','407','洪雅县','2360');
INSERT INTO `pre_area` VALUES('2361','408','雨城区','2361');
INSERT INTO `pre_area` VALUES('2362','408','荥经县','2362');
INSERT INTO `pre_area` VALUES('2363','408','石棉县','2363');
INSERT INTO `pre_area` VALUES('2364','408','芦山县','2364');
INSERT INTO `pre_area` VALUES('2365','408','宝兴县','2365');
INSERT INTO `pre_area` VALUES('2366','408','名山县','2366');
INSERT INTO `pre_area` VALUES('2367','408','汉源县','2367');
INSERT INTO `pre_area` VALUES('2368','408','天全县','2368');
INSERT INTO `pre_area` VALUES('2369','409','巴州区','2369');
INSERT INTO `pre_area` VALUES('2370','409','南江县','2370');
INSERT INTO `pre_area` VALUES('2371','409','平昌县','2371');
INSERT INTO `pre_area` VALUES('2372','409','通江县','2372');
INSERT INTO `pre_area` VALUES('2373','410','雁江区','2373');
INSERT INTO `pre_area` VALUES('2374','410','乐至县','2374');
INSERT INTO `pre_area` VALUES('2375','410','简阳市','2375');
INSERT INTO `pre_area` VALUES('2376','410','安岳县','2376');
INSERT INTO `pre_area` VALUES('2377','411','汶川县','2377');
INSERT INTO `pre_area` VALUES('2378','411','茂县','2378');
INSERT INTO `pre_area` VALUES('2379','411','九寨沟县','2379');
INSERT INTO `pre_area` VALUES('2380','411','小金县','2380');
INSERT INTO `pre_area` VALUES('2381','411','马尔康县','2381');
INSERT INTO `pre_area` VALUES('2382','411','阿坝县','2382');
INSERT INTO `pre_area` VALUES('2383','411','红原县','2383');
INSERT INTO `pre_area` VALUES('2384','411','理县','2384');
INSERT INTO `pre_area` VALUES('2385','411','松潘县','2385');
INSERT INTO `pre_area` VALUES('2386','411','金川县','2386');
INSERT INTO `pre_area` VALUES('2387','411','黑水县','2387');
INSERT INTO `pre_area` VALUES('2388','411','壤塘县','2388');
INSERT INTO `pre_area` VALUES('2389','411','若尔盖县','2389');
INSERT INTO `pre_area` VALUES('2390','412','西昌市','2390');
INSERT INTO `pre_area` VALUES('2391','412','盐源县','2391');
INSERT INTO `pre_area` VALUES('2392','412','会理县','2392');
INSERT INTO `pre_area` VALUES('2393','412','宁南县','2393');
INSERT INTO `pre_area` VALUES('2394','412','布拖县','2394');
INSERT INTO `pre_area` VALUES('2395','412','昭觉县','2395');
INSERT INTO `pre_area` VALUES('2396','412','冕宁县','2396');
INSERT INTO `pre_area` VALUES('2397','412','甘洛县','2397');
INSERT INTO `pre_area` VALUES('2398','412','雷波县','2398');
INSERT INTO `pre_area` VALUES('2399','412','木里藏族自治县','2399');
INSERT INTO `pre_area` VALUES('2400','412','德昌县','2400');
INSERT INTO `pre_area` VALUES('2401','412','会东县','2401');
INSERT INTO `pre_area` VALUES('2402','412','普格县','2402');
INSERT INTO `pre_area` VALUES('2403','412','金阳县','2403');
INSERT INTO `pre_area` VALUES('2404','412','喜德县','2404');
INSERT INTO `pre_area` VALUES('2405','412','越西县','2405');
INSERT INTO `pre_area` VALUES('2406','412','美姑县','2406');
INSERT INTO `pre_area` VALUES('2407','23','甘孜藏族自治州','2407');
INSERT INTO `pre_area` VALUES('2408','2407','康定县','2408');
INSERT INTO `pre_area` VALUES('2409','2407','丹巴县','2409');
INSERT INTO `pre_area` VALUES('2410','2407','雅江县','2410');
INSERT INTO `pre_area` VALUES('2411','2407','炉霍县','2411');
INSERT INTO `pre_area` VALUES('2412','2407','新龙县','2412');
INSERT INTO `pre_area` VALUES('2413','2407','白玉县','2413');
INSERT INTO `pre_area` VALUES('2414','2407','色达县','2414');
INSERT INTO `pre_area` VALUES('2415','2407','巴塘县','2415');
INSERT INTO `pre_area` VALUES('2416','2407','得荣县','2416');
INSERT INTO `pre_area` VALUES('2417','2407','稻城县','2417');
INSERT INTO `pre_area` VALUES('2418','2407','泸定县','2418');
INSERT INTO `pre_area` VALUES('2419','2407','九龙县','2419');
INSERT INTO `pre_area` VALUES('2420','2407','道孚县','2420');
INSERT INTO `pre_area` VALUES('2421','2407','甘孜县','2421');
INSERT INTO `pre_area` VALUES('2422','2407','德格县','2422');
INSERT INTO `pre_area` VALUES('2423','2407','石渠县','2423');
INSERT INTO `pre_area` VALUES('2424','2407','理塘县','2424');
INSERT INTO `pre_area` VALUES('2425','2407','乡城县','2425');
INSERT INTO `pre_area` VALUES('2426','413','芙蓉区','2426');
INSERT INTO `pre_area` VALUES('2427','413','岳麓区','2427');
INSERT INTO `pre_area` VALUES('2428','413','雨花区','2428');
INSERT INTO `pre_area` VALUES('2429','413','望城县','2429');
INSERT INTO `pre_area` VALUES('2430','413','浏阳市','2430');
INSERT INTO `pre_area` VALUES('2431','413','天心区','2431');
INSERT INTO `pre_area` VALUES('2432','413','开福区','2432');
INSERT INTO `pre_area` VALUES('2433','413','长沙县','2433');
INSERT INTO `pre_area` VALUES('2434','413','宁乡县','2434');
INSERT INTO `pre_area` VALUES('2435','414','荷塘区','2435');
INSERT INTO `pre_area` VALUES('2436','414','石峰区','2436');
INSERT INTO `pre_area` VALUES('2437','414','株洲县','2437');
INSERT INTO `pre_area` VALUES('2438','414','茶陵县','2438');
INSERT INTO `pre_area` VALUES('2439','414','醴陵市','2439');
INSERT INTO `pre_area` VALUES('2440','414','芦淞区','2440');
INSERT INTO `pre_area` VALUES('2441','414','天元区','2441');
INSERT INTO `pre_area` VALUES('2442','414','攸县','2442');
INSERT INTO `pre_area` VALUES('2443','414','炎陵县','2443');
INSERT INTO `pre_area` VALUES('2444','415','雨湖区','2444');
INSERT INTO `pre_area` VALUES('2445','415','湘潭县','2445');
INSERT INTO `pre_area` VALUES('2446','415','韶山市','2446');
INSERT INTO `pre_area` VALUES('2447','415','岳塘区','2447');
INSERT INTO `pre_area` VALUES('2448','415','湘乡市','2448');
INSERT INTO `pre_area` VALUES('2449','416','珠晖区','2449');
INSERT INTO `pre_area` VALUES('2450','416','石鼓区','2450');
INSERT INTO `pre_area` VALUES('2451','416','南岳区','2451');
INSERT INTO `pre_area` VALUES('2452','416','衡南县','2452');
INSERT INTO `pre_area` VALUES('2453','416','衡东县','2453');
INSERT INTO `pre_area` VALUES('2454','416','耒阳市','2454');
INSERT INTO `pre_area` VALUES('2455','416','常宁市','2455');
INSERT INTO `pre_area` VALUES('2456','416','雁峰区','2456');
INSERT INTO `pre_area` VALUES('2457','416','蒸湘区','2457');
INSERT INTO `pre_area` VALUES('2458','416','衡阳县','2458');
INSERT INTO `pre_area` VALUES('2459','416','衡山县','2459');
INSERT INTO `pre_area` VALUES('2460','416','祁东县','2460');
INSERT INTO `pre_area` VALUES('2461','417','双清区','2461');
INSERT INTO `pre_area` VALUES('2462','417','北塔区','2462');
INSERT INTO `pre_area` VALUES('2463','417','新邵县','2463');
INSERT INTO `pre_area` VALUES('2464','417','隆回县','2464');
INSERT INTO `pre_area` VALUES('2465','417','绥宁县','2465');
INSERT INTO `pre_area` VALUES('2466','417','城步苗族自治县','2466');
INSERT INTO `pre_area` VALUES('2467','417','武冈市','2467');
INSERT INTO `pre_area` VALUES('2468','417','大祥区','2468');
INSERT INTO `pre_area` VALUES('2469','417','邵东县','2469');
INSERT INTO `pre_area` VALUES('2470','417','邵阳县','2470');
INSERT INTO `pre_area` VALUES('2471','417','洞口县','2471');
INSERT INTO `pre_area` VALUES('2472','417','新宁县','2472');
INSERT INTO `pre_area` VALUES('2473','418','临湘市','2473');
INSERT INTO `pre_area` VALUES('2474','418','岳阳楼区','2474');
INSERT INTO `pre_area` VALUES('2475','418','君山区','2475');
INSERT INTO `pre_area` VALUES('2476','418','华容县','2476');
INSERT INTO `pre_area` VALUES('2477','418','平江县','2477');
INSERT INTO `pre_area` VALUES('2478','418','云溪区','2478');
INSERT INTO `pre_area` VALUES('2479','418','岳阳县','2479');
INSERT INTO `pre_area` VALUES('2480','418','湘阴县','2480');
INSERT INTO `pre_area` VALUES('2481','418','汨罗市','2481');
INSERT INTO `pre_area` VALUES('2482','419','武陵区','2482');
INSERT INTO `pre_area` VALUES('2483','419','安乡县','2483');
INSERT INTO `pre_area` VALUES('2484','419','澧县','2484');
INSERT INTO `pre_area` VALUES('2485','419','桃源县','2485');
INSERT INTO `pre_area` VALUES('2486','419','津市市','2486');
INSERT INTO `pre_area` VALUES('2487','419','鼎城区','2487');
INSERT INTO `pre_area` VALUES('2488','419','汉寿县','2488');
INSERT INTO `pre_area` VALUES('2489','419','临澧县','2489');
INSERT INTO `pre_area` VALUES('2490','419','石门县','2490');
INSERT INTO `pre_area` VALUES('2491','420','永定区','2491');
INSERT INTO `pre_area` VALUES('2492','420','慈利县','2492');
INSERT INTO `pre_area` VALUES('2493','420','桑植县','2493');
INSERT INTO `pre_area` VALUES('2494','420','武陵源区','2494');
INSERT INTO `pre_area` VALUES('2495','421','资阳区','2495');
INSERT INTO `pre_area` VALUES('2496','421','南县','2496');
INSERT INTO `pre_area` VALUES('2497','421','安化县','2497');
INSERT INTO `pre_area` VALUES('2498','421','沅江市','2498');
INSERT INTO `pre_area` VALUES('2499','421','赫山区','2499');
INSERT INTO `pre_area` VALUES('2500','421','桃江县','2500');
INSERT INTO `pre_area` VALUES('2501','422','北湖区','2501');
INSERT INTO `pre_area` VALUES('2502','422','桂阳县','2502');
INSERT INTO `pre_area` VALUES('2503','422','永兴县','2503');
INSERT INTO `pre_area` VALUES('2504','422','临武县','2504');
INSERT INTO `pre_area` VALUES('2505','422','桂东县','2505');
INSERT INTO `pre_area` VALUES('2506','422','资兴市','2506');
INSERT INTO `pre_area` VALUES('2507','422','苏仙区','2507');
INSERT INTO `pre_area` VALUES('2508','422','宜章县','2508');
INSERT INTO `pre_area` VALUES('2509','422','嘉禾县','2509');
INSERT INTO `pre_area` VALUES('2510','422','汝城县','2510');
INSERT INTO `pre_area` VALUES('2511','422','安仁县','2511');
INSERT INTO `pre_area` VALUES('2512','423','芝山区','2512');
INSERT INTO `pre_area` VALUES('2513','423','祁阳县','2513');
INSERT INTO `pre_area` VALUES('2514','423','双牌县','2514');
INSERT INTO `pre_area` VALUES('2515','423','江永县','2515');
INSERT INTO `pre_area` VALUES('2516','423','蓝山县','2516');
INSERT INTO `pre_area` VALUES('2517','423','江华瑶族自治县','2517');
INSERT INTO `pre_area` VALUES('2518','423','冷水滩区','2518');
INSERT INTO `pre_area` VALUES('2519','423','东安县','2519');
INSERT INTO `pre_area` VALUES('2520','423','道县','2520');
INSERT INTO `pre_area` VALUES('2521','423','宁远县','2521');
INSERT INTO `pre_area` VALUES('2522','423','新田县','2522');
INSERT INTO `pre_area` VALUES('2523','424','鹤城区','2523');
INSERT INTO `pre_area` VALUES('2524','424','沅陵县','2524');
INSERT INTO `pre_area` VALUES('2525','424','溆浦县','2525');
INSERT INTO `pre_area` VALUES('2526','424','麻阳苗族自治县','2526');
INSERT INTO `pre_area` VALUES('2527','424','芷江侗族自治县','2527');
INSERT INTO `pre_area` VALUES('2528','424','通道侗族自治县','2528');
INSERT INTO `pre_area` VALUES('2529','424','洪江市','2529');
INSERT INTO `pre_area` VALUES('2530','424','中方县','2530');
INSERT INTO `pre_area` VALUES('2531','424','辰溪县','2531');
INSERT INTO `pre_area` VALUES('2532','424','会同县','2532');
INSERT INTO `pre_area` VALUES('2533','424','新晃侗族自治县','2533');
INSERT INTO `pre_area` VALUES('2534','424','靖州苗族侗族自治县','2534');
INSERT INTO `pre_area` VALUES('2535','425','娄星区','2535');
INSERT INTO `pre_area` VALUES('2536','425','新化县','2536');
INSERT INTO `pre_area` VALUES('2537','425','涟源市','2537');
INSERT INTO `pre_area` VALUES('2538','425','双峰县','2538');
INSERT INTO `pre_area` VALUES('2539','425','冷水江市','2539');
INSERT INTO `pre_area` VALUES('2540','426','吉首市','2540');
INSERT INTO `pre_area` VALUES('2541','426','凤凰县','2541');
INSERT INTO `pre_area` VALUES('2542','426','保靖县','2542');
INSERT INTO `pre_area` VALUES('2543','426','永顺县','2543');
INSERT INTO `pre_area` VALUES('2544','426','龙山县','2544');
INSERT INTO `pre_area` VALUES('2545','426','泸溪县','2545');
INSERT INTO `pre_area` VALUES('2546','426','花垣县','2546');
INSERT INTO `pre_area` VALUES('2547','426','古丈县','2547');
INSERT INTO `pre_area` VALUES('2548','427','江岸区','2548');
INSERT INTO `pre_area` VALUES('2549','427','乔口区','2549');
INSERT INTO `pre_area` VALUES('2550','427','武昌区','2550');
INSERT INTO `pre_area` VALUES('2551','427','洪山区','2551');
INSERT INTO `pre_area` VALUES('2552','427','汉南区','2552');
INSERT INTO `pre_area` VALUES('2553','427','江夏区','2553');
INSERT INTO `pre_area` VALUES('2554','427','新洲区','2554');
INSERT INTO `pre_area` VALUES('2555','427','江汉区','2555');
INSERT INTO `pre_area` VALUES('2556','427','汉阳区','2556');
INSERT INTO `pre_area` VALUES('2557','427','青山区','2557');
INSERT INTO `pre_area` VALUES('2558','427','东西湖区','2558');
INSERT INTO `pre_area` VALUES('2559','427','蔡甸区','2559');
INSERT INTO `pre_area` VALUES('2560','427','黄陂区','2560');
INSERT INTO `pre_area` VALUES('2561','428','黄石港区','2561');
INSERT INTO `pre_area` VALUES('2562','428','铁山区','2562');
INSERT INTO `pre_area` VALUES('2563','428','大冶市','2563');
INSERT INTO `pre_area` VALUES('2564','428','下陆区','2564');
INSERT INTO `pre_area` VALUES('2565','428','阳新县','2565');
INSERT INTO `pre_area` VALUES('2566','429','襄城区','2566');
INSERT INTO `pre_area` VALUES('2567','429','襄阳区','2567');
INSERT INTO `pre_area` VALUES('2568','429','谷城县','2568');
INSERT INTO `pre_area` VALUES('2569','429','老河口市','2569');
INSERT INTO `pre_area` VALUES('2570','429','宜城市','2570');
INSERT INTO `pre_area` VALUES('2571','429','樊城区','2571');
INSERT INTO `pre_area` VALUES('2572','429','南漳县','2572');
INSERT INTO `pre_area` VALUES('2573','429','保康县','2573');
INSERT INTO `pre_area` VALUES('2574','429','枣阳市','2574');
INSERT INTO `pre_area` VALUES('2575','430','茅箭区','2575');
INSERT INTO `pre_area` VALUES('2576','430','郧县','2576');
INSERT INTO `pre_area` VALUES('2577','430','竹山县','2577');
INSERT INTO `pre_area` VALUES('2578','430','房县','2578');
INSERT INTO `pre_area` VALUES('2579','430','丹江口市','2579');
INSERT INTO `pre_area` VALUES('2580','430','张湾区','2580');
INSERT INTO `pre_area` VALUES('2581','430','郧西县','2581');
INSERT INTO `pre_area` VALUES('2582','430','竹溪县','2582');
INSERT INTO `pre_area` VALUES('2583','431','沙市区','2583');
INSERT INTO `pre_area` VALUES('2584','431','公安县','2584');
INSERT INTO `pre_area` VALUES('2585','431','江陵县','2585');
INSERT INTO `pre_area` VALUES('2586','431','洪湖市','2586');
INSERT INTO `pre_area` VALUES('2587','431','松滋市','2587');
INSERT INTO `pre_area` VALUES('2588','431','荆州区','2588');
INSERT INTO `pre_area` VALUES('2589','431','监利县','2589');
INSERT INTO `pre_area` VALUES('2590','431','石首市','2590');
INSERT INTO `pre_area` VALUES('2591','432','西陵区','2591');
INSERT INTO `pre_area` VALUES('2592','432','点军区','2592');
INSERT INTO `pre_area` VALUES('2593','432','夷陵区','2593');
INSERT INTO `pre_area` VALUES('2594','432','兴山县','2594');
INSERT INTO `pre_area` VALUES('2595','432','长阳土家族自治县','2595');
INSERT INTO `pre_area` VALUES('2596','432','宜都市','2596');
INSERT INTO `pre_area` VALUES('2597','432','枝江市','2597');
INSERT INTO `pre_area` VALUES('2598','432','伍家岗区','2598');
INSERT INTO `pre_area` VALUES('2599','432','虎亭区','2599');
INSERT INTO `pre_area` VALUES('2600','432','远安县','2600');
INSERT INTO `pre_area` VALUES('2601','432','秭归县','2601');
INSERT INTO `pre_area` VALUES('2602','432','五峰土家族自治县','2602');
INSERT INTO `pre_area` VALUES('2603','432','当阳市','2603');
INSERT INTO `pre_area` VALUES('2604','433','东宝区','2604');
INSERT INTO `pre_area` VALUES('2605','433','京山县','2605');
INSERT INTO `pre_area` VALUES('2606','433','钟祥市','2606');
INSERT INTO `pre_area` VALUES('2607','433','掇刀区','2607');
INSERT INTO `pre_area` VALUES('2608','433','沙洋县','2608');
INSERT INTO `pre_area` VALUES('2609','434','梁子湖区','2609');
INSERT INTO `pre_area` VALUES('2610','434','鄂城区','2610');
INSERT INTO `pre_area` VALUES('2611','434','华容区','2611');
INSERT INTO `pre_area` VALUES('2612','435','孝南区','2612');
INSERT INTO `pre_area` VALUES('2613','435','大悟县','2613');
INSERT INTO `pre_area` VALUES('2614','435','应城市','2614');
INSERT INTO `pre_area` VALUES('2615','435','汉川市','2615');
INSERT INTO `pre_area` VALUES('2616','435','孝昌县','2616');
INSERT INTO `pre_area` VALUES('2617','435','云梦县','2617');
INSERT INTO `pre_area` VALUES('2618','435','安陆市','2618');
INSERT INTO `pre_area` VALUES('2619','436','黄州区','2619');
INSERT INTO `pre_area` VALUES('2620','436','红安县','2620');
INSERT INTO `pre_area` VALUES('2621','436','英山县','2621');
INSERT INTO `pre_area` VALUES('2622','436','蕲春县','2622');
INSERT INTO `pre_area` VALUES('2623','436','麻城市','2623');
INSERT INTO `pre_area` VALUES('2624','436','武穴市','2624');
INSERT INTO `pre_area` VALUES('2625','436','团风县','2625');
INSERT INTO `pre_area` VALUES('2626','436','罗田县','2626');
INSERT INTO `pre_area` VALUES('2627','436','浠水县','2627');
INSERT INTO `pre_area` VALUES('2628','436','黄梅县','2628');
INSERT INTO `pre_area` VALUES('2629','437','咸安区','2629');
INSERT INTO `pre_area` VALUES('2630','437','通城县','2630');
INSERT INTO `pre_area` VALUES('2631','437','通山县','2631');
INSERT INTO `pre_area` VALUES('2632','437','赤壁市','2632');
INSERT INTO `pre_area` VALUES('2633','437','嘉鱼县','2633');
INSERT INTO `pre_area` VALUES('2634','437','崇阳县','2634');
INSERT INTO `pre_area` VALUES('2635','438','曾都区','2635');
INSERT INTO `pre_area` VALUES('2636','438','广水市','2636');
INSERT INTO `pre_area` VALUES('2637','439','恩施市','2637');
INSERT INTO `pre_area` VALUES('2638','439','建始县','2638');
INSERT INTO `pre_area` VALUES('2639','439','鹤峰县','2639');
INSERT INTO `pre_area` VALUES('2640','439','利川市','2640');
INSERT INTO `pre_area` VALUES('2641','439','巴东县','2641');
INSERT INTO `pre_area` VALUES('2642','439','宣恩县','2642');
INSERT INTO `pre_area` VALUES('2643','439','来凤县','2643');
INSERT INTO `pre_area` VALUES('2644','439','咸丰县','2644');
INSERT INTO `pre_area` VALUES('2645','444','新城区','2645');
INSERT INTO `pre_area` VALUES('2646','444','莲湖区','2646');
INSERT INTO `pre_area` VALUES('2647','444','未央区','2647');
INSERT INTO `pre_area` VALUES('2648','444','阎良区','2648');
INSERT INTO `pre_area` VALUES('2649','444','长安区','2649');
INSERT INTO `pre_area` VALUES('2650','444','周至县','2650');
INSERT INTO `pre_area` VALUES('2651','444','高陵县','2651');
INSERT INTO `pre_area` VALUES('2652','444','碑林区','2652');
INSERT INTO `pre_area` VALUES('2653','444','灞桥区','2653');
INSERT INTO `pre_area` VALUES('2654','444','雁塔区','2654');
INSERT INTO `pre_area` VALUES('2655','444','临潼区','2655');
INSERT INTO `pre_area` VALUES('2656','444','蓝田县','2656');
INSERT INTO `pre_area` VALUES('2657','444','户县','2657');
INSERT INTO `pre_area` VALUES('2658','445','耀州区','2658');
INSERT INTO `pre_area` VALUES('2659','445','宜君县','2659');
INSERT INTO `pre_area` VALUES('2660','446','渭滨区','2660');
INSERT INTO `pre_area` VALUES('2661','446','陈仓区','2661');
INSERT INTO `pre_area` VALUES('2662','446','岐山县','2662');
INSERT INTO `pre_area` VALUES('2663','446','眉县','2663');
INSERT INTO `pre_area` VALUES('2664','446','千阳县','2664');
INSERT INTO `pre_area` VALUES('2665','446','凤县','2665');
INSERT INTO `pre_area` VALUES('2666','446','太白县','2666');
INSERT INTO `pre_area` VALUES('2667','446','金台区','2667');
INSERT INTO `pre_area` VALUES('2668','446','凤翔县','2668');
INSERT INTO `pre_area` VALUES('2669','446','扶风县','2669');
INSERT INTO `pre_area` VALUES('2670','446','陇县','2670');
INSERT INTO `pre_area` VALUES('2671','446','麟游县','2671');
INSERT INTO `pre_area` VALUES('2672','447','秦都区','2672');
INSERT INTO `pre_area` VALUES('2673','447','渭城区','2673');
INSERT INTO `pre_area` VALUES('2674','447','泾阳县','2674');
INSERT INTO `pre_area` VALUES('2675','447','礼泉县','2675');
INSERT INTO `pre_area` VALUES('2676','447','彬县','2676');
INSERT INTO `pre_area` VALUES('2677','447','旬邑县','2677');
INSERT INTO `pre_area` VALUES('2678','447','武功县','2678');
INSERT INTO `pre_area` VALUES('2679','447','兴平市','2679');
INSERT INTO `pre_area` VALUES('2680','447','杨陵区','2680');
INSERT INTO `pre_area` VALUES('2681','447','三原县','2681');
INSERT INTO `pre_area` VALUES('2682','447','乾县','2682');
INSERT INTO `pre_area` VALUES('2683','447','永寿县','2683');
INSERT INTO `pre_area` VALUES('2684','447','长武县','2684');
INSERT INTO `pre_area` VALUES('2685','447','淳化县','2685');
INSERT INTO `pre_area` VALUES('2686','448','临渭区','2686');
INSERT INTO `pre_area` VALUES('2687','448','潼关县','2687');
INSERT INTO `pre_area` VALUES('2688','448','合阳县','2688');
INSERT INTO `pre_area` VALUES('2689','448','华阴市','2689');
INSERT INTO `pre_area` VALUES('2690','448','华县','2690');
INSERT INTO `pre_area` VALUES('2691','448','大荔县','2691');
INSERT INTO `pre_area` VALUES('2692','448','澄城县','2692');
INSERT INTO `pre_area` VALUES('2693','448','蒲城县','2693');
INSERT INTO `pre_area` VALUES('2694','448','富平县','2694');
INSERT INTO `pre_area` VALUES('2695','448','白水县','2695');
INSERT INTO `pre_area` VALUES('2696','448','韩城市','2696');
INSERT INTO `pre_area` VALUES('2697','449','宝塔区','2697');
INSERT INTO `pre_area` VALUES('2698','449','延川县','2698');
INSERT INTO `pre_area` VALUES('2699','449','安塞县','2699');
INSERT INTO `pre_area` VALUES('2700','449','吴旗县','2700');
INSERT INTO `pre_area` VALUES('2701','449','富县','2701');
INSERT INTO `pre_area` VALUES('2702','449','宜川县','2702');
INSERT INTO `pre_area` VALUES('2703','449','黄陵县','2703');
INSERT INTO `pre_area` VALUES('2704','449','延长县','2704');
INSERT INTO `pre_area` VALUES('2705','449','子长县','2705');
INSERT INTO `pre_area` VALUES('2706','449','志丹县','2706');
INSERT INTO `pre_area` VALUES('2707','449','甘泉县','2707');
INSERT INTO `pre_area` VALUES('2708','449','洛川县','2708');
INSERT INTO `pre_area` VALUES('2709','449','黄龙县','2709');
INSERT INTO `pre_area` VALUES('2710','450','汉台区','2710');
INSERT INTO `pre_area` VALUES('2711','450','城固县','2711');
INSERT INTO `pre_area` VALUES('2712','450','西乡县','2712');
INSERT INTO `pre_area` VALUES('2713','450','宁强县','2713');
INSERT INTO `pre_area` VALUES('2714','450','镇巴县','2714');
INSERT INTO `pre_area` VALUES('2715','450','佛坪县','2715');
INSERT INTO `pre_area` VALUES('2716','450','南郑县','2716');
INSERT INTO `pre_area` VALUES('2717','450','洋县','2717');
INSERT INTO `pre_area` VALUES('2718','450','勉县','2718');
INSERT INTO `pre_area` VALUES('2719','450','略阳县','2719');
INSERT INTO `pre_area` VALUES('2720','450','留坝县','2720');
INSERT INTO `pre_area` VALUES('2721','451','榆阳区','2721');
INSERT INTO `pre_area` VALUES('2722','451','横山县','2722');
INSERT INTO `pre_area` VALUES('2723','451','定边县','2723');
INSERT INTO `pre_area` VALUES('2724','451','米脂县','2724');
INSERT INTO `pre_area` VALUES('2725','451','吴堡县子洲县','2725');
INSERT INTO `pre_area` VALUES('2726','451','府谷县','2726');
INSERT INTO `pre_area` VALUES('2727','451','靖边县','2727');
INSERT INTO `pre_area` VALUES('2728','451','绥德县','2728');
INSERT INTO `pre_area` VALUES('2729','451','佳县','2729');
INSERT INTO `pre_area` VALUES('2730','451','清涧县','2730');
INSERT INTO `pre_area` VALUES('2731','452','汉滨区','2731');
INSERT INTO `pre_area` VALUES('2732','452','石泉县','2732');
INSERT INTO `pre_area` VALUES('2733','452','紫阳县','2733');
INSERT INTO `pre_area` VALUES('2734','452','平利县','2734');
INSERT INTO `pre_area` VALUES('2735','452','旬阳县','2735');
INSERT INTO `pre_area` VALUES('2736','452','白河县','2736');
INSERT INTO `pre_area` VALUES('2737','452','汉阴县','2737');
INSERT INTO `pre_area` VALUES('2738','452','宁陕县','2738');
INSERT INTO `pre_area` VALUES('2739','452','岚皋县','2739');
INSERT INTO `pre_area` VALUES('2740','452','镇坪县','2740');
INSERT INTO `pre_area` VALUES('2741','453','商州区','2741');
INSERT INTO `pre_area` VALUES('2742','453','丹凤县','2742');
INSERT INTO `pre_area` VALUES('2743','453','山阳县','2743');
INSERT INTO `pre_area` VALUES('2744','453','柞水县','2744');
INSERT INTO `pre_area` VALUES('2745','453','神木县','2745');
INSERT INTO `pre_area` VALUES('2746','453','洛南县','2746');
INSERT INTO `pre_area` VALUES('2747','453','商南县','2747');
INSERT INTO `pre_area` VALUES('2748','453','镇安县','2748');
INSERT INTO `pre_area` VALUES('2749','517','城关区','2749');
INSERT INTO `pre_area` VALUES('2750','517','西固区','2750');
INSERT INTO `pre_area` VALUES('2751','517','红古区','2751');
INSERT INTO `pre_area` VALUES('2752','517','皋兰县','2752');
INSERT INTO `pre_area` VALUES('2753','517','榆中县','2753');
INSERT INTO `pre_area` VALUES('2754','517','七里河区','2754');
INSERT INTO `pre_area` VALUES('2755','517','安宁区','2755');
INSERT INTO `pre_area` VALUES('2756','517','永登县','2756');
INSERT INTO `pre_area` VALUES('2757','518','永昌县','2757');
INSERT INTO `pre_area` VALUES('2758','519','白银区','2758');
INSERT INTO `pre_area` VALUES('2759','519','靖远县','2759');
INSERT INTO `pre_area` VALUES('2760','519','景泰县','2760');
INSERT INTO `pre_area` VALUES('2761','519','平川区','2761');
INSERT INTO `pre_area` VALUES('2762','519','会宁县','2762');
INSERT INTO `pre_area` VALUES('2763','520','秦州区','2763');
INSERT INTO `pre_area` VALUES('2764','520','清水县','2764');
INSERT INTO `pre_area` VALUES('2765','520','甘谷县','2765');
INSERT INTO `pre_area` VALUES('2766','520','麦积区','2766');
INSERT INTO `pre_area` VALUES('2767','520','秦安县','2767');
INSERT INTO `pre_area` VALUES('2768','520','武山县','2768');
INSERT INTO `pre_area` VALUES('2769','521','凉州区','2769');
INSERT INTO `pre_area` VALUES('2770','521','古浪县','2770');
INSERT INTO `pre_area` VALUES('2771','521','天祝藏族自治县','2771');
INSERT INTO `pre_area` VALUES('2772','521','民勤县','2772');
INSERT INTO `pre_area` VALUES('2773','522','甘州区','2773');
INSERT INTO `pre_area` VALUES('2774','522','民乐县','2774');
INSERT INTO `pre_area` VALUES('2775','522','高台县','2775');
INSERT INTO `pre_area` VALUES('2776','522','山丹县','2776');
INSERT INTO `pre_area` VALUES('2777','522','肃南裕固族自治县','2777');
INSERT INTO `pre_area` VALUES('2778','522','临泽县','2778');
INSERT INTO `pre_area` VALUES('2779','523','崆峒区','2779');
INSERT INTO `pre_area` VALUES('2780','523','灵台县','2780');
INSERT INTO `pre_area` VALUES('2781','523','华亭县','2781');
INSERT INTO `pre_area` VALUES('2782','523','静宁县','2782');
INSERT INTO `pre_area` VALUES('2783','523','泾川县','2783');
INSERT INTO `pre_area` VALUES('2784','523','崇信县','2784');
INSERT INTO `pre_area` VALUES('2785','523','庄浪县','2785');
INSERT INTO `pre_area` VALUES('2786','524','肃州区','2786');
INSERT INTO `pre_area` VALUES('2787','524','安西县','2787');
INSERT INTO `pre_area` VALUES('2788','524','阿克塞哈萨克族自治县','2788');
INSERT INTO `pre_area` VALUES('2789','524','敦煌市','2789');
INSERT INTO `pre_area` VALUES('2790','524','金塔县','2790');
INSERT INTO `pre_area` VALUES('2791','524','肃北蒙古族自治县','2791');
INSERT INTO `pre_area` VALUES('2792','524','玉门市','2792');
INSERT INTO `pre_area` VALUES('2793','525','西峰区','2793');
INSERT INTO `pre_area` VALUES('2794','525','环县','2794');
INSERT INTO `pre_area` VALUES('2795','525','合水县','2795');
INSERT INTO `pre_area` VALUES('2796','525','宁县','2796');
INSERT INTO `pre_area` VALUES('2797','525','镇原县','2797');
INSERT INTO `pre_area` VALUES('2798','525','庆阳县','2798');
INSERT INTO `pre_area` VALUES('2799','525','华池县','2799');
INSERT INTO `pre_area` VALUES('2800','525','正宁县','2800');
INSERT INTO `pre_area` VALUES('2801','528','安定区','2801');
INSERT INTO `pre_area` VALUES('2802','528','陇西县','2802');
INSERT INTO `pre_area` VALUES('2803','528','临洮县','2803');
INSERT INTO `pre_area` VALUES('2804','528','岷县','2804');
INSERT INTO `pre_area` VALUES('2805','528','通渭县','2805');
INSERT INTO `pre_area` VALUES('2806','528','渭源县','2806');
INSERT INTO `pre_area` VALUES('2807','528','漳县','2807');
INSERT INTO `pre_area` VALUES('2808','526','合作市','2808');
INSERT INTO `pre_area` VALUES('2809','526','卓尼县','2809');
INSERT INTO `pre_area` VALUES('2810','526','迭部县','2810');
INSERT INTO `pre_area` VALUES('2811','526','夏河县','2811');
INSERT INTO `pre_area` VALUES('2812','526','碌曲县','2812');
INSERT INTO `pre_area` VALUES('2813','526','临潭县','2813');
INSERT INTO `pre_area` VALUES('2814','526','舟曲县','2814');
INSERT INTO `pre_area` VALUES('2815','526','玛曲县','2815');
INSERT INTO `pre_area` VALUES('2816','527','临夏市','2816');
INSERT INTO `pre_area` VALUES('2817','527','康乐县','2817');
INSERT INTO `pre_area` VALUES('2818','527','广河县','2818');
INSERT INTO `pre_area` VALUES('2819','527','东乡族自治县','2819');
INSERT INTO `pre_area` VALUES('2820','527','积石山保安族东','2820');
INSERT INTO `pre_area` VALUES('2821','527','乡族撒拉族自治县','2821');
INSERT INTO `pre_area` VALUES('2822','527','临夏县','2822');
INSERT INTO `pre_area` VALUES('2823','527','永靖县','2823');
INSERT INTO `pre_area` VALUES('2824','527','和政县','2824');
INSERT INTO `pre_area` VALUES('2825','28','嘉峪关市','2825');
INSERT INTO `pre_area` VALUES('2826','28','陇南地区','2826');
INSERT INTO `pre_area` VALUES('2827','2826','武都区','2827');
INSERT INTO `pre_area` VALUES('2828','2826','文县','2828');
INSERT INTO `pre_area` VALUES('2829','2826','康县','2829');
INSERT INTO `pre_area` VALUES('2830','2826','礼县','2830');
INSERT INTO `pre_area` VALUES('2831','2826','两当县','2831');
INSERT INTO `pre_area` VALUES('2832','2826','成县','2832');
INSERT INTO `pre_area` VALUES('2833','2826','宕昌县','2833');
INSERT INTO `pre_area` VALUES('2834','2826','西和县','2834');
INSERT INTO `pre_area` VALUES('2835','2826','徽县','2835');
INSERT INTO `pre_area` VALUES('2836','454','城东区','2836');
INSERT INTO `pre_area` VALUES('2837','454','城西区','2837');
INSERT INTO `pre_area` VALUES('2838','454','大通回族土族自治县','2838');
INSERT INTO `pre_area` VALUES('2839','454','湟源县','2839');
INSERT INTO `pre_area` VALUES('2840','454','城中区','2840');
INSERT INTO `pre_area` VALUES('2841','454','城北区','2841');
INSERT INTO `pre_area` VALUES('2842','454','湟中县','2842');
INSERT INTO `pre_area` VALUES('2843','455','平安县','2843');
INSERT INTO `pre_area` VALUES('2844','455','乐都县','2844');
INSERT INTO `pre_area` VALUES('2845','455','化隆回族自治县','2845');
INSERT INTO `pre_area` VALUES('2846','455','循化撒拉族自治县','2846');
INSERT INTO `pre_area` VALUES('2847','455','民和回族土族自治县','2847');
INSERT INTO `pre_area` VALUES('2848','455','互助土族自治县','2848');
INSERT INTO `pre_area` VALUES('2849','456','门源回族自治县','2849');
INSERT INTO `pre_area` VALUES('2850','456','海晏县','2850');
INSERT INTO `pre_area` VALUES('2851','456','刚察县','2851');
INSERT INTO `pre_area` VALUES('2852','456','祁连县','2852');
INSERT INTO `pre_area` VALUES('2853','457','同仁县','2853');
INSERT INTO `pre_area` VALUES('2854','457','泽库县','2854');
INSERT INTO `pre_area` VALUES('2855','457','河南蒙古族自治县','2855');
INSERT INTO `pre_area` VALUES('2856','457','尖扎县','2856');
INSERT INTO `pre_area` VALUES('2857','458','共和县','2857');
INSERT INTO `pre_area` VALUES('2858','458','贵德县','2858');
INSERT INTO `pre_area` VALUES('2859','458','贵南县','2859');
INSERT INTO `pre_area` VALUES('2860','458','同德县','2860');
INSERT INTO `pre_area` VALUES('2861','458','兴海县','2861');
INSERT INTO `pre_area` VALUES('2862','459','玛沁县','2862');
INSERT INTO `pre_area` VALUES('2863','459','甘德县','2863');
INSERT INTO `pre_area` VALUES('2864','459','久治县','2864');
INSERT INTO `pre_area` VALUES('2865','459','班玛县','2865');
INSERT INTO `pre_area` VALUES('2866','459','达日县','2866');
INSERT INTO `pre_area` VALUES('2867','459','玛多县','2867');
INSERT INTO `pre_area` VALUES('2868','460','玉树县','2868');
INSERT INTO `pre_area` VALUES('2869','460','称多县','2869');
INSERT INTO `pre_area` VALUES('2870','460','囊谦县','2870');
INSERT INTO `pre_area` VALUES('2871','460','曲麻莱县','2871');
INSERT INTO `pre_area` VALUES('2872','460','杂多县','2872');
INSERT INTO `pre_area` VALUES('2873','460','治多县','2873');
INSERT INTO `pre_area` VALUES('2874','461','格尔木市','2874');
INSERT INTO `pre_area` VALUES('2875','461','乌兰县','2875');
INSERT INTO `pre_area` VALUES('2876','461','天峻县','2876');
INSERT INTO `pre_area` VALUES('2877','461','德令哈市','2877');
INSERT INTO `pre_area` VALUES('2878','461','都兰县','2878');
INSERT INTO `pre_area` VALUES('2879','481','天山区','2879');
INSERT INTO `pre_area` VALUES('2880','481','新市区','2880');
INSERT INTO `pre_area` VALUES('2881','481','头屯河区','2881');
INSERT INTO `pre_area` VALUES('2882','481','东山区','2882');
INSERT INTO `pre_area` VALUES('2883','481','沙依巴克区','2883');
INSERT INTO `pre_area` VALUES('2884','481','水磨沟区','2884');
INSERT INTO `pre_area` VALUES('2885','482','独山子区','2885');
INSERT INTO `pre_area` VALUES('2886','482','白碱滩区','2886');
INSERT INTO `pre_area` VALUES('2887','482','乌尔禾区','2887');
INSERT INTO `pre_area` VALUES('2888','482','克拉玛依区','2888');
INSERT INTO `pre_area` VALUES('2889','483','吐鲁番市','2889');
INSERT INTO `pre_area` VALUES('2890','483','托克逊县','2890');
INSERT INTO `pre_area` VALUES('2891','483','鄯善县','2891');
INSERT INTO `pre_area` VALUES('2892','484','哈密市','2892');
INSERT INTO `pre_area` VALUES('2893','484','伊吾县','2893');
INSERT INTO `pre_area` VALUES('2894','484','巴里坤哈萨克自治县','2894');
INSERT INTO `pre_area` VALUES('2895','485','和田市','2895');
INSERT INTO `pre_area` VALUES('2896','485','墨玉县','2896');
INSERT INTO `pre_area` VALUES('2897','485','洛浦县','2897');
INSERT INTO `pre_area` VALUES('2898','485','于田县','2898');
INSERT INTO `pre_area` VALUES('2899','485','民丰县','2899');
INSERT INTO `pre_area` VALUES('2900','485','和田县','2900');
INSERT INTO `pre_area` VALUES('2901','485','皮山县','2901');
INSERT INTO `pre_area` VALUES('2902','485','策勒县','2902');
INSERT INTO `pre_area` VALUES('2903','486','阿克苏市','2903');
INSERT INTO `pre_area` VALUES('2904','486','库车县','2904');
INSERT INTO `pre_area` VALUES('2905','486','新和县','2905');
INSERT INTO `pre_area` VALUES('2906','486','乌什县','2906');
INSERT INTO `pre_area` VALUES('2907','486','温宿县','2907');
INSERT INTO `pre_area` VALUES('2908','486','沙雅县','2908');
INSERT INTO `pre_area` VALUES('2909','486','拜城县','2909');
INSERT INTO `pre_area` VALUES('2910','486','阿瓦提县','2910');
INSERT INTO `pre_area` VALUES('2911','487','喀什市','2911');
INSERT INTO `pre_area` VALUES('2912','487','疏勒县','2912');
INSERT INTO `pre_area` VALUES('2913','487','泽普县','2913');
INSERT INTO `pre_area` VALUES('2914','487','叶城县','2914');
INSERT INTO `pre_area` VALUES('2915','487','岳普湖县','2915');
INSERT INTO `pre_area` VALUES('2916','487','塔什库尔干塔吉克自治县','2916');
INSERT INTO `pre_area` VALUES('2917','487','巴楚县','2917');
INSERT INTO `pre_area` VALUES('2918','487','疏附县','2918');
INSERT INTO `pre_area` VALUES('2919','487','英吉沙县','2919');
INSERT INTO `pre_area` VALUES('2920','487','莎车县','2920');
INSERT INTO `pre_area` VALUES('2921','487','麦盖提县','2921');
INSERT INTO `pre_area` VALUES('2922','487','伽师县','2922');
INSERT INTO `pre_area` VALUES('2923','488','阿图什市','2923');
INSERT INTO `pre_area` VALUES('2924','488','阿合奇县','2924');
INSERT INTO `pre_area` VALUES('2925','488','乌恰县','2925');
INSERT INTO `pre_area` VALUES('2926','488','阿克陶县','2926');
INSERT INTO `pre_area` VALUES('2927','489','库尔勒市','2927');
INSERT INTO `pre_area` VALUES('2928','489','尉犁县','2928');
INSERT INTO `pre_area` VALUES('2929','489','且末县','2929');
INSERT INTO `pre_area` VALUES('2930','489','和静县','2930');
INSERT INTO `pre_area` VALUES('2931','489','博湖县','2931');
INSERT INTO `pre_area` VALUES('2932','489','轮台县','2932');
INSERT INTO `pre_area` VALUES('2933','489','若羌县','2933');
INSERT INTO `pre_area` VALUES('2934','489','焉耆回族自治县','2934');
INSERT INTO `pre_area` VALUES('2935','489','和硕县','2935');
INSERT INTO `pre_area` VALUES('2936','490','昌吉市','2936');
INSERT INTO `pre_area` VALUES('2937','490','米泉市','2937');
INSERT INTO `pre_area` VALUES('2938','490','玛纳斯县','2938');
INSERT INTO `pre_area` VALUES('2939','490','吉木萨尔县','2939');
INSERT INTO `pre_area` VALUES('2940','490','木垒哈萨克自治县','2940');
INSERT INTO `pre_area` VALUES('2941','490','阜康市','2941');
INSERT INTO `pre_area` VALUES('2942','490','呼图壁县','2942');
INSERT INTO `pre_area` VALUES('2943','490','奇台县','2943');
INSERT INTO `pre_area` VALUES('2944','491','博乐市','2944');
INSERT INTO `pre_area` VALUES('2945','491','温泉县','2945');
INSERT INTO `pre_area` VALUES('2946','491','精河县','2946');
INSERT INTO `pre_area` VALUES('2947','492','伊宁市','2947');
INSERT INTO `pre_area` VALUES('2948','492','伊宁县','2948');
INSERT INTO `pre_area` VALUES('2949','492','霍城县','2949');
INSERT INTO `pre_area` VALUES('2950','492','新源县','2950');
INSERT INTO `pre_area` VALUES('2951','492','尼勒克县','2951');
INSERT INTO `pre_area` VALUES('2952','492','特克斯县','2952');
INSERT INTO `pre_area` VALUES('2953','492','奎屯市','2953');
INSERT INTO `pre_area` VALUES('2954','492','察布查尔锡伯自治县','2954');
INSERT INTO `pre_area` VALUES('2955','492','巩留县','2955');
INSERT INTO `pre_area` VALUES('2956','492','昭苏县','2956');
INSERT INTO `pre_area` VALUES('2957','493','塔城市','2957');
INSERT INTO `pre_area` VALUES('2958','493','额敏县','2958');
INSERT INTO `pre_area` VALUES('2959','493','托里县','2959');
INSERT INTO `pre_area` VALUES('2960','493','和布克赛尔蒙古自治县','2960');
INSERT INTO `pre_area` VALUES('2961','493','乌苏市','2961');
INSERT INTO `pre_area` VALUES('2962','493','沙湾县','2962');
INSERT INTO `pre_area` VALUES('2963','493','裕民县','2963');
INSERT INTO `pre_area` VALUES('2964','494','阿勒泰市','2964');
INSERT INTO `pre_area` VALUES('2965','494','吉木乃县','2965');
INSERT INTO `pre_area` VALUES('2966','494','布尔津县','2966');
INSERT INTO `pre_area` VALUES('2967','494','富蕴县','2967');
INSERT INTO `pre_area` VALUES('2968','494','哈巴河县','2968');
INSERT INTO `pre_area` VALUES('2969','494','福海县','2969');
INSERT INTO `pre_area` VALUES('2970','494','青河县','2970');
INSERT INTO `pre_area` VALUES('2971','499','兴宁区','2971');
INSERT INTO `pre_area` VALUES('2972','499','江南区','2972');
INSERT INTO `pre_area` VALUES('2973','499','良庆区','2973');
INSERT INTO `pre_area` VALUES('2974','499','武鸣县','2974');
INSERT INTO `pre_area` VALUES('2975','499','马山县','2975');
INSERT INTO `pre_area` VALUES('2976','499','宾阳县','2976');
INSERT INTO `pre_area` VALUES('2977','499','横县','2977');
INSERT INTO `pre_area` VALUES('2978','499','青秀区','2978');
INSERT INTO `pre_area` VALUES('2979','499','西乡塘区','2979');
INSERT INTO `pre_area` VALUES('2980','499','邕宁区','2980');
INSERT INTO `pre_area` VALUES('2981','499','隆安县','2981');
INSERT INTO `pre_area` VALUES('2982','499','上林县','2982');
INSERT INTO `pre_area` VALUES('2983','500','城中区','2983');
INSERT INTO `pre_area` VALUES('2984','500','柳南区','2984');
INSERT INTO `pre_area` VALUES('2985','500','柳江县','2985');
INSERT INTO `pre_area` VALUES('2986','500','鹿寨县','2986');
INSERT INTO `pre_area` VALUES('2987','500','融水苗族自治县','2987');
INSERT INTO `pre_area` VALUES('2988','500','三江侗族自治县','2988');
INSERT INTO `pre_area` VALUES('2989','500','鱼峰区','2989');
INSERT INTO `pre_area` VALUES('2990','500','柳北区','2990');
INSERT INTO `pre_area` VALUES('2991','500','柳城县','2991');
INSERT INTO `pre_area` VALUES('2992','500','融安县','2992');
INSERT INTO `pre_area` VALUES('2993','501','秀峰区','2993');
INSERT INTO `pre_area` VALUES('2994','501','象山区','2994');
INSERT INTO `pre_area` VALUES('2995','501','雁山区','2995');
INSERT INTO `pre_area` VALUES('2996','501','临桂县','2996');
INSERT INTO `pre_area` VALUES('2997','501','全州县','2997');
INSERT INTO `pre_area` VALUES('2998','501','永福县','2998');
INSERT INTO `pre_area` VALUES('2999','501','龙胜各族自治县','2999');
INSERT INTO `pre_area` VALUES('3000','501','平乐县恭城瑶族自治县','3000');
INSERT INTO `pre_area` VALUES('3001','501','叠彩区','3001');
INSERT INTO `pre_area` VALUES('3002','501','七星区','3002');
INSERT INTO `pre_area` VALUES('3003','501','阳朔县','3003');
INSERT INTO `pre_area` VALUES('3004','501','灵川县','3004');
INSERT INTO `pre_area` VALUES('3005','501','兴安县','3005');
INSERT INTO `pre_area` VALUES('3006','501','灌阳县','3006');
INSERT INTO `pre_area` VALUES('3007','501','资源县','3007');
INSERT INTO `pre_area` VALUES('3008','501','荔蒲县','3008');
INSERT INTO `pre_area` VALUES('3009','502','万秀区','3009');
INSERT INTO `pre_area` VALUES('3010','502','长洲区','3010');
INSERT INTO `pre_area` VALUES('3011','502','藤县','3011');
INSERT INTO `pre_area` VALUES('3012','502','岑溪市','3012');
INSERT INTO `pre_area` VALUES('3013','502','蝶山区','3013');
INSERT INTO `pre_area` VALUES('3014','502','苍梧县','3014');
INSERT INTO `pre_area` VALUES('3015','502','蒙山县','3015');
INSERT INTO `pre_area` VALUES('3016','503','海城区','3016');
INSERT INTO `pre_area` VALUES('3017','503','铁山港区','3017');
INSERT INTO `pre_area` VALUES('3018','503','合浦县','3018');
INSERT INTO `pre_area` VALUES('3019','503','银海区','3019');
INSERT INTO `pre_area` VALUES('3020','504','港口区','3020');
INSERT INTO `pre_area` VALUES('3021','504','上思县','3021');
INSERT INTO `pre_area` VALUES('3022','504','东兴市','3022');
INSERT INTO `pre_area` VALUES('3023','504','防城区','3023');
INSERT INTO `pre_area` VALUES('3024','505','钦南区','3024');
INSERT INTO `pre_area` VALUES('3025','505','灵山县','3025');
INSERT INTO `pre_area` VALUES('3026','505','浦北县','3026');
INSERT INTO `pre_area` VALUES('3027','505','钦北区','3027');
INSERT INTO `pre_area` VALUES('3028','506','港北区','3028');
INSERT INTO `pre_area` VALUES('3029','506','覃塘区','3029');
INSERT INTO `pre_area` VALUES('3030','506','桂平市','3030');
INSERT INTO `pre_area` VALUES('3031','506','港南区','3031');
INSERT INTO `pre_area` VALUES('3032','506','平南县','3032');
INSERT INTO `pre_area` VALUES('3033','507','玉州区','3033');
INSERT INTO `pre_area` VALUES('3034','507','陆川县','3034');
INSERT INTO `pre_area` VALUES('3035','507','兴业县','3035');
INSERT INTO `pre_area` VALUES('3036','507','北流市','3036');
INSERT INTO `pre_area` VALUES('3037','507','容县','3037');
INSERT INTO `pre_area` VALUES('3038','507','博白县','3038');
INSERT INTO `pre_area` VALUES('3039','508','右江区','3039');
INSERT INTO `pre_area` VALUES('3040','508','田东县','3040');
INSERT INTO `pre_area` VALUES('3041','508','德保县','3041');
INSERT INTO `pre_area` VALUES('3042','508','那坡县','3042');
INSERT INTO `pre_area` VALUES('3043','508','乐业县','3043');
INSERT INTO `pre_area` VALUES('3044','508','西林县','3044');
INSERT INTO `pre_area` VALUES('3045','508','隆林各族自治县','3045');
INSERT INTO `pre_area` VALUES('3046','508','田阳县','3046');
INSERT INTO `pre_area` VALUES('3047','508','平果县','3047');
INSERT INTO `pre_area` VALUES('3048','508','靖西县','3048');
INSERT INTO `pre_area` VALUES('3049','508','凌云县','3049');
INSERT INTO `pre_area` VALUES('3050','508','田林县','3050');
INSERT INTO `pre_area` VALUES('3051','509','八步区','3051');
INSERT INTO `pre_area` VALUES('3052','509','钟山县','3052');
INSERT INTO `pre_area` VALUES('3053','509','富川瑶族自治县','3053');
INSERT INTO `pre_area` VALUES('3054','509','昭平县','3054');
INSERT INTO `pre_area` VALUES('3055','510','金城江区','3055');
INSERT INTO `pre_area` VALUES('3056','510','天峨县','3056');
INSERT INTO `pre_area` VALUES('3057','510','东兰县','3057');
INSERT INTO `pre_area` VALUES('3058','510','环江毛南族自治县','3058');
INSERT INTO `pre_area` VALUES('3059','510','都安瑶族自治县','3059');
INSERT INTO `pre_area` VALUES('3060','510','宜州市','3060');
INSERT INTO `pre_area` VALUES('3061','510','南丹县','3061');
INSERT INTO `pre_area` VALUES('3062','510','凤山县','3062');
INSERT INTO `pre_area` VALUES('3063','510','罗城仫佬族自治县','3063');
INSERT INTO `pre_area` VALUES('3064','510','巴马瑶族自治县','3064');
INSERT INTO `pre_area` VALUES('3065','510','大化瑶族自治县','3065');
INSERT INTO `pre_area` VALUES('3066','511','兴宾区','3066');
INSERT INTO `pre_area` VALUES('3067','511','象州县','3067');
INSERT INTO `pre_area` VALUES('3068','511','金秀瑶族自治县','3068');
INSERT INTO `pre_area` VALUES('3069','511','合山市','3069');
INSERT INTO `pre_area` VALUES('3070','511','忻城县','3070');
INSERT INTO `pre_area` VALUES('3071','511','武宣县','3071');
INSERT INTO `pre_area` VALUES('3072','512','江洲区','3072');
INSERT INTO `pre_area` VALUES('3073','512','宁明县','3073');
INSERT INTO `pre_area` VALUES('3074','512','大新县','3074');
INSERT INTO `pre_area` VALUES('3075','512','凭祥市','3075');
INSERT INTO `pre_area` VALUES('3076','512','扶绥县','3076');
INSERT INTO `pre_area` VALUES('3077','512','龙州县','3077');
INSERT INTO `pre_area` VALUES('3078','512','天等县','3078');
INSERT INTO `pre_area` VALUES('3079','513','西城区','3079');
INSERT INTO `pre_area` VALUES('3080','513','东城区','3080');
INSERT INTO `pre_area` VALUES('3081','513','新城','3081');
INSERT INTO `pre_area` VALUES('3082','513','新市区','3082');
INSERT INTO `pre_area` VALUES('3083','513','永宁县城','3083');
INSERT INTO `pre_area` VALUES('3084','513','贺兰县城','3084');
INSERT INTO `pre_area` VALUES('3085','514','大武口区','3085');
INSERT INTO `pre_area` VALUES('3086','514','石嘴山区','3086');
INSERT INTO `pre_area` VALUES('3087','514','石炭井区','3087');
INSERT INTO `pre_area` VALUES('3088','514','平罗县城','3088');
INSERT INTO `pre_area` VALUES('3089','514','陶乐县城','3089');
INSERT INTO `pre_area` VALUES('3090','514','惠农县城','3090');
INSERT INTO `pre_area` VALUES('3091','515','中宁县城','3091');
INSERT INTO `pre_area` VALUES('3092','515','同心县城','3092');
INSERT INTO `pre_area` VALUES('3093','515','灵武县城','3093');
INSERT INTO `pre_area` VALUES('3094','515','盐池县城','3094');
INSERT INTO `pre_area` VALUES('3095','515','青铜峡市(小坝)','3095');
INSERT INTO `pre_area` VALUES('3096','515','青铜峡镇','3096');
INSERT INTO `pre_area` VALUES('3097','515','中卫县城','3097');
INSERT INTO `pre_area` VALUES('3098','516','海原县城','3098');
INSERT INTO `pre_area` VALUES('3099','516','西吉县城','3099');
INSERT INTO `pre_area` VALUES('3100','516','隆德县城','3100');
INSERT INTO `pre_area` VALUES('3101','516','泾源县城','3101');
INSERT INTO `pre_area` VALUES('3102','516','彭阳县城','3102');
INSERT INTO `pre_area` VALUES('3103','462','新城区','3103');
INSERT INTO `pre_area` VALUES('3104','462','玉泉区','3104');
INSERT INTO `pre_area` VALUES('3105','462','托克托县','3105');
INSERT INTO `pre_area` VALUES('3106','462','清水河县','3106');
INSERT INTO `pre_area` VALUES('3107','462','武川县','3107');
INSERT INTO `pre_area` VALUES('3108','462','回民区','3108');
INSERT INTO `pre_area` VALUES('3109','462','土默特左旗','3109');
INSERT INTO `pre_area` VALUES('3110','462','和林格尔县','3110');
INSERT INTO `pre_area` VALUES('3111','463','东河区','3111');
INSERT INTO `pre_area` VALUES('3112','463','青山区','3112');
INSERT INTO `pre_area` VALUES('3113','463','土默特右旗','3113');
INSERT INTO `pre_area` VALUES('3114','463','达尔罕茂明安联合旗','3114');
INSERT INTO `pre_area` VALUES('3115','463','昆都伦区','3115');
INSERT INTO `pre_area` VALUES('3116','463','白云矿区','3116');
INSERT INTO `pre_area` VALUES('3117','463','固阳县','3117');
INSERT INTO `pre_area` VALUES('3118','464','海勃湾区','3118');
INSERT INTO `pre_area` VALUES('3119','464','乌达区','3119');
INSERT INTO `pre_area` VALUES('3120','465','红山区','3120');
INSERT INTO `pre_area` VALUES('3121','465','松山区','3121');
INSERT INTO `pre_area` VALUES('3122','465','巴林左旗','3122');
INSERT INTO `pre_area` VALUES('3123','465','林西县','3123');
INSERT INTO `pre_area` VALUES('3124','465','翁牛特旗','3124');
INSERT INTO `pre_area` VALUES('3125','465','宁城县','3125');
INSERT INTO `pre_area` VALUES('3126','465','海南区','3126');
INSERT INTO `pre_area` VALUES('3127','465','元宝山区','3127');
INSERT INTO `pre_area` VALUES('3128','465','阿鲁科尔沁旗','3128');
INSERT INTO `pre_area` VALUES('3129','465','巴林右旗','3129');
INSERT INTO `pre_area` VALUES('3130','465','克什克腾旗','3130');
INSERT INTO `pre_area` VALUES('3131','465','喀喇沁旗','3131');
INSERT INTO `pre_area` VALUES('3132','465','敖汉旗','3132');
INSERT INTO `pre_area` VALUES('3133','466','科尔沁区','3133');
INSERT INTO `pre_area` VALUES('3134','466','科尔沁左翼后旗','3134');
INSERT INTO `pre_area` VALUES('3135','466','库伦旗','3135');
INSERT INTO `pre_area` VALUES('3136','466','扎鲁特旗','3136');
INSERT INTO `pre_area` VALUES('3137','466','霍林郭勒市','3137');
INSERT INTO `pre_area` VALUES('3138','466','科尔沁左翼中旗','3138');
INSERT INTO `pre_area` VALUES('3139','466','开鲁县','3139');
INSERT INTO `pre_area` VALUES('3140','466','奈曼旗','3140');
INSERT INTO `pre_area` VALUES('3141','467','东胜区','3141');
INSERT INTO `pre_area` VALUES('3142','467','准格尔旗','3142');
INSERT INTO `pre_area` VALUES('3143','467','鄂托克旗','3143');
INSERT INTO `pre_area` VALUES('3144','467','乌审旗','3144');
INSERT INTO `pre_area` VALUES('3145','467','伊金霍洛旗','3145');
INSERT INTO `pre_area` VALUES('3146','467','达拉特旗','3146');
INSERT INTO `pre_area` VALUES('3147','467','鄂托克前旗','3147');
INSERT INTO `pre_area` VALUES('3148','467','杭锦旗','3148');
INSERT INTO `pre_area` VALUES('3149','468','海拉尔区','3149');
INSERT INTO `pre_area` VALUES('3150','468','莫力达瓦达斡尔族自治旗','3150');
INSERT INTO `pre_area` VALUES('3151','468','鄂温克族自治旗','3151');
INSERT INTO `pre_area` VALUES('3152','468','新巴尔虎左旗','3152');
INSERT INTO `pre_area` VALUES('3153','468','满洲里市','3153');
INSERT INTO `pre_area` VALUES('3154','468','扎兰屯市','3154');
INSERT INTO `pre_area` VALUES('3155','468','根河市','3155');
INSERT INTO `pre_area` VALUES('3156','468','阿荣旗','3156');
INSERT INTO `pre_area` VALUES('3157','468','鄂伦春自治旗','3157');
INSERT INTO `pre_area` VALUES('3158','468','陈巴尔虎旗','3158');
INSERT INTO `pre_area` VALUES('3159','468','新巴尔虎右旗','3159');
INSERT INTO `pre_area` VALUES('3160','468','牙克石市','3160');
INSERT INTO `pre_area` VALUES('3161','468','额尔古纳市','3161');
INSERT INTO `pre_area` VALUES('3162','469','集宁区','3162');
INSERT INTO `pre_area` VALUES('3163','469','化德县','3163');
INSERT INTO `pre_area` VALUES('3164','469','兴和县','3164');
INSERT INTO `pre_area` VALUES('3165','469','察哈尔右翼前旗','3165');
INSERT INTO `pre_area` VALUES('3166','469','察哈尔右翼后旗','3166');
INSERT INTO `pre_area` VALUES('3167','469','丰镇市','3167');
INSERT INTO `pre_area` VALUES('3168','469','卓资县','3168');
INSERT INTO `pre_area` VALUES('3169','469','商都县','3169');
INSERT INTO `pre_area` VALUES('3170','469','凉城县','3170');
INSERT INTO `pre_area` VALUES('3171','469','察哈尔右翼中旗','3171');
INSERT INTO `pre_area` VALUES('3172','469','四子王旗','3172');
INSERT INTO `pre_area` VALUES('3173','470','二连浩特市','3173');
INSERT INTO `pre_area` VALUES('3174','470','阿巴嘎旗','3174');
INSERT INTO `pre_area` VALUES('3175','470','苏尼特右旗','3175');
INSERT INTO `pre_area` VALUES('3176','470','西乌珠穆沁旗','3176');
INSERT INTO `pre_area` VALUES('3177','470','镶黄旗','3177');
INSERT INTO `pre_area` VALUES('3178','470','正蓝旗','3178');
INSERT INTO `pre_area` VALUES('3179','470','多伦县','3179');
INSERT INTO `pre_area` VALUES('3180','470','锡林浩特市','3180');
INSERT INTO `pre_area` VALUES('3181','470','苏尼特左旗','3181');
INSERT INTO `pre_area` VALUES('3182','470','东乌珠穆沁旗','3182');
INSERT INTO `pre_area` VALUES('3183','470','太仆寺旗','3183');
INSERT INTO `pre_area` VALUES('3184','470','正镶白旗','3184');
INSERT INTO `pre_area` VALUES('3185','471','临河区','3185');
INSERT INTO `pre_area` VALUES('3186','471','磴口县','3186');
INSERT INTO `pre_area` VALUES('3187','471','乌拉特中旗','3187');
INSERT INTO `pre_area` VALUES('3188','471','杭锦后旗','3188');
INSERT INTO `pre_area` VALUES('3189','471','五原县','3189');
INSERT INTO `pre_area` VALUES('3190','471','乌拉特前旗','3190');
INSERT INTO `pre_area` VALUES('3191','471','乌拉特后旗','3191');
INSERT INTO `pre_area` VALUES('3192','472','阿拉善左旗','3192');
INSERT INTO `pre_area` VALUES('3193','472','额济纳旗','3193');
INSERT INTO `pre_area` VALUES('3194','472','阿拉善右旗','3194');
INSERT INTO `pre_area` VALUES('3195','473','乌兰浩特市','3195');
INSERT INTO `pre_area` VALUES('3196','473','科尔沁右翼前旗','3196');
INSERT INTO `pre_area` VALUES('3197','473','扎赉特旗','3197');
INSERT INTO `pre_area` VALUES('3198','473','突泉县','3198');
INSERT INTO `pre_area` VALUES('3199','473','阿尔山市','3199');
INSERT INTO `pre_area` VALUES('3200','473','科尔沁右翼中旗','3200');
INSERT INTO `pre_area` VALUES('3201','474','城关区','3201');
INSERT INTO `pre_area` VALUES('3202','474','当雄县','3202');
INSERT INTO `pre_area` VALUES('3203','474','曲水县','3203');
INSERT INTO `pre_area` VALUES('3204','474','墨竹工卡县','3204');
INSERT INTO `pre_area` VALUES('3205','474','达孜县','3205');
INSERT INTO `pre_area` VALUES('3206','474','林周县','3206');
INSERT INTO `pre_area` VALUES('3207','474','尼木县','3207');
INSERT INTO `pre_area` VALUES('3208','474','堆龙德庆县','3208');
INSERT INTO `pre_area` VALUES('3209','475','那曲县','3209');
INSERT INTO `pre_area` VALUES('3210','475','比如县','3210');
INSERT INTO `pre_area` VALUES('3211','475','安多县','3211');
INSERT INTO `pre_area` VALUES('3212','475','索县','3212');
INSERT INTO `pre_area` VALUES('3213','475','巴青县','3213');
INSERT INTO `pre_area` VALUES('3214','475','尼玛县','3214');
INSERT INTO `pre_area` VALUES('3215','475','嘉黎县','3215');
INSERT INTO `pre_area` VALUES('3216','475','聂荣县','3216');
INSERT INTO `pre_area` VALUES('3217','475','申扎县','3217');
INSERT INTO `pre_area` VALUES('3218','475','班戈县','3218');
INSERT INTO `pre_area` VALUES('3219','476','昌都县','3219');
INSERT INTO `pre_area` VALUES('3220','476','贡觉县','3220');
INSERT INTO `pre_area` VALUES('3221','476','丁青县','3221');
INSERT INTO `pre_area` VALUES('3222','476','八宿县','3222');
INSERT INTO `pre_area` VALUES('3223','476','芒康县','3223');
INSERT INTO `pre_area` VALUES('3224','476','边坝县','3224');
INSERT INTO `pre_area` VALUES('3225','476','江达县','3225');
INSERT INTO `pre_area` VALUES('3226','476','类乌齐县','3226');
INSERT INTO `pre_area` VALUES('3227','476','察雅县','3227');
INSERT INTO `pre_area` VALUES('3228','476','左贡县','3228');
INSERT INTO `pre_area` VALUES('3229','476','洛隆县','3229');
INSERT INTO `pre_area` VALUES('3230','477','乃东县','3230');
INSERT INTO `pre_area` VALUES('3231','477','贡嘎县','3231');
INSERT INTO `pre_area` VALUES('3232','477','琼结县','3232');
INSERT INTO `pre_area` VALUES('3233','477','措美县','3233');
INSERT INTO `pre_area` VALUES('3234','477','加查县','3234');
INSERT INTO `pre_area` VALUES('3235','477','错那县','3235');
INSERT INTO `pre_area` VALUES('3236','477','浪卡子县','3236');
INSERT INTO `pre_area` VALUES('3237','477','扎囊县','3237');
INSERT INTO `pre_area` VALUES('3238','477','桑日县','3238');
INSERT INTO `pre_area` VALUES('3239','477','曲松县','3239');
INSERT INTO `pre_area` VALUES('3240','477','洛扎县','3240');
INSERT INTO `pre_area` VALUES('3241','477','隆子县','3241');
INSERT INTO `pre_area` VALUES('3242','478','日喀则市','3242');
INSERT INTO `pre_area` VALUES('3243','478','江孜县','3243');
INSERT INTO `pre_area` VALUES('3244','478','萨迦县','3244');
INSERT INTO `pre_area` VALUES('3245','478','昂仁县','3245');
INSERT INTO `pre_area` VALUES('3246','478','白朗县','3246');
INSERT INTO `pre_area` VALUES('3247','478','康马县','3247');
INSERT INTO `pre_area` VALUES('3248','478','仲巴县','3248');
INSERT INTO `pre_area` VALUES('3249','478','吉隆县','3249');
INSERT INTO `pre_area` VALUES('3250','478','萨嘎县','3250');
INSERT INTO `pre_area` VALUES('3251','478','岗巴县','3251');
INSERT INTO `pre_area` VALUES('3252','478','南木林县','3252');
INSERT INTO `pre_area` VALUES('3253','478','定日县','3253');
INSERT INTO `pre_area` VALUES('3254','478','拉孜县','3254');
INSERT INTO `pre_area` VALUES('3255','478','谢通门县','3255');
INSERT INTO `pre_area` VALUES('3256','478','仁布县','3256');
INSERT INTO `pre_area` VALUES('3257','478','定结县','3257');
INSERT INTO `pre_area` VALUES('3258','478','亚东县','3258');
INSERT INTO `pre_area` VALUES('3259','478','聂拉木县','3259');
INSERT INTO `pre_area` VALUES('3260','479','普兰县','3260');
INSERT INTO `pre_area` VALUES('3261','479','噶尔县','3261');
INSERT INTO `pre_area` VALUES('3262','479','革吉县','3262');
INSERT INTO `pre_area` VALUES('3263','479','措勤县','3263');
INSERT INTO `pre_area` VALUES('3264','479','札达县','3264');
INSERT INTO `pre_area` VALUES('3265','479','日土县','3265');
INSERT INTO `pre_area` VALUES('3266','479','改则县','3266');
INSERT INTO `pre_area` VALUES('3267','480','林芝县','3267');
INSERT INTO `pre_area` VALUES('3268','480','米林县','3268');
INSERT INTO `pre_area` VALUES('3269','480','波密县','3269');
INSERT INTO `pre_area` VALUES('3270','480','朗县','3270');
INSERT INTO `pre_area` VALUES('3271','480','工布江达县','3271');
INSERT INTO `pre_area` VALUES('3272','480','墨脱县','3272');
INSERT INTO `pre_area` VALUES('3273','480','察隅县','3273');

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
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

INSERT INTO `pre_attachments` VALUES('52','7','7','536645692d024.jpg','producer','','0','0','credit','0','0','1399211369','1');
INSERT INTO `pre_attachments` VALUES('53','7','7','5366456ac5c2c.jpg','producer','','0','0','credit','0','0','1399211370','1');
INSERT INTO `pre_attachments` VALUES('36','2','13','535a69cc814f7.jpg','535a69cc814f7.jpg','','0','0','ads','0','0','1398434252','1');
INSERT INTO `pre_attachments` VALUES('37','5','51','535cce5e4e8bb.jpg','535cce5e4e8bb.jpg','','0','0','coverimg','0','0','1398591070','1');
INSERT INTO `pre_attachments` VALUES('38','5','51','535cce76bb664.jpg','535cce76bb664.jpg','','0','0','posts','0','0','1398591094','1');
INSERT INTO `pre_attachments` VALUES('39','5','55','535d0a50be842.jpg','535d0a50be842.jpg','','0','0','coverimg','0','0','1398606416','1');
INSERT INTO `pre_attachments` VALUES('40','7','56','53635b01b40e3.jpg','53635b01b40e3.jpg','','0','0','coverimg','0','0','1399020289','1');
INSERT INTO `pre_attachments` VALUES('41','7','15','5363798c9a654.jpg','5363798c9a654.jpg','','0','0','ads','0','0','1399028108','1');
INSERT INTO `pre_attachments` VALUES('43','2','16','5364578e0ca48.jpg','5364578e0ca48.jpg','','0','0','ads','0','0','1399084942','1');
INSERT INTO `pre_attachments` VALUES('44','2','17','536457d39b214.jpg','536457d39b214.jpg','','0','0','ads','0','0','1399085011','1');
INSERT INTO `pre_attachments` VALUES('54','2','57','5368f5ea24de1.jpg','5368f5ea24de1.jpg','','0','0','posts','0','0','1399387626','3');
INSERT INTO `pre_attachments` VALUES('55','2','58','536a21e64fc29.jpg','536a21e64fc29.jpg','','0','0','posts','0','0','1399464422','3');
INSERT INTO `pre_attachments` VALUES('56','7','59','536a49d20ceac.jpg','536a49d20ceac.jpg','','0','0','coverimg','0','0','1399474642','1');
INSERT INTO `pre_attachments` VALUES('57','7','59','536a49ebc1964.jpg','536a49ebc1964.jpg','','0','0','posts','0','0','1399474667','1');
INSERT INTO `pre_attachments` VALUES('58','7','60','536a4a77afde3.jpg','536a4a77afde3.jpg','','0','0','coverimg','0','0','1399474807','1');
INSERT INTO `pre_attachments` VALUES('59','7','60','536a4aed8dd9a.jpg','536a4aed8dd9a.jpg','','0','0','posts','0','0','1399474925','1');
INSERT INTO `pre_attachments` VALUES('60','7','61','536b7425b5429.jpg','536b7425b5429.jpg','','0','0','posts','0','0','1399551013','1');
INSERT INTO `pre_attachments` VALUES('61','7','61','536b74275f07a.jpg','536b74275f07a.jpg','','0','0','posts','0','0','1399551015','1');
INSERT INTO `pre_attachments` VALUES('62','7','61','536b74290c25e.jpg','536b74290c25e.jpg','','0','0','posts','0','0','1399551017','1');
INSERT INTO `pre_attachments` VALUES('63','7','61','536b753b068ba.jpg','536b753b068ba.jpg','','0','0','posts','0','0','1399551291','1');
INSERT INTO `pre_attachments` VALUES('64','7','7','536ce749a2aeb.jpg','536ce749a2aeb.jpg','','0','0','logo','0','0','1399646025','1');
INSERT INTO `pre_attachments` VALUES('66','2','4','53d4fc296a542.jpg','53d4fc296a542.jpg','','0','0','link','0','0','1406467113','1');
INSERT INTO `pre_attachments` VALUES('67','2','4','53d4fc3ee3837.jpg','53d4fc3ee3837.jpg','','0','0','link','0','0','1406467134','1');
INSERT INTO `pre_attachments` VALUES('78','2','5','53d506b53fdf1.jpg','53d506b53fdf1.jpg','','0','0','link','0','0','1406469813','1');
INSERT INTO `pre_attachments` VALUES('82','7','7','53f0121545d68.jpg','53f0121545d68.jpg','','0','0','logo','0','0','1408242197','1');
INSERT INTO `pre_attachments` VALUES('83','7','385','53f0142407369.jpg','53f0142407369.jpg','','0','0','coverimg','0','0','1408242724','1');
INSERT INTO `pre_attachments` VALUES('84','7','386','53f017acae67b.jpg','53f017acae67b.jpg','','0','0','coverimg','0','0','1408243628','1');
INSERT INTO `pre_attachments` VALUES('85','10','10','53f961cf527d0.jpg','53f961cf527d0.jpg','','0','0','logo','0','0','1408852431','1');
INSERT INTO `pre_attachments` VALUES('95','2','0','2014-10/09/5436a2541cc7e.jpg','5436a2541cc7e.jpg','','0','0','goods','0','0','1412866644','1');
INSERT INTO `pre_attachments` VALUES('96','2','0','2014-10/09/5436a2566500e.jpg','5436a2566500e.jpg','','0','0','goods','0','0','1412866646','1');
INSERT INTO `pre_attachments` VALUES('97','2','0','2014-10/09/5436a29090c62.jpg','5436a29090c62.jpg','','0','0','goods','0','0','1412866704','1');
INSERT INTO `pre_attachments` VALUES('98','2','1','2014-10/09/5436a292c9222.png','5436a292c9222.png','','0','0','goods','0','0','1412866706','1');
INSERT INTO `pre_attachments` VALUES('99','2','1','2014-10/09/5436a6a259085.jpg','5436a6a259085.jpg','','0','0','goods','0','0','1412867746','1');
INSERT INTO `pre_attachments` VALUES('100','2','1','2014-10/09/5436a6a489987.jpg','5436a6a489987.jpg','','0','0','goods','0','0','1412867748','1');
INSERT INTO `pre_attachments` VALUES('102','2','0','2014-11/06/545b76e0e4832.jpeg','545b76e0e4832.jpeg','','0','0','zhanhui','0','0','1415280352','1');

DROP TABLE IF EXISTS `pre_column_relation`;
CREATE TABLE `pre_column_relation` (
  `id` int(11) NOT NULL auto_increment,
  `columnid` int(11) NOT NULL,
  `groupid` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `pre_column_relation` VALUES('1','68','7');
INSERT INTO `pre_column_relation` VALUES('2','68','6');
INSERT INTO `pre_column_relation` VALUES('3','68','5');
INSERT INTO `pre_column_relation` VALUES('4','68','4');

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
  `listnum` tinyint(3) NOT NULL,
  `listcondition` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `rollstyle` char(10) NOT NULL,
  `post_fields` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

INSERT INTO `pre_columns` VALUES('61','0',' zhuanqu ','OEM专区','','list','topbar','','0','2','0','1','1399790404','1','5','','5','0','');
INSERT INTO `pre_columns` VALUES('62','0','huixiaomoshi ','会销模式','','list','topbar','','0','3','0','1','1399790438','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('64','0','huixiaoshipin ','会销视频','','list','topbar','','0','5','0','1','1399790505','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('65','0','huixiaoxinwen ','会销新闻','','list','topbar','','0','6','0','1','1399790528','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('68','60','huixiaochanpinpaixingbang ','会销产品排行榜','','list','main','','0','0','0','1','1399790699','1','0','','1','0','start_time,expired_time');
INSERT INTO `pre_columns` VALUES('69','0','huixiaozixun','信用资讯','','list','main','','0','0','0','1','1399790873','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('70','0','toutiaotuijian','通知公告','','list','main','','0','0','0','1','1399790904','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('71','0','heimingdan','黑名单曝光','','list','main','','0','0','0','1','1399790943','1','10','','5','0','');
INSERT INTO `pre_columns` VALUES('73','67','zhanhuizixun','行业展会资讯','','list','main','','0','0','0','1','1399791048','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('74','67','quanguozhanhuixianchang ','全国展会现场','','logo','main','','0','0','0','1','1399791072','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('75','62','yingxiaomoshi','营销模式','','list','main','','0','0','0','1','1399791108','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('76','65','xinwenzixun','新闻资讯','','list','main','','0','0','0','1','1399791140','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('77','65','huixiaoziliao ','会销资料','','list','main','','0','0','0','1','1399791165','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('78','0','guanyuwomen ','关于我们','','page','topbar','','0','9','0','1','1399791264','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('86','0','huo bao hui xiao xian chang tui jian ','火爆会销现场推荐','','thumb','main','','0','0','0','1','1399872769','1','10','','5','0','');
INSERT INTO `pre_columns` VALUES('87','0','gong si shen qing ru zhu ','公司申请入驻','','list','main','','0','0','0','1','1399872812','1','10','','5','0','');
INSERT INTO `pre_columns` VALUES('88','0','zhaoshang','公司招商资讯','','list','main','','0','0','0','1','1399872857','1','10','','5','0','');
INSERT INTO `pre_columns` VALUES('93','0','zhengfufagui','政府法规','','list','main','','0','0','0','1','1399873202','1','10','','5','0','');
INSERT INTO `pre_columns` VALUES('97','0','huixiaoheimingdanpuguang ','会销黑名单曝光','','list','main','','0','0','0','1','1400421662','1','0','','5','0','');
INSERT INTO `pre_columns` VALUES('98','0','huixiaopianju','会销骗局','','list','main','','0','0','0','1','1400421768','1','10','','5','0','');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `pre_comments` VALUES('5','51','5','','','好久没测试评论了','1','0','','','1398597894','2130706433','posts');
INSERT INTO `pre_comments` VALUES('6','55','5','','','这边就能评论呢 啊？','1','0','','','1398606890','2130706433','posts');
INSERT INTO `pre_comments` VALUES('7','55','5','','','看起来不错哦，哈哈哈哈哈','1','0','','','1398606902','2130706433','posts');
INSERT INTO `pre_comments` VALUES('8','54','5','','','这个重复利用率不高啊','1','0','','','1398607209','2130706433','posts');
INSERT INTO `pre_comments` VALUES('9','51','5','','','再来一个呢','1','0','','','1398608440','2130706433','posts');
INSERT INTO `pre_comments` VALUES('10','54','5','','','这个再加个呢','1','0','','','1398608455','2130706433','posts');
INSERT INTO `pre_comments` VALUES('11','56','7','','','我来给自己个评论，哈哈哈哈','1','0','','','1399019313','2130706433','posts');
INSERT INTO `pre_comments` VALUES('12','56','5','','','dfdfdsfsdfsdfdfd','3','0','','','1399020957','2130706433','posts');
INSERT INTO `pre_comments` VALUES('13','56','7','','','的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n的发生的发生的发生的发的发生的发生的发生的发的说法方式大幅的发送到德辅道是否是丰盛的德辅道地方东方德发是\r\n','3','0','','','1399029792','2130706433','posts');
INSERT INTO `pre_comments` VALUES('14','150','2','','','评论一下呢','1','0','','','1401007518','2130706433','posts');

DROP TABLE IF EXISTS `pre_config`;
CREATE TABLE `pre_config` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `value` text,
  `description` varchar(255) NOT NULL default '',
  `classify` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

INSERT INTO `pre_config` VALUES('150','version','Alpha 1.0','','baseinfo');
INSERT INTO `pre_config` VALUES('149','siteDesc','','','baseinfo');
INSERT INTO `pre_config` VALUES('8','address','重庆市江北观音桥','','siteinfo');
INSERT INTO `pre_config` VALUES('9','phone','023-12345678','','siteinfo');
INSERT INTO `pre_config` VALUES('10','email','admin@admin.com','','siteinfo');
INSERT INTO `pre_config` VALUES('11','beian','渝备12345678','','siteinfo');
INSERT INTO `pre_config` VALUES('12','copyright','2012-2013','','siteinfo');
INSERT INTO `pre_config` VALUES('148','siteKeywords','','','baseinfo');
INSERT INTO `pre_config` VALUES('182','imgMaxSize','1024000','','upload');
INSERT INTO `pre_config` VALUES('181','imgThumbSize','124,200,300,600,origin','','upload');
INSERT INTO `pre_config` VALUES('180','imgAllowTypes','*.jpg;*.png;*.jpeg','','upload');
INSERT INTO `pre_config` VALUES('179','imgMinHeight','300','','upload');
INSERT INTO `pre_config` VALUES('177','imgUploadNum','10','','upload');
INSERT INTO `pre_config` VALUES('178','imgMinWidth','300','','upload');
INSERT INTO `pre_config` VALUES('184','indexpage','4@ads|13#4@ads|13#4@ads|13','','indexpage');
INSERT INTO `pre_config` VALUES('146','domain','http://localhost','','baseinfo');
INSERT INTO `pre_config` VALUES('145','shortTitle','带上新的生活去旅行','','baseinfo');
INSERT INTO `pre_config` VALUES('144','sitename','新灵旅行','','baseinfo');
INSERT INTO `pre_config` VALUES('219','userDefaultGroup','6','','base');
INSERT INTO `pre_config` VALUES('220','shopGroupId','7','','base');
INSERT INTO `pre_config` VALUES('221','forbidnotshop','0','','base');
INSERT INTO `pre_config` VALUES('222','adminGroupIds','5,4','','base');
INSERT INTO `pre_config` VALUES('223','officalUid','','','base');
INSERT INTO `pre_config` VALUES('224','validateEmail','1','','base');
INSERT INTO `pre_config` VALUES('225','validateEmailGroup','7','','base');
INSERT INTO `pre_config` VALUES('147','baseurl','http://localhost/huixiao/','','baseinfo');
INSERT INTO `pre_config` VALUES('228','badwords','呵呵#哈哈#嘿嘿','','base');
INSERT INTO `pre_config` VALUES('227','checkBadWords','1','','base');
INSERT INTO `pre_config` VALUES('183','imgQuality','80','','upload');
INSERT INTO `pre_config` VALUES('226','hotsearchs','呵呵#哈哈#嘿嘿','','base');
INSERT INTO `pre_config` VALUES('218','orderByTop','0','','base');
INSERT INTO `pre_config` VALUES('216','closeSiteReason','系统正在维护中，请稍后再访问！','','base');
INSERT INTO `pre_config` VALUES('217','mobile','1','','base');
INSERT INTO `pre_config` VALUES('215','closeSite','1','','base');
INSERT INTO `pre_config` VALUES('214','noticeall','近期收到举报，有部分网站有不良信息，望各位店家及时处理！','','base');
INSERT INTO `pre_config` VALUES('229','badwordsHandleStyle','filter','','base');

DROP TABLE IF EXISTS `pre_credit_relation`;
CREATE TABLE `pre_credit_relation` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `order` int(10) unsigned NOT NULL default '0',
  `classify` char(16) NOT NULL,
  `medal` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  `localarea` char(16) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `pre_credit_relation` VALUES('4','9','0','lecturer','credit_aaa','1','1408251613','85');
INSERT INTO `pre_credit_relation` VALUES('3','7','0','producer','credit_aaa','1','1408242166','');
INSERT INTO `pre_credit_relation` VALUES('7','11','0','marketing_team','credit_aaa','1','1409496400','102');
INSERT INTO `pre_credit_relation` VALUES('10','10','0','exhibition','','2','1414157781','4');
INSERT INTO `pre_credit_relation` VALUES('8','12','0','exhibition','credit_aaa','1','1409499076','2264');
INSERT INTO `pre_credit_relation` VALUES('9','2','0','producer','','2','1414074967','47');

DROP TABLE IF EXISTS `pre_dealer`;
CREATE TABLE `pre_dealer` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `jobname` varchar(255) NOT NULL,
  `officurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pre_exhibition`;
CREATE TABLE `pre_exhibition` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `officeurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  `score` char(5) NOT NULL default '0',
  `scorer` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_exhibition` VALUES('1','2','0','4','聚易开放式技术实验室','聚易开放式技术实验室','的方式大幅桑德福法师打发士大夫士大夫','的方式大幅桑德福的方式大幅大水法','http://newsoul.cn','阿飞','1234567890','','四大四大是的撒该死的发是的范德萨','1414157781','0','0','1','0','','','0','0');

DROP TABLE IF EXISTS `pre_favor`;
CREATE TABLE `pre_favor` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL,
  `classify` char(32) NOT NULL,
  `cTime` int(11) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `score` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_favor` VALUES('1','7','5','rating','1399040564','你太帅气了啊，好喜欢哦，哈哈哈哈哈','10');

DROP TABLE IF EXISTS `pre_goods`;
CREATE TABLE `pre_goods` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `piwen` varchar(255) NOT NULL,
  `gongxiao` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `desc2` text NOT NULL,
  `desc3` text NOT NULL,
  `desc4` text NOT NULL,
  `colid` int(10) NOT NULL,
  `colid2` int(10) NOT NULL,
  `colid3` int(10) NOT NULL,
  `colid4` int(10) NOT NULL,
  `colid5` int(10) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_goods` VALUES('1','2','100','难道这是我的第一篇产品么','dfsdfsdfsdfsdfsdfsdfsd','壮阳','的飞机是的肌肤束带结发的风景死哦点击发送地点丰盛的副驾驶代发撒的见风使舵方式的缴费是放假 ','','','','12393','12394','0','0','0','1412867777','0','0','1');

DROP TABLE IF EXISTS `pre_group_powers`;
CREATE TABLE `pre_group_powers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `gid` varchar(50) NOT NULL,
  `powers` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

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
INSERT INTO `pre_group_powers` VALUES('242','5','user_ads');
INSERT INTO `pre_group_powers` VALUES('241','5','user_delcomments');
INSERT INTO `pre_group_powers` VALUES('240','5','user_checkcomments');
INSERT INTO `pre_group_powers` VALUES('239','5','user_addposts');
INSERT INTO `pre_group_powers` VALUES('238','5','user_setting');
INSERT INTO `pre_group_powers` VALUES('237','5','user_manage');
INSERT INTO `pre_group_powers` VALUES('236','5','delcredit');
INSERT INTO `pre_group_powers` VALUES('235','5','updatecredit');
INSERT INTO `pre_group_powers` VALUES('234','5','listcredit');
INSERT INTO `pre_group_powers` VALUES('233','5','delquestions');
INSERT INTO `pre_group_powers` VALUES('232','5','editquestions');
INSERT INTO `pre_group_powers` VALUES('231','5','addquestions');
INSERT INTO `pre_group_powers` VALUES('230','5','delcomments');
INSERT INTO `pre_group_powers` VALUES('229','5','editcomments');
INSERT INTO `pre_group_powers` VALUES('228','5','addcomments');
INSERT INTO `pre_group_powers` VALUES('227','5','deltags');
INSERT INTO `pre_group_powers` VALUES('51','6','checksetting');
INSERT INTO `pre_group_powers` VALUES('196','7','user_delupload');
INSERT INTO `pre_group_powers` VALUES('226','5','edittags');
INSERT INTO `pre_group_powers` VALUES('225','5','deluseraction');
INSERT INTO `pre_group_powers` VALUES('224','5','delattachments');
INSERT INTO `pre_group_powers` VALUES('223','5','editattachments');
INSERT INTO `pre_group_powers` VALUES('222','5','upload');
INSERT INTO `pre_group_powers` VALUES('221','5','delalbum');
INSERT INTO `pre_group_powers` VALUES('220','5','editalbum');
INSERT INTO `pre_group_powers` VALUES('219','5','addalbum');
INSERT INTO `pre_group_powers` VALUES('218','5','delads');
INSERT INTO `pre_group_powers` VALUES('217','5','editads');
INSERT INTO `pre_group_powers` VALUES('216','5','addads');
INSERT INTO `pre_group_powers` VALUES('215','5','dellink');
INSERT INTO `pre_group_powers` VALUES('214','5','editlink');
INSERT INTO `pre_group_powers` VALUES('213','5','addlink');
INSERT INTO `pre_group_powers` VALUES('212','5','visitSthone');
INSERT INTO `pre_group_powers` VALUES('211','5','delusers');
INSERT INTO `pre_group_powers` VALUES('210','5','editusers');
INSERT INTO `pre_group_powers` VALUES('209','5','addusers');
INSERT INTO `pre_group_powers` VALUES('208','5','delusergroup');
INSERT INTO `pre_group_powers` VALUES('195','7','user_addupload');
INSERT INTO `pre_group_powers` VALUES('194','7','user_credit');
INSERT INTO `pre_group_powers` VALUES('192','7','user_setting');
INSERT INTO `pre_group_powers` VALUES('207','5','editusergroup');
INSERT INTO `pre_group_powers` VALUES('206','5','addusergroup');
INSERT INTO `pre_group_powers` VALUES('205','5','setstatus');
INSERT INTO `pre_group_powers` VALUES('204','5','delposts');
INSERT INTO `pre_group_powers` VALUES('203','5','editposts');
INSERT INTO `pre_group_powers` VALUES('202','5','addposts');
INSERT INTO `pre_group_powers` VALUES('201','5','delcolumns');
INSERT INTO `pre_group_powers` VALUES('200','5','editcolumns');
INSERT INTO `pre_group_powers` VALUES('199','5','addcolumns');
INSERT INTO `pre_group_powers` VALUES('198','5','setting');
INSERT INTO `pre_group_powers` VALUES('197','5','checksetting');
INSERT INTO `pre_group_powers` VALUES('193','7','user_addposts');
INSERT INTO `pre_group_powers` VALUES('191','7','user_manage');
INSERT INTO `pre_group_powers` VALUES('243','5','user_addquestion');
INSERT INTO `pre_group_powers` VALUES('244','5','user_stat');
INSERT INTO `pre_group_powers` VALUES('245','5','user_credit');
INSERT INTO `pre_group_powers` VALUES('246','5','user_addupload');
INSERT INTO `pre_group_powers` VALUES('247','5','user_delupload');
INSERT INTO `pre_group_powers` VALUES('248','5','user_homepage');
INSERT INTO `pre_group_powers` VALUES('249','5','user_addcomments');
INSERT INTO `pre_group_powers` VALUES('250','5','user_seepostauthor');
INSERT INTO `pre_group_powers` VALUES('251','5','user_seesecretinfo');
INSERT INTO `pre_group_powers` VALUES('252','5','user_seeinfo');
INSERT INTO `pre_group_powers` VALUES('253','5','user_addrate');
INSERT INTO `pre_group_powers` VALUES('254','5','user_seeattachments');

DROP TABLE IF EXISTS `pre_jobs`;
CREATE TABLE `pre_jobs` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gs_title` varchar(255) NOT NULL COMMENT '公司名称',
  `gs_didian` varchar(255) NOT NULL COMMENT '公司地点',
  `gs_guimo` varchar(255) NOT NULL COMMENT '公司规模',
  `gs_xingzhi` varchar(255) NOT NULL COMMENT '公司性质',
  `gs_miaoshu` text NOT NULL COMMENT '公司描述',
  `gs_zhuye` varchar(255) NOT NULL COMMENT '公司主页',
  `gz_miaoshu` text NOT NULL COMMENT '工作描述',
  `gz_didian` varchar(255) NOT NULL COMMENT '工作地点',
  `gz_jingyan` varchar(255) NOT NULL COMMENT '工作经验',
  `gz_xingzhi` varchar(255) NOT NULL COMMENT '工作薪资',
  `gz_zdxueli` varchar(255) NOT NULL COMMENT '最低学历',
  `gz_gljy` varchar(255) NOT NULL COMMENT '管理经验',
  `gz_xinzi` varchar(255) NOT NULL COMMENT '工作薪资',
  `gz_renshu` varchar(255) NOT NULL COMMENT '招聘人数',
  `gz_zhiwei` varchar(255) NOT NULL COMMENT '工作职位',
  `gz_fuli` varchar(255) NOT NULL COMMENT '工作福利',
  `gz_contactor` varchar(255) NOT NULL COMMENT '联系人',
  `gz_contact` varchar(255) NOT NULL COMMENT '联系方式',
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_jobs` VALUES('1','2','新增招聘信息','新灵工作室','重庆','0-50人','私企','这里是一些公司的描述的见覅圣诞节覅松岛枫是的京东方僵尸洞覅说的方式的缴费是的封建时代 的说法及撒的见风使舵就封ID数据放圣诞节覅松岛枫是地方就是地方','http://newsoul.cn','这里是工作描述，应该是富文本\r\n的风景死的封建时代飞','重庆','无限制','5000','本科','无','全职','2','程序员','5000','哈哈先生','023-12345678901','1413031417','0','0','1');

DROP TABLE IF EXISTS `pre_lecturer`;
CREATE TABLE `pre_lecturer` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `belongCompany` varchar(255) NOT NULL,
  `belongTeam` varchar(255) NOT NULL,
  `jobname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `idcard` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_lecturer` VALUES('1','8','0','8','哈哈是的和电话','电风扇的范德萨','的方式大幅','的发的说法','的发的说法','12345678901','32342342342343242343','0','0','0','2','0','','');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `pre_link` VALUES('4','新灵旅行','http://newsoul.cn','txt','65','1','0','0','1397996291','0');
INSERT INTO `pre_link` VALUES('5','十六番','http://16fan.com','txt','78','1','0','0','1406469774','0');

DROP TABLE IF EXISTS `pre_magazine`;
CREATE TABLE `pre_magazine` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `officurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `magazinename` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pre_medal`;
CREATE TABLE `pre_medal` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `logo` char(16) NOT NULL,
  `cTime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pre_message`;
CREATE TABLE `pre_message` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `localarea` int(11) NOT NULL,
  `belongid` int(11) NOT NULL,
  `classify` char(16) NOT NULL COMMENT '留言分类',
  `nickname` varchar(255) NOT NULL default '0' COMMENT '姓名',
  `number` varchar(255) NOT NULL default '0' COMMENT '电话',
  `content` varchar(255) NOT NULL default '0' COMMENT '留言内容',
  `cTime` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_message` VALUES('1','2','15','1','goods','个屌丝歌神的公司','电风扇的法定的发的说法','这是我的第一个留言，就通过吧','1415024272','2130706433','1');

DROP TABLE IF EXISTS `pre_personal`;
CREATE TABLE `pre_personal` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `idcard` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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
  `secretinfo` text NOT NULL,
  `top` tinyint(1) NOT NULL,
  `start_time` int(10) NOT NULL default '0',
  `expired_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;

INSERT INTO `pre_posts` VALUES('63','78','2','','会销315编辑部','关于会销315','','','0','','','','','不断进取，不断创新','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/63/536f74c8df456.jpg\" width=\"530\" data=\"68\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/63/536f74cc7659b.jpg\" width=\"530\" data=\"69\"/></p><p><br/></p><p><br/></p>','','','','10','0','0','1','0','1399813205','','','0','0','0');
INSERT INTO `pre_posts` VALUES('64','68','2','','会销315编辑部','会销产品排行文章一','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','4','0','0','1','0','1399814147','70','','1','0','0');
INSERT INTO `pre_posts` VALUES('65','72','2','','会销315编辑部','产品展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','0','1','0','1399813779','71','','0','0','0');
INSERT INTO `pre_posts` VALUES('66','71','2','','会销315编辑部','黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','0','1','0','1399814130','','','1','0','0');
INSERT INTO `pre_posts` VALUES('67','69','2','','会销315编辑部','信用资讯，关于如何申请','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','2','0','0','1','0','1399814128','','','1','0','0');
INSERT INTO `pre_posts` VALUES('68','76','2','','会销315编辑部','会销315上线了','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','5','0','0','1','0','1399814191','','','1','0','0');
INSERT INTO `pre_posts` VALUES('69','76','2','','会销315编辑部','关于如何注册的回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','2','0','1','1','0','1399814242','','','1','0','0');
INSERT INTO `pre_posts` VALUES('70','74','2','','会销315编辑部','全国会场展示一','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','0','1','0','1399814368','72','','1','0','0');
INSERT INTO `pre_posts` VALUES('71','74','2','','','会场展示2','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','4','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('72','77','2','','','会销资料1','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814773','','','1','0','0');
INSERT INTO `pre_posts` VALUES('73','76','2','','','新闻动态','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814770','','','1','0','0');
INSERT INTO `pre_posts` VALUES('74','65','2','','','新闻会销','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814769','','','1','0','0');
INSERT INTO `pre_posts` VALUES('75','63','2','','','策划团队1','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814988','74','','1','0','0');
INSERT INTO `pre_posts` VALUES('76','62','2','','','会销模式介绍','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814985','','','1','0','0');
INSERT INTO `pre_posts` VALUES('77','64','2','','','经典的会销视频','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399814983','','','1','0','0');
INSERT INTO `pre_posts` VALUES('78','61','2','','','OEM是什么？','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','6','0','1','1','0','1399814981','','','1','0','0');
INSERT INTO `pre_posts` VALUES('79','66','2','','','会销人才介绍','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399815110','75','','1','0','0');
INSERT INTO `pre_posts` VALUES('80','76','2','','会销315编辑部','关于本站的注册流程','','','0','','','','','','<p>关于本站的注册流程，请不甚了解的用户参考一下：</p><p><br/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','2','0','1','1','0','1399815195','','','1','0','0');
INSERT INTO `pre_posts` VALUES('81','68','2','','会销315编辑部','会销产品排行榜2','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">三月，注定是赏花踏青的季节。信步去看一场花事，渡船去赏一湖春水，从一座城到一个镇。一路风尘，将闲云装进行囊，将故事背负肩上，寻找属于心灵的原乡。&nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">潼南是著名的油菜之乡，种植油菜有着悠久的历史。从陈抟老祖的香油点灯到万家百姓的饮食安康，千百年来，潼南油菜之花都以其磅礴之势、倾国倾城之美与百花争奇斗艳，为大地平添金色之美。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&nbsp;潼南油菜花节位于重庆潼南县崇龛镇。崇龛镇是潼南县的油菜种植生产基地，每年三月份几万亩油菜花近千个品种在崇龛镇的田野竞相怒放。满眼都是望不到边的金黄。琼江穿花海而过，乘游船坐览花海，享受春风拂面；登上陈抟山，观赏以油菜为主要背景、小麦为配景形成的“太极”图案，体验独一无二的金色海洋。因此，潼南也被评为“中国最美的油菜花海”之一。</p><p><br/></p>','','','','3','0','1','1','0','1399816622','','','1','0','0');
INSERT INTO `pre_posts` VALUES('82','68','2','','会销315编辑部','产品排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">三月，注定是赏花踏青的季节。信步去看一场花事，渡船去赏一湖春水，从一座城到一个镇。一路风尘，将闲云装进行囊，将故事背负肩上，寻找属于心灵的原乡。&nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">潼南是著名的油菜之乡，种植油菜有着悠久的历史。从陈抟老祖的香油点灯到万家百姓的饮食安康，千百年来，潼南油菜之花都以其磅礴之势、倾国倾城之美与百花争奇斗艳，为大地平添金色之美。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&nbsp;潼南油菜花节位于重庆潼南县崇龛镇。崇龛镇是潼南县的油菜种植生产基地，每年三月份几万亩油菜花近千个品种在崇龛镇的田野竞相怒放。满眼都是望不到边的金黄。琼江穿花海而过，乘游船坐览花海，享受春风拂面；登上陈抟山，观赏以油菜为主要背景、小麦为配景形成的“太极”图案，体验独一无二的金色海洋。因此，潼南也被评为“中国最美的油菜花海”之一。</p><p><br/></p>','','','','1','0','1','1','0','1399816747','','','1','0','0');
INSERT INTO `pre_posts` VALUES('83','93','2','','会销315编辑部','政府法规一','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('84','79','2','','会销315编辑部','企业厂家排行榜一','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399897942','','','1','0','0');
INSERT INTO `pre_posts` VALUES('85','79','2','','会销315编辑部','企业厂家排行榜2','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897944','','','1','0','0');
INSERT INTO `pre_posts` VALUES('86','79','2','','会销315编辑部','企业厂家排行榜3','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898033','','','1','0','0');
INSERT INTO `pre_posts` VALUES('87','79','2','','会销315编辑部','企业厂家排行榜4','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898035','','','1','0','0');
INSERT INTO `pre_posts` VALUES('88','79','2','','会销315编辑部','企业厂家排行榜5','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898038','','','1','0','0');
INSERT INTO `pre_posts` VALUES('89','79','2','','会销315编辑部','企业厂家排行榜6','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898040','','','1','0','0');
INSERT INTO `pre_posts` VALUES('90','79','2','','会销315编辑部','企业厂家排行榜7','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898042','','','1','0','0');
INSERT INTO `pre_posts` VALUES('91','79','2','','会销315编辑部','企业厂家排行榜8','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898044','','','1','0','0');
INSERT INTO `pre_posts` VALUES('92','79','2','','会销315编辑部','企业厂家排行榜9','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898046','','','1','0','0');
INSERT INTO `pre_posts` VALUES('93','79','2','','会销315编辑部','企业厂家排行榜0','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898047','','','1','0','0');
INSERT INTO `pre_posts` VALUES('94','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('95','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('101','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('100','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('99','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('98','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('97','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('96','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('102','93','2','','会销315编辑部','政府法规政府法规政府法规','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399897454','','','1','0','0');
INSERT INTO `pre_posts` VALUES('103','74','2','','','会场展示3','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','5','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('104','74','2','','','会场展示4','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('105','74','2','','','会场展示5','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('106','74','2','','','会场展示6','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('107','74','2','','','会场展示7','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('108','74','2','','','会场展示8','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('109','74','2','','','会场展示9','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('110','74','2','','','会场展示0','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','3','0','1','1','0','1399814573','73','','1','0','0');
INSERT INTO `pre_posts` VALUES('111','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('112','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('114','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('115','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('116','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('117','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('118','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('119','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('120','86','2','','会销315编辑部','火爆现场推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399898878','77','','1','0','0');
INSERT INTO `pre_posts` VALUES('121','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('122','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('125','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('126','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('127','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('128','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('129','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('130','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('131','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('132','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('133','89','2','','会销315编辑部','热销信用产品推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399899909','78','','1','0','0');
INSERT INTO `pre_posts` VALUES('134','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('135','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('136','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('137','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('138','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('139','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('140','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('141','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('142','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('143','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('144','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('145','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('146','90','2','','会销315编辑部','信用优秀讲师推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900207','79','','1','0','0');
INSERT INTO `pre_posts` VALUES('147','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('148','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('149','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('150','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','5','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('151','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','2','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('152','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('153','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('154','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('155','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('156','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('157','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('158','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('159','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('160','91','2','','会销315编辑部','全国诚信代理商、经销商推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900430','80','','1','0','0');
INSERT INTO `pre_posts` VALUES('161','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','3','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('162','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('163','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('164','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('165','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('166','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('167','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('168','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('169','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('170','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('171','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('172','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('173','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('174','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('175','92','2','','会销315编辑部','代理商、经销商团队风采展示','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">由于重庆主城区独有复杂的地理条件，目前重庆主城区内有一条跨江缆索轨道交通线，由重庆市客运索道公司运营，为1986年投入使用的重庆长江索道。缆索轨道作为城市交通工具在国内都是独有的。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">重庆长江索道于1986年建成投入使用，现属重庆市客运索道公司运营，全长2110米。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">价格：单程10元，来回20元；公交卡仅需1.8元（单程）。（2014年3月更新）<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">地址：渝中区新华路153号</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">时间：07:00-22:00</p><p><br/></p>','','','','1','0','1','1','0','1399900683','81','','1','0','0');
INSERT INTO `pre_posts` VALUES('176','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('177','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('178','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('179','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('180','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('181','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('182','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('183','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('184','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('185','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('186','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('187','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('188','69','2','','会销315编辑部','信用认证资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991374','','','1','0','0');
INSERT INTO `pre_posts` VALUES('189','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('190','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('191','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('192','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('193','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('194','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('195','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('196','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('197','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('198','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('199','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','17','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('200','76','2','','会销315编辑部','关于加强企业认证的若干问题及回复','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991669','','','1','0','0');
INSERT INTO `pre_posts` VALUES('201','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('202','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('203','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('204','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('205','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('206','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('207','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('208','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('209','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('210','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('211','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('212','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('213','80','2','','会销315编辑部','热销产品排行榜这个杠杠的','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399991799','','','1','0','0');
INSERT INTO `pre_posts` VALUES('214','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('215','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('216','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','2','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('217','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('218','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('219','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('220','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('221','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('222','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('223','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('224','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('225','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('226','81','2','','会销315编辑部','单场销量排行榜','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ebfb01c3.jpg\" width=\"530\" data=\"82\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec280fb6.jpg\" width=\"530\" data=\"83\"/></p><p><br/></p><p><img src=\"http://hackzwc520.gotoip55.com/huixiao/attachments/posts/600/214/53722ec524e60.jpg\" width=\"530\" data=\"84\"/></p><p><br/></p><p><br/></p>','','','','1','0','0','1','0','1399991973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('227','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('228','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('229','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('230','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('231','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('232','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('233','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('234','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','2','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('235','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('236','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('237','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('238','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('239','84','2','','会销315编辑部','AAA级信用公司推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992163','85','','1','0','0');
INSERT INTO `pre_posts` VALUES('240','82','2','','会销315编辑部','信用厂家介绍','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','0','1','0','1399992515','86','','1','0','0');
INSERT INTO `pre_posts` VALUES('241','82','2','','会销315编辑部','信用厂家','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">位于<strong style=\"word-wrap: break-word;\">沙坪坝区磁器口横街17号(宝轮寺旁)</strong>的思恋の素颜明信片小馆，是重庆特色明信片主题馆之一，你可以设定未来任何一天寄达。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在不大的空间里，每天都寄托着来自五湖四海的真情告白。&nbsp;在这里有全部自行设计的明信片，这些插画、照片与文字，全部关于重庆，关于磁器口，关于爱情、友谊、思念、祝福……关于每一个途径此处时，你所可能遇见的七情六欲。把他们写下来，寄给她，他，它，或者自己。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">你可以设定未来的任何一天寄达，让这一份旅途中的纪念，变成某个时间的惊喜，抑或如约而至的怀念。&nbsp;</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">店里还有最好喝的丝袜奶茶，全部使用进口原料，不含任何添加剂，为每一个路过此地的行者，提供一口香浓醇正的味道。&nbsp;小店还有笔记本、彩色笔、马克杯、快速成像照片等纪念品。</p><p><br/></p>','','','','1','0','1','1','0','1399992732','87','','1','0','0');
INSERT INTO `pre_posts` VALUES('242','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('243','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('244','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','2','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('245','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('246','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('247','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('248','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('249','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('250','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('251','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('252','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('253','75','2','','会销315编辑部','营销模式介绍推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','1','1','0','1399995391','','','1','0','0');
INSERT INTO `pre_posts` VALUES('254','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('255','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('256','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('257','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('258','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','2','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('259','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('260','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('261','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('262','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('263','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('264','64','2','','会销315编辑部','经典会销视频推荐','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">如果一个我很讨厌的人，某天真诚地对着我笑一次，我的心会立刻软掉，从此不再计较。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">打心底觉得人性本恶的、有反骨的人极少。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我更愿相信误会，宁愿相信过错都是暂时的，憎恶怨恨只是摩擦后积下的灰尘，时间会洗刷他们。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们本就善良，我们总希望彼此和一切都好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">因为人生太短，人应该来不及变坏。</p><p><br/></p>','','','','1','0','0','1','0','1399995805','','','1','0','0');
INSERT INTO `pre_posts` VALUES('265','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('266','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('267','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('268','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('269','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('270','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('271','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('272','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('273','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('274','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('275','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('276','73','2','','会销315编辑部','行业展会资讯','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">无论选择活在哪个城市，无非是一日三餐、工作睡觉，无论选择和谁在一起，无非是牵手拥抱、亲吻打炮。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">一想到无论如何胸怀梦想也逃不脱人生的这种差不多，便觉得无需计较，无需难过，无需歇斯底里。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">不如躲在生活中的每一个小小愉快里，与世界和解。</p><p><br/></p>','','','','1','0','1','1','0','1399995957','','','1','0','0');
INSERT INTO `pre_posts` VALUES('277','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('278','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('279','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('280','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('281','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('282','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('283','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('284','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('285','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('286','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('287','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('288','87','2','','会销315编辑部','关于公司申请入驻的相关问题及解答','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Try this out:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Stop at your pharmacy,go to the thermometer section and purchase a rectal thermometer(肛用体温计) made by Johnson &amp; Johnson.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Be very sure you get this brand.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When you get home,lock your doors,draw the curtains and disconnect the phone so you will not be disturbed.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Change into comfortable clothing and sit in your favorite chair.Open the package and remove the thermometer.Then,carefully place it on a table or a surface so that it will not become chipped or broken.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now the fun part begins.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Take out the literature from the box and read it carefully.You will notice that in small print there is a statement:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;Every rectal thermometer made by Johnson &amp; Johnson is personally tested and then sanitized.&quot;（每一根强生公司的肛用体温计，都经过我们专人的测试并且消毒过.）</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Now,close your eyes and repeat out loud five times,&quot;I am so glad I do not work in the thermometer quality control department at Johnson &amp; Johnson.&quot;</p><p><br/></p>','','','','1','0','1','1','0','1399996126','','','1','0','0');
INSERT INTO `pre_posts` VALUES('289','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','2','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('290','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('291','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('292','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('293','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('294','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('295','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('296','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('297','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('298','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('299','88','2','','会销315编辑部','这里是一些公司招商的资讯，欢迎关注','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">我们班昨天的家庭作业是写一个关于“梦中人”的小报告。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">今天上课的时候，大家相互交换校订。我暗恋的那个家伙经常和我做搭档，所以我俩交换校订。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">当我打开他的作业，就看见上面写着一个字：“你”。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Last night for homework,our class was assigned to write a report on our &quot;dream person&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">Today in class we were peer editing each others papers.My crush and I always partner up,and so we peer edited each others.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">When I looked at his paper,it only had a single word on it:</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">&quot;You&quot;.</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">--From MLIA</p><p><br/></p>','','','','1','0','1','1','0','1399996350','','','1','0','0');
INSERT INTO `pre_posts` VALUES('300','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('301','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','2','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('302','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('303','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('304','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('305','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('306','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('307','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('308','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('309','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('310','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('311','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('312','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('313','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('314','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('315','94','2','','会销315编辑部','重庆著名展会公司','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','0','1','0','1400419144','88','','1','0','0');
INSERT INTO `pre_posts` VALUES('316','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('317','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('318','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('319','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('320','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('321','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','4','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('322','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('323','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('324','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('325','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','2','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('326','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('327','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('328','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('329','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('330','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('331','95','2','','会销315编辑部','每月十四号南坪会展中心展','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419333','','','1','0','0');
INSERT INTO `pre_posts` VALUES('332','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('333','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('334','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('335','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('336','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('337','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('338','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('339','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('340','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('341','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('342','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('343','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('344','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('345','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('346','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('347','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('348','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('349','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('350','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('351','96','2','','会销315编辑部','每周展会档期','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。</p><p><br/></p>','','','','1','0','1','1','0','1400419481','','','1','0','0');
INSERT INTO `pre_posts` VALUES('352','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('353','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('354','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('355','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('356','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('357','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('358','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('359','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('360','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('361','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('362','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('363','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('364','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('365','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('366','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('367','97','2','','会销315编辑部','会销黑名单曝光台','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421857','','','1','0','0');
INSERT INTO `pre_posts` VALUES('368','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','2','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('383','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('369','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('370','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('371','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('372','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('373','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('374','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('375','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('376','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('377','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('378','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('379','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('380','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('381','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('382','98','2','','会销315编辑部','会销骗局案例','','','0','','','','','','<p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">推荐一些成都地道小吃，最重要是好吃又便宜的，宽窄巷子和锦里的东西确实是有些不好吃还贵。以下为整理的一部分，欢迎补充：</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">豆花</strong>在成都是很有名的小吃，小谭豆花尤为有名。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">四川大学小南门的美食一条街，应该是提供给旅游人士最多的吃四川小吃的地方了。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">雷老妈蹄花</strong>，这可不是大家都知道的<strong style=\"word-wrap: break-word;\">廖老妈</strong>&nbsp;，我承认廖家的确实好吃，但是我告诉你这猪蹄店是惊艳，比廖家，强十倍。雷老妈蹄花，在陕西街，在一个高中和教育局所在的那条街上。还是很好找的。只有晚上才营业，我去的时候人家才刚营业。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">成都最有名的还是“<strong style=\"word-wrap: break-word;\">苍蝇馆子</strong>”，明婷饭店应该是最为有名的，宣传和营销做得比较到位，味道也不错。但在我心中不是第一，在我心里排名第一的苍蝇馆子是“三无餐厅”，是网友给起的名字，大众点评也可以搜到，要详细看地址，不然很容易错过。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">春熙路商场旁边有串串店，里面伤心凉粉， 担担面，各种串串以及点钟水饺、龙抄手、赖汤圆。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">老妈蹄花店，在天府广场去成都人民公园的路上会看到。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\"><strong style=\"word-wrap: break-word;\">肥肠粉</strong>（青石桥，甘记喜欢的人都多）；<strong style=\"word-wrap: break-word;\">冒菜</strong>（冒菜，是一个人的火锅），还有比如洛带的<strong style=\"word-wrap: break-word;\">伤心凉粉</strong>，<strong style=\"word-wrap: break-word;\">天鹅蛋</strong>（也就是糖油果子），成都七中门口的<strong style=\"word-wrap: break-word;\">蛋烘糕</strong>（口味很多），还有很多成都人喜欢的可以打包回家的小吃，比如廖排骨（连锁，到处都有），廖记棒棒鸡（连锁），正通顺街双眼井巴金故居旁的巴井乡的拌肺片，红板兔，香油毛肚都很好吃，然后街对面有家盐边牛肉的干拌牛肉，毛肚也很好。</p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">在文殊院旁的文殊坊里可以找到老成都名小吃牛肉焦饼，配上牛肉汤，绝对是老成都的记忆，文殊坊还有本地人常年排长队购买的宫廷桃酥。<br style=\"word-wrap: break-word;\"/></p><p style=\"word-wrap: break-word; padding: 0px; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 12px; line-height: 19.200000762939453px; white-space: normal;\">欢迎补充......</p><p><br/></p>','','','','1','0','1','1','0','1400421973','','','1','0','0');
INSERT INTO `pre_posts` VALUES('384','68','2','','','带时间戳的文章测试','','','0','','','','','','<p>的发的说法打发东方德发打发打发地方阿发</p><p>的方式大幅桑德福电风扇的份上</p><p>的法定发多少反对法地方的法定的发的说法</p><p>的说法是的方式大幅桑德福第三方是辅导费地方</p><p>的发送到发生的方式地方丰盛的</p><p>的方式的发生法士大夫</p><p>第三方斯蒂芬</p>','','','','1','0','1','1','0','1407854530','','','0','1408636800','1408809600');
INSERT INTO `pre_posts` VALUES('385','68','7','','','这里是文章标题，哈哈哈','','','0','','','','','反倒是东方僵尸洞福建省地丰盛的发电机房东方','<p>是的发生的发生的发生的是打算打算大大声地富士达收到货的复合肥个的非官方郭德纲的覆盖度飞个电饭锅的发大概个的覆盖度飞个电饭锅电饭锅个</p>','','2014/07/FY141504.exe','','16','0','1','1','0','1408242708','83','','0','0','0');
INSERT INTO `pre_posts` VALUES('386','68','7','','','我的第二篇文章','','','0','','','','','感觉还可以的样子','<p>暂时还没有关键词过滤及触发的法搜东方朔交电费家的说法说的丰盛的金佛寺低价佛山的金佛山的金佛说的</p>','','','','5','0','1','1','0','1408243600','84','','0','0','0');
INSERT INTO `pre_posts` VALUES('387','68','10','','','是的撒的撒的撒','','','0','','','','','','<p>是的撒打算大舍大得个是德辅道是否是的发生的发萨达四大是是倒萨倒萨大撒的撒的撒的</p>','','','','4','0','1','1','0','1408846713','','','0','0','0');
INSERT INTO `pre_posts` VALUES('388','68','2','','','第一篇带标签','','','0','','','','','的发生的发生的发生的发的说法','<p>是打算打算的萨达四大四大四大是多少是打算打算大声地撒大声地zxzxzxZX</p><p>asdasdasdas是大是打算打算</p>','','','','6','0','1','1','0','1408876432','','','0','0','0');
INSERT INTO `pre_posts` VALUES('389','68','2','','','带关键词检查的','','','0','','','','','','<p>的放大时范德萨发的是范德萨发撒旦法的撒范德萨发生的发生的发生的发是的发送到发生的发生的发生的发的发生的发生的发生的发的</p>','','','','2','0','1','1','0','1408889365','','','0','0','0');
INSERT INTO `pre_posts` VALUES('390','68','2','','','再发一篇文章试试，哈哈哈哈','','','0','','','','','','<p>测试提交的，也许行了哦，哈哈哈哈哈</p>','','','','2','0','1','1','0','1408890124','','','0','0','0');
INSERT INTO `pre_posts` VALUES('391','68','2','','','呵呵哈哈','','','0','','','','','电风扇的法定','<p>关键词测试，还能通过么，的说法胜多负少地方还多少，</p><p>的方式大幅桑德福是的房价是东方坚实的</p><p>测试标题</p>','','','','1','0','1','3','0','1408890396','','','0','0','0');

DROP TABLE IF EXISTS `pre_producer`;
CREATE TABLE `pre_producer` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `companyurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  `score` char(5) NOT NULL default '0',
  `scorer` int(10) NOT NULL default '0',
  `lecturers` int(10) NOT NULL default '0',
  `goods` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pre_producer` VALUES('2','2','0','47','聚易开放式技术实验室','聚易开放式技术实验室','开启','这里是企业描述','关闭','阿飞','1234567890','主打产品','四大四大是的撒该死的发是的范德萨','1414074967','0','0','2','0','','','0','0','0','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `pre_questions` VALUES('3','2','0','','','','','你们到底什么时候上线啊？','','1','感谢您的支持，我们会在最近上线。','1','1398517390');
INSERT INTO `pre_questions` VALUES('4','2','0','','','','','电话费电话费的哭交话费道德经开疯狂地是九分裤是的发送到福克斯的防静电极度疯狂束带结发是经典款福建省','','1','xhfcxdchkjxhcxjhcxhclzxchjhxzgczxkcxzczxkcmxzkcmxzkmckxzc','1','1399020432');
INSERT INTO `pre_questions` VALUES('5','7','0','','','','','你们就是个坑货','','1','你才是坑货','3','1399020583');
INSERT INTO `pre_questions` VALUES('6','7','0','','','','','客服挺好玩的啊，哈哈哈哈','','1','你才好玩，你全家都好玩','3','1399020707');

DROP TABLE IF EXISTS `pre_score`;
CREATE TABLE `pre_score` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `belongid` int(11) NOT NULL,
  `classify` char(16) NOT NULL COMMENT '评分分类',
  `score` char(5) NOT NULL default '0' COMMENT '评分项',
  `score1` char(5) NOT NULL default '0' COMMENT '评分项',
  `score2` char(5) NOT NULL default '0' COMMENT '评分项',
  `score3` char(5) NOT NULL default '0' COMMENT '评分项',
  `score4` char(5) NOT NULL default '0' COMMENT '评分项',
  `score5` char(5) NOT NULL default '0' COMMENT '评分项',
  `score6` char(5) NOT NULL default '0' COMMENT '评分项',
  `score7` char(5) NOT NULL default '0' COMMENT '评分项',
  `score8` char(5) NOT NULL default '0' COMMENT '评分项',
  `score9` char(5) NOT NULL default '0' COMMENT '评分项',
  `cTime` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_score` VALUES('1','1','2','qiye','10','10','10','10','8','0','0','0','0','0','1414504273','2130706433','0');

DROP TABLE IF EXISTS `pre_search_records`;
CREATE TABLE `pre_search_records` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `pre_search_records` VALUES('1','哈哈','18');
INSERT INTO `pre_search_records` VALUES('2','编辑','1');
INSERT INTO `pre_search_records` VALUES('3','人','1');
INSERT INTO `pre_search_records` VALUES('4','杂志','1');
INSERT INTO `pre_search_records` VALUES('5','双对数','2');
INSERT INTO `pre_search_records` VALUES('6','呵呵','4');
INSERT INTO `pre_search_records` VALUES('7','嘿嘿','3');
INSERT INTO `pre_search_records` VALUES('8','dfsdfsdfsdf','6');

DROP TABLE IF EXISTS `pre_servicer`;
CREATE TABLE `pre_servicer` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `truename` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `jobname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `idcard` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pre_tag_relation`;
CREATE TABLE `pre_tag_relation` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `logid` int(11) unsigned NOT NULL,
  `tagid` int(11) unsigned NOT NULL,
  `classify` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `logid` (`logid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM AUTO_INCREMENT=236206 DEFAULT CHARSET=utf8;

INSERT INTO `pre_tag_relation` VALUES('236205','388','12393','posts');

DROP TABLE IF EXISTS `pre_tags`;
CREATE TABLE `pre_tags` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `classify` varchar(32) NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `cTime` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  `posts` int(10) NOT NULL,
  `length` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12395 DEFAULT CHARSET=utf8;

INSERT INTO `pre_tags` VALUES('12393','哈哈','haha','posts','0','1408876055','1','10','0');
INSERT INTO `pre_tags` VALUES('12394','呵呵','hehe','posts','0','1408881717','1','0','0');

DROP TABLE IF EXISTS `pre_team`;
CREATE TABLE `pre_team` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `officurl` varchar(255) NOT NULL,
  `contactname` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `mainproduct` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

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
INSERT INTO `pre_user_action` VALUES('94','2','0','delposts','删除文章','1398432060','2130706433');
INSERT INTO `pre_user_action` VALUES('95','2','0','delattachments','删除附件','1398432081','2130706433');
INSERT INTO `pre_user_action` VALUES('96','2','0','delads','删除展示','1398432088','2130706433');
INSERT INTO `pre_user_action` VALUES('97','2','0','delcolumns','删除栏目','1398432102','2130706433');
INSERT INTO `pre_user_action` VALUES('98','2','0','setting','更新设置','1398432199','2130706433');
INSERT INTO `pre_user_action` VALUES('99','2','32','editcolumns','编辑栏目','1398432272','2130706433');
INSERT INTO `pre_user_action` VALUES('100','2','33','editcolumns','编辑栏目','1398432294','2130706433');
INSERT INTO `pre_user_action` VALUES('101','2','34','editcolumns','编辑栏目','1398432317','2130706433');
INSERT INTO `pre_user_action` VALUES('102','2','35','editcolumns','编辑栏目','1398432338','2130706433');
INSERT INTO `pre_user_action` VALUES('103','2','36','editcolumns','编辑栏目','1398432398','2130706433');
INSERT INTO `pre_user_action` VALUES('104','2','37','editcolumns','编辑栏目','1398432423','2130706433');
INSERT INTO `pre_user_action` VALUES('105','2','38','editcolumns','编辑栏目','1398432445','2130706433');
INSERT INTO `pre_user_action` VALUES('106','2','39','editcolumns','编辑栏目','1398432464','2130706433');
INSERT INTO `pre_user_action` VALUES('107','2','40','editcolumns','编辑栏目','1398432484','2130706433');
INSERT INTO `pre_user_action` VALUES('108','2','41','editcolumns','编辑栏目','1398432712','2130706433');
INSERT INTO `pre_user_action` VALUES('109','2','42','editcolumns','编辑栏目','1398432732','2130706433');
INSERT INTO `pre_user_action` VALUES('110','2','43','editcolumns','编辑栏目','1398432768','2130706433');
INSERT INTO `pre_user_action` VALUES('111','2','44','editcolumns','编辑栏目','1398432817','2130706433');
INSERT INTO `pre_user_action` VALUES('112','2','45','editcolumns','编辑栏目','1398432872','2130706433');
INSERT INTO `pre_user_action` VALUES('113','2','46','editcolumns','编辑栏目','1398432908','2130706433');
INSERT INTO `pre_user_action` VALUES('114','2','47','editcolumns','编辑栏目','1398432942','2130706433');
INSERT INTO `pre_user_action` VALUES('115','2','48','editcolumns','编辑栏目','1398432999','2130706433');
INSERT INTO `pre_user_action` VALUES('116','2','49','editcolumns','编辑栏目','1398433026','2130706433');
INSERT INTO `pre_user_action` VALUES('117','2','50','editcolumns','编辑栏目','1398433053','2130706433');
INSERT INTO `pre_user_action` VALUES('118','2','51','editcolumns','编辑栏目','1398433094','2130706433');
INSERT INTO `pre_user_action` VALUES('119','2','52','editcolumns','编辑栏目','1398433125','2130706433');
INSERT INTO `pre_user_action` VALUES('120','2','53','editcolumns','编辑栏目','1398433166','2130706433');
INSERT INTO `pre_user_action` VALUES('121','2','54','editcolumns','编辑栏目','1398433206','2130706433');
INSERT INTO `pre_user_action` VALUES('122','2','55','editcolumns','编辑栏目','1398433251','2130706433');
INSERT INTO `pre_user_action` VALUES('123','2','56','editcolumns','编辑栏目','1398433351','2130706433');
INSERT INTO `pre_user_action` VALUES('124','2','0','delcolumns','删除栏目','1398433364','2130706433');
INSERT INTO `pre_user_action` VALUES('125','2','0','setting','更新设置','1398434084','2130706433');
INSERT INTO `pre_user_action` VALUES('126','2','57','editcolumns','编辑栏目','1398517194','2130706433');
INSERT INTO `pre_user_action` VALUES('127','2','0','setting','更新设置','1398517722','2130706433');
INSERT INTO `pre_user_action` VALUES('128','2','0','setting','更新设置','1398518289','2130706433');
INSERT INTO `pre_user_action` VALUES('129','2','0','setting','更新设置','1398518387','2130706433');
INSERT INTO `pre_user_action` VALUES('130','2','0','setting','更新设置','1398518475','2130706433');
INSERT INTO `pre_user_action` VALUES('131','2','0','setting','更新设置','1398518527','2130706433');
INSERT INTO `pre_user_action` VALUES('132','2','0','setting','更新设置','1398518537','2130706433');
INSERT INTO `pre_user_action` VALUES('133','2','0','setting','更新设置','1398518552','2130706433');
INSERT INTO `pre_user_action` VALUES('134','2','0','setting','更新设置','1398518571','2130706433');
INSERT INTO `pre_user_action` VALUES('135','2','0','setting','更新设置','1398518601','2130706433');
INSERT INTO `pre_user_action` VALUES('136','2','0','setting','更新设置','1398519017','2130706433');
INSERT INTO `pre_user_action` VALUES('137','2','4','editusers','编辑用户','1398519772','2130706433');
INSERT INTO `pre_user_action` VALUES('138','2','4','editusers','编辑用户','1398519785','2130706433');
INSERT INTO `pre_user_action` VALUES('139','2','7','editusergroup','编辑用户组','1398520556','2130706433');
INSERT INTO `pre_user_action` VALUES('140','2','0','setting','更新设置','1398523626','2130706433');
INSERT INTO `pre_user_action` VALUES('141','2','5','editusers','编辑用户','1398567225','2130706433');
INSERT INTO `pre_user_action` VALUES('142','2','0','setting','更新设置','1398567407','2130706433');
INSERT INTO `pre_user_action` VALUES('143','5','0','delads','删除展示','1398569993','2130706433');
INSERT INTO `pre_user_action` VALUES('144','5','0','delads','删除展示','1398570049','2130706433');
INSERT INTO `pre_user_action` VALUES('145','5','0','delads','删除展示','1398570069','2130706433');
INSERT INTO `pre_user_action` VALUES('146','2','58','editcolumns','编辑栏目','1398585713','2130706433');
INSERT INTO `pre_user_action` VALUES('147','2','59','editcolumns','编辑栏目','1398590859','2130706433');
INSERT INTO `pre_user_action` VALUES('148','2','54','editposts','编辑文章','1398602357','2130706433');
INSERT INTO `pre_user_action` VALUES('149','2','54','editposts','编辑文章','1398602374','2130706433');
INSERT INTO `pre_user_action` VALUES('150','2','0','setting','更新设置','1398784096','2130706433');
INSERT INTO `pre_user_action` VALUES('151','2','0','setting','更新设置','1398913203','2130706433');
INSERT INTO `pre_user_action` VALUES('152','2','54','editposts','编辑文章','1399009377','2130706433');
INSERT INTO `pre_user_action` VALUES('153','2','54','editposts','编辑文章','1399009768','2130706433');
INSERT INTO `pre_user_action` VALUES('154','2','54','editposts','编辑文章','1399009866','2130706433');
INSERT INTO `pre_user_action` VALUES('155','2','54','editposts','编辑文章','1399009892','2130706433');
INSERT INTO `pre_user_action` VALUES('156','2','59','editcolumns','编辑栏目','1399016822','2130706433');
INSERT INTO `pre_user_action` VALUES('157','2','0','setting','更新设置','1399103544','2130706433');
INSERT INTO `pre_user_action` VALUES('158','2','5','editusergroup','编辑用户组','1399386486','2130706433');
INSERT INTO `pre_user_action` VALUES('159','2','57','editposts','编辑文章','1399387683','2130706433');
INSERT INTO `pre_user_action` VALUES('160','2','45','editcolumns','编辑栏目','1399387752','2130706433');
INSERT INTO `pre_user_action` VALUES('161','2','58','editposts','编辑文章','1399464436','2130706433');
INSERT INTO `pre_user_action` VALUES('162','2','45','editcolumns','编辑栏目','1399464725','2130706433');
INSERT INTO `pre_user_action` VALUES('163','2','0','setting','更新设置','1399471033','2130706433');
INSERT INTO `pre_user_action` VALUES('164','2','0','setting','更新设置','1399471293','2130706433');
INSERT INTO `pre_user_action` VALUES('165','2','0','setting','更新设置','1399471309','2130706433');
INSERT INTO `pre_user_action` VALUES('166','2','0','setting','更新设置','1399471992','2130706433');
INSERT INTO `pre_user_action` VALUES('167','2','0','setting','更新设置','1399473232','2130706433');
INSERT INTO `pre_user_action` VALUES('168','2','7','editusergroup','编辑用户组','1399474164','2130706433');
INSERT INTO `pre_user_action` VALUES('169','2','7','editusergroup','编辑用户组','1399474287','2130706433');
INSERT INTO `pre_user_action` VALUES('170','2','45','editcolumns','编辑栏目','1399474558','2130706433');
INSERT INTO `pre_user_action` VALUES('171','2','46','editcolumns','编辑栏目','1399474576','2130706433');
INSERT INTO `pre_user_action` VALUES('172','2','0','setting','更新设置','1399550984','2130706433');
INSERT INTO `pre_user_action` VALUES('173','2','7','editusers','编辑用户','1399554569','2130706433');
INSERT INTO `pre_user_action` VALUES('174','2','7','editusers','编辑用户','1399554577','2130706433');
INSERT INTO `pre_user_action` VALUES('175','2','7','editusers','编辑用户','1399554785','2130706433');
INSERT INTO `pre_user_action` VALUES('176','2','7','editusers','编辑用户','1399554810','2130706433');
INSERT INTO `pre_user_action` VALUES('177','2','7','editusers','编辑用户','1399554811','2130706433');
INSERT INTO `pre_user_action` VALUES('178','2','7','editusers','编辑用户','1399554820','2130706433');
INSERT INTO `pre_user_action` VALUES('179','2','7','editusers','编辑用户','1399554939','2130706433');
INSERT INTO `pre_user_action` VALUES('180','2','7','editusergroup','编辑用户组','1399555034','2130706433');
INSERT INTO `pre_user_action` VALUES('181','2','5','editusergroup','编辑用户组','1399558426','2130706433');
INSERT INTO `pre_user_action` VALUES('182','2','0','setting','更新设置','1399784105','2130706433');
INSERT INTO `pre_user_action` VALUES('183','2','59','editcolumns','编辑栏目','1399800864','2130706433');
INSERT INTO `pre_user_action` VALUES('184','2','4','editlink','编辑友链','1406465972','2130706433');
INSERT INTO `pre_user_action` VALUES('185','2','5','editlink','编辑友链','1406469816','2130706433');
INSERT INTO `pre_user_action` VALUES('186','2','68','editcolumns','编辑栏目','1407854514','2130706433');
INSERT INTO `pre_user_action` VALUES('187','2','7','editusergroup','编辑用户组','1408253450','2130706433');
INSERT INTO `pre_user_action` VALUES('188','2','0','setting','更新设置','1408874027','2130706433');
INSERT INTO `pre_user_action` VALUES('189','2','7','editusergroup','编辑用户组','1408888042','2130706433');
INSERT INTO `pre_user_action` VALUES('190','2','7','editusergroup','编辑用户组','1408888187','2130706433');
INSERT INTO `pre_user_action` VALUES('191','2','7','editusergroup','编辑用户组','1408888270','2130706433');
INSERT INTO `pre_user_action` VALUES('192','2','0','setting','更新设置','1408890390','2130706433');
INSERT INTO `pre_user_action` VALUES('193','2','0','setting','更新设置','1408890498','2130706433');
INSERT INTO `pre_user_action` VALUES('194','2','5','editusergroup','编辑用户组','1409496720','2130706433');
INSERT INTO `pre_user_action` VALUES('195','2','0','delcolumns','删除栏目','1415111937','2130706433');
INSERT INTO `pre_user_action` VALUES('196','2','76','editcolumns','编辑栏目','1415111966','2130706433');
INSERT INTO `pre_user_action` VALUES('197','2','0','delcolumns','删除栏目','1415112009','2130706433');
INSERT INTO `pre_user_action` VALUES('198','2','0','delcolumns','删除栏目','1415112060','2130706433');
INSERT INTO `pre_user_action` VALUES('199','2','0','delcolumns','删除栏目','1415112093','2130706433');
INSERT INTO `pre_user_action` VALUES('200','2','69','editcolumns','编辑栏目','1415112135','2130706433');
INSERT INTO `pre_user_action` VALUES('201','2','71','editcolumns','编辑栏目','1415112182','2130706433');
INSERT INTO `pre_user_action` VALUES('202','2','88','editcolumns','编辑栏目','1415112339','2130706433');
INSERT INTO `pre_user_action` VALUES('203','2','73','editcolumns','编辑栏目','1415112408','2130706433');
INSERT INTO `pre_user_action` VALUES('204','2','75','editcolumns','编辑栏目','1415112519','2130706433');
INSERT INTO `pre_user_action` VALUES('205','2','0','delcolumns','删除栏目','1415112545','2130706433');
INSERT INTO `pre_user_action` VALUES('206','2','0','delcolumns','删除栏目','1415112567','2130706433');
INSERT INTO `pre_user_action` VALUES('207','2','70','editcolumns','编辑栏目','1415112795','2130706433');

DROP TABLE IF EXISTS `pre_user_credit`;
CREATE TABLE `pre_user_credit` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `localarea` int(10) NOT NULL COMMENT '所属地区',
  `title` varchar(255) NOT NULL COMMENT '认证的名称',
  `classify` char(16) NOT NULL COMMENT '认证类型',
  `cTime` int(10) NOT NULL COMMENT '认证时间',
  `lastupdate` int(10) NOT NULL COMMENT '操作时间',
  `status` tinyint(1) NOT NULL COMMENT '认证状态',
  `desc` varchar(255) NOT NULL COMMENT '审核原因',
  `ip` int(10) NOT NULL COMMENT '认证IP',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_credit` VALUES('1','2','47','','producer','1414074967','0','2','','2130706433');
INSERT INTO `pre_user_credit` VALUES('2','10','4','','exhibition','1414157781','0','2','','2130706433');

DROP TABLE IF EXISTS `pre_user_group`;
CREATE TABLE `pre_user_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `powers` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0',
  `posts_perh` tinyint(3) NOT NULL default '0',
  `comments_perh` tinyint(3) NOT NULL default '0',
  `attach_perh` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_group` VALUES('5','系统','zmf','1','1383321578','0','0','0');
INSERT INTO `pre_user_group` VALUES('4','管理员','zmf','1','1383317395','0','0','0');
INSERT INTO `pre_user_group` VALUES('6','待激活','zmf','1','1397832525','0','0','0');
INSERT INTO `pre_user_group` VALUES('7','注册商家','zmf','1','1397832650','10','10','10');
INSERT INTO `pre_user_group` VALUES('8','','','0','1397832850','0','0','0');

DROP TABLE IF EXISTS `pre_user_info`;
CREATE TABLE `pre_user_info` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `classify` char(16) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

INSERT INTO `pre_user_info` VALUES('184','2','column','68','column');
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
INSERT INTO `pre_user_info` VALUES('51','2','2','48','weekly');
INSERT INTO `pre_user_info` VALUES('52','2','3','1','weekly');
INSERT INTO `pre_user_info` VALUES('53','2','4','2','weekly');
INSERT INTO `pre_user_info` VALUES('54','2','5','3','weekly');
INSERT INTO `pre_user_info` VALUES('55','2','6','5','weekly');
INSERT INTO `pre_user_info` VALUES('56','2','7','10','weekly');
INSERT INTO `pre_user_info` VALUES('95','2','address','重庆市江北观音桥','siteinfo');
INSERT INTO `pre_user_info` VALUES('94','2','company','新灵旅行','siteinfo');
INSERT INTO `pre_user_info` VALUES('79','2','mobile','1','base');
INSERT INTO `pre_user_info` VALUES('78','2','closeSiteReason','哈哈哈就是不给你看','base');
INSERT INTO `pre_user_info` VALUES('76','2','logo','924a','base');
INSERT INTO `pre_user_info` VALUES('77','2','closeSite','1','base');
INSERT INTO `pre_user_info` VALUES('93','2','bgcolor','#99cc00','template');
INSERT INTO `pre_user_info` VALUES('92','2','align_bg','0','template');
INSERT INTO `pre_user_info` VALUES('100','2','4','23','yearly');
INSERT INTO `pre_user_info` VALUES('102','5','code','d5535d6a132489a1143a467271928433','emailcode');
INSERT INTO `pre_user_info` VALUES('115','5','shortTitle','时尚生活馆','base');
INSERT INTO `pre_user_info` VALUES('114','5','sitename','阿飞馆','base');
INSERT INTO `pre_user_info` VALUES('113','5','closeSite','1','base');
INSERT INTO `pre_user_info` VALUES('107','5','7','240','weekly');
INSERT INTO `pre_user_info` VALUES('108','5','4','243','yearly');
INSERT INTO `pre_user_info` VALUES('109','5','company','聚易开放式技术实验室','siteinfo');
INSERT INTO `pre_user_info` VALUES('110','5','address','  联想集团RKA业务《号角》电子杂志','siteinfo');
INSERT INTO `pre_user_info` VALUES('111','5','phone','023-12345678','siteinfo');
INSERT INTO `pre_user_info` VALUES('120','5','column','57,58,59','column');
INSERT INTO `pre_user_info` VALUES('116','5','service_aim_cn','致力于提升客户品牌形象、实现客户商业目标!','base');
INSERT INTO `pre_user_info` VALUES('117','5','service_aim_en','Commitment to enhance customer brand image,customer business goals!','base');
INSERT INTO `pre_user_info` VALUES('121','5','2','3','weekly');
INSERT INTO `pre_user_info` VALUES('122','2','code','2d06971e09d3f743e10e8edb216051a2','emailcode');
INSERT INTO `pre_user_info` VALUES('158','7','lock','yes','addCredit');
INSERT INTO `pre_user_info` VALUES('124','5','5','16','weekly');
INSERT INTO `pre_user_info` VALUES('125','5','5','31','yearly');
INSERT INTO `pre_user_info` VALUES('126','2','5','2','yearly');
INSERT INTO `pre_user_info` VALUES('159','7','creditstatus','1','addCredit');
INSERT INTO `pre_user_info` VALUES('163','9','creditstatus','1','addCredit');
INSERT INTO `pre_user_info` VALUES('164','9','creditreason','恭喜已通过','addCredit');
INSERT INTO `pre_user_info` VALUES('165','7','creditreason','瑞特人特瑞特热特然','addCredit');
INSERT INTO `pre_user_info` VALUES('168','10','column','68','column');
INSERT INTO `pre_user_info` VALUES('173','10','creditstatus','1','addCredit');
INSERT INTO `pre_user_info` VALUES('172','10','lock','yes','addCredit');
INSERT INTO `pre_user_info` VALUES('171','10','logo','85','base');
INSERT INTO `pre_user_info` VALUES('174','11','lock','yes','addCredit');
INSERT INTO `pre_user_info` VALUES('175','11','creditstatus','1','addCredit');
INSERT INTO `pre_user_info` VALUES('162','9','lock','yes','addCredit');
INSERT INTO `pre_user_info` VALUES('160','7','logo','82','base');
INSERT INTO `pre_user_info` VALUES('161','7','column','68','column');
INSERT INTO `pre_user_info` VALUES('176','10','creditlogo','credit_aaa','userCredit');
INSERT INTO `pre_user_info` VALUES('177','10','creditreason','看起来不错，通过吧','addCredit');
INSERT INTO `pre_user_info` VALUES('178','11','creditlogo','credit_aaa','userCredit');
INSERT INTO `pre_user_info` VALUES('179','11','creditreason','你是第一个团队，恭喜通过','addCredit');
INSERT INTO `pre_user_info` VALUES('180','12','lock','yes','addCredit');
INSERT INTO `pre_user_info` VALUES('181','12','creditstatus','1','addCredit');
INSERT INTO `pre_user_info` VALUES('182','12','creditlogo','credit_aaa','userCredit');
INSERT INTO `pre_user_info` VALUES('183','12','creditreason','给予通过，哈哈哈哈','addCredit');

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
  `hash` char(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `pre_users` VALUES('2','admin','d006e37c5d52563596bf37e581fdbb11','管理员','5','ph7pal@qq.com','12345678','12345678901','1234567','2130706433','1399644398','19','1','1383317699','1','0','');
INSERT INTO `pre_users` VALUES('4','test1','e10adc3949ba59abbe56e057f20f883e','广告','6','ph7pal@qq.com','1125616251','18716690740','1234567','2130706433','1398522715','1','1','1397746324','0','0','');
INSERT INTO `pre_users` VALUES('5','test2','e10adc3949ba59abbe56e057f20f883e','阿飞','7','ph7pal@qq.com','','','','2130706433','1399020949','9','1','1397746599','1','0','');
INSERT INTO `pre_users` VALUES('6','','','','0','','','','','','0','0','0','1398255573','0','0','');
INSERT INTO `pre_users` VALUES('7','test3','e10adc3949ba59abbe56e057f20f883e','test3','7','ph7pal@qq.com','','','','2130706433','1399644382','13','1','1398956214','1','0','');
INSERT INTO `pre_users` VALUES('8','test4','9102665b1f4d415c850a316ca5463990','test4','6','ph7pal4@qq.com','','','','2130706433','1405608814','1','1','1405608814','0','0','5njg23');
INSERT INTO `pre_users` VALUES('9','hehe','f3b2db6a7bd37387213ca22591b28204','hehe','7','ph7pal@qq.com','','','','2130706433','1407930885','1','1','1407930885','1','0','bujkyd');
INSERT INTO `pre_users` VALUES('10','test5','5f3fe19eca5460cb8910c06eee155390','我是新人','7','test@qq.com','','','','2130706433','1414157569','6','1','1408845442','1','0','5nn7vt');
INSERT INTO `pre_users` VALUES('11','team','81fb2cab1cab9cf4b22f151bfd436011','team','7','team@qq.com','','','','2130706433','1409496278','1','1','1409496278','1','0','0kxm3a');
INSERT INTO `pre_users` VALUES('12','我是展会','853429d2a21208022c806e0a1ad420c1','展会名字','7','zhanhui@qq.com','','','','2130706433','1409499011','1','1','1409499011','1','0','uy9wy2');
INSERT INTO `pre_users` VALUES('13','noname','7f37b3b326b22cfd2be53b2be030fbb0','匿名网友','6','123456@qq.com','','','','2130706433','1415107937','1','1','1415107937','0','0','v3rp1n');

DROP TABLE IF EXISTS `pre_website`;
CREATE TABLE `pre_website` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `faceimg` int(10) NOT NULL,
  `localarea` int(10) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyowner` varchar(255) NOT NULL,
  `websitename` varchar(255) NOT NULL,
  `websiteurl` varchar(255) NOT NULL,
  `websiteowner` varchar(255) NOT NULL,
  `contactmobile` varchar(255) NOT NULL,
  `licensenumber` varchar(255) NOT NULL,
  `cTime` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medal` int(10) NOT NULL default '0',
  `medal_logo` char(16) NOT NULL,
  `medal_title` char(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pre_zhanhui`;
CREATE TABLE `pre_zhanhui` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL COMMENT '展会标题',
  `zhuti` varchar(255) NOT NULL COMMENT '展会主题',
  `liangdian` varchar(255) NOT NULL COMMENT '展会亮点',
  `localarea` int(10) unsigned NOT NULL default '0' COMMENT '所在区域',
  `didian` varchar(255) NOT NULL default '' COMMENT '展会地点',
  `start_time` int(10) unsigned NOT NULL default '0' COMMENT '展会时间',
  `expired_time` int(10) unsigned NOT NULL default '0' COMMENT '报名结束时间',
  `attachid` int(10) unsigned NOT NULL default '0' COMMENT '封面图片',
  `description` varchar(255) NOT NULL COMMENT '活动简介',
  `content` text NOT NULL COMMENT '展会详情',
  `hits` int(10) unsigned NOT NULL default '0' COMMENT '查看次数',
  `order` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `cTime` int(10) unsigned NOT NULL default '0' COMMENT '创建时间',
  `uid` int(11) NOT NULL COMMENT '发布者',
  `canyu` int(11) NOT NULL COMMENT '参与数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_zhanhui` VALUES('1','第一个展会信息测试','第一个展会信息测试第一个展会信息测试第一个展会信息测试第一个展会信息测试','第一个展会信息测试第一个展会信息测试第一个展会信息测试第一个展会信息测试第一个展会信息测试第一个展会信息测试','113','第一个展会信息测试','1417190400','1414598400','0','第一个展会信息测试第一个展会信息测试第一个展会信息测试','第一个展会信息测试第一个展会信息测试第一\r\n个展会信息测试第一个展会信息测试第一个\r\n展会信息测试第一个展会信息测试第一个展会信\r\n息测试第一个展会信息测试第一个展会信息测试\r\n第一个展会信息测试第一个展会信息测试第一\r\n个展会信息测试第一个展会信息测试第一个展\r\n会信息测试第一个展会信息测试第一个展会信息\r\n测试第一个展会信息测试第一个展会信息测试第一\r\n个展会信息测试','41','0','1','1413296426','2','0');

DROP TABLE IF EXISTS `pre_zhanhui_relation`;
CREATE TABLE `pre_zhanhui_relation` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `uid` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL,
  `cTime` int(11) unsigned NOT NULL,
  `ip` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pre_zhanhui_relation` VALUES('1','1','1','1414423104','2130706433');

