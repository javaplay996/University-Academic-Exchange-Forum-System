/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5848t
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5848t` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5848t`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032643161 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-10 13:22:19',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-10 13:22:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-10 13:22:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-10 13:22:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-10 13:22:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-10 13:22:19',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618032427434,'2021-04-10 13:27:06',1618032254226,'广东省深圳市福田区园岭街道艺华公寓八卦岭宿舍区','11111111','12345678999','是'),(1618032643160,'2021-04-10 13:30:43',1618032514509,'广东省汕头市龙湖区金霞街道金砂东路长荣大厦(金砂东路)','2','12345678999','是');

/*Table structure for table `bankuaimingcheng` */

DROP TABLE IF EXISTS `bankuaimingcheng`;

CREATE TABLE `bankuaimingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bankuaimingcheng` varchar(200) DEFAULT NULL COMMENT '版块名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='版块名称';

/*Data for the table `bankuaimingcheng` */

insert  into `bankuaimingcheng`(`id`,`addtime`,`bankuaimingcheng`) values (111,'2021-04-10 13:22:19','版块名称1222'),(112,'2021-04-10 13:22:19','版块名称2'),(113,'2021-04-10 13:22:19','版块名称3'),(114,'2021-04-10 13:22:19','版块名称4'),(115,'2021-04-10 13:22:19','版块名称5'),(116,'2021-04-10 13:22:19','版块名称6');

/*Table structure for table `banzhu` */

DROP TABLE IF EXISTS `banzhu`;

CREATE TABLE `banzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banzhuzhanghao` varchar(200) NOT NULL COMMENT '版主账号',
  `banzhuxingming` varchar(200) DEFAULT NULL COMMENT '版主姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `guanlimokuai` longtext COMMENT '管理模块',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banzhuzhanghao` (`banzhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032941211 DEFAULT CHARSET=utf8 COMMENT='版主';

/*Data for the table `banzhu` */

insert  into `banzhu`(`id`,`addtime`,`banzhuzhanghao`,`banzhuxingming`,`mima`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`guanlimokuai`,`money`) values (41,'2021-04-10 13:22:19','版主1','版主姓名1','123456','男','13823888881','773890001@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang1.jpg','管理模块1',100),(42,'2021-04-10 13:22:19','版主2','版主姓名2','123456','男','13823888882','773890002@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang2.jpg','管理模块2',100),(43,'2021-04-10 13:22:19','版主3','版主姓名3','123456','男','13823888883','773890003@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang3.jpg','管理模块3',100),(44,'2021-04-10 13:22:19','版主4','版主姓名4','123456','男','13823888884','773890004@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang4.jpg','管理模块4',100),(45,'2021-04-10 13:22:19','版主5','版主姓名5','123456','男','13823888885','773890005@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang5.jpg','管理模块5',100),(46,'2021-04-10 13:22:19','版主6','版主姓名6','123456','男','13823888886','773890006@qq.com','http://localhost:8080/ssm5848t/upload/banzhu_touxiang6.jpg','管理模块6',100),(1618032941210,'2021-04-10 13:35:41','2','2','2','女','12345678999','1@qq.com','http://localhost:8080/ssm5848t/upload/1618032932575.png','版块1',0);

/*Table structure for table `banzhutuijiantie` */

DROP TABLE IF EXISTS `banzhutuijiantie`;

CREATE TABLE `banzhutuijiantie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033137747 DEFAULT CHARSET=utf8 COMMENT='版主推荐贴';

/*Data for the table `banzhutuijiantie` */

insert  into `banzhutuijiantie`(`id`,`addtime`,`biaoti`,`neirong`,`fabushijian`,`tupian`,`zhanghao`,`xingming`,`thumbsupnum`,`crazilynum`,`clicknum`) values (91,'2021-04-10 13:22:19','标题1','内容1','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian1.jpg','账号1','姓名1',1,1,1),(92,'2021-04-10 13:22:19','标题2','内容2','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian2.jpg','账号2','姓名2',2,2,2),(93,'2021-04-10 13:22:19','标题3','内容3','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian3.jpg','账号3','姓名3',3,3,3),(94,'2021-04-10 13:22:19','标题4','内容4','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian4.jpg','账号4','姓名4',4,4,4),(95,'2021-04-10 13:22:19','标题5','内容5','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian5.jpg','账号5','姓名5',6,5,6),(96,'2021-04-10 13:22:19','标题6','内容6','2021-04-10','http://localhost:8080/ssm5848t/upload/banzhutuijiantie_tupian6.jpg','账号6','姓名6',6,6,7),(1618033137746,'2021-04-10 13:38:57','222','<p>22</p>','2021-04-23','http://localhost:8080/ssm5848t/upload/1618033132686.png','2222','222',0,0,0);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tiaozaoshichang' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5848t/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm5848t/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm5848t/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbanzhutuijiantie` */

