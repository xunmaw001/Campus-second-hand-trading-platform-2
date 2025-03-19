-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmuo472
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='客服咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-03-03 16:36:11',1,1,'提问1','回复1',1),(72,'2021-03-03 16:36:11',2,2,'提问2','回复2',2),(73,'2021-03-03 16:36:11',3,3,'提问3','回复3',3),(74,'2021-03-03 16:36:11',4,4,'提问4','回复4',4),(75,'2021-03-03 16:36:11',5,5,'提问5','回复5',5),(76,'2021-03-03 16:36:11',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmuo472/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmuo472/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmuo472/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaishangpin`
--

DROP TABLE IF EXISTS `goumaishangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shangpinxiangqing` varchar(200) DEFAULT NULL COMMENT '商品详情',
  `shangjiahao` varchar(200) DEFAULT NULL COMMENT '商家号',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614789653386 DEFAULT CHARSET=utf8 COMMENT='购买商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaishangpin`
--

LOCK TABLES `goumaishangpin` WRITE;
/*!40000 ALTER TABLE `goumaishangpin` DISABLE KEYS */;
INSERT INTO `goumaishangpin` VALUES (41,'2021-03-03 16:36:11','订单编号1','商品名称1','商品类型1','成色1','价格1','商品详情1','商家号1','2021-03-04','用户名1','姓名1','手机号码1','收货地址1','未支付'),(42,'2021-03-03 16:36:11','订单编号2','商品名称2','商品类型2','成色2','价格2','商品详情2','商家号2','2021-03-04','用户名2','姓名2','手机号码2','收货地址2','未支付'),(43,'2021-03-03 16:36:11','订单编号3','商品名称3','商品类型3','成色3','价格3','商品详情3','商家号3','2021-03-04','用户名3','姓名3','手机号码3','收货地址3','未支付'),(44,'2021-03-03 16:36:11','订单编号4','商品名称4','商品类型4','成色4','价格4','商品详情4','商家号4','2021-03-04','用户名4','姓名4','手机号码4','收货地址4','未支付'),(45,'2021-03-03 16:36:11','订单编号5','商品名称5','商品类型5','成色5','价格5','商品详情5','商家号5','2021-03-04','用户名5','姓名5','手机号码5','收货地址5','未支付'),(46,'2021-03-03 16:36:11','订单编号6','商品名称6','商品类型6','成色6','价格6','商品详情6','商家号6','2021-03-04','用户名6','姓名6','手机号码6','收货地址6','未支付'),(1614789653385,'2021-03-03 16:40:52','2021340405364472000','图书','商品分类1','九成新','28','dfdfsdfefd','商家1','2021-03-06','用户1','姓名1','13823888881','收货地址1','已支付');
/*!40000 ALTER TABLE `goumaishangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-03-03 16:36:11',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-03 16:36:11',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-03 16:36:11',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-03 16:36:11',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-03 16:36:11',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-03 16:36:11',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-03 16:36:11','标题1','简介1','http://localhost:8080/jspmuo472/upload/news_picture1.jpg','内容1'),(82,'2021-03-03 16:36:11','标题2','简介2','http://localhost:8080/jspmuo472/upload/news_picture2.jpg','内容2'),(83,'2021-03-03 16:36:11','标题3','简介3','http://localhost:8080/jspmuo472/upload/news_picture3.jpg','内容3'),(84,'2021-03-03 16:36:11','标题4','简介4','http://localhost:8080/jspmuo472/upload/news_picture4.jpg','内容4'),(85,'2021-03-03 16:36:11','标题5','简介5','http://localhost:8080/jspmuo472/upload/news_picture5.jpg','内容5'),(86,'2021-03-03 16:36:11','标题6','简介6','http://localhost:8080/jspmuo472/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiahao` varchar(200) NOT NULL COMMENT '商家号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) NOT NULL COMMENT '商家姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiahao` (`shangjiahao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (51,'2021-03-03 16:36:11','商家1','123456','商家姓名1','http://localhost:8080/jspmuo472/upload/shangjia_touxiang1.jpg','男','13823888881','773890001@qq.com'),(52,'2021-03-03 16:36:11','商家2','123456','商家姓名2','http://localhost:8080/jspmuo472/upload/shangjia_touxiang2.jpg','男','13823888882','773890002@qq.com'),(53,'2021-03-03 16:36:11','商家3','123456','商家姓名3','http://localhost:8080/jspmuo472/upload/shangjia_touxiang3.jpg','男','13823888883','773890003@qq.com'),(54,'2021-03-03 16:36:11','商家4','123456','商家姓名4','http://localhost:8080/jspmuo472/upload/shangjia_touxiang4.jpg','男','13823888884','773890004@qq.com'),(55,'2021-03-03 16:36:11','商家5','123456','商家姓名5','http://localhost:8080/jspmuo472/upload/shangjia_touxiang5.jpg','男','13823888885','773890005@qq.com'),(56,'2021-03-03 16:36:11','商家6','123456','商家姓名6','http://localhost:8080/jspmuo472/upload/shangjia_touxiang6.jpg','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfahuo`
--

DROP TABLE IF EXISTS `shangpinfahuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfahuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fahuodanhao` varchar(200) NOT NULL COMMENT '发货单号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `shangjiahao` varchar(200) DEFAULT NULL COMMENT '商家号',
  `fahuoriqi` date DEFAULT NULL COMMENT '发货日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fahuodanhao` (`fahuodanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614789713167 DEFAULT CHARSET=utf8 COMMENT='商品发货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfahuo`
--

LOCK TABLES `shangpinfahuo` WRITE;
/*!40000 ALTER TABLE `shangpinfahuo` DISABLE KEYS */;
INSERT INTO `shangpinfahuo` VALUES (61,'2021-03-03 16:36:11','发货单号1','商品名称1','商品类型1','成色1','价格1','用户名1','姓名1','手机号码1','收货地址1','商家号1','2021-03-04'),(62,'2021-03-03 16:36:11','发货单号2','商品名称2','商品类型2','成色2','价格2','用户名2','姓名2','手机号码2','收货地址2','商家号2','2021-03-04'),(63,'2021-03-03 16:36:11','发货单号3','商品名称3','商品类型3','成色3','价格3','用户名3','姓名3','手机号码3','收货地址3','商家号3','2021-03-04'),(64,'2021-03-03 16:36:11','发货单号4','商品名称4','商品类型4','成色4','价格4','用户名4','姓名4','手机号码4','收货地址4','商家号4','2021-03-04'),(65,'2021-03-03 16:36:11','发货单号5','商品名称5','商品类型5','成色5','价格5','用户名5','姓名5','手机号码5','收货地址5','商家号5','2021-03-04'),(66,'2021-03-03 16:36:11','发货单号6','商品名称6','商品类型6','成色6','价格6','用户名6','姓名6','手机号码6','收货地址6','商家号6','2021-03-04'),(1614789713166,'2021-03-03 16:41:52','1614789708','图书','商品分类1','九成新','28','用户1','姓名1','13823888881','收货地址1','商家1','2021-03-06');
/*!40000 ALTER TABLE `shangpinfahuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (21,'2021-03-03 16:36:11','商品分类1'),(22,'2021-03-03 16:36:11','商品分类2'),(23,'2021-03-03 16:36:11','商品分类3'),(24,'2021-03-03 16:36:11','商品分类4'),(25,'2021-03-03 16:36:11','商品分类5'),(26,'2021-03-03 16:36:11','商品分类6');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shangjiahao` varchar(200) DEFAULT NULL COMMENT '商家号',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614789621909 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (31,'2021-03-03 16:36:11','商品名称1','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian1.jpg','商品类型1','成色1',1,'商品详情1','2021-03-04','商家号1','2021-03-04 00:39:30',2),(32,'2021-03-03 16:36:11','商品名称2','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian2.jpg','商品类型2','成色2',2,'商品详情2','2021-03-04','商家号2','2021-03-04 00:36:11',2),(33,'2021-03-03 16:36:11','商品名称3','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian3.jpg','商品类型3','成色3',3,'商品详情3','2021-03-04','商家号3','2021-03-04 00:36:11',3),(34,'2021-03-03 16:36:11','商品名称4','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian4.jpg','商品类型4','成色4',4,'商品详情4','2021-03-04','商家号4','2021-03-04 00:36:11',4),(35,'2021-03-03 16:36:11','商品名称5','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian5.jpg','商品类型5','成色5',5,'商品详情5','2021-03-04','商家号5','2021-03-04 00:36:11',5),(36,'2021-03-03 16:36:11','商品名称6','http://localhost:8080/jspmuo472/upload/shangpinxinxi_tupian6.jpg','商品类型6','成色6',6,'商品详情6','2021-03-04','商家号6','2021-03-04 00:36:11',6),(1614789621908,'2021-03-03 16:40:21','图书','http://localhost:8080/jspmuo472/upload/1614789604434.jfif','商品分类1','九成新',28,'dfdfsdfefd','2021-03-04','商家1','2021-03-04 00:40:55',2);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','ycxl2uqqw9hzpgxakdod8wgk20aq9i3n','2021-03-03 16:37:41','2021-03-03 17:46:03'),(2,51,'商家1','shangjia','商家','449oek5ebgfqdyvph0214n1hxiii6p10','2021-03-03 16:39:47','2021-03-03 17:41:27'),(3,1,'abo','users','管理员','z9jr49i6soszt8bdhxux2w6o3ki2aqs7','2021-03-03 16:44:22','2021-03-06 04:59:46');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-03 16:36:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-03 16:36:11','用户1','123456','姓名1','http://localhost:8080/jspmuo472/upload/yonghu_touxiang1.jpg','女','13823888881','773890001@qq.com','收货地址1'),(12,'2021-03-03 16:36:11','用户2','123456','姓名2','http://localhost:8080/jspmuo472/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com','收货地址2'),(13,'2021-03-03 16:36:11','用户3','123456','姓名3','http://localhost:8080/jspmuo472/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com','收货地址3'),(14,'2021-03-03 16:36:11','用户4','123456','姓名4','http://localhost:8080/jspmuo472/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com','收货地址4'),(15,'2021-03-03 16:36:11','用户5','123456','姓名5','http://localhost:8080/jspmuo472/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com','收货地址5'),(16,'2021-03-03 16:36:11','用户6','123456','姓名6','http://localhost:8080/jspmuo472/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com','收货地址6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 11:03:27
