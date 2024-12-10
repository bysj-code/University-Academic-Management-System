/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - gaoxiaojiaowu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaojiaowu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaojiaowu`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chengji_number` int(11) DEFAULT NULL COMMENT '得分',
  `chengji_content` text COMMENT '成绩详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_name`,`yonghu_id`,`chengji_number`,`chengji_content`,`create_time`) values (1,'标题1',3,134,'成绩详情1','2022-02-22 10:11:54'),(2,'标题2',1,133,'成绩详情2','2022-02-22 10:11:54'),(3,'标题3',2,144,'成绩详情3','2022-02-22 10:11:54'),(4,'标题4',1,261,'成绩详情4','2022-02-22 10:11:54'),(5,'标题5',2,370,'成绩详情5','2022-02-22 10:11:54'),(6,'标题6',1,219,'成绩详情6','2022-02-22 10:11:54'),(7,'标题7',2,22,'成绩详情7','2022-02-22 10:11:54'),(8,'标题8',2,375,'成绩详情8','2022-02-22 10:11:54'),(9,'标题9',2,389,'成绩详情9','2022-02-22 10:11:54'),(10,'标题10',3,18,'成绩详情10','2022-02-22 10:11:54'),(11,'标题11',1,111,'成绩详情11','2022-02-22 10:11:54'),(12,'标题12',3,1233,'<p><span style=\"color: rgb(96, 98, 102);\">成绩详情12</span></p>','2022-02-22 11:12:43');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaojiaowu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaojiaowu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaojiaowu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'jiaowutongzhi_types','类型',1,'类型1',NULL,NULL,'2022-02-22 10:11:42'),(2,'jiaowutongzhi_types','类型',2,'类型2',NULL,NULL,'2022-02-22 10:11:42'),(3,'jiaowutongzhi_types','类型',3,'类型3',NULL,NULL,'2022-02-22 10:11:42'),(4,'sex_types','性别',1,'男',NULL,NULL,'2022-02-22 10:11:42'),(5,'sex_types','性别',2,'女',NULL,NULL,'2022-02-22 10:11:42'),(6,'banji_types','班级',1,'班级1',NULL,NULL,'2022-02-22 10:11:42'),(7,'banji_types','班级',2,'班级2',NULL,NULL,'2022-02-22 10:11:42'),(8,'banji_types','班级',3,'班级3',NULL,NULL,'2022-02-22 10:11:42'),(9,'xibu_types','系部',1,'系部1',NULL,NULL,'2022-02-22 10:11:42'),(10,'xibu_types','系部',2,'系部2',NULL,NULL,'2022-02-22 10:11:42'),(11,'xibu_types','系部',3,'系部3',NULL,NULL,'2022-02-22 10:11:42'),(12,'zhuanye_types','专业',1,'专业1',NULL,NULL,'2022-02-22 10:11:42'),(13,'zhuanye_types','专业',2,'专业2',NULL,NULL,'2022-02-22 10:11:42'),(14,'zhuanye_types','专业',3,'专业3',NULL,NULL,'2022-02-22 10:11:43'),(15,'news_types','公告信息类型',1,'公告信息类型1',NULL,NULL,'2022-02-22 10:11:43'),(16,'news_types','公告信息类型',2,'公告信息类型2',NULL,NULL,'2022-02-22 10:11:43'),(17,'news_types','公告信息类型',3,'公告信息类型3',NULL,NULL,'2022-02-22 10:11:43');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号 ',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_email`,`sex_types`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/gaoxiaojiaowu/upload/jiaoshi1.jpg','17703786901','410224199610232001','1@qq.com',2,1,'2022-02-22 10:11:54'),(2,'a2','123456','教师姓名2','http://localhost:8080/gaoxiaojiaowu/upload/jiaoshi2.jpg','17703786902','410224199610232002','2@qq.com',1,1,'2022-02-22 10:11:54'),(3,'a3','123456','教师姓名3','http://localhost:8080/gaoxiaojiaowu/upload/jiaoshi3.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-22 10:11:54');

