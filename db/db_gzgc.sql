/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.62-community : Database - db_gzgc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_gzgc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `db_gzgc`;

/*Table structure for table `order_cancel_order` */

DROP TABLE IF EXISTS `order_cancel_order`;

CREATE TABLE `order_cancel_order` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `cancelOrderCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退单号',
  `orderId` int(50) DEFAULT NULL COMMENT '订单id',
  `childOrderId` int(50) DEFAULT NULL COMMENT '子订单id',
  `retreatBatchNo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退单批次号',
  `num` int(11) DEFAULT NULL COMMENT '退票数量',
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退单状态0，1完成',
  `cancelDate` datetime DEFAULT NULL COMMENT '创建时间',
  `checkDate` datetime DEFAULT NULL COMMENT '处理时间',
  `checkMan` int(50) DEFAULT NULL COMMENT '审核人',
  `result` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退票结果',
  `totalPrice` double(10,0) DEFAULT NULL COMMENT '退票金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_cancel_order` */

insert  into `order_cancel_order`(`id`,`cancelOrderCode`,`orderId`,`childOrderId`,`retreatBatchNo`,`num`,`status`,`cancelDate`,`checkDate`,`checkMan`,`result`,`totalPrice`) values (73,'GCC2017070316071322400',67,69,NULL,1,'1','2017-07-03 16:59:13','2017-07-03 16:59:30',9,'0',123),(74,'GCC2017070317075117400',68,70,NULL,1,'1','2017-07-03 17:34:51','2017-07-03 17:37:17',9,'0',123),(75,'GCC2017070510074022500',70,72,NULL,1,'0','2017-07-05 10:43:40',NULL,NULL,NULL,123);

/*Table structure for table `order_check_ticket` */

DROP TABLE IF EXISTS `order_check_ticket`;

CREATE TABLE `order_check_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCID` int(11) DEFAULT NULL COMMENT '子订单',
  `orderID` int(11) DEFAULT NULL COMMENT '订单',
  `goodName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '票名',
  `checkTime` datetime DEFAULT NULL,
  `checkNum` int(11) DEFAULT NULL,
  `checkUserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_check_ticket` */

insert  into `order_check_ticket`(`id`,`orderCID`,`orderID`,`goodName`,`checkTime`,`checkNum`,`checkUserID`) values (74,69,67,'光棍光棍','2017-07-03 17:03:39',1,9),(75,70,68,'光棍光棍','2017-07-03 17:33:53',1,9),(76,70,68,'光棍光棍','2017-07-03 17:37:40',1,9);

/*Table structure for table `order_invaliddate` */

DROP TABLE IF EXISTS `order_invaliddate`;

CREATE TABLE `order_invaliddate` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `ticketId` int(50) DEFAULT NULL,
  `beginDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_invaliddate` */

insert  into `order_invaliddate`(`id`,`ticketId`,`beginDate`,`endDate`) values (1,7,'2017-07-01','2017-07-03'),(2,7,'2017-07-05','2017-07-06');

/*Table structure for table `order_order` */

DROP TABLE IF EXISTS `order_order`;

CREATE TABLE `order_order` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '身份证',
  `userId` int(50) NOT NULL,
  `certificateNo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `linkName` varchar(255) COLLATE utf8_bin NOT NULL,
  `linkMobile` varchar(255) COLLATE utf8_bin NOT NULL,
  `orderCode` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '订单编号。只能通过这个编号取消',
  `orderPrice` double NOT NULL,
  `payMethod` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '支付方式值spot现场支付vm备佣金，zyb智游宝支付',
  `payStatus` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '状态。0待付款，1已付款，2已退款.',
  `payDate` datetime DEFAULT NULL COMMENT '付款日期',
  `createTime` datetime DEFAULT NULL,
  `retreatBatchNo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退单批次号，用于查询退票情况退票成功或失败',
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '状态。0已下单，1申请退票，2已完成，3已结算',
  `ziyoubaoStatus` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '0未检票，1检票完成，2退票完成，3异常。',
  `ziyoubaoSend` int(10) DEFAULT NULL COMMENT 'ziyoubao下单标志',
  `ziyoubaoCheckNo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '辅助码',
  `checkNum` int(10) DEFAULT '0' COMMENT '检票数',
  `returnNum` int(10) DEFAULT '0' COMMENT '退票熟',
  `total` int(10) DEFAULT '0' COMMENT '总数',
  `buyerRemark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '买家备注',
  `sellerRemark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '卖家备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_order` */

insert  into `order_order`(`id`,`userId`,`certificateNo`,`linkName`,`linkMobile`,`orderCode`,`orderPrice`,`payMethod`,`payStatus`,`payDate`,`createTime`,`retreatBatchNo`,`status`,`ziyoubaoStatus`,`ziyoubaoSend`,`ziyoubaoCheckNo`,`checkNum`,`returnNum`,`total`,`buyerRemark`,`sellerRemark`) values (67,9,NULL,'123','13648362969','GCT2017070316070353400',123.05,NULL,'1','2017-07-03 16:58:03','2017-07-03 16:57:03',NULL,'3',NULL,NULL,'51759039',1,0,1,'',NULL),(68,9,NULL,'wer','13648362969','GCT2017070317073880300',246.1,NULL,'1','2017-07-03 17:31:57','2017-07-03 17:30:38',NULL,'3',NULL,NULL,'93268557',2,0,2,'',NULL),(69,9,NULL,'水电费','13648362969','GCT2017070416074912000',246.1,NULL,'1','2017-07-04 16:47:11','2017-07-04 16:42:49',NULL,'2',NULL,NULL,'10716090',0,0,2,'',NULL),(70,9,NULL,'234234','13648362969','GCT2017070509073845000',492.2,NULL,'1','2017-07-05 09:55:28','2017-07-05 09:52:38',NULL,'1',NULL,NULL,'25490894',0,0,4,'',NULL);

