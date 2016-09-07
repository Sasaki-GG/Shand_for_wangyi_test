/*
SQLyog v10.2 
MySQL - 5.1.60-community : Database - vesga
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vesga` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vesga`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_no` varchar(225) DEFAULT NULL,
  `goods_name` varchar(225) DEFAULT NULL,
  `goods_pic` varchar(225) DEFAULT NULL,
  `goods_type_id` int(11) DEFAULT '0',
  `goods_price` double DEFAULT '0',
  `goods_desc` text,
  `goods_flag` int(11) DEFAULT '1' COMMENT '1-普通产品 2-热门产品',
  PRIMARY KEY (`goods_id`),
  KEY `book_ibfk_1` (`goods_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`goods_no`,`goods_name`,`goods_pic`,`goods_type_id`,`goods_price`,`goods_desc`,`goods_flag`) values (1,'C001','肤用化妆品系列1','1.jpg',1,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(2,'C002','发用化妆品系列1','2.jpg',2,120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(3,'C003','美容化妆品系列1','3.jpg',3,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(4,'C004','疗效化妆品系列1','4.jpg',4,21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(5,'C005','婴儿化妆品系列1','5.jpg',5,74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(6,'C006','肤用化妆品系列2','1.jpg',1,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(7,'C007','发用化妆品系列2','2.jpg',2,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(8,'C008','美容化妆品系列2','3.jpg',3,120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(9,'C009','疗效化妆品系列2','4.jpg',4,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(10,'C010','婴儿化妆品系列2','5.jpg',5,21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(11,'C011','肤用化妆品系列3','1.jpg',1,74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(12,'C012','发用化妆品系列3','2.jpg',2,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(13,'C013','美容化妆品系列3','3.jpg',3,74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(14,'C014','疗效化妆品系列3','4.jpg',4,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(15,'C015','婴儿化妆品系列3','5.jpg',5,120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(16,'C016','肤用化妆品系列4','1.jpg',1,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(17,'C017','发用化妆品系列4','2.jpg',2,21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(18,'C018','美容化妆品系列4','3.jpg',3,74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(19,'C019','疗效化妆品系列4','4.jpg',4,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(20,'C020','婴儿化妆品系列4','5.jpg',5,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(21,'C021','肤用化妆品系列5','1.jpg',1,120,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(22,'C022','发用化妆品系列5','2.jpg',2,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(23,'C023','美容化妆品系列5','3.jpg',3,21.6,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(24,'C024','疗效化妆品系列5','4.jpg',4,74.5,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(25,'C025','婴儿化妆品系列5','5.jpg',5,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(26,'C026','肤用化妆品系列6','1.jpg',1,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(27,'C027','发用化妆品系列6','2.jpg',2,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(28,'C028','美容化妆品系列6','3.jpg',3,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2),(29,'C029','疗效化妆品系列6','1.jpg',4,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',1),(30,'C030','婴儿化妆品系列6','1.jpg',5,88,'这款化妆品效果非常好，感觉棒棒哒，快来咨询吧……',2);

/*Table structure for table `goods_type` */

DROP TABLE IF EXISTS `goods_type`;

