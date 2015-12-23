/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2015-12-23 15:29:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `publishtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '好好学习，天天向上', '也许，你看到这个题目，会毫不犹豫地说：“谁都知道要好好学习拉！”但，大家真的能说到做到吗？ 每天早上来到教室，就会呈现出这一幕：同学们就像蚂蚁那样，这边一堆，那边一堆的，都很“积极”地在抄作业，争分夺秒地写啊写。有必要吗？难道同学们忙得连作业都挤不出时间完成吗？其实不是这样的，有的同学看电视看得津津有味，早就把学习抛弃在一边了；有的同学肯定被游戏吸引得疯狂了，对于学习却一宵不顾；有的同学玩得疯疯癫癫了，早就把学习遗忘了。在这个时候，大家心里头还有学习吗？这分明就是不把学习当成一回事！如果愿学的，肯定会牺牲自己玩的时间，认认真真地完成作业。这不是很好吗？该学就学，该玩就玩，在没有完成自己的作业前提下，先不要一心顾着玩，这是要靠自己的意志和自控力的。首先，大家要把学习当成一种乐趣，兴趣是最好的老师！最好不要把学习当成一种负担，并且要找一些好的学习方法。比如，背课文时要先抓住文章的脉络和大意，这样背起来就轻松了。数学、英语跟语文比起来虽然枯燥了点，但是看到自己不容易解答出一些数学难题时，会感到格外的激动。要是看到自己能流利地背英语课文时，会有一种自豪感。学习是苦中乐的，能在辛苦中得到回报，是一种精神上的富裕。也许，大家会问：“学习有什么用？”学习就是为了将来，有前途的可以做大老板，没有文化的就找粗重的活儿。为祖国做贡献！更重要的是在生活，学习中积累经验，这样人生是有价值的。 同学们，好好学习吧！少壮不努力,老大徒伤悲啊！', '2015-12-23 15:20:12');
INSERT INTO `article` VALUES ('2', '1', '守得安静，才有精进', '91岁的叶嘉莹女士曾表示：她喜欢多些安静的时间，多读些好书，多些静思，多些与先哲的神交。百岁高龄的杨绛先生守静功力更是了得，她和钱钟书在春节也一样专注学问，面对前来拜年的客人只透过门缝寒暄几句，没有让客人进屋，有些不近人情。正是因为有了这种超常守静的功力，才铸成大美之作。\r\n“动静等观”。人的生命与动密不可分，生活中要有动态美，但不能过，更不能变味。追求动态美更不能演变成：公共场所的喧嚣，极尽显露能事的夸张动作，声嘶力竭的吼叫，酒桌上的推杯换盏，资讯的有量无质。这都属于厚动薄静，不具有持久的生命力。\r\n守静能安。韩国的一项长期跟踪实验显示：长期身处节奏过快、喧嚣的环境，少年易有注意力不集中、多动症等疾患，成年人逻辑推理能力会弱化，主管短期愉悦的细胞会更活跃。美国的脑科学研究也证实：长期守静有利于神经细胞轴突的延长，有利于信息在脑细胞中的存储、分辨、比较与联系，有利于提升记忆力、分析力、判断力与决策力。这些恰恰应验了“水静极而形象明，心静极而智慧生”“非宁静无以致远，非淡泊无以明志”等诸多中华古训。\r\n守静以削冗举要。信息爆炸的当今，削冗力、举要力至关重要。此力不举，个人就无法从杂乱的海量信息中甄别出主信息与有效信息。此力足，主信息得以甄别，有效信息得以链接，创新性认知易得，大美之作可成。而削冗力、举要力、甄别力、链接力的提升无一不需要守静。万万不可因占有信息的过于求多而挤没了“思”的时间，车多而不管理堵路，信息多而不整理堵心，学而不思则罔。过多的信息缺乏整理，带来的只能是负效用。只有在“不窥牖，见天道”的守静中方能带来创新与突破。\r\n守静以求“信息一致”。神经生物学进一步证实，注重整理信息使头脑中信息得以一致，不但有益于认知创新，而且有益于提升积极情绪占比。杨绛百岁时感言：我们曾如此期盼外界的认可，到最后才知道世界是自己的。人生最曼妙的风景，竟是内心的淡定与从容。谁得“内在信息一致”之法，谁就得“真实幸福”之道。\r\n守静而“无不为”，“大音希声，大象无形”。叶、杨两位大师因守静有了大为，并得人生之大乐。“重为轻根，静为躁君”，环境略显喧嚣时，多些静，或许更好。', '2015-12-23 15:20:55');
INSERT INTO `article` VALUES ('3', '6', '人生支点', '人之所以能活着，是因为有许多支撑点，就像那火车之所以能在铁轨上前进，是因为有许多根枕木支撑着一样。\r\n只有一根枕木的铁路是没有的，只有一个支撑点的人生也是没有的。\r\n人生可以有很多支撑点，事业、升官、发财、爱情都可以成为人生某一个时期的支撑点，让你有滋有味地活下去，觉得天很蓝，草很绿，每个人的笑容都很美好。\r\n但我要告诉你，任何一个支撑点都不可能是永恒的，事业无穷尽，官做大了做久了也很乏味，钱挣得太多也是个累赘，山盟海誓的情人也终会有一天离你而去。\r\n所以我提出这样一个观点：泛点论。简而言之，即让你的人生多一些支撑点，其中的某一些点坍塌了，会有另一些支撑点支撑着你的人生构筑，让你在漫漫人生路上走下去。\r\n这就是老百姓所说的，别在一棵树上吊死，水路不通走旱路。\r\n谁也不可能把你的人生隧道构筑得那么牢固，因为这不单是你个人的问题，有些情况你不可能把握，你想得到的不一定都能得到，你期望得到的不一定都能成为现实。好些事和大环境有关，和人的主观能动性有关，更和一种叫作“数”的东西有关。“前数分已定，浮生空白忙”，“自古成败原关数，天下英雄大可知”。这反映了古人对“数”的消极思想。人应该挑战命运，而有的时候你也得认命。从唯物辩证法的角度来说，所谓“数”，就是机遇，你的命再好，碰不上一个好的流年，也是白好。辛勤耕耘，丰收在望，一场洪水或一场冰雹就击碎了你的丰收梦。我欣赏一首流行歌曲里唱的：三分天注定，七分靠打拼。人生不打拼不可能成功，但你打足了七分，那三分老天不给你，你仍然不能得到一个完美的人生。\r\n炒股者都知道这样一句名言：不要把鸡蛋都放到一个筐里。甲筐让一个骑自行车的撞了，乙筐被冰雹砸了，丙筐还可以保住三分之一。再广而言之，甲筐里放草莓，乙筐里放枇杷，丙筐里放荔枝，则不管行情如何变化，你至少扳个平手，而不至于赔得吐血跳楼。\r\n人生亦如此。\r\n让你的人生多几个支点。', '2015-12-23 15:25:03');

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `commentid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 NOT NULL,
  `cmttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', '7', '1', '好好学习啊！！', '2015-12-23 15:26:51');
INSERT INTO `content` VALUES ('2', '7', '2', '呵呵呵', '2015-12-23 15:26:59');
INSERT INTO `content` VALUES ('3', '2', '3', '好大一碗鸡汤啊！', '2015-12-23 15:27:13');

-- ----------------------------
-- Table structure for `ucategory`
-- ----------------------------
DROP TABLE IF EXISTS `ucategory`;
CREATE TABLE `ucategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(240) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucategory
-- ----------------------------
INSERT INTO `ucategory` VALUES ('1', '超级管理员', '最高权限');
INSERT INTO `ucategory` VALUES ('2', '板块管理员', '系统管理员');
INSERT INTO `ucategory` VALUES ('3', '文章管理员', '文章管理');
INSERT INTO `ucategory` VALUES ('4', '评论管理员', '评论的管理');
INSERT INTO `ucategory` VALUES ('5', '客服人员', '客服人员DFB');
INSERT INTO `ucategory` VALUES ('6', '用户', '用户SDFSF');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Login_name` varchar(200) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `name` varchar(240) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `last_Login_Time` timestamp NULL DEFAULT NULL,
  `Regist_Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'rayleigh', 'chen', 'chen', 'rayleighcl@gmail.com', '110', 'csu', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '1');
