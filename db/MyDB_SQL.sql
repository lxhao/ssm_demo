/*
SQLyog v10.2 
MySQL - 5.6.21-log : Database - ebdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ebdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ebdb`;

/*Table structure for table `ucategory` */

DROP TABLE IF EXISTS `ucategory`;

CREATE TABLE `ucategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(240) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ucategory` */

insert  into `ucategory`(`id`,`name`,`description`) values (1,'超级管理员','最高权限'),(2,'管理员','系统管理员'),(3,'经销商','经销商SDFS'),(4,'销售人员','销售人员3GDG'),(5,'客服人员','客服人员DFB'),(6,'客户','客户SDFSF');

/*Table structure for table `user` */

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

/*Data for the table `user` */

insert  into `user`(`id`,`Login_name`,`password`,`name`,`Email`,`Phone`,`Address`,`last_Login_Time`,`Regist_Time`,`Category_id`) values (1,'baikeyang','baikeyang','baikeyang','baikeyang@vip.qq.com','admin','admin','2014-04-12 20:32:07','0000-00-00 00:00:00',1),(6,'test','test','宋德福','110@110.com','110','火星村A组206室','2014-04-12 13:07:07','0000-00-00 00:00:00',6),(7,'test04','test04@admin.com','测试账号','test04@admin.com','11','测试账号','2014-04-12 13:12:44','0000-00-00 00:00:00',3),(91,'test03','test03111111','test03','test03@admin.com','5','5','2014-04-13 15:08:39','0000-00-00 00:00:00',4),(92,'test02','test02111111','test02','test02@admin.com','55','55','2014-04-13 15:09:00','0000-00-00 00:00:00',2),(93,'test01','test001','测试账号','test01@admin.com','555','555','2014-04-13 15:26:13','0000-00-00 00:00:00',5),(94,'我是1','111111','我是1','a@a.com','dt','t','2015-07-14 13:48:40','2015-07-05 13:46:45',4),(96,'12','12','12','23',NULL,NULL,NULL,'2015-07-05 13:56:00',3),(97,'admin','admin888','Add','admin@admin.om',NULL,NULL,NULL,'2015-07-05 14:00:38',2),(98,'Tencent','111111','qqq','admin@Tencent.com',NULL,NULL,NULL,'2015-07-05 14:01:28',3),(99,'admin002','002111111','系统人员002','admin002@admin.com',NULL,NULL,NULL,'2015-07-05 14:03:42',3),(100,'liju@qq.com','111111','iii','liju@qq.com',NULL,NULL,NULL,'2015-07-05 14:09:40',2),(101,'Test009','test009@admin.com','测试账号009','test009@admin.com',NULL,NULL,NULL,'2015-07-05 18:01:13',3);

/*Table structure for table `usercategory` */

DROP TABLE IF EXISTS `usercategory`;

CREATE TABLE `usercategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `分类ID` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `usercategory` */

insert  into `usercategory`(`id`,`uid`,`cid`) values (1,1,1),(2,6,1),(3,7,3),(52,91,4),(53,92,2),(54,93,5),(55,94,4),(57,96,3),(58,97,2),(59,98,3),(60,99,3),(61,100,2),(62,101,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