DROP TABLE IF EXISTS `discussbanzhutuijiantie`;

CREATE TABLE `discussbanzhutuijiantie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='版主推荐贴评论表';

/*Data for the table `discussbanzhutuijiantie` */

insert  into `discussbanzhutuijiantie`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (201,'2021-04-10 13:22:19',1,1,'用户名1','评论内容1','回复内容1'),(202,'2021-04-10 13:22:19',2,2,'用户名2','评论内容2','回复内容2'),(203,'2021-04-10 13:22:19',3,3,'用户名3','评论内容3','回复内容3'),(204,'2021-04-10 13:22:19',4,4,'用户名4','评论内容4','回复内容4'),(205,'2021-04-10 13:22:19',5,5,'用户名5','评论内容5','回复内容5'),(206,'2021-04-10 13:22:19',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussrementie` */

DROP TABLE IF EXISTS `discussrementie`;

CREATE TABLE `discussrementie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032531741 DEFAULT CHARSET=utf8 COMMENT='热门贴评论表';

/*Data for the table `discussrementie` */

insert  into `discussrementie`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (191,'2021-04-10 13:22:19',1,1,'用户名1','评论内容1','回复内容1'),(192,'2021-04-10 13:22:19',2,2,'用户名2','评论内容2','回复内容2'),(193,'2021-04-10 13:22:19',3,3,'用户名3','评论内容3','回复内容3'),(194,'2021-04-10 13:22:19',4,4,'用户名4','评论内容4','回复内容4'),(195,'2021-04-10 13:22:19',5,5,'用户名5','评论内容5','回复内容5'),(196,'2021-04-10 13:22:19',6,6,'用户名6','评论内容6','回复内容6'),(1618032294041,'2021-04-10 13:24:53',81,1618032254226,'1','111',NULL),(1618032531740,'2021-04-10 13:28:51',81,1618032514509,'2','22',NULL);

/*Table structure for table `discusstiaozaoshichang` */

DROP TABLE IF EXISTS `discusstiaozaoshichang`;

CREATE TABLE `discusstiaozaoshichang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='跳蚤市场评论表';

/*Data for the table `discusstiaozaoshichang` */

insert  into `discusstiaozaoshichang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-04-10 13:22:19',1,1,'用户名1','评论内容1','回复内容1'),(182,'2021-04-10 13:22:19',2,2,'用户名2','评论内容2','回复内容2'),(183,'2021-04-10 13:22:19',3,3,'用户名3','评论内容3','回复内容3'),(184,'2021-04-10 13:22:19',4,4,'用户名4','评论内容4','回复内容4'),(185,'2021-04-10 13:22:19',5,5,'用户名5','评论内容5','回复内容5'),(186,'2021-04-10 13:22:19',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszhubankuai` */

DROP TABLE IF EXISTS `discusszhubankuai`;

CREATE TABLE `discusszhubankuai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='主版块评论表';

/*Data for the table `discusszhubankuai` */

insert  into `discusszhubankuai`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (211,'2021-04-10 13:22:19',1,1,'用户名1','评论内容1','回复内容1'),(212,'2021-04-10 13:22:19',2,2,'用户名2','评论内容2','回复内容2'),(213,'2021-04-10 13:22:19',3,3,'用户名3','评论内容3','回复内容3'),(214,'2021-04-10 13:22:19',4,4,'用户名4','评论内容4','回复内容4'),(215,'2021-04-10 13:22:19',5,5,'用户名5','评论内容5','回复内容5'),(216,'2021-04-10 13:22:19',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fatiebiaobing` */

DROP TABLE IF EXISTS `fatiebiaobing`;