/*Table structure for table `jiaowutongzhi` */

DROP TABLE IF EXISTS `jiaowutongzhi`;

CREATE TABLE `jiaowutongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaowutongzhi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `jiaowutongzhi_types` int(11) DEFAULT NULL COMMENT '类型 Search111',
  `jiaowutongzhi_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaowutongzhi_content` text COMMENT '通知详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='教务通知';

/*Data for the table `jiaowutongzhi` */

insert  into `jiaowutongzhi`(`id`,`jiaowutongzhi_name`,`jiaowutongzhi_types`,`jiaowutongzhi_photo`,`jiaowutongzhi_content`,`create_time`) values (6,'标题6',1,'http://localhost:8080/gaoxiaojiaowu/upload/1645496896992.webp','<p>通知详情6</p>','2022-02-22 10:11:54'),(7,'标题7',1,'http://localhost:8080/gaoxiaojiaowu/upload/1645496904697.jpg','<p>通知详情7</p>','2022-02-22 10:11:54'),(8,'标题8',2,'http://localhost:8080/gaoxiaojiaowu/upload/1645496887590.jpg','<p>通知详情8</p>','2022-02-22 10:11:54'),(9,'标题9',1,'http://localhost:8080/gaoxiaojiaowu/upload/1645496878839.jpg','<p>通知详情9</p>','2022-02-22 10:11:54'),(10,'标题10',3,'http://localhost:8080/gaoxiaojiaowu/upload/1645496872166.jpg','<p>通知详情10</p>','2022-02-22 10:11:54'),(11,'标题11',1,'http://localhost:8080/gaoxiaojiaowu/upload/1645499623265.jpg','<p>通知详情11</p>','2022-02-22 10:11:54');

/*Table structure for table `kaoshianpai` */

DROP TABLE IF EXISTS `kaoshianpai`;

CREATE TABLE `kaoshianpai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshianpai_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `kaoshishijian` varchar(255) DEFAULT NULL COMMENT '考试时间节点',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `kaoshianpai_content` text COMMENT '考试安排详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='考试安排';

/*Data for the table `kaoshianpai` */

insert  into `kaoshianpai`(`id`,`kaoshianpai_name`,`kaoshishijian`,`banji_types`,`kaoshianpai_content`,`create_time`) values (1,'标题1','考试时间节点1',3,'考试安排详情1','2022-02-22 10:11:54'),(2,'标题2','考试时间节点2',2,'考试安排详情2','2022-02-22 10:11:54'),(3,'标题3','考试时间节点3',1,'考试安排详情3','2022-02-22 10:11:54'),(4,'标题4','考试时间节点4',2,'考试安排详情4','2022-02-22 10:11:54'),(5,'标题5','考试时间节点5',2,'考试安排详情5','2022-02-22 10:11:54'),(6,'标题6','考试时间节点6',3,'考试安排详情6','2022-02-22 10:11:54'),(7,'标题7','考试时间节点7',2,'考试安排详情7','2022-02-22 10:11:54'),(8,'标题8','考试时间节点8',1,'考试安排详情8','2022-02-22 10:11:54'),(9,'标题9','考试时间节点9',2,'考试安排详情9','2022-02-22 10:11:54'),(10,'标题10','考试时间节点10',2,'考试安排详情10','2022-02-22 10:11:54'),(11,'标题11','考试时间节点11',1,'<p>考试安排详情11</p>','2022-02-22 10:11:54');

/*Table structure for table `kebiao` */

DROP TABLE IF EXISTS `kebiao`;

CREATE TABLE `kebiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kebiao_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `kebiao_photo` varchar(200) DEFAULT NULL COMMENT '课表上传',
  `kebiao_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='课表';

/*Data for the table `kebiao` */