/*Table structure for table `order_order_child` */

DROP TABLE IF EXISTS `order_order_child`;

CREATE TABLE `order_order_child` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '身份证',
  `orderId` int(50) DEFAULT NULL COMMENT '主订单id',
  `ticketId` int(50) DEFAULT NULL COMMENT '票据表id',
  `orderCode` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '订单编号',
  `price` double NOT NULL COMMENT '票价',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `totalPrice` double NOT NULL COMMENT '总价',
  `occDate` datetime NOT NULL COMMENT '游玩日期',
  `goodsCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品编码',
  `goodsName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `createTime` datetime DEFAULT NULL,
  `retreatBatchNo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '退单批次号，用于查询退票情况退票成功或失败',
  `payStatus` varchar(10) COLLATE utf8_bin DEFAULT '0' COMMENT '付款状态。0、1',
  `returnStatus` varchar(10) COLLATE utf8_bin DEFAULT '0' COMMENT '退款状态 0、1已退款',
  `noticeStatus` varchar(255) COLLATE utf8_bin DEFAULT '0' COMMENT '通知状态',
  `status` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '状态。0已下单，1申请退票，2退票失败，3退票成功。4完成。',
  `checkStatus` varchar(10) COLLATE utf8_bin DEFAULT '0' COMMENT '检票状态 0未检票，1检票中，2检票完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_order_child` */

insert  into `order_order_child`(`id`,`orderId`,`ticketId`,`orderCode`,`price`,`quantity`,`totalPrice`,`occDate`,`goodsCode`,`goodsName`,`remark`,`createTime`,`retreatBatchNo`,`payStatus`,`returnStatus`,`noticeStatus`,`status`,`checkStatus`) values (69,67,7,'GCTC2017070316070347600',123.05,1,123.05,'2017-07-04 00:00:00','445554','光棍光棍',NULL,'2017-07-03 16:57:03',NULL,'1','0','0','4','2'),(70,68,7,'GCTC2017070317073872500',123.05,2,246.1,'2017-07-07 00:00:00','445554','光棍光棍',NULL,'2017-07-03 17:30:38',NULL,'1','0','0','4','2'),(71,69,7,'GCTC2017070416074904400',123.05,2,246.1,'2017-06-26 00:00:00','445554','光棍光棍',NULL,'2017-07-04 16:42:49',NULL,'1','0','0',NULL,'0'),(72,70,7,'GCTC2017070509073839200',123.05,4,492.2,'2017-07-04 00:00:00','445554','光棍光棍',NULL,'2017-07-05 09:52:38',NULL,'1','0','0','1','0');

/*Table structure for table `order_order_log` */

DROP TABLE IF EXISTS `order_order_log`;

CREATE TABLE `order_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `detail1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `detail2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_order_log` */

/*Table structure for table `order_scenic_spot` */

DROP TABLE IF EXISTS `order_scenic_spot`;

CREATE TABLE `order_scenic_spot` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_scenic_spot` */

insert  into `order_scenic_spot`(`id`,`name`) values (11,'new Name : test update'),(12,'吞吞吐吐'),(13,'贵州镇远古城'),(15,'smghost');

/*Table structure for table `order_ticket` */

DROP TABLE IF EXISTS `order_ticket`;

CREATE TABLE `order_ticket` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `scenicId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品票据名称',
  `goodsCode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '票型编号（智游宝平台）',
  `price` double DEFAULT NULL COMMENT '价格',
  `shopPrice` double DEFAULT NULL COMMENT '门店价',
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `goodsType` int(50) DEFAULT NULL COMMENT '商品类型（成人，儿童，特价，测试）',
  `groupTickets` tinyint(1) DEFAULT NULL COMMENT '是否团体票',
  `beginDate` datetime DEFAULT NULL COMMENT '生效日期',
  `endDate` datetime DEFAULT NULL,
  `weekDate` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '有效星期日',
  `checkTime` datetime DEFAULT NULL COMMENT '检票时间',
  `stopCheckTime` datetime DEFAULT NULL,
  `sellout` int(10) DEFAULT NULL COMMENT '售票数量',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `description` longtext COLLATE utf8_bin COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_ticket` */