INSERT INTO `user` VALUES ('6', 'test', 'test', '宋德福', '110@110.com', '110', '火星村A组206室', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '6');
INSERT INTO `user` VALUES ('7', 'test04', 'test04@admin.com', '测试账号', 'test04@admin.com', '11', '测试账号', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');
INSERT INTO `user` VALUES ('91', 'test03', 'test03111111', 'test03', 'test03@admin.com', '5', '5', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '4');
INSERT INTO `user` VALUES ('92', 'test02', 'test02111111', 'test02', 'test02@admin.com', '55', '55', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '2');
INSERT INTO `user` VALUES ('93', 'test01', 'test01@admin.com', '????', 'test01@admin.com', '555', '555', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');
INSERT INTO `user` VALUES ('94', '我是1', '111111', '我是1', 'a@a.com', 'dt', 't', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '4');
INSERT INTO `user` VALUES ('96', '12', '12', '12', '23', '213213', '123', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');
INSERT INTO `user` VALUES ('97', 'admin', 'admin888', 'Add', 'admin@admin.om', '213', '23', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '2');
INSERT INTO `user` VALUES ('98', 'Tencent', '111111', 'qqq', 'admin@Tencent.com', '21312', '213', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');
INSERT INTO `user` VALUES ('99', 'admin002', '002111111', '系统人员002', 'admin002@admin.com', '312', '214', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');
INSERT INTO `user` VALUES ('100', 'liju@qq.com', '111111', 'iii', 'liju@qq.com', '3123', '213', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '2');
INSERT INTO `user` VALUES ('101', 'Test009', 'test009@admin.com', '测试账号009', 'test009@admin.com', '3123', '4', '2015-12-23 01:01:13', '2015-12-23 01:01:13', '3');

-- ----------------------------
-- Table structure for `usercategory`
-- ----------------------------
DROP TABLE IF EXISTS `usercategory`;
CREATE TABLE `usercategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `分类ID` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercategory
-- ----------------------------
INSERT INTO `usercategory` VALUES ('1', '1', '1');
INSERT INTO `usercategory` VALUES ('2', '6', '1');
INSERT INTO `usercategory` VALUES ('3', '7', '3');
INSERT INTO `usercategory` VALUES ('52', '91', '4');
INSERT INTO `usercategory` VALUES ('53', '92', '2');
INSERT INTO `usercategory` VALUES ('54', '93', '3');
INSERT INTO `usercategory` VALUES ('55', '94', '4');
INSERT INTO `usercategory` VALUES ('57', '96', '3');
INSERT INTO `usercategory` VALUES ('58', '97', '2');
INSERT INTO `usercategory` VALUES ('59', '98', '3');
INSERT INTO `usercategory` VALUES ('60', '99', '3');
INSERT INTO `usercategory` VALUES ('61', '100', '2');
INSERT INTO `usercategory` VALUES ('62', '101', '3');
