/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50728
Source Host           : localhost:3307
Source Database       : myvideo

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-12-23 23:30:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `uid` varchar(30) NOT NULL DEFAULT '',
  `vid` varchar(30) DEFAULT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `time` varchar(30) DEFAULT NULL,
  `gid` varchar(30) DEFAULT NULL,
  `gname` varchar(50) DEFAULT NULL,
  `buid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `gid` (`gid`),
  KEY `buid` (`buid`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `videos` (`vid`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `collect_ibfk_3` FOREIGN KEY (`gid`) REFERENCES `groups` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collect_ibfk_4` FOREIGN KEY (`buid`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('test', '00262815010572932710', '1', '2019年12月22日', '82781779818771204526', '默认', 'test');

-- ----------------------------
-- Table structure for `flow`
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flow
-- ----------------------------
INSERT INTO `flow` VALUES ('1', '2019年12月22日');
INSERT INTO `flow` VALUES ('2', '2019年12月22日');
INSERT INTO `flow` VALUES ('3', '2019年12月22日');
INSERT INTO `flow` VALUES ('4', '2019年12月22日');
INSERT INTO `flow` VALUES ('5', '2019年12月22日');
INSERT INTO `flow` VALUES ('6', '2019年12月22日');
INSERT INTO `flow` VALUES ('7', '2019年12月22日');
INSERT INTO `flow` VALUES ('8', '2019年12月22日');
INSERT INTO `flow` VALUES ('9', '2019年12月22日');
INSERT INTO `flow` VALUES ('10', '2019年12月22日');
INSERT INTO `flow` VALUES ('11', '2019年12月22日');
INSERT INTO `flow` VALUES ('12', '2019年12月22日');
INSERT INTO `flow` VALUES ('13', '2019年12月22日');
INSERT INTO `flow` VALUES ('14', '2019年12月22日');
INSERT INTO `flow` VALUES ('15', '2019年12月23日');
INSERT INTO `flow` VALUES ('16', '2019年12月23日');
INSERT INTO `flow` VALUES ('17', '2019年12月23日');
INSERT INTO `flow` VALUES ('18', '2019年12月23日');
INSERT INTO `flow` VALUES ('19', '2019年12月23日');
INSERT INTO `flow` VALUES ('20', '2019年12月23日');
INSERT INTO `flow` VALUES ('21', '2019年12月23日');
INSERT INTO `flow` VALUES ('22', '2019年12月23日');
INSERT INTO `flow` VALUES ('23', '2019年12月23日');
INSERT INTO `flow` VALUES ('24', '2019年12月23日');
INSERT INTO `flow` VALUES ('25', '2019年12月23日');
INSERT INTO `flow` VALUES ('26', '2019年12月23日');
INSERT INTO `flow` VALUES ('27', '2019年12月23日');
INSERT INTO `flow` VALUES ('28', '2019年12月23日');
INSERT INTO `flow` VALUES ('29', '2019年12月23日');
INSERT INTO `flow` VALUES ('30', '2019年12月23日');
INSERT INTO `flow` VALUES ('31', '2019年12月23日');
INSERT INTO `flow` VALUES ('32', '2019年12月23日');
INSERT INTO `flow` VALUES ('33', '2019年12月23日');
INSERT INTO `flow` VALUES ('34', '2019年12月23日');
INSERT INTO `flow` VALUES ('35', '2019年12月23日');
INSERT INTO `flow` VALUES ('36', '2019年12月23日');
INSERT INTO `flow` VALUES ('37', '2019年12月23日');
INSERT INTO `flow` VALUES ('38', '2019年12月23日');
INSERT INTO `flow` VALUES ('39', '2019年12月23日');
INSERT INTO `flow` VALUES ('40', '2019年12月23日');
INSERT INTO `flow` VALUES ('41', '2019年12月23日');
INSERT INTO `flow` VALUES ('42', '2019年12月23日');
INSERT INTO `flow` VALUES ('43', '2019年12月23日');
INSERT INTO `flow` VALUES ('44', '2019年12月23日');
INSERT INTO `flow` VALUES ('45', '2019年12月23日');
INSERT INTO `flow` VALUES ('46', '2019年12月23日');
INSERT INTO `flow` VALUES ('47', '2019年12月23日');
INSERT INTO `flow` VALUES ('48', '2019年12月23日');
INSERT INTO `flow` VALUES ('49', '2019年12月23日');
INSERT INTO `flow` VALUES ('50', '2019年12月23日');
INSERT INTO `flow` VALUES ('51', '2019年12月23日');
INSERT INTO `flow` VALUES ('52', '2019年12月23日');
INSERT INTO `flow` VALUES ('53', '2019年12月23日');
INSERT INTO `flow` VALUES ('54', '2019年12月23日');
INSERT INTO `flow` VALUES ('55', '2019年12月23日');
INSERT INTO `flow` VALUES ('56', '2019年12月23日');
INSERT INTO `flow` VALUES ('57', '2019年12月23日');
INSERT INTO `flow` VALUES ('58', '2019年12月23日');
INSERT INTO `flow` VALUES ('59', '2019年12月23日');
INSERT INTO `flow` VALUES ('60', '2019年12月23日');
INSERT INTO `flow` VALUES ('61', '2019年12月23日');
INSERT INTO `flow` VALUES ('62', '2019年12月23日');
INSERT INTO `flow` VALUES ('63', '2019年12月23日');
INSERT INTO `flow` VALUES ('64', '2019年12月23日');
INSERT INTO `flow` VALUES ('65', '2019年12月23日');
INSERT INTO `flow` VALUES ('66', '2019年12月23日');
INSERT INTO `flow` VALUES ('67', '2019年12月23日');
INSERT INTO `flow` VALUES ('68', '2019年12月23日');
INSERT INTO `flow` VALUES ('69', '2019年12月23日');
INSERT INTO `flow` VALUES ('70', '2019年12月23日');
INSERT INTO `flow` VALUES ('71', '2019年12月23日');
INSERT INTO `flow` VALUES ('72', '2019年12月23日');
INSERT INTO `flow` VALUES ('73', '2019年12月23日');
INSERT INTO `flow` VALUES ('74', '2019年12月23日');
INSERT INTO `flow` VALUES ('75', '2019年12月23日');
INSERT INTO `flow` VALUES ('76', '2019年12月23日');
INSERT INTO `flow` VALUES ('77', '2019年12月23日');
INSERT INTO `flow` VALUES ('78', '2019年12月23日');
INSERT INTO `flow` VALUES ('79', '2019年12月23日');
INSERT INTO `flow` VALUES ('80', '2019年12月23日');
INSERT INTO `flow` VALUES ('81', '2019年12月23日');
INSERT INTO `flow` VALUES ('82', '2019年12月23日');
INSERT INTO `flow` VALUES ('83', '2019年12月23日');
INSERT INTO `flow` VALUES ('84', '2019年12月23日');
INSERT INTO `flow` VALUES ('85', '2019年12月23日');
INSERT INTO `flow` VALUES ('86', '2019年12月23日');
INSERT INTO `flow` VALUES ('87', '2019年12月23日');
INSERT INTO `flow` VALUES ('88', '2019年12月23日');
INSERT INTO `flow` VALUES ('89', '2019年12月23日');
INSERT INTO `flow` VALUES ('90', '2019年12月23日');
INSERT INTO `flow` VALUES ('91', '2019年12月23日');
INSERT INTO `flow` VALUES ('92', '2019年12月23日');
INSERT INTO `flow` VALUES ('93', '2019年12月23日');
INSERT INTO `flow` VALUES ('94', '2019年12月23日');
INSERT INTO `flow` VALUES ('95', '2019年12月23日');
INSERT INTO `flow` VALUES ('96', '2019年12月23日');
INSERT INTO `flow` VALUES ('97', '2019年12月23日');
INSERT INTO `flow` VALUES ('98', '2019年12月23日');
INSERT INTO `flow` VALUES ('99', '2019年12月23日');
INSERT INTO `flow` VALUES ('100', '2019年12月23日');
INSERT INTO `flow` VALUES ('101', '2019年12月23日');
INSERT INTO `flow` VALUES ('102', '2019年12月23日');
INSERT INTO `flow` VALUES ('103', '2019年12月23日');
INSERT INTO `flow` VALUES ('104', '2019年12月23日');
INSERT INTO `flow` VALUES ('105', '2019年12月23日');
INSERT INTO `flow` VALUES ('106', '2019年12月23日');
INSERT INTO `flow` VALUES ('107', '2019年12月23日');
INSERT INTO `flow` VALUES ('108', '2019年12月23日');
INSERT INTO `flow` VALUES ('109', '2019年12月23日');
INSERT INTO `flow` VALUES ('110', '2019年12月23日');
INSERT INTO `flow` VALUES ('111', '2019年12月23日');
INSERT INTO `flow` VALUES ('112', '2019年12月23日');
INSERT INTO `flow` VALUES ('113', '2019年12月23日');
INSERT INTO `flow` VALUES ('114', '2019年12月23日');

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `uid` varchar(30) DEFAULT NULL,
  `gid` varchar(30) NOT NULL,
  `gname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `uid` (`uid`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('慧慧', '26104067046597201386', '默认');
INSERT INTO `groups` VALUES ('ceshi', '31862501170497750451', '默认');
INSERT INTO `groups` VALUES ('1', '42068986609664400581', '默认');
INSERT INTO `groups` VALUES ('lisi', '45852614231602308229', '默认');
INSERT INTO `groups` VALUES ('Vin', '50479922828623337600', '默认');
INSERT INTO `groups` VALUES ('111', '62460124217069837385', '默认');
INSERT INTO `groups` VALUES ('test', '82781779818771204526', '默认');
INSERT INTO `groups` VALUES ('test2', '82781779818771204527', '默认');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `pwd` varchar(30) NOT NULL,
  `nickname` varchar(30) DEFAULT '旅客',
  `email` varchar(30) DEFAULT NULL,
  `des` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `state` varchar(11) DEFAULT '正常',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '旅客', '1', '留下点什么吧....', 'photos/Default1.jpg', '2019年12月23日', '正常');
INSERT INTO `user` VALUES ('111', '111', '旅客', '111', '留下点什么吧....', 'photos/Default1.jpg', '2019年12月22日', '正常');
INSERT INTO `user` VALUES ('admin', '1', '旅客', '1085750968@qq.com', '旅团团长', 'photos/admin.png', '2019年12月18日', '管理员');
INSERT INTO `user` VALUES ('ceshi', '123', '旅客', '1231@qq.com', '留下点什么吧....', 'photos/Default1.jpg', '2019年12月23日', '正常');
INSERT INTO `user` VALUES ('lisi', '123456', '旅客', '24152352', '留下点什么吧....', 'photos/lisi.jpg', '2019年12月22日', '正常');
INSERT INTO `user` VALUES ('test', '123', '啦啦啦', '10123213@qq.com', '啦啦啦不是狗狗狗2222', 'photos/test.jpg', '2019年12月18日', '正常');
INSERT INTO `user` VALUES ('test2', '123', '飞飞', '13213124@qq.com', '我lbwmykg', 'photos/Default1.jpg', '2019年12月22日', '正常');
INSERT INTO `user` VALUES ('Vin', '123456', '旅客', '970898136@qq.com', '留下点什么吧....', 'photos/Default2.jpg', '2019年12月22日', '正常');
INSERT INTO `user` VALUES ('慧慧', '1', '黄小慧', '1', '喵喵喵', 'photos/Default1.jpg', '2019年12月23日', '正常');

-- ----------------------------
-- Table structure for `videos`
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `vid` varchar(32) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `vsrc` varchar(100) DEFAULT NULL,
  `psrc` varchar(100) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `dection` varchar(200) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zan` int(32) DEFAULT '0',
  `bcollect` int(32) DEFAULT '0',
  `totalplay` int(32) DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `FOREIGN_VIDEOTOUSER` (`autor`),
  CONSTRAINT `FOREIGN_VIDEOTOUSER` FOREIGN KEY (`autor`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('00262815010572932710', 'FOOD13', 'videos/08698470709759964977_demo.mp4', 'covers/33544231884464322505_29a3e511df8aaf302af8a18624f2dd96.jpg', '美食', 'FOOD13', 'test', '2019年12月20日', '已发布', '11', '1', '36');
INSERT INTO `videos` VALUES ('00937893806860238679', '教学视频', 'videos/64515914896936285939_demo.mp4', 'covers/93230028972755389232_9193761b0168de21254c4291c0b7c945.jpg', '其他', '教学视频', 'test', '2019年12月23日', '已发布', '0', '0', '11');
INSERT INTO `videos` VALUES ('05045545535742031482', '其他13', 'videos/39348467329365739358_demo.mp4', 'covers/35740846093918908031_fdafcf5fe7ef277b7af4e59127a0fa78.jpg', '其他', '其他13', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('13060897892156091632', 'GAME15', 'videos/42750365298532624846_demo.mp4', 'covers/60446997489804980276_c044b7e72b514270ab54a6224c1cb251.jpg', '游戏', 'GAME15', 'test', '2019年12月20日', '已发布', '1', '0', '4');
INSERT INTO `videos` VALUES ('13929723291588935252', '番剧2', 'videos/43314147575498717944_demo.mp4', 'covers/33492103697702859049_981f1d66a05f7021f10e5d3b1ed9d8a0.jpg', '番剧', '番剧2', 'test', '2019年12月20日', '已发布', '1', '0', '6');
INSERT INTO `videos` VALUES ('14617737140763585372', '其他12', 'videos/73736888214214495181_demo.mp4', 'covers/88053430571471902773_d1ef7bf1328e8e3a0a93d4f29e20ad31.jpg', '其他', '其他12', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('16209606733259022729', 'GAME24', 'videos/36978203861125540878_demo.mp4', 'covers/41317491212598801002_rabbit2.jpg', '游戏', 'GAME24', 'test', '2019年12月20日', '已发布', '1', '0', '2');
INSERT INTO `videos` VALUES ('20419768687703639933', 'MUSIC335', 'videos/47810340288000206930_demo.mp4', 'covers/94382066972881054197_73d251025fa011b040211402c9c7ef13.jpg', '音乐', 'MUSIC335', 'test', '2019年12月20日', '已发布', '1', '0', '1');
INSERT INTO `videos` VALUES ('22925167561320114450', '动画15', 'videos/57520606501981723864_demo.mp4', 'covers/37284420515732875112_d4df47f5aa2bf1b79da3519357fe71c2.jpg', '动画', '动画15', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('23387723720893537378', '番剧3', 'videos/70782044131323972898_demo.mp4', 'covers/02076981936674421825_4a9f9a833577b100e111d4eb78d615b4.jpg', '番剧', '番剧3', 'test', '2019年12月20日', '已发布', '1', '0', '2');
INSERT INTO `videos` VALUES ('25460475562714193104', '动画13', 'videos/82029238996707458143_demo.mp4', 'covers/17584742691603319302_b5f6d7e765dfc8a70e9aed2783784203.jpg', '动画', '动画13', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('32328380525528201881', 'FOOD14', 'videos/65483089600476046678_demo.mp4', 'covers/55055975154894473720_5c7b015142e7f7dc18f6272d53db5463.jpg', '动画', 'FOOD14', 'test', '2019年12月20日', '已发布', '0', '0', '2');
INSERT INTO `videos` VALUES ('34583321588175609428', '番剧1', 'videos/36537277547911591563_demo.mp4', 'covers/75501062899763233101_2c1eb4df689329f695b7cb27bfc77043.jpg', '番剧', '番剧1', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('36118967546690071270', 'FOOD1334', 'videos/96824687222284617331_demo.mp4', 'covers/91047281078383004041_795ca67aecb2c3b361558b46b701b628.jpg', '美食', 'FOOD1334', 'test', '2019年12月20日', '已发布', '1', '0', '1');
INSERT INTO `videos` VALUES ('37320553474534136251', 'MOVIE15', 'videos/56664461881042759341_demo.mp4', 'covers/58859708952405338227_7d717755e60a96810ebb69a7d273d9ca.jpg', '影视', 'MOVIE15', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('38842442076354488414', '番剧5', 'videos/07916339298322138169_demo.mp4', 'covers/00902503767699118690_small2422bf893cf8f61b3e3314c5a53545171568719614.jpg', '番剧', '番剧5', 'test', '2019年12月20日', '已发布', '1', '0', '3');
INSERT INTO `videos` VALUES ('39690695026099451188', 'FOOD133', 'videos/27584957574287517073_demo.mp4', 'covers/06004055728448996010_d571a9b252b68cfc0292a5b2ffa4620e.jpg', '美食', 'FOOD133', 'test', '2019年12月20日', '已发布', '1', '0', '1');
INSERT INTO `videos` VALUES ('42113975228601841946', 'MUSIC45', 'videos/81173559743202835063_demo.mp4', 'covers/75471384781896556396_rabbit10.jpg', '音乐', 'MUSIC45MUSIC45', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('47877941403227182565', '动画1', 'videos/85435479944241916905_demo.mp4', 'covers/16062555769431602638_ab2913aa61cccde27958f9ef5cab10b9.jpg', '动画', '动画1', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('51284755052342614396', 'FOOD15', 'videos/57953785475891732567_demo.mp4', 'covers/04066942795517132215_e81999978a1897e4375dd12c7b2f252b.jpg', '美食', 'FOOD15', 'test', '2019年12月20日', '已发布', '1', '0', '0');
INSERT INTO `videos` VALUES ('57356666055422425488', 'MOVIE12', 'videos/56796514824624345863_demo.mp4', 'covers/20031077175992839418_small06427677a09c8e8e7aa8226a204b49d21558056342.jpg', '影视', 'MOVIE12', 'test', '2019年12月20日', '已发布', '0', '0', '1');
INSERT INTO `videos` VALUES ('59130418039093678026', 'GAME12', 'videos/76816858866836303299_demo.mp4', 'covers/27370505170365112441_7bd78bd4dc73840b1181c3221120908a.jpg', '游戏', 'GAME12', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('61021581430636748153', 'FOOD1335', 'videos/37068748983501339337_demo.mp4', 'covers/53114517177890939626_7bd78bd4dc73840b1181c3221120908a.jpg', '美食', 'FOOD1335', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('62827766197622714379', '番剧4', 'videos/53714420338846398958_demo.mp4', 'covers/27993508963519596777_0903120c47698c26425bbf2e451c050c.jpg', '番剧', '番剧4', 'test', '2019年12月20日', '审核中', '0', '0', '2');
INSERT INTO `videos` VALUES ('65438268473220546677', 'MOVIE13', 'videos/59068141961728783717_demo.mp4', 'covers/96925785049153611735_封面1.jpg', '影视', 'MOVIE13', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('66614338060609284570', 'GAME1', 'videos/41738863583024860763_demo.mp4', 'covers/93435889987875603205_795ca67aecb2c3b361558b46b701b628.jpg', '游戏', 'GAME1', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('67048722035330281981', '紫薯南', 'videos/86052382130798707517_VIN.mp4', 'covers/80566778163824842895_18.jpg', '音乐', 'R1SE队长周震南为大家带来《十二》', 'Vin', '2019年12月22日', '已发布', '1', '0', '10');
INSERT INTO `videos` VALUES ('68252265182541014404', '其他1', 'videos/26854997236612953765_demo.mp4', 'covers/17901961094809419486_ae7fda37e6108866834f163c7d67c95c.jpg', '其他', '其他1', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('69666891246407882009', '其他15', 'videos/12469128954581643309_demo.mp4', 'covers/29474578899750653684_562b13833627932e24d359a4a3aff333.jpg', '其他', '其他15', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('70715962125894970447', 'GAME13', 'videos/24214519337461960124_demo.mp4', 'covers/00104099449363407800_a833c7eda467a130f97f508a15b34597.jpg', '游戏', 'GAME13', 'test', '2019年12月20日', '已发布', '0', '0', '1');
INSERT INTO `videos` VALUES ('85881978439530556190', 'MUSIC1', 'videos/99016613445597009942_demo.mp4', 'covers/65205041115358160761_rabbit7.jpg', '音乐', 'MUSIC1', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('88841863286947206828', 'GAME23', 'videos/13623585205745673750_demo.mp4', 'covers/12249688982583429405_rabbit1.jpg', '游戏', 'GAME23', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('90032938523973446067', '动画14', 'videos/81186072218019610551_demo.mp4', 'covers/94598844586455383467_d416a3fd5d6aa67daa19e155c27c1d0d.jpg', '动画', '动画14', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('90696044264129236132', 'MUSIC334', 'videos/80100083727444018096_demo.mp4', 'covers/21236426723184051751_d571a9b252b68cfc0292a5b2ffa4620e.jpg', '音乐', 'MUSIC334', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('91187907289818382058', '其他14', 'videos/38245150730525042258_demo.mp4', 'covers/39790053103614744563_60b8cb261b1433057c53b8be3e6d274f.jpg', '其他', '其他14', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('94072131971241632177', 'MOVIE1', 'videos/29680761979918446122_demo.mp4', 'covers/23174507443532036119_small4e3b73418a72771cd7d9dd744918d8c81555596537.jpg', '影视', 'MOVIE1', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('96394778028837506195', '动画12', 'videos/36902591597011077220_demo.mp4', 'covers/78116087184637553194_0da6149458eb0abcd8a6068602c8cfde.jpg', '动画', '动画12', 'test', '2019年12月20日', '已发布', '0', '0', '0');
INSERT INTO `videos` VALUES ('96407506172431598262', 'MOVIE14', 'videos/94629333974304288831_demo.mp4', 'covers/05404224055538013893_29a3e511df8aaf302af8a18624f2dd96.jpg', '影视', 'MOVIE14', 'test', '2019年12月20日', '审核中', '0', '0', '0');
INSERT INTO `videos` VALUES ('99792960033239130455', 'MUSIC33', 'videos/27388150654219341240_demo.mp4', 'covers/65855327220304562029_d571a9b252b68cfc0292a5b2ffa4620e.jpg', '音乐', 'MUSIC33', 'test', '2019年12月20日', '审核中', '0', '0', '0');

-- ----------------------------
-- Table structure for `watch`
-- ----------------------------
DROP TABLE IF EXISTS `watch`;
CREATE TABLE `watch` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `vid` varchar(32) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `uid` varchar(30) DEFAULT NULL,
  `buid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of watch
-- ----------------------------
INSERT INTO `watch` VALUES ('1', '00262815010572932710', '2019年12月22日', 'test2', 'test');
INSERT INTO `watch` VALUES ('2', '00262815010572932710', '2019年12月22日', 'test2', 'test');
INSERT INTO `watch` VALUES ('3', '00262815010572932710', '2019年12月22日', 'test2', 'test');
INSERT INTO `watch` VALUES ('4', '33617670627895123234', '2019年12月22日', 'admin', 'lisi');
INSERT INTO `watch` VALUES ('5', '33617670627895123234', '2019年12月22日', 'admin', 'lisi');
INSERT INTO `watch` VALUES ('6', '62827766197622714379', '2019年12月22日', 'admin', 'test');
INSERT INTO `watch` VALUES ('7', '20419768687703639933', '2019年12月22日', '王灿的爹', 'test');
INSERT INTO `watch` VALUES ('8', '32328380525528201881', '2019年12月22日', '王灿的爹', 'test');
INSERT INTO `watch` VALUES ('9', '32328380525528201881', '2019年12月22日', '王灿的爹', 'test');
INSERT INTO `watch` VALUES ('10', '57356666055422425488', '2019年12月22日', '王灿的爹', 'test');
INSERT INTO `watch` VALUES ('11', '67048722035330281981', '2019年12月22日', 'admin', 'Vin');
INSERT INTO `watch` VALUES ('12', '67048722035330281981', '2019年12月22日', 'admin', 'Vin');
INSERT INTO `watch` VALUES ('13', '62827766197622714379', '2019年12月22日', 'admin', 'test');
INSERT INTO `watch` VALUES ('14', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('15', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('16', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('17', '67048722035330281981', '2019年12月23日', 'admin', 'Vin');
INSERT INTO `watch` VALUES ('18', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('19', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('20', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('21', '00262815010572932710', '2019年12月23日', 'test2', 'test');
INSERT INTO `watch` VALUES ('22', '39690695026099451188', '2019年12月23日', 'test2', 'test');
INSERT INTO `watch` VALUES ('23', '36118967546690071270', '2019年12月23日', 'test2', 'test');
INSERT INTO `watch` VALUES ('24', '70715962125894970447', '2019年12月23日', 'test2', 'test');
INSERT INTO `watch` VALUES ('25', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('26', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('27', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('28', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('29', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('30', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('31', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('32', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('33', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('34', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('35', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('36', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('37', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('38', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('39', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('40', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('41', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('42', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('43', '13060897892156091632', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('44', '13060897892156091632', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('45', '23387723720893537378', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('46', '23387723720893537378', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('47', '38842442076354488414', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('48', '38842442076354488414', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('49', '38842442076354488414', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('50', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('51', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('52', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('53', '13060897892156091632', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('54', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('55', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('56', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('57', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('58', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('59', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('60', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('61', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('62', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('63', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('64', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('65', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('66', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('67', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('68', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('69', '13060897892156091632', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('70', '16209606733259022729', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('71', '16209606733259022729', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('72', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('73', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('74', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('75', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('76', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('77', '13929723291588935252', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('78', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('79', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('80', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('81', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('82', '00262815010572932710', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('83', '00937893806860238679', '2019年12月23日', 'admin', 'test');
INSERT INTO `watch` VALUES ('84', '67048722035330281981', '2019年12月23日', 'test', 'Vin');
INSERT INTO `watch` VALUES ('85', '67048722035330281981', '2019年12月23日', 'test', 'Vin');

-- ----------------------------
-- Table structure for `zan`
-- ----------------------------
DROP TABLE IF EXISTS `zan`;
CREATE TABLE `zan` (
  `zid` varchar(30) NOT NULL,
  `bzid` varchar(30) NOT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `vid` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zid` (`zid`),
  KEY `bzid` (`bzid`),
  CONSTRAINT `zan_ibfk_1` FOREIGN KEY (`zid`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zan_ibfk_2` FOREIGN KEY (`bzid`) REFERENCES `user` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zan
-- ----------------------------
INSERT INTO `zan` VALUES ('test', 'test', '26', '39690695026099451188', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '27', '36118967546690071270', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '28', '37320553474534136251', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '29', '13929723291588935252', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '30', '13060897892156091632', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '31', '05045545535742031482', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '32', '14617737140763585372', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '33', '16209606733259022729', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '34', '20419768687703639933', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '35', '22925167561320114450', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '36', '23387723720893537378', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '37', '25460475562714193104', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '38', '38842442076354488414', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '40', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '41', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '42', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '43', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '44', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '45', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '46', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '47', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '48', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '49', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '50', '00262815010572932710', '2019年12月22日');
INSERT INTO `zan` VALUES ('Vin', 'Vin', '51', '67048722035330281981', '2019年12月22日');
INSERT INTO `zan` VALUES ('test', 'test', '52', '51284755052342614396', '2019年12月23日');