insert  into `order_ticket`(`id`,`scenicId`,`groupId`,`name`,`goodsCode`,`price`,`shopPrice`,`stock`,`goodsType`,`groupTickets`,`beginDate`,`endDate`,`weekDate`,`checkTime`,`stopCheckTime`,`sellout`,`status`,`description`) values (1,13,8,'测试','PST20160918013085',50,100,NULL,123123123,NULL,'2017-06-06 16:13:07','2017-06-05 16:13:10',NULL,NULL,NULL,NULL,NULL,NULL),(6,13,3,'ggggg','456789',123.05,100,1000,2,0,'2017-06-08 00:00:00','2017-06-29 00:00:00','4','2017-06-28 00:00:00','2017-06-28 00:00:00',100,0,'的顶顶顶顶顶'),(7,13,3,'光棍光棍','445554',123.05,111,1000,1,0,'2017-06-21 00:00:00','2017-08-01 00:00:00','0,6','2017-06-28 00:00:00','2017-06-28 00:00:00',NULL,1,'fffffffffff'),(8,13,3,'4444444','4433',213,444,1000,1,0,'2017-06-14 00:00:00','2017-06-30 00:00:00','1','2017-06-28 00:00:00','2017-06-28 00:00:00',NULL,1,'点点滴滴'),(13,13,3,'测试第一张门票','666',66.66,66.66,66,3,0,'2017-06-30 22:06:22','2017-06-30 12:06:55','4','2017-06-30 11:17:22','2017-06-30 11:17:22',NULL,1,'<p>这一小技巧是一张能够很容易的使用简单的CSS指令来实现的 61KB 图片, 提升加载时间和用户体验的同时降低带宽消耗.</p>\r\n\r\n<p>如何解决: 无论何时确保尽可能使用CSS3. 如果你的图形设计师能提供基于CSS3的元素可供使用. 如果你想要支持老版本的IE，你也应该确保你的界面能优雅的降级到至少能保证设计的功能可用(尽管不能完美的显示出原来的效果), 或者选择一种像CSS3 PIE这样的CSS3仿真方案.</p>\r\n\r\n<p>9.错误的图片缓存设置</p>\r\n\r\n<p>一般你的网站图片文化很少改变。HTTP缓存指令可以让访问者的浏览器将这些图片缓存起来，任何其他的服务都可以这么干（CDN、proxies等等）。一旦图片被缓存，在今后访问你的网站的时候将会使用缓存而不是一遍又一遍的下载。</p>\r\n\r\n<p>正确的缓存设置通过减少页面载入时间来提高用户体验，同时也减少你的网站带宽而减少花费。</p>\r\n\r\n<p>不幸的是，我见到许多案例都没有正确的利用好缓存。最常见的是，对于更新图片时漫长的缓存设置的担心，因为他们认为网站访问者会看到旧的图片而不是新的图片。</p>\r\n\r\n<p>这个看似棘手的情况可以通过添加一个指纹（MD5、时间戳等）到图像URL来轻松地避免。通过添加一个指纹到图像的URL你可以知道图像何时变化了，已经它的URL。当URL变化时，浏览器会强制重新读取图像。目前的Web开发平台能够自动给所有的图片添加这样一个指纹，从源头上解决这个问题。</p>\r\n\r\n<p><img alt=\"\" src=\"http://oncn0mvq5.bkt.clouddn.com/1e79d2d4-7e14-4633-a161-178bb45732d3.jpg\" style=\"height:238px; width:380px\" /></p>\r\n\r\n<p>再来一张图片</p>\r\n\r\n<p><img alt=\"\" src=\"http://oncn0mvq5.bkt.clouddn.com/27280b5c-e6f5-4603-adea-702b10683769.jpg\" style=\"height:136px; width:198px\" /></p>\r\n'),(14,13,3,'ticket1111','456789',203.01,256.25,111,1,0,'2017-06-15 00:00:00','2017-06-29 00:00:00','5','1970-01-01 05:59:00','1970-01-01 11:12:00',NULL,1,'<p>gggggggggggggggggg</p>\r\n\r\n<p>eeeeeeeeeeeeeeeee</p>\r\n\r\n<p>ttttttttttttttttt</p>\r\n\r\n<p>yyyyyyyyyyyyyyyyy</p>\r\n\r\n<p><img alt=\"\" src=\"http://oncn0mvq5.bkt.clouddn.com/90b00a4e-9c12-4e99-a625-904bf9c4f9df.jpg\" style=\"height:350px; width:356px\" /></p>\r\n'),(15,13,3,'dddddaaa','Wed Jul 05 16:05:12 CST 2017',0,0,0,1,0,'2017-06-28 00:00:00','2017-06-28 00:00:00','1',NULL,NULL,NULL,1,NULL),(16,13,3,'ffffffffffffffff','Wed Jul 05 16:55:11 CST 2017',0,0,0,1,0,'2017-06-28 00:00:00','2017-06-28 00:00:00','1','1970-01-01 02:00:00','1970-01-01 21:00:00',0,1,NULL),(17,13,3,'hfdajiofshdf fsdss','Wed Jul 05 16:59:36 CST 2017',0,0,0,1,0,'2017-06-28 00:00:00','2017-06-28 00:00:00','1','1970-01-01 04:00:00','1970-01-01 21:00:00',0,1,'<p>当你在写代码的时候，你很容易就认为只要你按照需求实现了指定的功能，你的代码就写完了。但是这其实只是冰山一角。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>任何没有发布到生产环境的代码都不会产生任何价值。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>\r\n	<p>如果想写出真正有影响力的代码，你需要从整个系统去理解你的工作：</p>\r\n	</li>\r\n	<li>\r\n	<p>你的代码和其他人写的代码在功能上是什么关系？</p>\r\n	</li>\r\n	<li>\r\n	<p>你有没有好好测试你的代码？或者其他人是否很容易测试你的代码？</p>\r\n	</li>\r\n	<li>\r\n	<p>为了部署你的代码，线上生产环境的代码是不是需要改动？</p>\r\n	</li>\r\n	<li>\r\n	<p>新的代码会不会影响到已经运行的代码？</p>\r\n	</li>\r\n	<li>\r\n	<p>在新的功能下，你的目标用户的行为是不是你期望的？</p>\r\n	</li>\r\n	<li>\r\n	<p>你的代码有没有产生商业上的影响？</p>\r\n	</li>\r\n</ul>\r\n</blockquote>\r\n'),(18,13,3,'有时候保存图片失败','Wed Jul 05 17:02:36 CST 2017',0,0,0,1,0,'2017-06-28 00:00:00','2017-06-28 00:00:00','1',NULL,NULL,0,1,'<p>&nbsp;</p>\r\n\r\n<p>重视能够节约时间的工具</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>打败人类的AlphaGo每天可以进行上百万局的下棋训练，我们人类一万个小时的训练却需要10年之久。也就是说，电脑运行几分钟，可能就等于人类工作好几年。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>曾经在Facebook担任技术总监的Bobby Johnson描述过，高效率的程序员都把时间花在制作工具上。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>很多人也认为工具是很重要的，但是他们并没有花时间去制作、整合自己的工具。但是，Jonson团队最出色的员工耗费了他们1/3的时间在工具制作上，这些工具可以用来发布代码，监控系统，以及能让他们花更少的时间去做更多事情。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>总之，不要花时间去做机器可以代替你去做的事情。</p>\r\n\r\n<p>&nbsp;</p>\r\n');

