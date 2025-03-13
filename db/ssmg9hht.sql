-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmg9hht
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmg9hht/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmg9hht/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmg9hht/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fudaoyuan`
--

DROP TABLE IF EXISTS `fudaoyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fudaoyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fudaoyuangonghao` varchar(200) NOT NULL COMMENT '辅导员工号',
  `fudaoyuanxingming` varchar(200) NOT NULL COMMENT '辅导员姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fudaoyuangonghao` (`fudaoyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802800520 DEFAULT CHARSET=utf8 COMMENT='辅导员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fudaoyuan`
--

LOCK TABLES `fudaoyuan` WRITE;
/*!40000 ALTER TABLE `fudaoyuan` DISABLE KEYS */;
INSERT INTO `fudaoyuan` VALUES (21,'2021-01-28 02:57:20','辅导员1','辅导员姓名1','123456','男','13823888881','773890001@qq.com'),(22,'2021-01-28 02:57:20','辅导员2','辅导员姓名2','123456','男','13823888882','773890002@qq.com'),(23,'2021-01-28 02:57:20','辅导员3','辅导员姓名3','123456','男','13823888883','773890003@qq.com'),(24,'2021-01-28 02:57:20','辅导员4','辅导员姓名4','123456','男','13823888884','773890004@qq.com'),(25,'2021-01-28 02:57:20','辅导员5','辅导员姓名5','123456','男','13823888885','773890005@qq.com'),(26,'2021-01-28 02:57:20','辅导员6','辅导员姓名6','123456','男','13823888886','773890006@qq.com'),(1611802800519,'2021-01-28 03:00:00','123','胡月','123','男','13613613633','565665@qq.com');
/*!40000 ALTER TABLE `fudaoyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiangxuejinmingcheng` varchar(200) DEFAULT NULL COMMENT '奖学金名称',
  `jiangxuejinleixing` varchar(200) DEFAULT NULL COMMENT '奖学金类型',
  `jiangjin` varchar(200) DEFAULT NULL COMMENT '奖金',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611803153538 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (91,'2021-01-28 02:57:20','学生账号1','学生姓名1','奖学金名称1','奖学金类型1','奖金1','备注1','2021-01-28 10:57:20'),(92,'2021-01-28 02:57:20','学生账号2','学生姓名2','奖学金名称2','奖学金类型2','奖金2','备注2','2021-01-28 10:57:20'),(93,'2021-01-28 02:57:20','学生账号3','学生姓名3','奖学金名称3','奖学金类型3','奖金3','备注3','2021-01-28 10:57:20'),(94,'2021-01-28 02:57:20','学生账号4','学生姓名4','奖学金名称4','奖学金类型4','奖金4','备注4','2021-01-28 10:57:20'),(95,'2021-01-28 02:57:20','学生账号5','学生姓名5','奖学金名称5','奖学金类型5','奖金5','备注5','2021-01-28 10:57:20'),(96,'2021-01-28 02:57:20','学生账号6','学生姓名6','奖学金名称6','奖学金类型6','奖金6','备注6','2021-01-28 10:57:20'),(1611803153537,'2021-01-28 03:05:53','125','李月','扶贫助学金','助学金','20000','11','2021-01-30 00:00:00');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangchengxinxi`
--

DROP TABLE IF EXISTS `jiangchengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangchengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jutineirong` longtext COMMENT '具体内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611803077943 DEFAULT CHARSET=utf8 COMMENT='奖惩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangchengxinxi`
--

LOCK TABLES `jiangchengxinxi` WRITE;
/*!40000 ALTER TABLE `jiangchengxinxi` DISABLE KEYS */;
INSERT INTO `jiangchengxinxi` VALUES (71,'2021-01-28 02:57:20','标题1','学生账号1','学生姓名1','奖励','具体内容1','2021-01-28 10:57:20'),(72,'2021-01-28 02:57:20','标题2','学生账号2','学生姓名2','奖励','具体内容2','2021-01-28 10:57:20'),(73,'2021-01-28 02:57:20','标题3','学生账号3','学生姓名3','奖励','具体内容3','2021-01-28 10:57:20'),(74,'2021-01-28 02:57:20','标题4','学生账号4','学生姓名4','奖励','具体内容4','2021-01-28 10:57:20'),(75,'2021-01-28 02:57:20','标题5','学生账号5','学生姓名5','奖励','具体内容5','2021-01-28 10:57:20'),(76,'2021-01-28 02:57:20','标题6','学生账号6','学生姓名6','奖励','具体内容6','2021-01-28 10:57:20'),(1611803077942,'2021-01-28 03:04:37','2021年化学竞赛第一名','125','李月','奖励','<p>2021年化学竞赛第一名</p>','2021-01-30 00:00:00');
/*!40000 ALTER TABLE `jiangchengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangxuejinleixing`
--

DROP TABLE IF EXISTS `jiangxuejinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangxuejinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangxuejinleixing` varchar(200) NOT NULL COMMENT '奖学金类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiangxuejinleixing` (`jiangxuejinleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802837295 DEFAULT CHARSET=utf8 COMMENT='奖学金类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangxuejinleixing`
--

LOCK TABLES `jiangxuejinleixing` WRITE;
/*!40000 ALTER TABLE `jiangxuejinleixing` DISABLE KEYS */;
INSERT INTO `jiangxuejinleixing` VALUES (41,'2021-01-28 02:57:20','奖学金类型1'),(42,'2021-01-28 02:57:20','奖学金类型2'),(43,'2021-01-28 02:57:20','奖学金类型3'),(44,'2021-01-28 02:57:20','奖学金类型4'),(45,'2021-01-28 02:57:20','奖学金类型5'),(46,'2021-01-28 02:57:20','奖学金类型6'),(1611802837294,'2021-01-28 03:00:36','助学金');
/*!40000 ALTER TABLE `jiangxuejinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangxuejinshenqing`
--

DROP TABLE IF EXISTS `jiangxuejinshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangxuejinshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangxuejinmingcheng` varchar(200) DEFAULT NULL COMMENT '奖学金名称',
  `jiangxuejinleixing` varchar(200) DEFAULT NULL COMMENT '奖学金类型',
  `jiangjin` varchar(200) DEFAULT NULL COMMENT '奖金',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `jiatingchengyuanrenshu` int(11) DEFAULT NULL COMMENT '家庭成员人数',
  `nianshouru` varchar(200) DEFAULT NULL COMMENT '年收入',
  `shenqingbiao` varchar(200) DEFAULT NULL COMMENT '申请表',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `jutijiatingqingkuang` longtext COMMENT '具体家庭情况',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802991623 DEFAULT CHARSET=utf8 COMMENT='奖学金申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangxuejinshenqing`
--

LOCK TABLES `jiangxuejinshenqing` WRITE;
/*!40000 ALTER TABLE `jiangxuejinshenqing` DISABLE KEYS */;
INSERT INTO `jiangxuejinshenqing` VALUES (81,'2021-01-28 02:57:20','奖学金名称1','奖学金类型1','奖金1','学生账号1','学生姓名1','班级1','年级1','性别1','家庭地址1',1,'年收入1','','2021-01-28 10:57:20','具体家庭情况1','是',''),(82,'2021-01-28 02:57:20','奖学金名称2','奖学金类型2','奖金2','学生账号2','学生姓名2','班级2','年级2','性别2','家庭地址2',2,'年收入2','','2021-01-28 10:57:20','具体家庭情况2','是',''),(83,'2021-01-28 02:57:20','奖学金名称3','奖学金类型3','奖金3','学生账号3','学生姓名3','班级3','年级3','性别3','家庭地址3',3,'年收入3','','2021-01-28 10:57:20','具体家庭情况3','是',''),(84,'2021-01-28 02:57:20','奖学金名称4','奖学金类型4','奖金4','学生账号4','学生姓名4','班级4','年级4','性别4','家庭地址4',4,'年收入4','','2021-01-28 10:57:20','具体家庭情况4','是',''),(85,'2021-01-28 02:57:20','奖学金名称5','奖学金类型5','奖金5','学生账号5','学生姓名5','班级5','年级5','性别5','家庭地址5',5,'年收入5','','2021-01-28 10:57:20','具体家庭情况5','是',''),(86,'2021-01-28 02:57:20','奖学金名称6','奖学金类型6','奖金6','学生账号6','学生姓名6','班级6','年级6','性别6','家庭地址6',6,'年收入6','','2021-01-28 10:57:20','具体家庭情况6','是',''),(1611802991622,'2021-01-28 03:03:11','扶贫助学金','助学金','20000','125','李月','105','大一','女','叶景邨村',5,'2555','http://localhost:8080/ssmg9hht/upload/1611802987582.doc','2021-01-30 00:00:00','<p>111</p>','是','2021年化学竞赛第一名\n教务处通过');
/*!40000 ALTER TABLE `jiangxuejinshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangxuejinxinxi`
--

DROP TABLE IF EXISTS `jiangxuejinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangxuejinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangxuejinmingcheng` varchar(200) DEFAULT NULL COMMENT '奖学金名称',
  `jiangxuejinleixing` varchar(200) DEFAULT NULL COMMENT '奖学金类型',
  `jiangjin` varchar(200) DEFAULT NULL COMMENT '奖金',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `shenqingbiao` varchar(200) DEFAULT NULL COMMENT '申请表',
  `shenqingtiaojian` longtext COMMENT '申请条件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802884167 DEFAULT CHARSET=utf8 COMMENT='奖学金信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangxuejinxinxi`
--

LOCK TABLES `jiangxuejinxinxi` WRITE;
/*!40000 ALTER TABLE `jiangxuejinxinxi` DISABLE KEYS */;
INSERT INTO `jiangxuejinxinxi` VALUES (51,'2021-01-28 02:57:20','奖学金名称1','奖学金类型1','奖金1','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件1','2021-01-28 10:57:20'),(52,'2021-01-28 02:57:20','奖学金名称2','奖学金类型2','奖金2','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件2','2021-01-28 10:57:20'),(53,'2021-01-28 02:57:20','奖学金名称3','奖学金类型3','奖金3','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件3','2021-01-28 10:57:20'),(54,'2021-01-28 02:57:20','奖学金名称4','奖学金类型4','奖金4','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件4','2021-01-28 10:57:20'),(55,'2021-01-28 02:57:20','奖学金名称5','奖学金类型5','奖金5','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件5','2021-01-28 10:57:20'),(56,'2021-01-28 02:57:20','奖学金名称6','奖学金类型6','奖金6','2021-01-28 10:57:20','2021-01-28 10:57:20','','申请条件6','2021-01-28 10:57:20'),(1611802884166,'2021-01-28 03:01:23','扶贫助学金','助学金','20000','2021-02-06 00:00:00','2021-04-03 00:00:00','http://localhost:8080/ssmg9hht/upload/1611802870771.doc','<p>填写真实信息</p>','2021-01-30 00:00:00');
/*!40000 ALTER TABLE `jiangxuejinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaowuchu`
--

DROP TABLE IF EXISTS `jiaowuchu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaowuchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaowuchugonghao` varchar(200) NOT NULL COMMENT '教务处工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaowuxingming` varchar(200) NOT NULL COMMENT '教务姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaowuchugonghao` (`jiaowuchugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802822926 DEFAULT CHARSET=utf8 COMMENT='教务处';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaowuchu`
--

LOCK TABLES `jiaowuchu` WRITE;
/*!40000 ALTER TABLE `jiaowuchu` DISABLE KEYS */;
INSERT INTO `jiaowuchu` VALUES (31,'2021-01-28 02:57:20','教务处1','123456','教务姓名1','男','13823888881','773890001@qq.com'),(32,'2021-01-28 02:57:20','教务处2','123456','教务姓名2','男','13823888882','773890002@qq.com'),(33,'2021-01-28 02:57:20','教务处3','123456','教务姓名3','男','13823888883','773890003@qq.com'),(34,'2021-01-28 02:57:20','教务处4','123456','教务姓名4','男','13823888884','773890004@qq.com'),(35,'2021-01-28 02:57:20','教务处5','123456','教务姓名5','男','13823888885','773890005@qq.com'),(36,'2021-01-28 02:57:20','教务处6','123456','教务姓名6','男','13823888886','773890006@qq.com'),(1611802822925,'2021-01-28 03:00:22','456','456','顾红','女','13613613633','5445@qq.com');
/*!40000 ALTER TABLE `jiaowuchu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','bsgmxne0m0ler7i8eh7checqrusbnqch','2021-01-28 02:59:35','2021-01-28 04:05:32'),(2,1611802943918,'125','xuesheng','学生','pdnfmvu19vdxxiakftlhwt1vjvm5ywh6','2021-01-28 03:02:30','2021-01-28 04:06:00'),(3,1611802800519,'123','fudaoyuan','辅导员','3aamxkn1ouw24ns2b8d67dxothxkcz3j','2021-01-28 03:03:25','2021-01-28 04:06:24'),(4,1611802822925,'456','jiaowuchu','教务处','f03u30be6khv58t2babvdywn782qoe5b','2021-01-28 03:04:57','2021-01-28 04:06:35');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-28 02:57:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiatingdizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `jiatingqingkuang` varchar(200) DEFAULT NULL COMMENT '家庭情况',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611802943919 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-28 02:57:20','学生1','学生姓名1','123456','男','专业1','13823888881','773890001@qq.com','年级1','班级1','家庭地址1','家庭情况1'),(12,'2021-01-28 02:57:20','学生2','学生姓名2','123456','男','专业2','13823888882','773890002@qq.com','年级2','班级2','家庭地址2','家庭情况2'),(13,'2021-01-28 02:57:20','学生3','学生姓名3','123456','男','专业3','13823888883','773890003@qq.com','年级3','班级3','家庭地址3','家庭情况3'),(14,'2021-01-28 02:57:20','学生4','学生姓名4','123456','男','专业4','13823888884','773890004@qq.com','年级4','班级4','家庭地址4','家庭情况4'),(15,'2021-01-28 02:57:20','学生5','学生姓名5','123456','男','专业5','13823888885','773890005@qq.com','年级5','班级5','家庭地址5','家庭情况5'),(16,'2021-01-28 02:57:20','学生6','学生姓名6','123456','男','专业6','13823888886','773890006@qq.com','年级6','班级6','家庭地址6','家庭情况6'),(1611802943918,'2021-01-28 03:02:23','125','李月','125','女','化学','13513513522','555454@qq.com','大一','105','叶景邨村','低保户');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueshengchengji` varchar(200) DEFAULT NULL COMMENT '学生成绩',
  `pingyu` longtext COMMENT '评语',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611803063766 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (61,'2021-01-28 02:57:20','标题1','学生账号1','学生姓名1','学生成绩1','评语1','2021-01-28 10:57:20'),(62,'2021-01-28 02:57:20','标题2','学生账号2','学生姓名2','学生成绩2','评语2','2021-01-28 10:57:20'),(63,'2021-01-28 02:57:20','标题3','学生账号3','学生姓名3','学生成绩3','评语3','2021-01-28 10:57:20'),(64,'2021-01-28 02:57:20','标题4','学生账号4','学生姓名4','学生成绩4','评语4','2021-01-28 10:57:20'),(65,'2021-01-28 02:57:20','标题5','学生账号5','学生姓名5','学生成绩5','评语5','2021-01-28 10:57:20'),(66,'2021-01-28 02:57:20','标题6','学生账号6','学生姓名6','学生成绩6','评语6','2021-01-28 10:57:20'),(1611803063765,'2021-01-28 03:04:23','2021年化学竞赛第一名','125','李月','98','2021年化学竞赛第一名','2021-01-30 00:00:00');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 11:50:28
