/*
SQLyog v10.2 
MySQL - 5.1.60-community : Database - shand
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shand` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shand`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_name` varchar(225) DEFAULT NULL,
  `goods_type1` varchar(225) DEFAULT NULL,
  `goods_type2` varchar(225) DEFAULT NULL,
  `goods_price` double DEFAULT '0',
  `goods_desc` text,
  `goods_sale` int(11) DEFAULT '1' COMMENT '1:不可小刀 2:可小刀',
  `goods_click` int(11) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_qq` varchar(50) DEFAULT NULL,
  `goods_address` varchar(300) DEFAULT NULL,
  `goods_date` datetime DEFAULT NULL,
  `goods_flag` int(11) DEFAULT '1' COMMENT '1:商品发布 2:商品求购 3:商品交换',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`user_id`,`goods_name`,`goods_type1`,`goods_type2`,`goods_price`,`goods_desc`,`goods_sale`,`goods_click`,`user_phone`,`user_qq`,`goods_address`,`goods_date`,`goods_flag`) values (1,2,'肤用化妆品系列1','生活娱乐','日常用品',88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,38,'158888888','455555999','东门口','2015-06-17 02:11:18',1),(2,2,'发用化妆品系列1','','',120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,1,'158888888','455555999','东门口','2015-06-17 02:11:18',2),(3,2,'美容化妆品系列1','生活娱乐','日常用品',88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,3,'158888888','455555999','东门口','2015-06-17 02:11:18',1),(4,2,'疗效化妆品系列1','','',21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,2,'158888888','455555999','东门口','2015-06-17 02:11:18',2),(5,2,'婴儿化妆品系列1','生活娱乐','日常用品',74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,2,'158888888','455555999','东门口','2015-06-17 02:11:18',1),(6,2,'肤用化妆品系列2','','',88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,2,'158888888','455555999','东门口','2015-06-17 02:11:18',2),(7,2,'发用化妆品系列2','生活娱乐','日常用品',88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,1,'158888888','455555999','东门口','2015-06-17 02:11:18',1),(8,2,'美容化妆品系列2','','',120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,2,'158888888','455555999','东门口','2015-06-17 02:11:18',2),(9,2,'疗效化妆品系列2','生活娱乐','日常用品',88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,2,'158888888','455555999','东门口','2015-06-17 02:11:18',1),(10,2,'婴儿化妆品交换奶粉','','',21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1,4,'158888888','455555999','东门口','2015-06-17 02:11:18',3),(14,2,'华为手机交换一部MP4','','',50,'一部8成新华为手机，愿意交换一部9成新MP4',0,2,'1588888888','88888888','校园东门口','2015-06-17 17:07:56',3);

/*Table structure for table `goods_pic` */

DROP TABLE IF EXISTS `goods_pic`;

CREATE TABLE `goods_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `goods_pic` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `goods_pic` */

insert  into `goods_pic`(`pic_id`,`goods_id`,`goods_pic`) values (1,1,'1.jpg'),(2,1,'2.jpg'),(3,1,'3.jpg'),(4,1,'4.jpg'),(5,1,'5.jpg'),(6,3,'1.jpg'),(7,3,'2.jpg'),(8,3,'3.jpg'),(9,3,'4.jpg'),(10,5,'1.jpg'),(11,5,'2.jpg'),(12,7,'1.jpg'),(13,9,'2.jpg'),(39,12,'3.jpg'),(40,12,'4.jpg'),(41,12,'5.jpg');

/*Table structure for table `sblog` */

DROP TABLE IF EXISTS `sblog`;

CREATE TABLE `sblog` (
  `sblog_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sblog_title` varchar(225) DEFAULT NULL,
  `sblog_content` text,
  `sblog_date` datetime DEFAULT NULL,
  `sblog_pic` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`sblog_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sblog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `sblog` */

insert  into `sblog`(`sblog_id`,`goods_id`,`user_id`,`sblog_title`,`sblog_content`,`sblog_date`,`sblog_pic`) values (3,1,2,NULL,'这个效果真的不错啊 美美哒','2015-06-17 11:13:43','avatar2.png'),(4,2,2,NULL,'效果非常好，感觉棒棒哒','2015-06-17 12:23:34','avatar4.png'),(5,2,2,NULL,'感觉棒棒哒，快来咨询吧','2015-06-17 12:28:56','avatar3.png'),(17,2,2,NULL,'交易地点：东门口 等着我啊','2015-06-17 12:40:32','avatar1.png'),(24,10,2,NULL,'你这交换很值得啊，等着我来啊','2015-06-17 12:50:51','avatar1.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_type` int(11) DEFAULT '0' COMMENT '2：管理员 1：注册用户',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pass`,`real_name`,`nick_name`,`user_mail`,`user_phone`,`reg_date`,`user_type`) values (1,'admin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张丽','张丽丽','15888888888@139.com','15888888888','2014-03-01 23:08:39',2),(2,'limei','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李梅','李梅梅','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(3,'liling','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李玲','李玲玲','15888888888@139.com','15888888888','2014-03-01 23:08:46',1),(4,'chensheng','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','陈生','陈生生','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(5,'lichao','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李超','李超超','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(6,'zhangbin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张斌','张斌斌','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(7,'zhaohui','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','赵辉','赵辉辉','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(8,'zhangweiming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张伟明','张伟明','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(9,'likunlun','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李昆仑','李昆仑','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(10,'lijing','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李静','李静静','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(11,'zhangyongle','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张勇乐','张勇乐','15888888888@139.com','15888888888','2014-03-01 23:08:44',1),(12,'xiaoming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','小明','明明白白','15888888888@139.com','15888888888','2015-03-30 09:38:16',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