/*Table structure for table `order_ticket_attachment` */

DROP TABLE IF EXISTS `order_ticket_attachment`;

CREATE TABLE `order_ticket_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ticketId` bigint(20) DEFAULT NULL,
  `attachmentId` bigint(20) DEFAULT NULL,
  `attachmentUrl` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `showOrder` int(11) DEFAULT NULL,
  `useof` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_ticket_attachment` */

insert  into `order_ticket_attachment`(`id`,`ticketId`,`attachmentId`,`attachmentUrl`,`showOrder`,`useof`) values (36,14,45,'http://oncn0mvq5.bkt.clouddn.com/c7e05ef6-6510-451e-8185-06551e1fce25.jpg',NULL,2),(37,14,46,'http://oncn0mvq5.bkt.clouddn.com/ca486d88-193e-40b2-b1df-c29c0a508b7c.jpg',NULL,2),(38,14,47,'http://oncn0mvq5.bkt.clouddn.com/d56a76ea-3cb3-4f62-8eff-0e541093f8a1.jpg',2,2),(39,14,48,'http://oncn0mvq5.bkt.clouddn.com/c26c71c4-0e5b-4fe6-b30c-e6d08cc57c56.jpg',NULL,2),(40,13,49,'http://oncn0mvq5.bkt.clouddn.com/a77b896f-e997-481e-ad73-1b77b0b6f42e.jpg',1,2),(41,13,NULL,'http://oncn0mvq5.bkt.clouddn.com/1e79d2d4-7e14-4633-a161-178bb45732d3.jpg',NULL,3),(42,13,NULL,'http://oncn0mvq5.bkt.clouddn.com/27280b5c-e6f5-4603-adea-702b10683769.jpg',2,3),(43,NULL,52,'http://oncn0mvq5.bkt.clouddn.com/4db85a96-3c06-460f-b388-8d224c545f4f.jpg',NULL,2),(44,NULL,53,'http://oncn0mvq5.bkt.clouddn.com/58de4acd-1599-4113-a21c-ed6e8e248f20.jpg',NULL,2),(45,NULL,54,'http://oncn0mvq5.bkt.clouddn.com/3a05dc54-4573-4511-a1bf-b59d8551f76b.jpg',NULL,2),(46,14,NULL,'http://oncn0mvq5.bkt.clouddn.com/90b00a4e-9c12-4e99-a625-904bf9c4f9df.jpg',NULL,3),(47,NULL,56,'http://oncn0mvq5.bkt.clouddn.com/67765cfc-42ed-41f1-a479-7653a188870e.gif',NULL,2),(48,NULL,57,'http://oncn0mvq5.bkt.clouddn.com/0e3cce13-e1a6-4fc5-99fd-5d0089f1ec73.jpg',NULL,2),(49,16,58,'http://oncn0mvq5.bkt.clouddn.com/1df45e23-54f6-47fd-9f12-a043f04e01b4.jpg',NULL,2),(50,16,59,'http://oncn0mvq5.bkt.clouddn.com/c825b446-6a7d-41b4-a91a-2dd639904c35.jpg',NULL,2),(51,16,60,'http://oncn0mvq5.bkt.clouddn.com/56c50feb-dd83-48f0-976d-8878a31ab271.jpg',NULL,2),(52,18,61,'http://oncn0mvq5.bkt.clouddn.com/151e7239-8da0-4c33-95a5-a5254580482d.jpg',NULL,2),(53,18,62,'http://oncn0mvq5.bkt.clouddn.com/200c9a39-c2c9-4af3-b0d4-c5dd8ba6e2a3.jpg',NULL,2),(54,18,63,'http://oncn0mvq5.bkt.clouddn.com/7090395d-4176-4328-a003-cd80c8b1b73a.jpg',NULL,2);

/*Table structure for table `order_ticket_group` */

DROP TABLE IF EXISTS `order_ticket_group`;

CREATE TABLE `order_ticket_group` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `order_ticket_group` */

insert  into `order_ticket_group`(`id`,`name`,`description`) values (9,'newGroup','desc'),(10,'2nd-Group','22222222222'),(11,'group-new','desc'),(13,'gggg','123456789'),(14,'kkkk','kkkkkkkkkkkkkkkk');

/*Table structure for table `sys_attachment` */

DROP TABLE IF EXISTS `sys_attachment`;

CREATE TABLE `sys_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '标识(自增)',
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `size` double DEFAULT NULL COMMENT '大小',
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '存储路径',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_attachment` */

insert  into `sys_attachment`(`id`,`name`,`title`,`size`,`type`,`url`,`createTime`,`description`) values (38,'5852166a1a2f0a7b738b6596.jpg','5852166a1a2f0a7b738b6596.jpg',137,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/c15b5b64-429e-4c41-9ad6-b47466604e5e.jpg','2017-06-27 14:52:25','5852166a1a2f0a7b738b6596.jpg'),(39,'eeeyy.jpg','eeeyy.jpg',98,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/13e34013-5076-460d-a955-c3d5c14ea7ca.jpg','2017-06-27 15:16:36','eeeyy.jpg'),(40,'mapping.JPG','mapping.JPG',77,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/16f726d7-f375-4f0a-af83-417fbc214cad.JPG','2017-06-28 11:44:53','mapping.JPG'),(41,'1111.png','1111.png',347,'image/png','http://oncn0mvq5.bkt.clouddn.com/2a311df9-d55e-4e10-82e6-5a06327c4afe.png','2017-06-28 11:44:53','1111.png'),(42,'10ekh1g.jpg','10ekh1g.jpg',58,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/56fd149b-c075-42b7-96ba-bdee5dfa6da1.jpg','2017-06-28 15:04:11','10ekh1g.jpg'),(43,'8417f4c39bb43e4f.jpg','8417f4c39bb43e4f.jpg',21,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/37a44d93-dd33-4c05-8025-1bb404642ec7.jpg','2017-06-28 15:06:16','8417f4c39bb43e4f.jpg'),(44,'339u3c4.jpg','339u3c4.jpg',30,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/2d6282d4-4572-475e-ad24-a986a2e7b278.jpg','2017-06-28 15:06:16','339u3c4.jpg'),(45,'12823162204701.jpg','12823162204701.jpg',47,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/c7e05ef6-6510-451e-8185-06551e1fce25.jpg','2017-06-30 11:19:17','12823162204701.jpg'),(46,'BingWallpaper_2016_10_24.jpg','BingWallpaper_2016_10_24.jpg',694,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/ca486d88-193e-40b2-b1df-c29c0a508b7c.jpg','2017-06-30 11:19:26','BingWallpaper_2016_10_24.jpg'),(47,'BingWallpaper_2016_06_29.jpg','BingWallpaper_2016_06_29.jpg',906,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/d56a76ea-3cb3-4f62-8eff-0e541093f8a1.jpg','2017-06-30 11:19:26','BingWallpaper_2016_06_29.jpg'),(48,'BingWallpaper_2016_08_07.jpg','BingWallpaper_2016_08_07.jpg',1059,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/c26c71c4-0e5b-4fe6-b30c-e6d08cc57c56.jpg','2017-06-30 11:19:28','BingWallpaper_2016_08_07.jpg'),(49,'2292051452131.jpg','2292051452131.jpg',1726,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/a77b896f-e997-481e-ad73-1b77b0b6f42e.jpg','2017-06-30 11:19:31','2292051452131.jpg'),(50,'高清壁纸 (476).jpg','高清壁纸 (476).jpg',309,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/1e79d2d4-7e14-4633-a161-178bb45732d3.jpg','2017-06-30 11:20:08','高清壁纸 (476).jpg'),(51,']J2I1SF@E}%SORLC~(ZXQQF.jpg',']J2I1SF@E}%SORLC~(ZXQQF.jpg',2,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/27280b5c-e6f5-4603-adea-702b10683769.jpg','2017-06-30 11:20:43',']J2I1SF@E}%SORLC~(ZXQQF.jpg'),(52,'8417f4c39bb43e4f.jpg','8417f4c39bb43e4f.jpg',21,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/4db85a96-3c06-460f-b388-8d224c545f4f.jpg','2017-07-05 14:56:22','8417f4c39bb43e4f.jpg'),(53,'339u3c4.jpg','339u3c4.jpg',30,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/58de4acd-1599-4113-a21c-ed6e8e248f20.jpg','2017-07-05 14:56:22','339u3c4.jpg'),(54,'10ekh1g.jpg','10ekh1g.jpg',58,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/3a05dc54-4573-4511-a1bf-b59d8551f76b.jpg','2017-07-05 14:56:22','10ekh1g.jpg'),(55,'1_20140112050128_hpjzl.jpg','1_20140112050128_hpjzl.jpg',34,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/90b00a4e-9c12-4e99-a625-904bf9c4f9df.jpg','2017-07-05 14:56:51','1_20140112050128_hpjzl.jpg'),(56,'t9f5oz.gif','t9f5oz.gif',18,'image/gif','http://oncn0mvq5.bkt.clouddn.com/67765cfc-42ed-41f1-a479-7653a188870e.gif','2017-07-05 16:08:48','t9f5oz.gif'),(57,'3703929218536479545.jpg','3703929218536479545.jpg',16,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/0e3cce13-e1a6-4fc5-99fd-5d0089f1ec73.jpg','2017-07-05 16:08:48','3703929218536479545.jpg'),(58,'wkscj9.jpg','wkscj9.jpg',37,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/1df45e23-54f6-47fd-9f12-a043f04e01b4.jpg','2017-07-05 16:56:10','wkscj9.jpg'),(59,'香港大婶眼中中国地图.jpg','香港大婶眼中中国地图.jpg',17,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/c825b446-6a7d-41b4-a91a-2dd639904c35.jpg','2017-07-05 16:56:10','香港大婶眼中中国地图.jpg'),(60,'35875519_1_1_.jpg','35875519_1_1_.jpg',59,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/56c50feb-dd83-48f0-976d-8878a31ab271.jpg','2017-07-05 16:56:10','35875519_1_1_.jpg'),(61,'2wprtrt.jpg','2wprtrt.jpg',41,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/151e7239-8da0-4c33-95a5-a5254580482d.jpg','2017-07-05 17:02:53','2wprtrt.jpg'),(62,'2n654dj.jpg','2n654dj.jpg',61,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/200c9a39-c2c9-4af3-b0d4-c5dd8ba6e2a3.jpg','2017-07-05 17:02:53','2n654dj.jpg'),(63,'3.jpg','3.jpg',270,'image/jpeg','http://oncn0mvq5.bkt.clouddn.com/7090395d-4176-4328-a003-cd80c8b1b73a.jpg','2017-07-05 17:02:53','3.jpg');

/*Table structure for table `sys_banner` */

DROP TABLE IF EXISTS `sys_banner`;

CREATE TABLE `sys_banner` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `showOrder` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_banner` */