CREATE TABLE `goods_type` (
  `goods_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_type_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`goods_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `goods_type` */

insert  into `goods_type`(`goods_type_id`,`goods_type_name`) values (1,'肤用化妆品'),(2,'发用化妆品'),(3,'美容化妆品'),(4,'疗效化妆品'),(5,'婴儿化妆品');

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_title` varchar(225) DEFAULT NULL,
  `info_content` text,
  `info_admin` varchar(50) DEFAULT NULL,
  `info_date` datetime DEFAULT NULL,
  `info_pic` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `info` */

insert  into `info`(`info_id`,`info_title`,`info_content`,`info_admin`,`info_date`,`info_pic`) values (1,'您所关注的的是化妆品微店有关的热点新闻1','化妆品微店有关的热点新闻1','管理员','2015-03-18 22:45:20',''),(2,'您所关注的的是化妆品微店有关的热点新闻2','化妆品微店有关的热点新闻2','管理员','2015-03-18 22:46:06',''),(3,'您所关注的的是化妆品微店有关的热点新闻3','化妆品微店有关的热点新闻3','管理员','2015-04-13 23:17:53',NULL),(4,'您所关注的的是化妆品微店有关的热点新闻4','化妆品微店有关的热点新闻4','管理员','2015-04-13 23:17:53',NULL),(6,'您所关注的的是化妆品微店有关的热点新闻6','化妆品微店有关的热点新闻6','管理员','2015-04-13 23:17:54',NULL),(7,'您所关注的的是化妆品微店有关的热点新闻7','化妆品微店有关的热点新闻7','管理员','2015-04-13 23:17:54',NULL),(8,'您所关注的的是化妆品微店有关的热点新闻8','化妆品微店有关的热点新闻8','管理员','2015-04-13 23:17:54',NULL),(9,'您所关注的的是化妆品微店有关的热点新闻9','化妆品微店有关的热点新闻9','管理员','2015-04-13 23:17:54',NULL),(10,'您所关注的的是化妆品微店有关的热点新闻10','化妆品微店有关的热点新闻10','管理员','2015-04-13 23:17:56',NULL),(11,'您所关注的的是化妆品微店有关的热点新闻11','化妆品微店有关的热点新闻11','管理员','2015-04-13 23:17:56',NULL),(12,'您所关注的的是化妆品微店有关的热点新闻12','化妆品微店有关的热点新闻12','管理员','2015-04-13 23:17:56',NULL),(13,'您所关注的的是化妆品微店有关的热点新闻13','化妆品微店有关的热点新闻13','管理员','2015-04-13 23:17:56',NULL);

/*Table structure for table `intro` */

DROP TABLE IF EXISTS `intro`;

CREATE TABLE `intro` (
  `intro_id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_content` text,
  `intro_type` int(11) DEFAULT '1' COMMENT '1：企业简介 2：联系我们',
  PRIMARY KEY (`intro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `intro` */

insert  into `intro`(`intro_id`,`intro_content`,`intro_type`) values (1,'&lt;p&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最近微店被各位卖家炒的很是火热，可是我看了几家着实没有看到过销量牛逼的微店，不知道是微信的平台确实不适合做商业交易还是大家的营销推广策略出现问题，这不，为了亲身体验一下这种火热感，我也加入了微店化妆品的行业，可花了我不少的钱进了一些化妆，在头天的营销活动中，我做出了如此大投资，才得到以下的成功。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、免费送面膜&lt;/p&gt;\r\n&lt;p&gt;　　大家会以为我做的方法和免费送内衣的营销策略一样吗?肯定不是，免费送内衣那明显是一个假案例，太多网友说出破绽了，而我做的免费送，是纯真的送，没理由。&lt;/p&gt;\r\n&lt;p&gt;　　二、朋友转发再送&lt;/p&gt;\r\n&lt;p&gt;　　怎么样，这种病毒式营销做的非常好吧，当你转发以后，获得了面膜觉得好用的情况下，你推荐到你朋友，主要你有2个朋友转发了你的微信，那么我们再免费送一块面膜给你。&lt;/p&gt;\r\n&lt;p&gt;　　三、再送五折&lt;/p&gt;\r\n&lt;p&gt;　　就冲着这个送字，太多朋友会喜欢了，那么在让朋友转发后的人，可以获得五折购买面膜的权限，也就是说一般的购买要21元，获取到第一次免费的人同时又获取到第二次免费的才有资格享受11元购得此面膜的资格，那么很多人觉得这是一个很难得的机会。于是在花11块钱购得一块面膜，这也确实是一个非常难得的机会。&lt;/p&gt;\r\n&lt;p&gt;　　总结：我们是一个经营化妆品微店的诚信企业。&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&lt;/p&gt;',1),(2,'&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请牢记我们的联系方式啊&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系地址：北京市上帝路上帝街上帝大厦2号楼3公寓812室&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：0315-88888888&lt;/p&gt;\r\n&lt;p&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系人：郑经理&lt;/p&gt;',2);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `user_sex` int(11) DEFAULT '0' COMMENT '1：男 0：女',
  `user_age` int(11) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_type` int(11) DEFAULT '0' COMMENT '2：管理员 1：注册用户',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pass`,`real_name`,`nick_name`,`user_sex`,`user_age`,`user_mail`,`reg_date`,`user_type`) values (1,'admin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张丽','张丽丽',1,22,NULL,'2014-03-01 23:08:39',2),(2,'limei','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李梅','李梅梅',2,22,NULL,'2014-03-01 23:08:44',1),(3,'liling','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李玲','李玲玲',2,22,NULL,'2014-03-01 23:08:46',1),(4,'chensheng','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','陈生','陈生生',2,22,NULL,'2014-03-01 23:08:44',1),(5,'lichao','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李超','李超超',1,24,NULL,'2014-03-01 23:08:44',1),(6,'zhangbin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张斌','张斌斌',1,24,NULL,'2014-03-01 23:08:44',1),(7,'zhaohui','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','赵辉','赵辉辉',1,24,NULL,'2014-03-01 23:08:44',1),(8,'zhangweiming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张伟明','张伟明',1,24,NULL,'2014-03-01 23:08:44',1),(9,'likunlun','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李昆仑','李昆仑',1,25,NULL,'2014-03-01 23:08:44',1),(10,'lijing','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','李静','李静静',2,21,NULL,'2014-03-01 23:08:44',1),(11,'zhangyongle','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','张勇乐','张勇乐',1,21,NULL,'2014-03-01 23:08:44',1),(12,'xiaoming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','小明','明明白白',1,23,'15888888888','2015-03-30 09:38:16',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