insert  into `kebiao`(`id`,`kebiao_name`,`banji_types`,`kebiao_photo`,`kebiao_content`,`create_time`) values (1,'标题1',2,'http://localhost:8080/gaoxiaojiaowu/upload/1645497200321.jpeg','<p>课程详情1</p>','2022-02-22 10:11:54'),(2,'标题2',1,'http://localhost:8080/gaoxiaojiaowu/upload/1645497193159.jpeg','<p>课程详情2</p>','2022-02-22 10:11:54'),(3,'标题3',3,'http://localhost:8080/gaoxiaojiaowu/upload/1645497186617.jpg','<p>课程详情3</p>','2022-02-22 10:11:54');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告信息标题1',1,'http://localhost:8080/gaoxiaojiaowu/upload/news1.jpg','2022-02-22 10:11:54','公告信息详情1',1,'2022-02-22 10:11:54'),(2,'公告信息标题2',3,'http://localhost:8080/gaoxiaojiaowu/upload/news2.jpg','2022-02-22 10:11:54','公告信息详情2',1,'2022-02-22 10:11:54'),(3,'公告信息标题3',1,'http://localhost:8080/gaoxiaojiaowu/upload/news3.jpg','2022-02-22 10:11:54','公告信息详情3',1,'2022-02-22 10:11:54'),(4,'公告信息标题4',1,'http://localhost:8080/gaoxiaojiaowu/upload/news4.jpg','2022-02-22 10:11:54','公告信息详情4',1,'2022-02-22 10:11:54'),(5,'公告信息标题5',2,'http://localhost:8080/gaoxiaojiaowu/upload/news5.jpg','2022-02-22 10:11:54','公告信息详情5',1,'2022-02-22 10:11:54'),(6,'公告信息标题6',3,'http://localhost:8080/gaoxiaojiaowu/upload/news6.jpg','2022-02-22 10:11:54','公告信息详情6',1,'2022-02-22 10:11:54'),(7,'公告信息标题7',1,'http://localhost:8080/gaoxiaojiaowu/upload/news7.jpg','2022-02-22 10:11:54','公告信息详情7',1,'2022-02-22 10:11:54'),(8,'公告信息标题8',2,'http://localhost:8080/gaoxiaojiaowu/upload/news8.jpg','2022-02-22 10:11:54','公告信息详情8',1,'2022-02-22 10:11:54'),(9,'公告信息标题9',1,'http://localhost:8080/gaoxiaojiaowu/upload/news9.jpg','2022-02-22 10:11:54','公告信息详情9',1,'2022-02-22 10:11:54'),(10,'公告信息标题10',2,'http://localhost:8080/gaoxiaojiaowu/upload/news10.jpg','2022-02-22 10:11:54','公告信息详情10',1,'2022-02-22 10:11:54'),(11,'公告信息标题11',2,'http://localhost:8080/gaoxiaojiaowu/upload/news11.jpg','2022-02-22 10:11:54','公告信息详情11',1,'2022-02-22 10:11:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7f74o7z3kqwn48cj810geed8lflbauf7','2022-02-22 10:24:02','2022-02-22 12:19:09'),(2,1,'a1','yonghu','用户','8rni3hn3mj6aminq39z4qor6x4pz9ecb','2022-02-22 10:37:51','2022-02-22 12:39:54'),(3,1,'a1','jiaoshi','教师','y37ug77tyrr4hww07bopwpwzm5fhfxhq','2022-02-22 11:14:08','2022-02-22 12:14:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `xibu_types` int(11) DEFAULT NULL COMMENT '系部',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`banji_types`,`xibu_types`,`zhuanye_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/gaoxiaojiaowu/upload/yonghu1.jpg','17703786901','410224199610232001','1@qq.com',2,1,1,2,1,'2022-02-22 10:11:54'),(2,'a2','123456','用户姓名2','http://localhost:8080/gaoxiaojiaowu/upload/yonghu2.jpg','17703786902','410224199610232002','2@qq.com',2,2,2,3,1,'2022-02-22 10:11:54'),(3,'a3','123456','用户姓名3','http://localhost:8080/gaoxiaojiaowu/upload/yonghu3.jpg','17703786903','410224199610232003','3@qq.com',1,2,2,3,1,'2022-02-22 10:11:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