/*Table structure for table `sys_friendlink` */

DROP TABLE IF EXISTS `sys_friendlink`;

CREATE TABLE `sys_friendlink` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `showOrder` int(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_friendlink` */

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `parentId` bigint(50) DEFAULT NULL,
  `parentName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`parentId`,`parentName`,`permission`,`icon`,`uri`) values (1,'根节点',0,'','root','',''),(2,'首页',1,'根节点','admin:index','fa fa-reorder','admin/index'),(3,'内容',1,'根节点','content','fa fa-reorder','#'),(4,'所有文章',3,'内容','articles','fa fa-reorder','admin/article/index'),(5,'文章列表',4,'所有文章','article:list','fa fa-reorder','admin/article/list'),(6,'撰写文章',3,'内容','article:add','fa fa-reorder','admin/article/add'),(7,'修改文章',4,'所有文章','article:edit','fa fa-reorder','admin/article/edit'),(8,'删除文章',4,'所有文章','article:delete','fa fa-reorder','admin/article/delete'),(9,'所有栏目',3,'内容','categorys','fa fa-reorder','admin/category/index'),(10,'栏目列表',9,'所有栏目','category:list','fa fa-reorder','admin/category/list'),(11,'添加栏目',9,'所有栏目','category:add','fa fa-reorder','admin/category/add'),(12,'修改栏目',9,'所有栏目','category:edit','fa fa-reorder','admin/category/edit'),(13,'删除栏目',9,'所有栏目','category:delete','fa fa-reorder','admin/category/delete'),(14,'页面',1,'根节点','page','fa fa-reorder','#'),(15,'附件',1,'根节点','attach','fa fa-reorder','#'),(16,'用户',1,'根节点','users','fa fa-reorder','#'),(17,'所有用户',16,'用户','user:index','fa fa-reorder','admin/user/index'),(18,'用户列表',17,'所有用户','user:list','fa fa-reorder','admin/user/list'),(19,'添加用户',17,'用户','user:add','fa fa-reorder','admin/user/add'),(20,'编辑用户',17,'所有用户','user:edit','fa fa-reorder','admin/user/edit'),(21,'删除用户',17,'所有用户','user:delete','fa fa-reorder','admin/user/delete'),(22,'我的资料',16,'用户','user:profile','fa fa-reorder','admin/user/profile'),(23,'模板',1,'根节点','templates','fa fa-reorder','#'),(24,'所有模板',23,'模板','template:index','fa fa-reorder','admin/template/index'),(25,'安装模板',23,'模板','template:install','fa fa-reorder','admin/template/add'),(26,'模板列表',24,'所有模板','template:list','fa fa-reorder','admin/template/list'),(27,'编辑模板',24,'所有模板','template:edit','fa fa-reorder','admin/template/edit'),(28,'删除模板',24,'所有模板','template:delete','fa fa-reorder','admin/template/delete'),(29,'插件',1,'根节点','plugins','fa fa-reorder','#'),(30,'所有插件',29,'插件','plugin:index','fa fa-reorder','admin/plugin/index'),(31,'安装插件',29,'插件','plugin:install','fa fa-reorder','admin/plugin/add'),(32,'插件列表',30,'所有插件','plugin:list','fa fa-reorder','admin/plugin/list'),(33,'编辑插件',30,'所有插件','plugin:edit','fa fa-reorder','admin/plugin/edit'),(34,'删除插件',30,'所有插件','plugin:delete','fa fa-reorder','admin/plugin/delete'),(35,'轮播图',1,'根节点','banners','fa fa-reorder','admin/banner/index'),(36,'新轮播图',35,'轮播图','banner:add','fa fa-reorder','admin/banner/add'),(37,'编辑轮播图',35,'轮播图','banner:edit','fa fa-reorder','admin/banner/edit'),(38,'删除轮播图',35,'轮播图','banner:delete','fa fa-reorder','admin/banner/delete'),(39,'轮播图列表',35,'轮播图','banner:list','fa fa-reorder','admin/banner/list'),(40,'友情链接',1,'根节点','links','fa fa-reorder','admin/link/index'),(41,'新增友链',40,'友情链接','link:add','fa fa-reorder','admin/link/add'),(42,'修改友链',40,'友情链接','link:edit','fa fa-reorder','admin/link/edit'),(43,'删除友链',40,'友情链接','link:delete','fa fa-reorder','admin/link/delete'),(44,'友链列表',40,'友情链接','link:list','fa fa-reorder','admin/link/list'),(45,'角色管理',1,'根节点','roles','fa fa-reorder','#'),(51,'所有角色',45,'角色管理','role:index','fa fa-reorder','admin/role/index'),(52,'角色列表',51,'所有角色','role:list','fa fa-reorder','admin/role/list'),(53,'添加角色',51,'所有角色','role:add','fa fa-reorder','admin/role/add'),(54,'编辑角色',51,'所有角色','role:edit','fa fa-reorder','admin/role/edit'),(55,'删除角色',51,'所有角色','role:delete','fa fa-reorder','admin/role/delete'),(56,'订单管理',1,'订单管理','orders','fa fa-reorder','#'),(57,'订单列表',56,'订单管理','order:index','fa fa-reorder','admin/order/adminOrderList'),(58,'待审核退票列表',56,'订单管理','order:returnCheckList','fa fa-reorder','admin/order/returnList'),(59,'退票列表',56,'订单管理','order:returnList','fa fa-reorder','admin/order/returnListDone'),(60,'待检票列表',56,'订单管理','order:checkList','fa fa-reorder','admin/order/checkTicketList'),(62,'游客管理',1,'根节点','members','fa fa-reorder','#'),(63,'所有游客',62,'游客管理','member:index','fa fa-reorder','admin/member/index'),(69,'产品管理',1,'根节点','products','fa fa-reorder','#'),(70,'景区产品管理',69,'产品管理','ticket:index','fa fa-reorder','admin/ticket/index'),(71,'新增景区产品',70,'景区产品管理','ticket:add','fa fa-reorder','admin/ticket/add'),(72,'删除景区产品',70,'景区产品管理','ticket:delete','fa fa-reorder','admin/ticket/delete'),(73,'景区产品列表',70,'景区产品管理','ticket:list','fa fa-reorder','admin/ticket/list'),(74,'产品组管理',69,'产品管理','ticketGroup:index','fa fa-reorder','admin/ticketGroup/index'),(75,'产品组列表',74,'产品组管理','ticketGroup:list','fa fa-reorder','admin/ticketGroup/list'),(76,'新增产品组',74,'产品组管理','ticketGroup:add','fa fa-reorder','admin/ticketGroup/add'),(77,'删除产品组',74,'产品组管理','ticketGroup:delete','fa fa-reorder','admin/ticketGroup/delete'),(78,'景区管理',69,'产品管理','scenic:index','fa fa-reorder','admin/scenic/index'),(79,'添加景区',78,'景区管理','scenic:add','fa fa-reorder','admin/scenic/add'),(80,'景区列表',78,'景区管理','scenic:list','fa fa-reorder','admin/scenic/list'),(81,'删除景区',78,'景区管理','scenic:delete','fa fa-reorder','admin/scenic/delete'),(82,'修改景区',78,'景区管理','scenic:edit','fa fa-reorder','admin/scenic/edit');

