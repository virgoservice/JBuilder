/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.21-log : Database - db_jbuilder
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_jbuilder` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `db_jbuilder`;

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `parentId` bigint(50) DEFAULT NULL,
  `parentName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_permission` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_role` */

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(50) DEFAULT NULL,
  `permissionId` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_role_permission` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `nickname` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `salt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `portraitImgUrl` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `tag` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`nickname`,`password`,`salt`,`createTime`,`status`,`portraitImgUrl`,`tag`) values (1,'admin','admin','05277046dc47f7fe614926ea93fc4480','8493ac14cce3dea9071cd236e1610b55','2017-05-04 14:37:24','',NULL,'admin');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `userId` bigint(50) DEFAULT NULL,
  `roleId` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`userId`,`roleId`) values (1,1,1),(2,1,2),(3,1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