CREATE TABLE `fatiebiaobing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033108295 DEFAULT CHARSET=utf8 COMMENT='发帖标兵';

/*Data for the table `fatiebiaobing` */

insert  into `fatiebiaobing`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`) values (71,'2021-04-10 13:22:19','账号1','姓名1','http://localhost:8080/ssm5848t/upload/fatiebiaobing_touxiang1.jpg'),(72,'2021-04-10 13:22:19','账号2','姓名2','http://localhost:8080/ssm5848t/upload/fatiebiaobing_touxiang2.jpg'),(73,'2021-04-10 13:22:19','账号3','姓名3','http://localhost:8080/ssm5848t/upload/fatiebiaobing_touxiang3.jpg'),(75,'2021-04-10 13:22:19','账号5','姓名5','http://localhost:8080/ssm5848t/upload/fatiebiaobing_touxiang5.jpg'),(76,'2021-04-10 13:22:19','账号6','姓名6','http://localhost:8080/ssm5848t/upload/fatiebiaobing_touxiang6.jpg'),(1618033009403,'2021-04-10 13:36:48','2','2','http://localhost:8080/ssm5848t/upload/1618033008307.png'),(1618033108294,'2021-04-10 13:38:28','34','34','http://localhost:8080/ssm5848t/upload/1618032932575.png');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032586856 DEFAULT CHARSET=utf8 COMMENT='学术论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (121,'2021-04-10 13:22:19','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(122,'2021-04-10 13:22:19','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(123,'2021-04-10 13:22:19','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(124,'2021-04-10 13:22:19','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(125,'2021-04-10 13:22:19','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(126,'2021-04-10 13:22:19','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618032355020,'2021-04-10 13:25:54','111','<p>请输入内容1111</p>\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n<td style=\"width: 12.5%;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>',0,1618032254226,'1','开放'),(1618032586855,'2021-04-10 13:29:46','222','<p>请输入内容22</p>',0,1618032514509,'2','开放');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032596453 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (171,'2021-04-10 13:22:19',1,'用户名1','留言内容1','回复内容1'),(172,'2021-04-10 13:22:19',2,'用户名2','留言内容2','回复内容2'),(173,'2021-04-10 13:22:19',3,'用户名3','留言内容3','回复内容3'),(174,'2021-04-10 13:22:19',4,'用户名4','留言内容4','回复内容4'),(175,'2021-04-10 13:22:19',5,'用户名5','留言内容5','回复内容5'),(176,'2021-04-10 13:22:19',6,'用户名6','留言内容6','回复内容6'),(1618032363610,'2021-04-10 13:26:02',1618032254226,'1','11111111111111',NULL),(1618032596452,'2021-04-10 13:29:56',1618032514509,'2','表白墙',NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tiaozaoshichang' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032683736 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618032656959,'2021-04-10 13:30:56','202141013305675146726','tiaozaoshichang',1618032514509,31,'商品名称1','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'未支付','广东省汕头市龙湖区金霞街道金砂东路长荣大厦(金砂东路)','12345678999','2'),(1618032683735,'2021-04-10 13:31:23','202141013312359369916','tiaozaoshichang',1618032514509,31,'商品名称1','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','广东省汕头市龙湖区金霞街道金砂东路长荣大厦(金砂东路)','12345678999','2');

/*Table structure for table `rementie` */

DROP TABLE IF EXISTS `rementie`;

CREATE TABLE `rementie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033122058 DEFAULT CHARSET=utf8 COMMENT='热门贴';

/*Data for the table `rementie` */

insert  into `rementie`(`id`,`addtime`,`biaoti`,`neirong`,`fabushijian`,`tupian`,`zhanghao`,`xingming`,`thumbsupnum`,`crazilynum`) values (81,'2021-04-10 13:22:19','标题1','内容1','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian1.jpg','账号1','姓名1',3,1),(82,'2021-04-10 13:22:19','标题2','内容2','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian2.jpg','账号2','姓名2',2,2),(83,'2021-04-10 13:22:19','标题3','内容3','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian3.jpg','账号3','姓名3',3,3),(84,'2021-04-10 13:22:19','标题4','内容4','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian4.jpg','账号4','姓名4',4,4),(85,'2021-04-10 13:22:19','标题5','内容5','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian5.jpg','账号5','姓名5',5,5),(86,'2021-04-10 13:22:19','标题6','内容6','2021-04-10','http://localhost:8080/ssm5848t/upload/rementie_tupian6.jpg','账号6','姓名6',6,6),(1618033025703,'2021-04-10 13:37:05','222','<p>22</p>','2021-04-30','http://localhost:8080/ssm5848t/upload/1618033018467.png','222','222',0,0),(1618033122057,'2021-04-10 13:38:41','222','<p>222</p>','2021-05-05','http://localhost:8080/ssm5848t/upload/1618033114894.png','222','222',0,0);

/*Table structure for table `shenqingbanzhu` */

DROP TABLE IF EXISTS `shenqingbanzhu`;

CREATE TABLE `shenqingbanzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jieshao` varchar(200) DEFAULT NULL COMMENT '介绍',
  `shenqingyuanyin` varchar(200) DEFAULT NULL COMMENT '申请原因',
  `shenqingmokuai` varchar(200) DEFAULT NULL COMMENT '申请模块',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032721963 DEFAULT CHARSET=utf8 COMMENT='申请版主';

/*Data for the table `shenqingbanzhu` */

insert  into `shenqingbanzhu`(`id`,`addtime`,`biaoti`,`jieshao`,`shenqingyuanyin`,`shenqingmokuai`,`zhanghao`,`xingming`,`touxiang`,`sfsh`,`shhf`) values (51,'2021-04-10 13:22:19','标题1','介绍1','申请原因1','申请模块1','账号1','姓名1','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang1.jpg','是',''),(52,'2021-04-10 13:22:19','标题2','介绍2','申请原因2','申请模块2','账号2','姓名2','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang2.jpg','是',''),(53,'2021-04-10 13:22:19','标题3','介绍3','申请原因3','申请模块3','账号3','姓名3','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang3.jpg','是',''),(54,'2021-04-10 13:22:19','标题4','介绍4','申请原因4','申请模块4','账号4','姓名4','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang4.jpg','是',''),(55,'2021-04-10 13:22:19','标题5','介绍5','申请原因5','申请模块5','账号5','姓名5','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang5.jpg','是',''),(56,'2021-04-10 13:22:19','标题6','介绍6','申请原因6','申请模块6','账号6','姓名6','http://localhost:8080/ssm5848t/upload/shenqingbanzhu_touxiang6.jpg','是',''),(1618032721962,'2021-04-10 13:32:01','222','22','222','222','2','2','http://localhost:8080/ssm5848t/upload/1618032704067.png','是','2');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032549474 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618032288776,'2021-04-10 13:24:48',1618032254226,81,'rementie','标题1','http://localhost:8080/ssm5848t/upload/rementie_tupian1.jpg'),(1618032321511,'2021-04-10 13:25:20',1618032254226,32,'tiaozaoshichang','商品名称2','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian2.jpg'),(1618032534977,'2021-04-10 13:28:54',1618032514509,81,'rementie','标题1','http://localhost:8080/ssm5848t/upload/rementie_tupian1.jpg'),(1618032549473,'2021-04-10 13:29:08',1618032514509,31,'tiaozaoshichang','商品名称1','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian1.jpg');

/*Table structure for table `tiaozaoshichang` */

DROP TABLE IF EXISTS `tiaozaoshichang`;

CREATE TABLE `tiaozaoshichang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `xiangqing` longtext COMMENT '详情',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='跳蚤市场';

/*Data for the table `tiaozaoshichang` */

insert  into `tiaozaoshichang`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`xinjiuchengdu`,`xiangqing`,`jiage`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`,`price`) values (31,'2021-04-10 13:22:19','商品名称1','商品类型1','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian1.jpg','新旧程度1','详情1','价格1','账号1','姓名1','是','',2,1,7,99.9),(32,'2021-04-10 13:22:19','商品名称2','商品类型2','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian2.jpg','新旧程度2','详情2','价格2','账号2','姓名2','是','',2,2,5,99.9),(33,'2021-04-10 13:22:19','商品名称3','商品类型3','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian3.jpg','新旧程度3','详情3','价格3','账号3','姓名3','是','',3,3,3,99.9),(34,'2021-04-10 13:22:19','商品名称4','商品类型4','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian4.jpg','新旧程度4','详情4','价格4','账号4','姓名4','否','',4,4,5,99.9),(35,'2021-04-10 13:22:19','商品名称5','商品类型5','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian5.jpg','新旧程度5','详情5','价格5','账号5','姓名5','否','',5,5,5,99.9),(36,'2021-04-10 13:22:19','商品名称6','商品类型6','http://localhost:8080/ssm5848t/upload/tiaozaoshichang_tupian6.jpg','新旧程度6','详情6','价格6','账号6','姓名6','是','',6,6,6,99.9);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618032254226,'1','yonghu','用户','qvx949rwhez93tckijxd2axmpeymsvxa','2021-04-10 13:24:22','2021-04-10 14:24:22'),(2,1618032514509,'2','yonghu','用户','tzqbhruj5fcy38iuakl5wjyn9t5cun11','2021-04-10 13:28:39','2021-04-10 14:37:34'),(3,1,'abo','users','管理员','tg44ergujc86eusdjq84pyszloea0uan','2021-04-10 13:34:53','2021-04-10 14:34:53'),(4,1618032941210,'2','banzhu','管理员','f97qeb5psxid5acukal3101pm53l543m','2021-04-10 13:37:47','2021-04-10 14:37:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-10 13:22:19');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`neirong`,`fabushijian`,`faburen`,`tupian`) values (21,'2021-04-10 13:22:19','标题1','内容1','2021-04-10','发布人1','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian1.jpg'),(22,'2021-04-10 13:22:19','标题2','内容2','2021-04-10','发布人2','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian2.jpg'),(23,'2021-04-10 13:22:19','标题3','内容3','2021-04-10','发布人3','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian3.jpg'),(24,'2021-04-10 13:22:19','标题4','内容4','2021-04-10','发布人4','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian4.jpg'),(25,'2021-04-10 13:22:19','标题5','内容5','2021-04-10','发布人5','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian5.jpg'),(26,'2021-04-10 13:22:19','标题6','内容6','2021-04-10','发布人6','http://localhost:8080/ssm5848t/upload/xitonggonggao_tupian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618032514510 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`,`money`) values (11,'2021-04-10 13:22:19','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm5848t/upload/yonghu_touxiang1.jpg',100),(12,'2021-04-10 13:22:19','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm5848t/upload/yonghu_touxiang2.jpg',100),(13,'2021-04-10 13:22:19','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm5848t/upload/yonghu_touxiang3.jpg',100),(14,'2021-04-10 13:22:19','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm5848t/upload/yonghu_touxiang4.jpg',100),(16,'2021-04-10 13:22:19','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm5848t/upload/yonghu_touxiang6.jpg',100),(1618032254226,'2021-04-10 13:24:14','1','1','1','男','12345678999','1@qq.com','http://localhost:8080/ssm5848t/upload/1618032450702.png',0),(1618032514509,'2021-04-10 13:28:34','2','2','2','女','12345678999','1@qq.com','http://localhost:8080/ssm5848t/upload/1618032704067.png',244.1);

/*Table structure for table `yonghurongyubang` */

DROP TABLE IF EXISTS `yonghurongyubang`;

CREATE TABLE `yonghurongyubang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618033101239 DEFAULT CHARSET=utf8 COMMENT='用户荣誉榜';

/*Data for the table `yonghurongyubang` */

insert  into `yonghurongyubang`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`) values (61,'2021-04-10 13:22:19','账号1','姓名1','http://localhost:8080/ssm5848t/upload/yonghurongyubang_touxiang1.jpg'),(62,'2021-04-10 13:22:19','账号2','姓名2','http://localhost:8080/ssm5848t/upload/yonghurongyubang_touxiang2.jpg'),(63,'2021-04-10 13:22:19','账号3','姓名3','http://localhost:8080/ssm5848t/upload/yonghurongyubang_touxiang3.jpg'),(64,'2021-04-10 13:22:19','账号4','姓名4','http://localhost:8080/ssm5848t/upload/yonghurongyubang_touxiang4.jpg'),(65,'2021-04-10 13:22:19','账号5','姓名5','http://localhost:8080/ssm5848t/upload/yonghurongyubang_touxiang5.jpg'),(1618032998125,'2021-04-10 13:36:37','2','2','http://localhost:8080/ssm5848t/upload/1618032996861.png'),(1618033101238,'2021-04-10 13:38:20','2222','22222','http://localhost:8080/ssm5848t/upload/1618033097148.png');

/*Table structure for table `zhubankuai` */

DROP TABLE IF EXISTS `zhubankuai`;

CREATE TABLE `zhubankuai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `bankuaimingcheng` varchar(200) DEFAULT NULL COMMENT '版块名称',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='主版块';

/*Data for the table `zhubankuai` */

insert  into `zhubankuai`(`id`,`addtime`,`biaoti`,`bankuaimingcheng`,`neirong`,`fabushijian`,`tupian`,`zhanghao`,`xingming`,`touxiang`,`thumbsupnum`,`crazilynum`,`clicknum`) values (101,'2021-04-10 13:22:19','标题1','版块名称1','内容1','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian1.jpg','账号1','姓名1','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang1.jpg',1,1,1),(102,'2021-04-10 13:22:19','标题2','版块名称2','内容2','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian2.jpg','账号2','姓名2','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang2.jpg',2,2,2),(103,'2021-04-10 13:22:19','标题3','版块名称3','内容3','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian3.jpg','账号3','姓名3','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang3.jpg',3,3,3),(104,'2021-04-10 13:22:19','标题4','版块名称4','内容4','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian4.jpg','账号4','姓名4','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang4.jpg',4,4,4),(105,'2021-04-10 13:22:19','标题5','版块名称5','内容5','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian5.jpg','账号5','姓名5','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang5.jpg',5,5,7),(106,'2021-04-10 13:22:19','标题6','版块名称6','内容6','2021-04-10','http://localhost:8080/ssm5848t/upload/zhubankuai_tupian6.jpg','账号6','姓名6','http://localhost:8080/ssm5848t/upload/zhubankuai_touxiang6.jpg',6,6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