/*Table structure for table `sys_plugin` */

DROP TABLE IF EXISTS `sys_plugin`;

CREATE TABLE `sys_plugin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '标识(自增)',
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '插件名称',
  `account` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开发者账户',
  `accessKey` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '应用访问码',
  `secretKey` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密钥',
  `provider` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '插件提供方',
  `version` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '插件版本',
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `script` text COLLATE utf8_bin COMMENT '插件脚本',
  `status` int(11) NOT NULL COMMENT '是否使用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_plugin` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`createTime`,`description`) values (59,'administrator','2017-05-31 17:46:06','超级管理员[系统最高权限拥有者]'),(60,'editor','2017-05-31 17:46:41','文章编辑[系统小编]'),(61,'master','2017-05-31 17:47:17','系统审核人员[爱管闲事的人]');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(50) DEFAULT NULL,
  `permissionId` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=924 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`id`,`roleId`,`permissionId`) values (440,61,1),(441,61,2),(442,61,3),(443,61,4),(444,61,5),(445,61,7),(446,61,8),(447,61,6),(448,61,9),(449,61,10),(450,61,11),(451,61,12),(452,61,13),(616,60,1),(617,60,2),(618,60,3),(619,60,4),(620,60,5),(621,60,7),(622,60,8),(623,60,6),(624,60,9),(625,60,10),(626,60,11),(627,60,12),(628,60,13),(629,60,16),(630,60,17),(631,60,18),(632,60,20),(633,60,45),(634,60,51),(635,60,52),(636,60,54),(854,59,1),(855,59,2),(856,59,3),(857,59,4),(858,59,5),(859,59,7),(860,59,8),(861,59,6),(862,59,9),(863,59,10),(864,59,11),(865,59,12),(866,59,13),(867,59,14),(868,59,16),(869,59,17),(870,59,18),(871,59,19),(872,59,20),(873,59,21),(874,59,22),(875,59,23),(876,59,24),(877,59,26),(878,59,27),(879,59,28),(880,59,25),(881,59,29),(882,59,30),(883,59,32),(884,59,33),(885,59,34),(886,59,31),(887,59,35),(888,59,36),(889,59,37),(890,59,38),(891,59,39),(892,59,40),(893,59,41),(894,59,42),(895,59,43),(896,59,44),(897,59,45),(898,59,51),(899,59,52),(900,59,53),(901,59,54),(902,59,55),(903,59,56),(904,59,57),(905,59,58),(906,59,59),(907,59,60),(908,59,62),(909,59,63),(910,59,69),(911,59,70),(912,59,71),(913,59,72),(914,59,73),(915,59,74),(916,59,75),(917,59,76),(918,59,77),(919,59,78),(920,59,79),(921,59,80),(922,59,81),(923,59,82);

/*Table structure for table `sys_site` */

DROP TABLE IF EXISTS `sys_site`;

CREATE TABLE `sys_site` (
  `id` bigint(50) NOT NULL COMMENT '非自增,默认为1L',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '网站名称',
  `title` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '网站标题',
  `subtitle` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '网站副标题',
  `domain` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '域名',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮箱',
  `phone` bigint(20) DEFAULT NULL COMMENT '联系电话',
  `qq` bigint(20) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `postCode` bigint(50) DEFAULT NULL COMMENT '邮政编码',
  `description` text COLLATE utf8_bin COMMENT '网站描述',
  `keyword` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '网站关键字',
  `icp` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ICP备案号',
  `copyright` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '版权信息',
  `logo` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_site` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `username` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '昵称',
  `password` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `salt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '盐',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '状态 0：锁定 1：可用',
  `avatar` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `signature` text COLLATE utf8_bin COMMENT '个人简介',
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮箱',
  `type` int(11) DEFAULT NULL COMMENT '用户类型 0：guest 1:admin 2:user',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'qq号码',
  `weibo` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '微博账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`nickname`,`password`,`salt`,`createTime`,`status`,`avatar`,`signature`,`email`,`type`,`phone`,`qq`,`weibo`) values (8,'mastear@taolicloud.com','谭朝红','e7beacf47e22984e3eba6c2d19b0bb82','899810d5795e09218c3348e554b80177','2017-06-02 17:02:42',1,'resources/admin/dist/img/avatar5.png','我们的征途是星辰大海','ramostear@163.com',2,'18645229963','897380344','ramostear@sina.com'),(9,'ramostear@163.com','谭朝红','3eb1a2ad631e7e504b58476aa0e2f136','7802f4e6ceb8832c136219adfbd7a124','2017-06-06 16:12:43',1,'resources/admin/dist/img/avatar5.png','stay with me!','ramostear@163.com',1,'18645229963','897380344','ramostear@sina.cn'),(10,'abihu@163.com','尼桑','db08953fc6efd370675895eaf73faf98','eca077722595972b503e799814dabe3a','2017-06-26 15:56:41',1,'resources/admin/dist/img/avatar5.png','fsdafasdfaasdf','ramostear@163.com',1,'18645229963','897685244','sina@qq.com'),(30,'test@tlc.com','不要改不要删','a05c254b629844aa83c063e3938985de','0624ef250360f584a447a665abfd478c','2017-06-30 11:10:36',1,NULL,NULL,'test@tlc.com',NULL,NULL,NULL,NULL),(31,'admin@163.com','超级管理员','7f8f3315ea4e718833caa98645944af7','ec1866b4ceb5209cb166e4d6d2798b82','2017-06-30 16:21:44',1,'resources/admin/dist/img/avatar5.png','stay with me','admin@163.com',1,'18645229963','897380344','ramostear@163.com'),(32,'13648362969','13648362969','9536e987bb3a5faed2170aefefb7136c','170e926ce9b4a2954ee711482fc9bc80','2017-06-30 16:51:30',1,NULL,NULL,NULL,2,NULL,NULL,NULL),(33,'18645229963','18645229963','c0227e5601ae7a547c291f34bec680b7','5532c80ee19b1cbb7e375100449243e7','2017-07-04 15:49:45',1,NULL,NULL,NULL,2,NULL,NULL,NULL),(34,'13648362965','13648362965','216598c36477f924a6e308df650a56ee','1123b6f5e9f9efc824485a7ffa5a2891','2017-07-05 11:33:20',1,NULL,NULL,NULL,2,NULL,NULL,NULL);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `userId` bigint(50) DEFAULT NULL,
  `roleId` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`userId`,`roleId`) values (6,8,59),(7,8,60),(8,8,61),(9,9,59),(10,9,60),(11,9,61),(12,10,60),(19,30,59),(20,31,59);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
