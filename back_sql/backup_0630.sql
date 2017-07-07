-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: erp_development
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('2973c7e296b1');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `license` varchar(64) DEFAULT NULL,
  `contact` char(10) DEFAULT NULL,
  `position` char(10) DEFAULT NULL,
  `cellphone` char(15) DEFAULT NULL,
  `telephone` char(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `adress` varchar(64) DEFAULT NULL,
  `saler` char(10) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  `tract` text,
  `client_no` varchar(50) DEFAULT NULL,
  `service_no` text,
  `submitter` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (2,'长沙翱云网络科技有限公司 ','','秦小明','','13348712175','','286735979@qq.com','286735979','湖南省长沙市岳麓区杜鹃路联美品格','梁嘉惠','了解','2017-3-13 希望成为湖南总代理  测试瘦客户机\n','','','汪斌'),(4,'郑州六艺电子科技有限公司','','钱晓波','','13333848169','','qxb128@qq.com','24552275','河南省郑州市金水区东风路文化路财经学院五号楼三单元三楼西','朱晓平','了解','20170314小平的客户，曾经签过代理，但是一直没出过什么货，觉得当地推虚拟化并不是很顺利\n','','','汪斌'),(6,'镇江市创臣信息科技有限公司','','高春城','','18952909995','','362646724@qq.com','362646724','','梁嘉惠','了解','了解企业版价格','','',NULL),(7,'成都绘景志成软件科技有限公司','','杨濒','','13683435820','','895151786@qq.com','895151786','','梁嘉和','了解','制造业, 300个点的桌面虚拟化，费用多少？瘦终端价格？\n2017-3-23:早上10：30通电话！杨生有事，有空再回电话！','','',NULL),(14,'漳州市网众技术服务有限公司','','沙茂兴','','13306068696','','203311@qq.com','203311','福建漳州市芗城区家芗0596六栋1314','梁嘉惠','了解',NULL,'','',NULL),(15,'东莞市业勤电脑网络有限公司','','陈小姐','','0769-22336890','','','','东莞市莞城东城大道75号金城大厦610室','梁嘉和','成交',NULL,'','',NULL),(16,'徐州市鼎恒电子科技有限公司','','尚伟','','13952154673','','103465102@qq.com','103465102','','梁嘉和','了解','中低端报价，使用VMware！20个用户！','','',NULL),(17,'厦门楷睿电子科技有限公司','','陈生','','13806009368','','42979196@qq.com','42979196','','梁嘉惠','了解','AX700  880元','','',NULL),(18,'翱云集团','','秦小明','总经理','13348712175','','286735979@qq.com','286735979','湖南省长沙市岳麓区杜鹃路联美品格','欧捷','待跟进',NULL,'001','',NULL),(19,'政府','','白先生','','18998918346','','2085187575@qq.com','2085187575','深圳','欧捷','待跟进',NULL,'002','',NULL),(20,'PC@CS','','陈先生','','18925712087','','4433827@qq.com','4433827','茶山镇','欧捷','待跟进',NULL,'003','',NULL),(21,'航天信息','','单亮','产品经理','18662700697','','fei_vi@163.com','75439061','江苏省南京市浦口区天润城7街区14栋308室','欧捷','待跟进',NULL,'004','',NULL),(22,'北京交通大学海滨学院计算机协会','','殷佳毅','协会会长','18513610221','','yinjiayi@live.cn','894578350','河北省沧州市黄骅市学院西路2009号北京交通大学海滨学院实验楼C213','欧捷','待跟进',NULL,'005','',NULL),(23,'郑州六艺电子科技有限公司','','钱晓波','经理','13333848169','','qxb128@qq.com','24552275','河南省郑州市金水区东风路文化路财经学院五号楼三单元三楼西','欧捷','待跟进',NULL,'006','',NULL),(24,'海南汉普科技有限公司','','海南汉普','经理','','0898-66532880','hnhanpu@163.com','1015341217','海南省海口市玉沙路20号','欧捷','待跟进',NULL,'007','',NULL),(25,'荆门市蓝星电脑有限公司','','温智飞','','15327555003','','57868529@qq.com','57868529','荆门市白云大道93号','欧捷','待跟进',NULL,'008','',NULL),(26,'中国电信股份有限公司扬中分公司','','高春城','工程师','18952909995','','18952909995@163.com','362646724','江苏省镇江市扬中市江洲西路48号','欧捷','待跟进',NULL,'009','',NULL),(27,'南京致益联信息科技有限公司','','李先生','','13382795958','','114661375@qq.com','114661357','南京市鼓楼区南昌路40号8008','欧捷','待跟进',NULL,'010','',NULL),(28,'深圳市力合微电子股份有限公司','','钟生','','13076902163','','','','深圳市南山区高科技工业园南区清华大学研究院C527 ','梁嘉和','待跟进',NULL,'','',NULL),(29,'深圳市星能计算机有限公司','','廖泽波','','18926070160','','','','深圳市龙华新区福龙路辅道祥昭大厦15楼','梁嘉和','了解',NULL,'','',NULL),(30,'宝辉灯饰','','秦勇','','15017140154','','','97173039','东莞虎门南面工业区','梁嘉和','了解',NULL,'','',NULL),(31,'北京同方微电子','','王飞','','18614043005','','','1049688047','','梁嘉和','成交',NULL,'','',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_traces`
--

DROP TABLE IF EXISTS `clients_traces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_traces` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `situation` varchar(200) DEFAULT NULL,
  `trace_date` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clients_traces` (`client_id`),
  CONSTRAINT `fk_clients_traces` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_traces`
--

LOCK TABLES `clients_traces` WRITE;
/*!40000 ALTER TABLE `clients_traces` DISABLE KEYS */;
INSERT INTO `clients_traces` VALUES (1,'','2017-05-16','',1);
/*!40000 ALTER TABLE `clients_traces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `upload_date` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'PO1-2017031401TW.pdf','2017-04-01','/var/www/Erp/data/PO1-2017031401TW.pdf','PO1-2017031401TW'),(3,'3-11H020076.pdf','2017-04-01','/var/www/Erp/data/3-11H020076.pdf','3-11H020076'),(5,'6-01H0100052.pdf','2017-04-01','/var/www/Erp/data/6-01H0100052.pdf','6-01H0100052'),(7,'6-01H0200071.pdf','2017-04-01','/var/www/Erp/data/6-01H0200071.pdf','6-01H0200071'),(8,'6-01H0300198.pdf','2017-04-01','/var/www/Erp/data/6-01H0300198.pdf','6-01H0300198'),(10,'8-01H0200068.pdf','2017-04-01','/var/www/Erp/data/8-01H0200068.pdf','8-01H0200068'),(12,'8-11H0101444.pdf','2017-04-01','/var/www/Erp/data/8-11H0101444.pdf','8-11H0101444'),(14,'8-11H0300882.pdf','2017-04-01','/var/www/Erp/data/8-11H0300882.pdf','8-11H0300882'),(15,'8-11H0302262.pdf','2017-04-01','/var/www/Erp/data/8-11H0302262.pdf','8-11H0302262'),(16,'80000506.pdf','2017-04-01','/var/www/Erp/data/80000506.pdf','80000506'),(17,'2017011901.pdf','2017-04-01','/var/www/Erp/data/2017011901.pdf','2017011901'),(18,'2017021401.pdf','2017-04-01','/var/www/Erp/data/2017021401.pdf','2017021401'),(19,'2017022101.pdf','2017-04-01','/var/www/Erp/data/2017022101.pdf','2017022101'),(20,'B-D2H30016.pdf','2017-04-01','/var/www/Erp/data/B-D2H30016.pdf','B-D2H30016'),(22,'B-D5G120002.pdf','2017-04-01','/var/www/Erp/data/B-D5G120002.pdf','B-D5G120002'),(24,'B-D5G120031.pdf','2017-04-01','/var/www/Erp/data/B-D5G120031.pdf','B-D5G120031'),(26,'B-D7H020002.pdf','2017-04-01','/var/www/Erp/data/B-D7H020002.pdf','B-D7H020002'),(28,'B-D8H020003.pdf','2017-04-01','/var/www/Erp/data/B-D8H020003.pdf','B-D8H020003'),(30,'B-D8H030001.pdf','2017-04-01','/var/www/Erp/data/B-D8H030001.pdf','B-D8H030001'),(32,'B-D8H030002.pdf','2017-04-01','/var/www/Erp/data/B-D8H030002.pdf','B-D8H030002'),(34,'B-M1G120059.pdf','2017-04-01','/var/www/Erp/data/B-M1G120059.pdf','B-M1G120059'),(36,'B-M1H020035.pdf','2017-04-01','/var/www/Erp/data/B-M1H020035.pdf','B-M1H020035'),(38,'B-M1H020047.pdf','2017-04-01','/var/www/Erp/data/B-M1H020047.pdf','B-M1H020047'),(40,'B-R1H020019.pdf','2017-04-01','/var/www/Erp/data/B-R1H020019.pdf','B-R1H020019'),(42,'B-R1H020026.pdf','2017-04-01','/var/www/Erp/data/B-R1H020026.pdf','B-R1H020026'),(44,'B-R3G120002.pdf','2017-04-01','/var/www/Erp/data/B-R3G120002.pdf','B-R3G120002'),(46,'B-R3H010005.pdf','2017-04-01','/var/www/Erp/data/B-R3H010005.pdf','B-R3H010005'),(48,'B-R6H010001.pdf','2017-04-01','/var/www/Erp/data/B-R6H010001.pdf','B-R6H010001'),(50,'B-R6H020003.pdf','2017-04-01','/var/www/Erp/data/B-R6H020003.pdf','B-R6H020003'),(52,'B-R6H020008.pdf','2017-04-01','/var/www/Erp/data/B-R6H020008.pdf','B-R6H020008'),(54,'B-R6H030002.pdf','2017-04-01','/var/www/Erp/data/B-R6H030002.pdf','B-R6H030002'),(56,'B-R6H030003.pdf','2017-04-01','/var/www/Erp/data/B-R6H030003.pdf','B-R6H030003'),(57,'CHPO-16-1115.pdf','2017-04-01','/var/www/Erp/data/CHPO-16-1115.pdf','CHPO-16-1115'),(58,'CHPO-16-1117.pdf','2017-04-01','/var/www/Erp/data/CHPO-16-1117.pdf','CHPO-16-1117'),(60,'D-11H0200588.pdf','2017-04-01','/var/www/Erp/data/D-11H0200588.pdf','D-11H0200588'),(61,'G-01G1200301.pdf','2017-04-01','/var/www/Erp/data/G-01G1200301.pdf','G-01G1200301'),(62,'G-01H0100181.pdf','2017-04-01','/var/www/Erp/data/G-01H0100181.pdf','G-01H0100181'),(63,'G-01H0200240.pdf','2017-04-01','/var/www/Erp/data/G-01H0200240.pdf','G-01H0200240'),(64,'G-01H0300072.pdf','2017-04-01','/var/www/Erp/data/G-01H0300072.pdf','G-01H0300072'),(65,'G-01H0300207.pdf','2017-04-01','/var/www/Erp/data/G-01H0300207.pdf','G-01H0300207'),(66,'GDRE-WCF-20170118087.pdf','2017-04-01','/var/www/Erp/data/GDRE-WCF-20170118087.pdf','GDRE-WCF-20170118087'),(67,'GDRE-WCF-20170328087.pdf','2017-04-01','/var/www/Erp/data/GDRE-WCF-20170328087.pdf','GDRE-WCF-20170328087'),(69,'H-01H0300024.pdf','2017-04-01','/var/www/Erp/data/H-01H0300024.pdf','H-01H0300024'),(70,'H-01H0300217.pdf','2017-04-01','/var/www/Erp/data/H-01H0300217.pdf','H-01H0300217'),(71,'K-01H0200035.pdf','2017-04-01','/var/www/Erp/data/K-01H0200035.pdf','K-01H0200035'),(73,'M-61H0200060.pdf','2017-04-01','/var/www/Erp/data/M-61H0200060.pdf','M-61H0200060'),(75,'M-61H0200120.pdf','2017-04-01','/var/www/Erp/data/M-61H0200120.pdf','M-61H0200120'),(76,'N-01H0100131.pdf','2017-04-01','/var/www/Erp/data/N-01H0100131.pdf','N-01H0100131'),(77,'PMG-20161122-1.pdf','2017-04-01','/var/www/Erp/data/PMG-20161122-1.pdf','PMG-20161122-1'),(78,'PMG-20161222-1.pdf','2017-04-01','/var/www/Erp/data/PMG-20161222-1.pdf','PMG-20161222-1'),(79,'PO1-2017031401TW.pdf','2017-04-01','/var/www/Erp/data/PO1-2017031401TW.pdf','PO1-2017031401TW'),(80,'PO1-2017031401TW_1.pdf','2017-04-01','/var/www/Erp/data/PO1-2017031401TW_1.pdf','PO1-2017031401TW_1'),(81,'PO1-2017032001TW.pdf','2017-04-01','/var/www/Erp/data/PO1-2017032001TW.pdf','PO1-2017032001TW'),(83,'R-11H0202059.pdf','2017-04-01','/var/www/Erp/data/R-11H0202059.pdf','R-11H0202059'),(85,'R-11H0300793.pdf','2017-04-01','/var/www/Erp/data/R-11H0300793.pdf','R-11H0300793'),(86,'RN-LJH-2017021301.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-2017021301.pdf','RN-LJH-2017021301'),(87,'RN-LJH-2017032201.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-2017032201.pdf','RN-LJH-2017032201'),(88,'RN-LJH-2017032701.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-2017032701.pdf','RN-LJH-2017032701'),(89,'RN-LJH-2017032702.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-2017032702.pdf','RN-LJH-2017032702'),(90,'RN-LJH-20170213201.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-20170213201.pdf','RN-LJH-20170213201'),(91,'RN-LJH-20170331001.pdf','2017-04-01','/var/www/Erp/data/RN-LJH-20170331001.pdf','RN-LJH-20170331001'),(92,'RN-TW-2017021501.pdf','2017-04-01','/var/www/Erp/data/RN-TW-2017021501.pdf','RN-TW-2017021501'),(93,'RN-TW-20170209001.pdf','2017-04-01','/var/www/Erp/data/RN-TW-20170209001.pdf','RN-TW-20170209001'),(94,'RN-TW-20170302001.pdf','2017-04-01','/var/www/Erp/data/RN-TW-20170302001.pdf','RN-TW-20170302001'),(95,'RN-WB-2017021701.pdf','2017-04-01','/var/www/Erp/data/RN-WB-2017021701.pdf','RN-WB-2017021701'),(96,'RN-WB-2017022301.pdf','2017-04-01','/var/www/Erp/data/RN-WB-2017022301.pdf','RN-WB-2017022301'),(97,'RN-WB-2017030301.pdf','2017-04-01','/var/www/Erp/data/RN-WB-2017030301.pdf','RN-WB-2017030301'),(98,'RN-WB-2017030601.pdf','2017-04-01','/var/www/Erp/data/RN-WB-2017030601.pdf','RN-WB-2017030601'),(99,'RN-WCR-20160928001.pdf','2017-04-01','/var/www/Erp/data/RN-WCR-20160928001.pdf','RN-WCR-20160928001'),(100,'RN-WCR-20170306001.pdf','2017-04-01','/var/www/Erp/data/RN-WCR-20170306001.pdf','RN-WCR-20170306001'),(101,'RN-WZP-2016022301.pdf','2017-04-01','/var/www/Erp/data/RN-WZP-2016022301.pdf','RN-WZP-2016022301'),(102,'RN-WZP-2016022301-1.pdf','2017-04-01','/var/www/Erp/data/RN-WZP-2016022301-1.pdf','RN-WZP-2016022301-1'),(103,'RN-WZP-20170320001.pdf','2017-04-01','/var/www/Erp/data/RN-WZP-20170320001.pdf','RN-WZP-20170320001'),(104,'RN-ZXP-2017021301.pdf','2017-04-01','/var/www/Erp/data/RN-ZXP-2017021301.pdf','RN-ZXP-2017021301'),(105,'RN-ZXP-20170303001.pdf','2017-04-01','/var/www/Erp/data/RN-ZXP-20170303001.pdf','RN-ZXP-20170303001'),(106,'S-CQH020037.pdf','2017-04-01','/var/www/Erp/data/S-CQH020037.pdf','S-CQH020037'),(107,'T-01H0200147.pdf','2017-04-01','/var/www/Erp/data/T-01H0200147.pdf','T-01H0200147'),(108,'T-11H0100711.pdf','2017-04-01','/var/www/Erp/data/T-11H0100711.pdf','T-11H0100711'),(109,'T-11H0204427.pdf','2017-04-01','/var/www/Erp/data/T-11H0204427.pdf','T-11H0204427'),(110,'T-11H0302873.pdf','2017-04-01','/var/www/Erp/data/T-11H0302873.pdf','T-11H0302873'),(111,'T-21H0100049.pdf','2017-04-01','/var/www/Erp/data/T-21H0100049.pdf','T-21H0100049'),(112,'T-21H0200413.pdf','2017-04-01','/var/www/Erp/data/T-21H0200413.pdf','T-21H0200413'),(113,'T-21H0202439.pdf','2017-04-01','/var/www/Erp/data/T-21H0202439.pdf','T-21H0202439'),(114,'T-21H0301825.pdf','2017-04-01','/var/www/Erp/data/T-21H0301825.pdf','T-21H0301825'),(115,'T-21H0302383.pdf','2017-04-01','/var/www/Erp/data/T-21H0302383.pdf','T-21H0302383'),(117,'U-01H0100094.pdf','2017-04-01','/var/www/Erp/data/U-01H0100094.pdf','U-01H0100094'),(119,'U-01H0200114.pdf','2017-04-01','/var/www/Erp/data/U-01H0200114.pdf','U-01H0200114'),(121,'U-01H0200146.pdf','2017-04-01','/var/www/Erp/data/U-01H0200146.pdf','U-01H0200146'),(122,'X-11G1100521.pdf','2017-04-01','/var/www/Erp/data/X-11G1100521.pdf','X-11G1100521'),(123,'Y-01H0200071.pdf','2017-04-01','/var/www/Erp/data/Y-01H0200071.pdf','Y-01H0200071'),(124,'Y-08H0200001.pdf','2017-04-01','/var/www/Erp/data/Y-08H0200001.pdf','Y-08H0200001'),(125,'Y-08H0200022.pdf','2017-04-01','/var/www/Erp/data/Y-08H0200022.pdf','Y-08H0200022'),(126,'Y-11G1203881.pdf','2017-04-01','/var/www/Erp/data/Y-11G1203881.pdf','Y-11G1203881'),(127,'Y-11H0100022.pdf','2017-04-01','/var/www/Erp/data/Y-11H0100022.pdf','Y-11H0100022'),(128,'Y-11H0100136.pdf','2017-04-01','/var/www/Erp/data/Y-11H0100136.pdf','Y-11H0100136'),(129,'Y-11H0100140.pdf','2017-04-01','/var/www/Erp/data/Y-11H0100140.pdf','Y-11H0100140'),(130,'Y-11H0100244.pdf','2017-04-01','/var/www/Erp/data/Y-11H0100244.pdf','Y-11H0100244'),(131,'Y-11H0102033.pdf','2017-04-01','/var/www/Erp/data/Y-11H0102033.pdf','Y-11H0102033'),(132,'Y-11H0102187.pdf','2017-04-01','/var/www/Erp/data/Y-11H0102187.pdf','Y-11H0102187'),(133,'Y-11H0103031.pdf','2017-04-01','/var/www/Erp/data/Y-11H0103031.pdf','Y-11H0103031'),(134,'Y-11H0200061.pdf','2017-04-01','/var/www/Erp/data/Y-11H0200061.pdf','Y-11H0200061'),(135,'Y-11H0200826.pdf','2017-04-01','/var/www/Erp/data/Y-11H0200826.pdf','Y-11H0200826'),(136,'Y-11H0201975.pdf','2017-04-01','/var/www/Erp/data/Y-11H0201975.pdf','Y-11H0201975'),(137,'Y-11H0202022.pdf','2017-04-01','/var/www/Erp/data/Y-11H0202022.pdf','Y-11H0202022'),(138,'Y-11H0202263.pdf','2017-04-01','/var/www/Erp/data/Y-11H0202263.pdf','Y-11H0202263'),(139,'Y-11H0202849.pdf','2017-04-01','/var/www/Erp/data/Y-11H0202849.pdf','Y-11H0202849'),(140,'Y-11H0203657.pdf','2017-04-01','/var/www/Erp/data/Y-11H0203657.pdf','Y-11H0203657'),(141,'Y-11H0203667.pdf','2017-04-01','/var/www/Erp/data/Y-11H0203667.pdf','Y-11H0203667'),(142,'Y-11H0204120.pdf','2017-04-01','/var/www/Erp/data/Y-11H0204120.pdf','Y-11H0204120'),(143,'Y-11H0204765.pdf','2017-04-01','/var/www/Erp/data/Y-11H0204765.pdf','Y-11H0204765'),(144,'Y-11H0301016.pdf','2017-04-01','/var/www/Erp/data/Y-11H0301016.pdf','Y-11H0301016'),(146,'Y-HG1203647.pdf','2017-04-01','/var/www/Erp/data/Y-HG1203647.pdf','Y-HG1203647'),(147,'Z-01G1200157.pdf','2017-04-01','/var/www/Erp/data/Z-01G1200157.pdf','Z-01G1200157'),(148,'Z-01G1200157.PDF','2017-04-01','/var/www/Erp/data/Z-01G1200157.PDF','Z-01G1200157'),(149,'Z-01H0300158.pdf','2017-04-01','/var/www/Erp/data/Z-01H0300158.pdf','Z-01H0300158'),(150,'Z-11H0200167.pdf','2017-04-01','/var/www/Erp/data/Z-11H0200167.pdf','Z-11H0200167'),(151,'GDRE-WCF-20170328087_1.pdf','2017-04-01','/var/www/Erp/data/GDRE-WCF-20170328087_1.pdf','GDRE-WCF-20170328087_1'),(152,'H-01H0300217_1.pdf','2017-04-01','/var/www/Erp/data/H-01H0300217_1.pdf','H-01H0300217_1'),(153,'Z-01H0300158_1.pdf','2017-04-01','/var/www/Erp/data/Z-01H0300158_1.pdf','Z-01H0300158_1'),(154,'RN-LJH-20170405001.pdf','2017-04-06','/var/www/Erp/data/RN-LJH-20170405001.pdf','RN-LJH-20170405001'),(155,'RN-ZXP-2017033101.pdf','2017-04-06','/var/www/Erp/data/RN-ZXP-2017033101.pdf','RN-ZXP-2017033101'),(157,'Y-01H0300159.pdf','2017-04-06','/var/www/Erp/data/Y-01H0300159.pdf','Y-01H0300159'),(158,'G-01H0300280.pdf','2017-04-06','/var/www/Erp/data/G-01H0300280.pdf','G-01H0300280'),(159,'20170406.pdf','2017-04-06','/var/www/Erp/data/20170406.pdf','20170406'),(160,'Z-01H0400035.pdf','2017-04-06','/var/www/Erp/data/Z-01H0400035.pdf','Z-01H0400035'),(161,'S-S1H030024.pdf','2017-04-07','/var/www/Erp/data/S-S1H030024.pdf','S-S1H030024'),(162,'RN-LJH-20170327002.pdf','2017-04-08','/var/www/Erp/data/RN-LJH-20170327002.pdf','RN-LJH-20170327002'),(163,'80000613.pdf','2017-04-10','/var/www/Erp/data/80000613.pdf','80000613'),(164,'RN-WCR-20170410001.pdf','2017-04-10','/var/www/Erp/data/RN-WCR-20170410001.pdf','RN-WCR-20170410001'),(165,'RN-LJH-2017022001.pdf','2017-04-11','/var/www/Erp/data/RN-LJH-2017022001.pdf','RN-LJH-2017022001'),(166,'M-01H0300054.pdf','2017-04-11','/var/www/Erp/data/M-01H0300054.pdf','M-01H0300054'),(167,'20170411.pdf','2017-04-11','/var/www/Erp/data/20170411.pdf','20170411'),(168,'B-D1H030007.pdf','2017-04-11','/var/www/Erp/data/B-D1H030007.pdf','B-D1H030007'),(169,'B-V8H030002.pdf','2017-04-11','/var/www/Erp/data/B-V8H030002.pdf','B-V8H030002'),(170,'RN-WCR-20170411002.pdf','2017-04-12','/var/www/Erp/data/RN-WCR-20170411002.pdf','RN-WCR-20170411002'),(171,'3194537601067646.jpg','2017-04-12','/var/www/Erp/data/3194537601067646.jpg','3194537601067646'),(172,'RN-ZXP-20170412001.pdf','2017-04-12','/var/www/Erp/data/RN-ZXP-20170412001.pdf','RN-ZXP-20170412001'),(173,'RN-LJH-20170412001.pdf','2017-04-12','/var/www/Erp/data/RN-LJH-20170412001.pdf','RN-LJH-20170412001'),(174,'20170417.pdf','2017-04-20','/var/www/Erp/data/20170417.pdf','20170417'),(175,'RN-LJH-20170419001.pdf','2017-04-20','/var/www/Erp/data/RN-LJH-20170419001.pdf','RN-LJH-20170419001'),(176,'RN-LJH-20170421001.pdf','2017-04-21','/var/www/Erp/data/RN-LJH-20170421001.pdf','RN-LJH-20170421001'),(178,'JWT1704200371.pdf','2017-04-21','/var/www/Erp/data/JWT1704200371.pdf','JWT1704200371'),(179,'JWT1704200386.pdf','2017-04-21','/var/www/Erp/data/JWT1704200386.pdf','JWT1704200386'),(180,'RN-LJH-20170414001.pdf','2017-04-26','/var/www/Erp/data/RN-LJH-20170414001.pdf','RN-LJH-20170414001'),(181,'RN-LJH-20170414002.pdf','2017-04-26','/var/www/Erp/data/RN-LJH-20170414002.pdf','RN-LJH-20170414002'),(183,'80000667.pdf','2017-04-27','/var/www/Erp/data/80000667.pdf','80000667'),(184,'RN-WCR-20170411002_1.pdf','2017-04-27','/var/www/Erp/data/RN-WCR-20170411002_1.pdf','RN-WCR-20170411002_1'),(185,'JWT1704270543.pdf','2017-04-28','/var/www/Erp/data/JWT1704270543.pdf','JWT1704270543'),(186,'RN-LJH-20170426003.pdf','2017-05-02','/var/www/Erp/data/RN-LJH-20170426003.pdf','RN-LJH-20170426003'),(190,'20170502.pdf','2017-05-03','/var/www/Erp/data/20170502.pdf','20170502'),(192,'RN-LJH-20170502002.pdf','2017-05-03','/var/www/Erp/data/RN-LJH-20170502002.pdf','RN-LJH-20170502002'),(194,'20170410.pdf','2017-05-08','/var/www/Erp/data/20170410.pdf','20170410'),(195,'PO1-2017041301TW.pdf','2017-05-08','/var/www/Erp/data/PO1-2017041301TW.pdf','PO1-2017041301TW'),(197,'20170508.pdf','2017-05-08','/var/www/Erp/data/20170508.pdf','20170508'),(198,'20170510.pdf','2017-05-10','/var/www/Erp/data/20170510.pdf','20170510'),(199,'17727068023645980.png','2017-05-11','/var/www/Erp/data/17727068023645980.png','17727068023645980'),(200,'RN-LJH-20170505002.pdf','2017-05-12','/var/www/Erp/data/RN-LJH-20170505002.pdf','RN-LJH-20170505002'),(201,'RN-LJH-20170509001.pdf','2017-05-12','/var/www/Erp/data/RN-LJH-20170509001.pdf','RN-LJH-20170509001'),(202,'RN-LJH-20170509002.pdf','2017-05-12','/var/www/Erp/data/RN-LJH-20170509002.pdf','RN-LJH-20170509002'),(203,'RN-LJH-20170510001.pdf','2017-05-12','/var/www/Erp/data/RN-LJH-20170510001.pdf','RN-LJH-20170510001'),(204,'RN-LJH-20170502001.pdf','2017-05-12','/var/www/Erp/data/RN-LJH-20170502001.pdf','RN-LJH-20170502001'),(205,'20170516171653.png','2017-05-16','/var/www/Erp/data/20170516171653.png','20170516171653'),(206,'RN-LJH-20170509001-1.pdf','2017-05-16','/var/www/Erp/data/RN-LJH-20170509001-1.pdf','RN-LJH-20170509001-1'),(207,'20170516.pdf','2017-05-17','/var/www/Erp/data/20170516.pdf','20170516'),(209,'PO1-2017042501TW.pdf','2017-05-17','/var/www/Erp/data/PO1-2017042501TW.pdf','PO1-2017042501TW'),(211,'RN-LJH-2017051801.pdf','2017-05-19','/var/www/Erp/data/RN-LJH-2017051801.pdf','RN-LJH-2017051801'),(212,'RN-ZXP-20170515001.pdf','2017-05-19','/var/www/Erp/data/RN-ZXP-20170515001.pdf','RN-ZXP-20170515001'),(213,'RN-LJH-2017052301.pdf','2017-05-25','/var/www/Erp/data/RN-LJH-2017052301.pdf','RN-LJH-2017052301'),(214,'RN-ZXP-2017050301.pdf','2017-05-25','/var/www/Erp/data/RN-ZXP-2017050301.pdf','RN-ZXP-2017050301'),(215,'RN-LJH-2017052302.pdf','2017-05-25','/var/www/Erp/data/RN-LJH-2017052302.pdf','RN-LJH-2017052302'),(217,'20170602135656.png','2017-06-02','/var/www/Erp/data/20170602135656.png','20170602135656'),(218,'20170602.pdf','2017-06-02','/var/www/Erp/data/20170602.pdf','20170602'),(219,'2017042001.pdf','2017-06-05','/var/www/Erp/data/2017042001.pdf','2017042001'),(220,'PO1-2017032701TW.pdf','2017-06-05','/var/www/Erp/data/PO1-2017032701TW.pdf','PO1-2017032701TW'),(221,'PO1-2017040601TW.pdf','2017-06-05','/var/www/Erp/data/PO1-2017040601TW.pdf','PO1-2017040601TW'),(224,'20170522-001.pdf','2017-06-05','/var/www/Erp/data/20170522-001.pdf','20170522-001'),(225,'RN-TW-2017053101.pdf','2017-06-05','/var/www/Erp/data/RN-TW-2017053101.pdf','RN-TW-2017053101'),(226,'20170522-001_1.pdf','2017-06-05','/var/www/Erp/data/20170522-001_1.pdf','20170522-001_1'),(227,'RN-WZP-2016072001.pdf','2017-06-05','/var/www/Erp/data/RN-WZP-2016072001.pdf','RN-WZP-2016072001'),(228,'RN-LJH-20170605001.pdf','2017-06-05','/var/www/Erp/data/RN-LJH-20170605001.pdf','RN-LJH-20170605001'),(229,'RN-ZXP-2017060501.pdf','2017-06-09','/var/www/Erp/data/RN-ZXP-2017060501.pdf','RN-ZXP-2017060501'),(230,'RN-LJH-20170505001.jpg','2017-06-12','/var/www/Erp/data/RN-LJH-20170505001.jpg','RN-LJH-20170505001'),(232,'RN-LJH-20170505002-1.pdf','2017-06-12','/var/www/Erp/data/RN-LJH-20170505002-1.pdf','RN-LJH-20170505002-1'),(233,'20170613.pdf','2017-06-13','/var/www/Erp/data/20170613.pdf','20170613'),(234,'RN-LJH-2017053101.pdf','2017-06-14','/var/www/Erp/data/RN-LJH-2017053101.pdf','RN-LJH-2017053101'),(235,'RN-LJH-20170602001.pdf','2017-06-15','/var/www/Erp/data/RN-LJH-20170602001.pdf','RN-LJH-20170602001'),(236,'RN-LJH-20170509002_1.pdf','2017-06-21','/var/www/Erp/data/RN-LJH-20170509002_1.pdf','RN-LJH-20170509002_1'),(237,'RN-LJH-2017050902.pdf','2017-06-21','/var/www/Erp/data/RN-LJH-2017050902.pdf','RN-LJH-2017050902'),(238,'RN-LJH-20170616001.pdf','2017-06-22','/var/www/Erp/data/RN-LJH-20170616001.pdf','RN-LJH-20170616001'),(239,'RN-TW-2017062101.pdf','2017-06-26','/var/www/Erp/data/RN-TW-2017062101.pdf','RN-TW-2017062101'),(246,'fluent-python.pdf','2017-06-30','/var/www/Erp/data/fluent-python.pdf','fluent-python');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000001`
--

DROP TABLE IF EXISTS `delivery_2017000001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000001`
--

LOCK TABLES `delivery_2017000001` WRITE;
/*!40000 ALTER TABLE `delivery_2017000001` DISABLE KEYS */;
INSERT INTO `delivery_2017000001` VALUES (1,'Z-01G1200157','中山志捷（越南）','越南宁平省安谟县安林社','吴中平','2017-01-9','C100NW','67','台','350.00','23450.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','23450.00','0.0');
/*!40000 ALTER TABLE `delivery_2017000001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000002`
--

DROP TABLE IF EXISTS `delivery_2017000002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000002`
--

LOCK TABLES `delivery_2017000002` WRITE;
/*!40000 ALTER TABLE `delivery_2017000002` DISABLE KEYS */;
INSERT INTO `delivery_2017000002` VALUES (1,'Y-HG1203647','STAR TIGER LIMITED(弘邦)','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-01-4','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000003`
--

DROP TABLE IF EXISTS `delivery_2017000003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000003`
--

LOCK TABLES `delivery_2017000003` WRITE;
/*!40000 ALTER TABLE `delivery_2017000003` DISABLE KEYS */;
INSERT INTO `delivery_2017000003` VALUES (1,'B-R6H010001','中山市志捷鞋业技术服务有限公司','广东省中山市张家边沙边工业区敬业路1号（志捷）','吴中平','2017-01-11','C100NW','3','台','350.00','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000003` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000004`
--

DROP TABLE IF EXISTS `delivery_2017000004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000004` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000004`
--

LOCK TABLES `delivery_2017000004` WRITE;
/*!40000 ALTER TABLE `delivery_2017000004` DISABLE KEYS */;
INSERT INTO `delivery_2017000004` VALUES (1,'B-M1G120059','中山市志捷鞋业技术服务有限公司','广东省中山市张家边沙边工业区敬业路1号（志捷）','吴中平','2017-01-11','C100NW','3','台','350.00','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000004` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000005`
--

DROP TABLE IF EXISTS `delivery_2017000005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000005` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000005`
--

LOCK TABLES `delivery_2017000005` WRITE;
/*!40000 ALTER TABLE `delivery_2017000005` DISABLE KEYS */;
INSERT INTO `delivery_2017000005` VALUES (1,'PMG-20161122-1','毕马杰橡胶科技（常熟）有限公司','江苏省常熟经济开发区高新技术产业园阳光大道55号','梁嘉惠','2017-01-6','N330NW','10','台','715','7150.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','7150.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000005` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000006`
--

DROP TABLE IF EXISTS `delivery_2017000006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000006` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000006`
--

LOCK TABLES `delivery_2017000006` WRITE;
/*!40000 ALTER TABLE `delivery_2017000006` DISABLE KEYS */;
INSERT INTO `delivery_2017000006` VALUES (1,'B-D5G120031','中山市志捷鞋业技术服务有限公司','广东省中山市张家边沙边工业区敬业路1号（志捷）','吴中平','2017-01-11','C100NW','5','台','350.00','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000006` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000007`
--

DROP TABLE IF EXISTS `delivery_2017000007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000007` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000007`
--

LOCK TABLES `delivery_2017000007` WRITE;
/*!40000 ALTER TABLE `delivery_2017000007` DISABLE KEYS */;
INSERT INTO `delivery_2017000007` VALUES (1,'T-21H0100049','CASTLE SKY LIMITED(宏美)','越南清化省宏化县黄英乡黄龙工业区（宏美二厂）','吴中平','2017-01-13','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000007` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000008`
--

DROP TABLE IF EXISTS `delivery_2017000008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000008` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000008`
--

LOCK TABLES `delivery_2017000008` WRITE;
/*!40000 ALTER TABLE `delivery_2017000008` DISABLE KEYS */;
INSERT INTO `delivery_2017000008` VALUES (1,'N-01H0100131','REDFIRE GLOBAL LIMITED','越南海阳省平江县平宣社平提村（汎达）','吴中平','2017-01-18','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000009`
--

DROP TABLE IF EXISTS `delivery_2017000009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000009` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000009`
--

LOCK TABLES `delivery_2017000009` WRITE;
/*!40000 ALTER TABLE `delivery_2017000009` DISABLE KEYS */;
INSERT INTO `delivery_2017000009` VALUES (1,'B-D5G120002','中山市志捷鞋业技术服务有限公司','广东省中山市张家边沙边工业区敬业路1号（志捷）','吴中平','2017-01-18','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000009` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000010`
--

DROP TABLE IF EXISTS `delivery_2017000010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000010` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000010`
--

LOCK TABLES `delivery_2017000010` WRITE;
/*!40000 ALTER TABLE `delivery_2017000010` DISABLE KEYS */;
INSERT INTO `delivery_2017000010` VALUES (1,'B-R3G120002','中山市志捷鞋业技术服务有限公司','广东省中山市张家边沙边工业区敬业路1号（志捷）','吴中平','2017-01-18','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000011`
--

DROP TABLE IF EXISTS `delivery_2017000011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000011` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000011`
--

LOCK TABLES `delivery_2017000011` WRITE;
/*!40000 ALTER TABLE `delivery_2017000011` DISABLE KEYS */;
INSERT INTO `delivery_2017000011` VALUES (1,'6-01H0100052','WEALTH EMPEROR LIMITED','越南海防市水源县天香社（正川）','吴中平','2017-01-13','C100NW','5','台','350.00','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000011` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000012`
--

DROP TABLE IF EXISTS `delivery_2017000012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000012`
--

LOCK TABLES `delivery_2017000012` WRITE;
/*!40000 ALTER TABLE `delivery_2017000012` DISABLE KEYS */;
INSERT INTO `delivery_2017000012` VALUES (1,'Y-11H0100244','弘邦（越南）鞋业有限公司','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-01-19','C100','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000013`
--

DROP TABLE IF EXISTS `delivery_2017000013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000013`
--

LOCK TABLES `delivery_2017000013` WRITE;
/*!40000 ALTER TABLE `delivery_2017000013` DISABLE KEYS */;
INSERT INTO `delivery_2017000013` VALUES (1,'Y-11G1203881','弘邦（越南）鞋业有限公司','越南清化省静家县春林乡尼山经济区（宏邦）','吴中平','2017-01-19','C100','6','台','350.00','2100.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2100.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000014`
--

DROP TABLE IF EXISTS `delivery_2017000014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000014`
--

LOCK TABLES `delivery_2017000014` WRITE;
/*!40000 ALTER TABLE `delivery_2017000014` DISABLE KEYS */;
INSERT INTO `delivery_2017000014` VALUES (1,'Y-11H0100022','弘邦（越南）鞋业有限公司','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-01-19','C100','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000015`
--

DROP TABLE IF EXISTS `delivery_2017000015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000015`
--

LOCK TABLES `delivery_2017000015` WRITE;
/*!40000 ALTER TABLE `delivery_2017000015` DISABLE KEYS */;
INSERT INTO `delivery_2017000015` VALUES (1,'Y-11H0100140','弘邦（越南）鞋业有限公司','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-01-19','C100','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000016`
--

DROP TABLE IF EXISTS `delivery_2017000016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000016`
--

LOCK TABLES `delivery_2017000016` WRITE;
/*!40000 ALTER TABLE `delivery_2017000016` DISABLE KEYS */;
INSERT INTO `delivery_2017000016` VALUES (1,'Y-11H0100136','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-01-19','C100','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000017`
--

DROP TABLE IF EXISTS `delivery_2017000017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000017`
--

LOCK TABLES `delivery_2017000017` WRITE;
/*!40000 ALTER TABLE `delivery_2017000017` DISABLE KEYS */;
INSERT INTO `delivery_2017000017` VALUES (1,'G-01G1200301','越南亚欣','越南南定省直宁县古礼镇（亚欣）','吴中平','2017-02-18','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000018`
--

DROP TABLE IF EXISTS `delivery_2017000018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000018`
--

LOCK TABLES `delivery_2017000018` WRITE;
/*!40000 ALTER TABLE `delivery_2017000018` DISABLE KEYS */;
INSERT INTO `delivery_2017000018` VALUES (1,'U-01H0100094','越南永正','越南清化省安定县定莲乡','吴中平','2017-02-18','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000019`
--

DROP TABLE IF EXISTS `delivery_2017000019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000019` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000019`
--

LOCK TABLES `delivery_2017000019` WRITE;
/*!40000 ALTER TABLE `delivery_2017000019` DISABLE KEYS */;
INSERT INTO `delivery_2017000019` VALUES (1,'8-11H0101444','越南上杰','越南清化省清化市礼门工业区B区','吴中平','2017-02-18','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000020`
--

DROP TABLE IF EXISTS `delivery_2017000020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000020` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000020`
--

LOCK TABLES `delivery_2017000020` WRITE;
/*!40000 ALTER TABLE `delivery_2017000020` DISABLE KEYS */;
INSERT INTO `delivery_2017000020` VALUES (1,'T-11H0100711','越南宏美一厂','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','吴中平','2017-02-18','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000021`
--

DROP TABLE IF EXISTS `delivery_2017000021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000021` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000021`
--

LOCK TABLES `delivery_2017000021` WRITE;
/*!40000 ALTER TABLE `delivery_2017000021` DISABLE KEYS */;
INSERT INTO `delivery_2017000021` VALUES (1,'Y-11H0102033','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦）','吴中平','2017-02-21','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000021` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000022`
--

DROP TABLE IF EXISTS `delivery_2017000022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000022` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000022`
--

LOCK TABLES `delivery_2017000022` WRITE;
/*!40000 ALTER TABLE `delivery_2017000022` DISABLE KEYS */;
INSERT INTO `delivery_2017000022` VALUES (1,'2017011901','广东智城信息技术有限公司','东莞市莞城区东城大道188号新华大夏13楼2号','腾伟','2017-02-21','AX700','1','台','600','600.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','600.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000023`
--

DROP TABLE IF EXISTS `delivery_2017000023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000023` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000023`
--

LOCK TABLES `delivery_2017000023` WRITE;
/*!40000 ALTER TABLE `delivery_2017000023` DISABLE KEYS */;
INSERT INTO `delivery_2017000023` VALUES (1,'Y-11H01003031','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦)','吴中平','2017-02-21','AX700','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000024`
--

DROP TABLE IF EXISTS `delivery_2017000024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000024`
--

LOCK TABLES `delivery_2017000024` WRITE;
/*!40000 ALTER TABLE `delivery_2017000024` DISABLE KEYS */;
INSERT INTO `delivery_2017000024` VALUES (1,'Y-11H0102187','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦)','吴中平','2017-02-21','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000025`
--

DROP TABLE IF EXISTS `delivery_2017000025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000025` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000025`
--

LOCK TABLES `delivery_2017000025` WRITE;
/*!40000 ALTER TABLE `delivery_2017000025` DISABLE KEYS */;
INSERT INTO `delivery_2017000025` VALUES (1,'G-01G120031','越南亚欣','越南南定省直宁县古李镇','吴中平','2017-02-21','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000026`
--

DROP TABLE IF EXISTS `delivery_2017000026`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000026` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000026`
--

LOCK TABLES `delivery_2017000026` WRITE;
/*!40000 ALTER TABLE `delivery_2017000026` DISABLE KEYS */;
INSERT INTO `delivery_2017000026` VALUES (1,'RN-ZXP-2017021301','南京铠硕信息技术有限公','南京市建邺区庐山路158号嘉业国际3号楼2309','朱晓平','2017-02-15','E300ARM','15','台','630.00','9450.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','9450.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000026` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000027`
--

DROP TABLE IF EXISTS `delivery_2017000027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000027` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000027`
--

LOCK TABLES `delivery_2017000027` WRITE;
/*!40000 ALTER TABLE `delivery_2017000027` DISABLE KEYS */;
INSERT INTO `delivery_2017000027` VALUES (1,'B-R6H020003','中山志捷鞋业技术服务有限公司','广东中山张家边沙边工业区敬业路1号','吴中平','2017-02-23','C100NW','6','台','350.00','2100.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2100.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000027` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000028`
--

DROP TABLE IF EXISTS `delivery_2017000028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000028` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000028`
--

LOCK TABLES `delivery_2017000028` WRITE;
/*!40000 ALTER TABLE `delivery_2017000028` DISABLE KEYS */;
INSERT INTO `delivery_2017000028` VALUES (1,'2017021401','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','汪斌','2017-02-23','C100NW','1','台','480.00','480.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','480.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000028` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000029`
--

DROP TABLE IF EXISTS `delivery_2017000029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000029` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000029`
--

LOCK TABLES `delivery_2017000029` WRITE;
/*!40000 ALTER TABLE `delivery_2017000029` DISABLE KEYS */;
INSERT INTO `delivery_2017000029` VALUES (1,'G-01H0100181','越南亚欣','越南南定省直宁县古李镇','吴中平','2017-02-23','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000029` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000030`
--

DROP TABLE IF EXISTS `delivery_2017000030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000030` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000030`
--

LOCK TABLES `delivery_2017000030` WRITE;
/*!40000 ALTER TABLE `delivery_2017000030` DISABLE KEYS */;
INSERT INTO `delivery_2017000030` VALUES (1,'Y-11H0200061','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦)','吴中平','2017-02-23','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000030` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000031`
--

DROP TABLE IF EXISTS `delivery_2017000031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000031` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000031`
--

LOCK TABLES `delivery_2017000031` WRITE;
/*!40000 ALTER TABLE `delivery_2017000031` DISABLE KEYS */;
INSERT INTO `delivery_2017000031` VALUES (1,'T-21H0200413','越南宏美二厂','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','吴中平','2017-02-23','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000031` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000032`
--

DROP TABLE IF EXISTS `delivery_2017000032`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000032` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000032`
--

LOCK TABLES `delivery_2017000032` WRITE;
/*!40000 ALTER TABLE `delivery_2017000032` DISABLE KEYS */;
INSERT INTO `delivery_2017000032` VALUES (1,'80000506','网神信息技术（北京）股份有限公司','北京市朝阳区来广营创远路36号院朝来高科技产业园7号楼','梁嘉惠','2017-02-23','N830','120','台','1850.00','222000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','222000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000032` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000033`
--

DROP TABLE IF EXISTS `delivery_2017000033`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000033` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000033`
--

LOCK TABLES `delivery_2017000033` WRITE;
/*!40000 ALTER TABLE `delivery_2017000033` DISABLE KEYS */;
INSERT INTO `delivery_2017000033` VALUES (1,'B-R3H010005','中山志捷鞋业技术服务有限公司','广东中山张家边沙边工业区敬业路1号','吴中平','2017-02-23','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000033` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000034`
--

DROP TABLE IF EXISTS `delivery_2017000034`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000034` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000034`
--

LOCK TABLES `delivery_2017000034` WRITE;
/*!40000 ALTER TABLE `delivery_2017000034` DISABLE KEYS */;
INSERT INTO `delivery_2017000034` VALUES (1,'RN-TW-20170209001','海南汉普科技有限公司','海南省海口市龙华区玉沙路20号国贸经典大厦818室','腾伟','2017-02-24','C100NW','4','台','350.00','1400.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1400.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000034` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000035`
--

DROP TABLE IF EXISTS `delivery_2017000035`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000035` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000035`
--

LOCK TABLES `delivery_2017000035` WRITE;
/*!40000 ALTER TABLE `delivery_2017000035` DISABLE KEYS */;
INSERT INTO `delivery_2017000035` VALUES (1,'RN-ZXP-20170207001','东莞市东城大友电脑经营部','东莞市东城区岗贝赛格电子市场','朱晓平','2017-02-24','C100NW','17','台','600.00','10200.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','10200.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000035` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000036`
--

DROP TABLE IF EXISTS `delivery_2017000036`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000036` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000036`
--

LOCK TABLES `delivery_2017000036` WRITE;
/*!40000 ALTER TABLE `delivery_2017000036` DISABLE KEYS */;
INSERT INTO `delivery_2017000036` VALUES (1,'RN-LJH-2017021301','东莞市捷诚计算机科技有限公司','东莞市南城天安数码城A1栋521室','梁嘉惠','2017-02-24','AX700','10','台','950.00','9500.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','9500.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000036` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000037`
--

DROP TABLE IF EXISTS `delivery_2017000037`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000037` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000037`
--

LOCK TABLES `delivery_2017000037` WRITE;
/*!40000 ALTER TABLE `delivery_2017000037` DISABLE KEYS */;
INSERT INTO `delivery_2017000037` VALUES (1,'RN-WB-2017021701','厦门吉宏包装科技股份有公司黄冈分公司','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','梁嘉惠','2017-02-24','C100NW','10','台','450.00','4500.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','4500.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000037` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000038`
--

DROP TABLE IF EXISTS `delivery_2017000038`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000038` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000038`
--

LOCK TABLES `delivery_2017000038` WRITE;
/*!40000 ALTER TABLE `delivery_2017000038` DISABLE KEYS */;
INSERT INTO `delivery_2017000038` VALUES (1,'2017022101','毕马杰橡胶科技（常熟）有限公司','江苏省常熟经济开发区高新技术产业园阳光大道55号','梁嘉惠','2017-02-24','N330NW','5','台','715','3575.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3575.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000038` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000039`
--

DROP TABLE IF EXISTS `delivery_2017000039`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000039` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000039`
--

LOCK TABLES `delivery_2017000039` WRITE;
/*!40000 ALTER TABLE `delivery_2017000039` DISABLE KEYS */;
INSERT INTO `delivery_2017000039` VALUES (1,'RN-TW-2017021501','东莞市壹华电子科技有限公司','东莞市管城区东城大道188号新华大厦13楼2号','腾伟','2017-02-25','AX707NW','10','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000039` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000040`
--

DROP TABLE IF EXISTS `delivery_2017000040`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000040` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000040`
--

LOCK TABLES `delivery_2017000040` WRITE;
/*!40000 ALTER TABLE `delivery_2017000040` DISABLE KEYS */;
INSERT INTO `delivery_2017000040` VALUES (1,'RN-WZP-2016022301','深圳凯特电气有限公司','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','朱晓平','2017-02-25','C310NW','2','台','1400.00','2800.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2800.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000040` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000041`
--

DROP TABLE IF EXISTS `delivery_2017000041`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000041` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000041`
--

LOCK TABLES `delivery_2017000041` WRITE;
/*!40000 ALTER TABLE `delivery_2017000041` DISABLE KEYS */;
INSERT INTO `delivery_2017000041` VALUES (1,'RN-WB-2017022301','广东联迪信息科技有限公司','广东省珠海市香洲区兴华路212号能源大厦2楼','汪斌','2017-02-27','AX700','1','台','1320.00','1320.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1320.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000041` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000042`
--

DROP TABLE IF EXISTS `delivery_2017000042`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000042` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000042`
--

LOCK TABLES `delivery_2017000042` WRITE;
/*!40000 ALTER TABLE `delivery_2017000042` DISABLE KEYS */;
INSERT INTO `delivery_2017000042` VALUES (1,'Y-11H0103031','越南弘邦','越南清化省静家县春林乡尼山经济区（弘邦)','吴中平','2017-02-28','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000042` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000043`
--

DROP TABLE IF EXISTS `delivery_2017000043`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000043` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000043`
--

LOCK TABLES `delivery_2017000043` WRITE;
/*!40000 ALTER TABLE `delivery_2017000043` DISABLE KEYS */;
INSERT INTO `delivery_2017000043` VALUES (1,'K-01H0200035','越南跃升','越南海阳省锦江县莱格镇5号国道43公里','吴中平','2017-03-02','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000043` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000044`
--

DROP TABLE IF EXISTS `delivery_2017000044`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000044` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000044`
--

LOCK TABLES `delivery_2017000044` WRITE;
/*!40000 ALTER TABLE `delivery_2017000044` DISABLE KEYS */;
INSERT INTO `delivery_2017000044` VALUES (1,'6-01H0200071','越南正川','越南海防市水源县天香社','吴中平','2017-03-02','C100NW','5','台','350.00','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000044` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000045`
--

DROP TABLE IF EXISTS `delivery_2017000045`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000045` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000045`
--

LOCK TABLES `delivery_2017000045` WRITE;
/*!40000 ALTER TABLE `delivery_2017000045` DISABLE KEYS */;
INSERT INTO `delivery_2017000045` VALUES (1,'U-01H0200114','越南永正','越南清化省安定县定莲乡','吴中平','2017-03-02','C100NW','4','台','350.00','1400.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1400.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000045` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000046`
--

DROP TABLE IF EXISTS `delivery_2017000046`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000046` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000046`
--

LOCK TABLES `delivery_2017000046` WRITE;
/*!40000 ALTER TABLE `delivery_2017000046` DISABLE KEYS */;
INSERT INTO `delivery_2017000046` VALUES (1,'D-11H0200588','越南立川','越南宁平省三叠市三叠工业区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000046` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000047`
--

DROP TABLE IF EXISTS `delivery_2017000047`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000047` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000047`
--

LOCK TABLES `delivery_2017000047` WRITE;
/*!40000 ALTER TABLE `delivery_2017000047` DISABLE KEYS */;
INSERT INTO `delivery_2017000047` VALUES (1,'3-11H020076','福建威霖实业有限公司','福建省福清市阳下镇东田村','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000047` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000048`
--

DROP TABLE IF EXISTS `delivery_2017000048`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000048` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000048`
--

LOCK TABLES `delivery_2017000048` WRITE;
/*!40000 ALTER TABLE `delivery_2017000048` DISABLE KEYS */;
INSERT INTO `delivery_2017000048` VALUES (1,'B-R1H020019','中山志捷鞋业技术服务有限公司','广东中山张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000048` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000049`
--

DROP TABLE IF EXISTS `delivery_2017000049`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000049` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000049`
--

LOCK TABLES `delivery_2017000049` WRITE;
/*!40000 ALTER TABLE `delivery_2017000049` DISABLE KEYS */;
INSERT INTO `delivery_2017000049` VALUES (1,'8-01H0200068','越南上杰','越南清化省清化市礼门工业区B区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000049` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000050`
--

DROP TABLE IF EXISTS `delivery_2017000050`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000050` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000050`
--

LOCK TABLES `delivery_2017000050` WRITE;
/*!40000 ALTER TABLE `delivery_2017000050` DISABLE KEYS */;
INSERT INTO `delivery_2017000050` VALUES (1,'B-R1H020026','中山志捷鞋业技术服务有限公司','广东中山张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000050` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000051`
--

DROP TABLE IF EXISTS `delivery_2017000051`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000051` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000051`
--

LOCK TABLES `delivery_2017000051` WRITE;
/*!40000 ALTER TABLE `delivery_2017000051` DISABLE KEYS */;
INSERT INTO `delivery_2017000051` VALUES (1,'B-D7H020002','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','3','台','350.00','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000051` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000052`
--

DROP TABLE IF EXISTS `delivery_2017000052`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000052` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000052`
--

LOCK TABLES `delivery_2017000052` WRITE;
/*!40000 ALTER TABLE `delivery_2017000052` DISABLE KEYS */;
INSERT INTO `delivery_2017000052` VALUES (1,'B-M1H020047','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000052` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000053`
--

DROP TABLE IF EXISTS `delivery_2017000053`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000053` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000053`
--

LOCK TABLES `delivery_2017000053` WRITE;
/*!40000 ALTER TABLE `delivery_2017000053` DISABLE KEYS */;
INSERT INTO `delivery_2017000053` VALUES (1,'RN-TW-20170302001','海南汉普科技有限公司','海南省海口市龙华区玉沙路20号国贸经典大厦818室','腾伟','2017-03-03','C100NW','10','台','350.00','3500.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3500.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000053` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000054`
--

DROP TABLE IF EXISTS `delivery_2017000054`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000054` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000054`
--

LOCK TABLES `delivery_2017000054` WRITE;
/*!40000 ALTER TABLE `delivery_2017000054` DISABLE KEYS */;
INSERT INTO `delivery_2017000054` VALUES (1,'B-D7H020002','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000054` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000055`
--

DROP TABLE IF EXISTS `delivery_2017000055`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000055` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000055`
--

LOCK TABLES `delivery_2017000055` WRITE;
/*!40000 ALTER TABLE `delivery_2017000055` DISABLE KEYS */;
INSERT INTO `delivery_2017000055` VALUES (1,'B-D8H020003','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000055` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000056`
--

DROP TABLE IF EXISTS `delivery_2017000056`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000056` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000056`
--

LOCK TABLES `delivery_2017000056` WRITE;
/*!40000 ALTER TABLE `delivery_2017000056` DISABLE KEYS */;
INSERT INTO `delivery_2017000056` VALUES (1,'B-R6H020008','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000056` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000057`
--

DROP TABLE IF EXISTS `delivery_2017000057`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000057` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000057`
--

LOCK TABLES `delivery_2017000057` WRITE;
/*!40000 ALTER TABLE `delivery_2017000057` DISABLE KEYS */;
INSERT INTO `delivery_2017000057` VALUES (1,'B-M1H020035','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000057` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000058`
--

DROP TABLE IF EXISTS `delivery_2017000058`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000058` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000058`
--

LOCK TABLES `delivery_2017000058` WRITE;
/*!40000 ALTER TABLE `delivery_2017000058` DISABLE KEYS */;
INSERT INTO `delivery_2017000058` VALUES (1,'U-01H0200146','越南永正','越南清化省安定县定莲乡','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000058` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000059`
--

DROP TABLE IF EXISTS `delivery_2017000059`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000059` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000059`
--

LOCK TABLES `delivery_2017000059` WRITE;
/*!40000 ALTER TABLE `delivery_2017000059` DISABLE KEYS */;
INSERT INTO `delivery_2017000059` VALUES (1,'M-61H0200060','越南百倢','越南清化省清化市礼门工业区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000059` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000060`
--

DROP TABLE IF EXISTS `delivery_2017000060`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000060` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000060`
--

LOCK TABLES `delivery_2017000060` WRITE;
/*!40000 ALTER TABLE `delivery_2017000060` DISABLE KEYS */;
INSERT INTO `delivery_2017000060` VALUES (1,'M-61H0200120','越南百倢','越南清化省清化市礼门工业区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000060` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000061`
--

DROP TABLE IF EXISTS `delivery_2017000061`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000061` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000061`
--

LOCK TABLES `delivery_2017000061` WRITE;
/*!40000 ALTER TABLE `delivery_2017000061` DISABLE KEYS */;
INSERT INTO `delivery_2017000061` VALUES (1,'Z-11H0200167','越南永川','越南宁平省安谟县安林社','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000061` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000062`
--

DROP TABLE IF EXISTS `delivery_2017000062`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000062` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000062`
--

LOCK TABLES `delivery_2017000062` WRITE;
/*!40000 ALTER TABLE `delivery_2017000062` DISABLE KEYS */;
INSERT INTO `delivery_2017000062` VALUES (1,'T-01H0200147','越南宏美二厂','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','吴中平','2017-03-03','C100NW','3','台','350.00','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000062` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000064`
--

DROP TABLE IF EXISTS `delivery_2017000064`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000064` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000064`
--

LOCK TABLES `delivery_2017000064` WRITE;
/*!40000 ALTER TABLE `delivery_2017000064` DISABLE KEYS */;
INSERT INTO `delivery_2017000064` VALUES (1,'X-11G1100521','越南邦威','越南海防市样京郡兴道坊','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000064` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000065`
--

DROP TABLE IF EXISTS `delivery_2017000065`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000065` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000065`
--

LOCK TABLES `delivery_2017000065` WRITE;
/*!40000 ALTER TABLE `delivery_2017000065` DISABLE KEYS */;
INSERT INTO `delivery_2017000065` VALUES (1,'R-11H0202059','越南永弘','越南清化省河中县河平乡郎艺工业区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000065` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000066`
--

DROP TABLE IF EXISTS `delivery_2017000066`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000066` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000066`
--

LOCK TABLES `delivery_2017000066` WRITE;
/*!40000 ALTER TABLE `delivery_2017000066` DISABLE KEYS */;
INSERT INTO `delivery_2017000066` VALUES (1,'G-01H0200240','越南亚欣','越南南定升直宁县古礼镇','吴中平','2017-03-03','C100NW','5','台','350.00','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000066` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000067`
--

DROP TABLE IF EXISTS `delivery_2017000067`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000067` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000067`
--

LOCK TABLES `delivery_2017000067` WRITE;
/*!40000 ALTER TABLE `delivery_2017000067` DISABLE KEYS */;
INSERT INTO `delivery_2017000067` VALUES (1,'Y-11H0200826','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000067` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000068`
--

DROP TABLE IF EXISTS `delivery_2017000068`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000068` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000068`
--

LOCK TABLES `delivery_2017000068` WRITE;
/*!40000 ALTER TABLE `delivery_2017000068` DISABLE KEYS */;
INSERT INTO `delivery_2017000068` VALUES (1,'Y-08H0200001','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000068` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000069`
--

DROP TABLE IF EXISTS `delivery_2017000069`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000069` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000069`
--

LOCK TABLES `delivery_2017000069` WRITE;
/*!40000 ALTER TABLE `delivery_2017000069` DISABLE KEYS */;
INSERT INTO `delivery_2017000069` VALUES (1,'Y-11H0202849','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000069` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000070`
--

DROP TABLE IF EXISTS `delivery_2017000070`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000070` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000070`
--

LOCK TABLES `delivery_2017000070` WRITE;
/*!40000 ALTER TABLE `delivery_2017000070` DISABLE KEYS */;
INSERT INTO `delivery_2017000070` VALUES (1,'Y-01H0200071','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000070` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000071`
--

DROP TABLE IF EXISTS `delivery_2017000071`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000071` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000071`
--

LOCK TABLES `delivery_2017000071` WRITE;
/*!40000 ALTER TABLE `delivery_2017000071` DISABLE KEYS */;
INSERT INTO `delivery_2017000071` VALUES (1,'Y-11H0202022','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000071` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000072`
--

DROP TABLE IF EXISTS `delivery_2017000072`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000072` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000072`
--

LOCK TABLES `delivery_2017000072` WRITE;
/*!40000 ALTER TABLE `delivery_2017000072` DISABLE KEYS */;
INSERT INTO `delivery_2017000072` VALUES (1,'Y-11H0201975','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000072` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000074`
--

DROP TABLE IF EXISTS `delivery_2017000074`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000074` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000074`
--

LOCK TABLES `delivery_2017000074` WRITE;
/*!40000 ALTER TABLE `delivery_2017000074` DISABLE KEYS */;
INSERT INTO `delivery_2017000074` VALUES (1,'Y-11H0203657','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000074` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000075`
--

DROP TABLE IF EXISTS `delivery_2017000075`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000075` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000075`
--

LOCK TABLES `delivery_2017000075` WRITE;
/*!40000 ALTER TABLE `delivery_2017000075` DISABLE KEYS */;
INSERT INTO `delivery_2017000075` VALUES (1,'Y-11H0203667','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000075` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000076`
--

DROP TABLE IF EXISTS `delivery_2017000076`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000076` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000076`
--

LOCK TABLES `delivery_2017000076` WRITE;
/*!40000 ALTER TABLE `delivery_2017000076` DISABLE KEYS */;
INSERT INTO `delivery_2017000076` VALUES (1,'Y-11H0204120','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000076` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000077`
--

DROP TABLE IF EXISTS `delivery_2017000077`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000077` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000077`
--

LOCK TABLES `delivery_2017000077` WRITE;
/*!40000 ALTER TABLE `delivery_2017000077` DISABLE KEYS */;
INSERT INTO `delivery_2017000077` VALUES (1,'Y-11H0202263','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-03','C100NW','4','台','350.00','1400.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1400.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000077` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000078`
--

DROP TABLE IF EXISTS `delivery_2017000078`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000078` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000078`
--

LOCK TABLES `delivery_2017000078` WRITE;
/*!40000 ALTER TABLE `delivery_2017000078` DISABLE KEYS */;
INSERT INTO `delivery_2017000078` VALUES (1,'T-21H0202439','越南宏美二厂','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','吴中平','2017-03-03','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000078` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000079`
--

DROP TABLE IF EXISTS `delivery_2017000079`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000079` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000079`
--

LOCK TABLES `delivery_2017000079` WRITE;
/*!40000 ALTER TABLE `delivery_2017000079` DISABLE KEYS */;
INSERT INTO `delivery_2017000079` VALUES (1,'RN-ZXP-20170303001','东莞市东城大友电脑经营部','东莞市东城世博天源电脑城D2-A53','朱晓平','2017-03-04','VDI  瘦客户机  DX86','10','台','600.00','6000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','6000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000079` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000081`
--

DROP TABLE IF EXISTS `delivery_2017000081`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000081` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000081`
--

LOCK TABLES `delivery_2017000081` WRITE;
/*!40000 ALTER TABLE `delivery_2017000081` DISABLE KEYS */;
INSERT INTO `delivery_2017000081` VALUES (1,'RN-WCR-20170306001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-03-07','N200NW  云终端','2','台','650.00','1300.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1300.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000081` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000082`
--

DROP TABLE IF EXISTS `delivery_2017000082`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000082` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000082`
--

LOCK TABLES `delivery_2017000082` WRITE;
/*!40000 ALTER TABLE `delivery_2017000082` DISABLE KEYS */;
INSERT INTO `delivery_2017000082` VALUES (1,'RN-WCR-20160928001','东莞雅利箱包有限公司','东莞市厚街镇溪头社区溪中路1号','梁嘉惠','2017-03-08','C100NW  云终端','4','台','820.00','3280.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3280.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000082` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000083`
--

DROP TABLE IF EXISTS `delivery_2017000083`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000083` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000083`
--

LOCK TABLES `delivery_2017000083` WRITE;
/*!40000 ALTER TABLE `delivery_2017000083` DISABLE KEYS */;
INSERT INTO `delivery_2017000083` VALUES (1,'RN-WB-2017030601','北京佰高讯通科技有限公司','北京市朝阳区建国路93号院万达广场12号楼709室','梁嘉惠','2017-03-08','Thinsys 瘦客户机  AX700','5','台','810.00','4050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','4050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000083` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000084`
--

DROP TABLE IF EXISTS `delivery_2017000084`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000084` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000084`
--

LOCK TABLES `delivery_2017000084` WRITE;
/*!40000 ALTER TABLE `delivery_2017000084` DISABLE KEYS */;
INSERT INTO `delivery_2017000084` VALUES (1,'Y-08H0200022','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-08','C100NW','7','台','350.00','2450.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2450.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000084` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000085`
--

DROP TABLE IF EXISTS `delivery_2017000085`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000085` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000085`
--

LOCK TABLES `delivery_2017000085` WRITE;
/*!40000 ALTER TABLE `delivery_2017000085` DISABLE KEYS */;
INSERT INTO `delivery_2017000085` VALUES (1,'Y-11H0204765','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-08','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000085` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000086`
--

DROP TABLE IF EXISTS `delivery_2017000086`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000086` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000086`
--

LOCK TABLES `delivery_2017000086` WRITE;
/*!40000 ALTER TABLE `delivery_2017000086` DISABLE KEYS */;
INSERT INTO `delivery_2017000086` VALUES (1,'H-01H0300024','越南弘福','越南清化省宏化县黄英乡黄龙工业区','吴中平','2017-03-08','C100NW','3','台','350.00','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000086` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000087`
--

DROP TABLE IF EXISTS `delivery_2017000087`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000087` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000087`
--

LOCK TABLES `delivery_2017000087` WRITE;
/*!40000 ALTER TABLE `delivery_2017000087` DISABLE KEYS */;
INSERT INTO `delivery_2017000087` VALUES (1,'B-R6H030002','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-08','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000087` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000088`
--

DROP TABLE IF EXISTS `delivery_2017000088`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000088` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000088`
--

LOCK TABLES `delivery_2017000088` WRITE;
/*!40000 ALTER TABLE `delivery_2017000088` DISABLE KEYS */;
INSERT INTO `delivery_2017000088` VALUES (1,'B-R6H030003','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-08','C100NW','2','台','350.00','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000088` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000089`
--

DROP TABLE IF EXISTS `delivery_2017000089`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000089` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000089`
--

LOCK TABLES `delivery_2017000089` WRITE;
/*!40000 ALTER TABLE `delivery_2017000089` DISABLE KEYS */;
INSERT INTO `delivery_2017000089` VALUES (1,'RN-WZP-2016022301','越南宏美一厂','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','吴中平','2017-03-13','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000089` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000090`
--

DROP TABLE IF EXISTS `delivery_2017000090`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000090` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000090`
--

LOCK TABLES `delivery_2017000090` WRITE;
/*!40000 ALTER TABLE `delivery_2017000090` DISABLE KEYS */;
INSERT INTO `delivery_2017000090` VALUES (1,'S-CQH020037','中山精美鞋业有限公司','广东省中山市火炬开发区世纪一路2号','吴中平','2017-03-13','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000090` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000091`
--

DROP TABLE IF EXISTS `delivery_2017000091`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000091` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000091`
--

LOCK TABLES `delivery_2017000091` WRITE;
/*!40000 ALTER TABLE `delivery_2017000091` DISABLE KEYS */;
INSERT INTO `delivery_2017000091` VALUES (1,'G-01H0300072','越南亚欣','越南南定省直宁县古礼镇','吴中平','2017-03-13','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000091` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000092`
--

DROP TABLE IF EXISTS `delivery_2017000092`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000092` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000092`
--

LOCK TABLES `delivery_2017000092` WRITE;
/*!40000 ALTER TABLE `delivery_2017000092` DISABLE KEYS */;
INSERT INTO `delivery_2017000092` VALUES (1,'T-21H0301825','越南宏美二厂','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','吴中平','2017-03-13','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000092` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000093`
--

DROP TABLE IF EXISTS `delivery_2017000093`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000093` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000093`
--

LOCK TABLES `delivery_2017000093` WRITE;
/*!40000 ALTER TABLE `delivery_2017000093` DISABLE KEYS */;
INSERT INTO `delivery_2017000093` VALUES (1,'T-21H0302383','越南宏美二厂','越南清化省宏化县黄英乡黄龙工业区','吴中平','2017-03-15','C100NW','1','台','350.00','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000093` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000094`
--

DROP TABLE IF EXISTS `delivery_2017000094`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000094` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000094`
--

LOCK TABLES `delivery_2017000094` WRITE;
/*!40000 ALTER TABLE `delivery_2017000094` DISABLE KEYS */;
INSERT INTO `delivery_2017000094` VALUES (1,'GDRE-WCF-20170118087','东莞怡合达自动化科技有限公司','东莞市虎门镇北栅东坊工业区','吴成福','2017-03-16','E398','50','台','400','20000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','20000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000094` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000095`
--

DROP TABLE IF EXISTS `delivery_2017000095`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000095` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000095`
--

LOCK TABLES `delivery_2017000095` WRITE;
/*!40000 ALTER TABLE `delivery_2017000095` DISABLE KEYS */;
INSERT INTO `delivery_2017000095` VALUES (1,'8-11H0300882','越南上杰','越南清化省清化市礼门工业区B区','吴中平','2017-03-17','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000095` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000096`
--

DROP TABLE IF EXISTS `delivery_2017000096`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000096` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000096`
--

LOCK TABLES `delivery_2017000096` WRITE;
/*!40000 ALTER TABLE `delivery_2017000096` DISABLE KEYS */;
INSERT INTO `delivery_2017000096` VALUES (1,'PO1-2017031401TW','广州明景信息科技有限公司','广州市天河区王园路43号3A05','腾玮','2017-03-17','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000096` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000097`
--

DROP TABLE IF EXISTS `delivery_2017000097`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000097` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000097`
--

LOCK TABLES `delivery_2017000097` WRITE;
/*!40000 ALTER TABLE `delivery_2017000097` DISABLE KEYS */;
INSERT INTO `delivery_2017000097` VALUES (1,'RN-WZP-2016022301-1','深圳凯特电气有限公司','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','朱晓平','2017-03-17','ARM C310NW','1','台','1400','1400.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1400.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000097` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000098`
--

DROP TABLE IF EXISTS `delivery_2017000098`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000098` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000098`
--

LOCK TABLES `delivery_2017000098` WRITE;
/*!40000 ALTER TABLE `delivery_2017000098` DISABLE KEYS */;
INSERT INTO `delivery_2017000098` VALUES (1,'R-11H0300793','越南永弘','越南清化省河中县河平乡郎艺工业区','吴中平','2017-03-18','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000098` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000099`
--

DROP TABLE IF EXISTS `delivery_2017000099`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000099` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000099`
--

LOCK TABLES `delivery_2017000099` WRITE;
/*!40000 ALTER TABLE `delivery_2017000099` DISABLE KEYS */;
INSERT INTO `delivery_2017000099` VALUES (1,'CHPO-16-1115','港芝（东莞）电子制造厂有限公司','广东东莞塘厦平山188工业区','汪斌','2017-03-23','云终端  C310NW','30','台','625','18750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','18750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000099` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000100`
--

DROP TABLE IF EXISTS `delivery_2017000100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000100`
--

LOCK TABLES `delivery_2017000100` WRITE;
/*!40000 ALTER TABLE `delivery_2017000100` DISABLE KEYS */;
INSERT INTO `delivery_2017000100` VALUES (1,'CHPO-16-1117','港芝（东莞）电子制造厂有限公司','广东东莞塘厦平山188工业区','汪斌','2017-03-23','云终端  C310NW','20','台','625','12500.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','12500.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000101`
--

DROP TABLE IF EXISTS `delivery_2017000101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000101`
--

LOCK TABLES `delivery_2017000101` WRITE;
/*!40000 ALTER TABLE `delivery_2017000101` DISABLE KEYS */;
INSERT INTO `delivery_2017000101` VALUES (1,'RN-WZP-20170320001','深圳凯特电气有限公司','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','朱晓平','2017-03-23','ARM C310 ','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000103`
--

DROP TABLE IF EXISTS `delivery_2017000103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000103` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000103`
--

LOCK TABLES `delivery_2017000103` WRITE;
/*!40000 ALTER TABLE `delivery_2017000103` DISABLE KEYS */;
INSERT INTO `delivery_2017000103` VALUES (1,'RN-LJH-2017032701','东莞市业勤电脑网络有限公司','东莞市莞城东城大道75号金城大厦601室','梁嘉和','2017-03-29','N100NW云终端','40','台','550','22000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','22000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000104`
--

DROP TABLE IF EXISTS `delivery_2017000104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000104` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000104`
--

LOCK TABLES `delivery_2017000104` WRITE;
/*!40000 ALTER TABLE `delivery_2017000104` DISABLE KEYS */;
INSERT INTO `delivery_2017000104` VALUES (1,'Y-11H0301016','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-03-29','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000105`
--

DROP TABLE IF EXISTS `delivery_2017000105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000105` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000105`
--

LOCK TABLES `delivery_2017000105` WRITE;
/*!40000 ALTER TABLE `delivery_2017000105` DISABLE KEYS */;
INSERT INTO `delivery_2017000105` VALUES (1,'B-D8H030001','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-29','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000106`
--

DROP TABLE IF EXISTS `delivery_2017000106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000106` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000106`
--

LOCK TABLES `delivery_2017000106` WRITE;
/*!40000 ALTER TABLE `delivery_2017000106` DISABLE KEYS */;
INSERT INTO `delivery_2017000106` VALUES (1,'B-D8H030002','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-29','C100NW','3','台','350','1050.00','2部备用机','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000106` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000107`
--

DROP TABLE IF EXISTS `delivery_2017000107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000107` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000107`
--

LOCK TABLES `delivery_2017000107` WRITE;
/*!40000 ALTER TABLE `delivery_2017000107` DISABLE KEYS */;
INSERT INTO `delivery_2017000107` VALUES (1,'B-D2H030016','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-03-29','C100NW','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000107` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000108`
--

DROP TABLE IF EXISTS `delivery_2017000108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000108` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000108`
--

LOCK TABLES `delivery_2017000108` WRITE;
/*!40000 ALTER TABLE `delivery_2017000108` DISABLE KEYS */;
INSERT INTO `delivery_2017000108` VALUES (1,'6-01H0300198','越南正川','越南海防市水源县天香社','吴中平','2017-03-29','C100NW','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000108` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000109`
--

DROP TABLE IF EXISTS `delivery_2017000109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000109` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000109`
--

LOCK TABLES `delivery_2017000109` WRITE;
/*!40000 ALTER TABLE `delivery_2017000109` DISABLE KEYS */;
INSERT INTO `delivery_2017000109` VALUES (1,'8-11H0302262','越南上杰','越南清化省清化市礼门工业区B区','吴中平','2017-03-29','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000109` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000110`
--

DROP TABLE IF EXISTS `delivery_2017000110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000110` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000110`
--

LOCK TABLES `delivery_2017000110` WRITE;
/*!40000 ALTER TABLE `delivery_2017000110` DISABLE KEYS */;
INSERT INTO `delivery_2017000110` VALUES (1,'T-11H0302873','越南宏美一厂','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','吴中平','2017-03-29','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000110` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000111`
--

DROP TABLE IF EXISTS `delivery_2017000111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000111` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000111`
--

LOCK TABLES `delivery_2017000111` WRITE;
/*!40000 ALTER TABLE `delivery_2017000111` DISABLE KEYS */;
INSERT INTO `delivery_2017000111` VALUES (1,'G-01H0300207','越南亚欣','越南南定省直宁县古礼镇','吴中平','2017-03-31','C100NW','2','台','350','700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000112`
--

DROP TABLE IF EXISTS `delivery_2017000112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000112` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000112`
--

LOCK TABLES `delivery_2017000112` WRITE;
/*!40000 ALTER TABLE `delivery_2017000112` DISABLE KEYS */;
INSERT INTO `delivery_2017000112` VALUES (1,'RN-LJH-20170331001','东莞思快电脑','东莞南城天安数码城','梁嘉惠','2017-03-31','C310云终端','100','台','550','55000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','55000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000113`
--

DROP TABLE IF EXISTS `delivery_2017000113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000113` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000113`
--

LOCK TABLES `delivery_2017000113` WRITE;
/*!40000 ALTER TABLE `delivery_2017000113` DISABLE KEYS */;
INSERT INTO `delivery_2017000113` VALUES (1,'H-01H0300217','越南弘福','越南清化省宏化县黄英乡黄龙工业区','吴中平','2017-04-05','C100NW','3','台','350','1050.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1050.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000114`
--

DROP TABLE IF EXISTS `delivery_2017000114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000114` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000114`
--

LOCK TABLES `delivery_2017000114` WRITE;
/*!40000 ALTER TABLE `delivery_2017000114` DISABLE KEYS */;
INSERT INTO `delivery_2017000114` VALUES (1,'Z-01H0300158','越南永川','越南宁平省安谟县安林社','吴中平','2017-04-05','C100NW','29','台','350','10150.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','10150.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000114` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000115`
--

DROP TABLE IF EXISTS `delivery_2017000115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000115` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000115`
--

LOCK TABLES `delivery_2017000115` WRITE;
/*!40000 ALTER TABLE `delivery_2017000115` DISABLE KEYS */;
INSERT INTO `delivery_2017000115` VALUES (1,'RN-LJH-20170405001','东莞厚街盛创电脑配件经营部','广东省东莞市厚街镇厚街村公园新村13巷6号','梁嘉和','2017-04-06','C100NW 云终端','8','台','450','3600.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3600.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000115` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000116`
--

DROP TABLE IF EXISTS `delivery_2017000116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000116` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000116`
--

LOCK TABLES `delivery_2017000116` WRITE;
/*!40000 ALTER TABLE `delivery_2017000116` DISABLE KEYS */;
INSERT INTO `delivery_2017000116` VALUES (1,'RN-LJH-2017032201','厦门吉宏包装科技股份有公司黄冈分公司','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','梁嘉惠','2017-04-06','C100NW','6','台','450','2700.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2700.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000116` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000117`
--

DROP TABLE IF EXISTS `delivery_2017000117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000117` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000117`
--

LOCK TABLES `delivery_2017000117` WRITE;
/*!40000 ALTER TABLE `delivery_2017000117` DISABLE KEYS */;
INSERT INTO `delivery_2017000117` VALUES (1,'20170406','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','汪斌','2017-04-07','T300NW','1','台','480','480.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','480.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000117` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000118`
--

DROP TABLE IF EXISTS `delivery_2017000118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000118` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000118`
--

LOCK TABLES `delivery_2017000118` WRITE;
/*!40000 ALTER TABLE `delivery_2017000118` DISABLE KEYS */;
INSERT INTO `delivery_2017000118` VALUES (1,'Y-01H0300159','越南弘邦','越南清化省静家县春林乡尼山经济区','吴中平','2017-04-08','C100NW','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000118` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000119`
--

DROP TABLE IF EXISTS `delivery_2017000119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000119` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000119`
--

LOCK TABLES `delivery_2017000119` WRITE;
/*!40000 ALTER TABLE `delivery_2017000119` DISABLE KEYS */;
INSERT INTO `delivery_2017000119` VALUES (1,'G-01H0300280','越南亚欣','越南南定省直宁县古礼镇','吴中平','2017-04-08','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000119` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000120`
--

DROP TABLE IF EXISTS `delivery_2017000120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000120` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000120`
--

LOCK TABLES `delivery_2017000120` WRITE;
/*!40000 ALTER TABLE `delivery_2017000120` DISABLE KEYS */;
INSERT INTO `delivery_2017000120` VALUES (1,'RN-LJH-20170327002','东莞市厚街盛创电脑配件经营部','广东省东莞市厚街镇厚街村公园新村13巷6号','梁嘉惠','2017-04-08','C100NW 云终端','4','台','480','1920.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1920.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000121`
--

DROP TABLE IF EXISTS `delivery_2017000121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000121` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000121`
--

LOCK TABLES `delivery_2017000121` WRITE;
/*!40000 ALTER TABLE `delivery_2017000121` DISABLE KEYS */;
INSERT INTO `delivery_2017000121` VALUES (1,'80000613','网神信息技术（北京）股份有限公司','贵州省遵义市汇川区香港路盛邦帝标B栋29-5联邦软件公司','梁嘉惠','2017-04-10','云终端N100','130','台','','0.0','','瘦客户机N800','35','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000121` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000122`
--

DROP TABLE IF EXISTS `delivery_2017000122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000122` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000122`
--

LOCK TABLES `delivery_2017000122` WRITE;
/*!40000 ALTER TABLE `delivery_2017000122` DISABLE KEYS */;
INSERT INTO `delivery_2017000122` VALUES (1,'M-01H0300054','越南百倢','越南清化省清化市礼门工业区','吴中平','2017-04-11','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000122` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000123`
--

DROP TABLE IF EXISTS `delivery_2017000123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000123` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000123`
--

LOCK TABLES `delivery_2017000123` WRITE;
/*!40000 ALTER TABLE `delivery_2017000123` DISABLE KEYS */;
INSERT INTO `delivery_2017000123` VALUES (1,'Z-01H0400035','越南永川','越南宁平省安谟县安林社','吴中平','2017-04-11','C100NW','6','台','350','2100.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2100.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000124`
--

DROP TABLE IF EXISTS `delivery_2017000124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000124` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000124`
--

LOCK TABLES `delivery_2017000124` WRITE;
/*!40000 ALTER TABLE `delivery_2017000124` DISABLE KEYS */;
INSERT INTO `delivery_2017000124` VALUES (1,'S-S1H030024','中山精美鞋业有限公司','广东省中山市火炬开发区世纪一路2号（精美）','吴中平','2017-04-11','C100NW','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000125`
--

DROP TABLE IF EXISTS `delivery_2017000125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000125` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000125`
--

LOCK TABLES `delivery_2017000125` WRITE;
/*!40000 ALTER TABLE `delivery_2017000125` DISABLE KEYS */;
INSERT INTO `delivery_2017000125` VALUES (1,'RN-WCR-20170410001','东莞厚街盛创电脑配件经营部','广东省东莞市厚街镇厚街村公园新村13巷6号','梁嘉和','2017-04-12','C100NW 云终端','8','台','450','3600.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3600.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000126`
--

DROP TABLE IF EXISTS `delivery_2017000126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000126` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000126`
--

LOCK TABLES `delivery_2017000126` WRITE;
/*!40000 ALTER TABLE `delivery_2017000126` DISABLE KEYS */;
INSERT INTO `delivery_2017000126` VALUES (1,'20170417','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','汪斌','2017-04-20','T300NW','1','台','480','480.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','480.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000127`
--

DROP TABLE IF EXISTS `delivery_2017000127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000127` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000127`
--

LOCK TABLES `delivery_2017000127` WRITE;
/*!40000 ALTER TABLE `delivery_2017000127` DISABLE KEYS */;
INSERT INTO `delivery_2017000127` VALUES (1,'PO1-2017032701TW','远东制杯（深圳）有限公司','深圳市龙岗区坂田街道五和大道（南）43号','腾玮','2017-04-21','E300','2','台','400','800.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','800.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000127` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000128`
--

DROP TABLE IF EXISTS `delivery_2017000128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000128` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000128`
--

LOCK TABLES `delivery_2017000128` WRITE;
/*!40000 ALTER TABLE `delivery_2017000128` DISABLE KEYS */;
INSERT INTO `delivery_2017000128` VALUES (1,'RN-ZXP-20170412001','东莞市东城大友电脑经营部','东莞市东城世博天源电脑城D2-A53','朱晓平','2017-04-22','VDI 瘦客户机 DX86','14','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000128` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000129`
--

DROP TABLE IF EXISTS `delivery_2017000129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000129` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000129`
--

LOCK TABLES `delivery_2017000129` WRITE;
/*!40000 ALTER TABLE `delivery_2017000129` DISABLE KEYS */;
INSERT INTO `delivery_2017000129` VALUES (1,'JWT1704200386','四川金网通电子科技有限公司','成都高新西区西部园区新创路28号','梁嘉惠','2017-04-25','N100','6','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000129` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000130`
--

DROP TABLE IF EXISTS `delivery_2017000130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000130` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000130`
--

LOCK TABLES `delivery_2017000130` WRITE;
/*!40000 ALTER TABLE `delivery_2017000130` DISABLE KEYS */;
INSERT INTO `delivery_2017000130` VALUES (1,'JWT1704200371','四川金网通电子科技有限公司','成都高新西区西部园区新创路28号','梁嘉惠','2017-04-25','N100','3','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000130` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000131`
--

DROP TABLE IF EXISTS `delivery_2017000131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000131` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000131`
--

LOCK TABLES `delivery_2017000131` WRITE;
/*!40000 ALTER TABLE `delivery_2017000131` DISABLE KEYS */;
INSERT INTO `delivery_2017000131` VALUES (1,'RN-LJH-20170421001','嘉兴市钜翔信息科技有限公司','浙江省桐乡市梧桐街道振东新区利民路108号','梁嘉惠','2017-04-25','N600','10','台','1150','11500.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','11500.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000132`
--

DROP TABLE IF EXISTS `delivery_2017000132`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000132` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000132`
--

LOCK TABLES `delivery_2017000132` WRITE;
/*!40000 ALTER TABLE `delivery_2017000132` DISABLE KEYS */;
INSERT INTO `delivery_2017000132` VALUES (1,'RN-LJH-20170414002','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-04-25','希捷 4TB 企业版 ST4000NM0035','6','块','','0.0','','群晖 DS1817+8G 企业版','1','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000132` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000133`
--

DROP TABLE IF EXISTS `delivery_2017000133`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000133` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000133`
--

LOCK TABLES `delivery_2017000133` WRITE;
/*!40000 ALTER TABLE `delivery_2017000133` DISABLE KEYS */;
INSERT INTO `delivery_2017000133` VALUES (1,'RN-LJH-20170414001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-04-26','HPE Proliant DL388 Gen9 E5-2620V4 1P 16GB-R P440ar 8SFF 500W PS Serve','1','台','','0.0','','HPE DL380 GEN9 Intel Xeon E5-2620v4(2.1GHz/8-core/20MB/85W)Processor Kit','1','个','','0.0','','HP 16GB(1x16GB)Single Rank x4 DDR4-2400 CAS-17-17-17 Registered Memory Kit','7','个','','0.0','','HP 300GB 12G SAS 10K rpm SFF(2.5-inch)SC Enterprise 3yr Warranty Hard Drive','8','个','','0.0','','HP 500W Flex Slot Platinum Hot Plug Power Supply Kit','1','个','','0.0','','HP 9.5mm SATA DVD-RW JackBlank G9 Optical Drive','1','个','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000133` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000134`
--

DROP TABLE IF EXISTS `delivery_2017000134`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000134` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000134`
--

LOCK TABLES `delivery_2017000134` WRITE;
/*!40000 ALTER TABLE `delivery_2017000134` DISABLE KEYS */;
INSERT INTO `delivery_2017000134` VALUES (1,'RN-LJH-20170414001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-04-26','HP DL380 Gen9 Universal Media B','1','个','','0.0','','MS Windows server 2012 R2 英文标准版 ROK','1','个','','0.0','','MS Windows server 2012 ROK 5用户授权','1','个','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000134` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000135`
--

DROP TABLE IF EXISTS `delivery_2017000135`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000135` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000135`
--

LOCK TABLES `delivery_2017000135` WRITE;
/*!40000 ALTER TABLE `delivery_2017000135` DISABLE KEYS */;
INSERT INTO `delivery_2017000135` VALUES (1,'RN-LJH-20170419001','杭州蓝代斯克数字技术有限公司','杭州市西湖区翠柏路7号杭州电子商务产业园303室','梁嘉惠','2017-04-28','瘦客户一体机','5','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000135` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000136`
--

DROP TABLE IF EXISTS `delivery_2017000136`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000136` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000136`
--

LOCK TABLES `delivery_2017000136` WRITE;
/*!40000 ALTER TABLE `delivery_2017000136` DISABLE KEYS */;
INSERT INTO `delivery_2017000136` VALUES (1,'RN-WZP-2016072001','株洲高科火炬信息服务有限公司','湖南省株洲市天元区仙月环路中国动力谷研发中心B区D栋众创空间','腾玮','2017-04-28','Ryun-Thinsys C100云终端机','8','台','350','2800.00','','Ryun-Thinsys AX700云终端机','6','台','650','3900.00','','人工费','1','天','100','100.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','6800.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000136` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000137`
--

DROP TABLE IF EXISTS `delivery_2017000137`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000137` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000137`
--

LOCK TABLES `delivery_2017000137` WRITE;
/*!40000 ALTER TABLE `delivery_2017000137` DISABLE KEYS */;
INSERT INTO `delivery_2017000137` VALUES (1,'GDRE-WCF-20170118087','东莞怡合达自动化科技有限公司','东莞市虎门镇北栅东坊工业区','吴成福','2017-05-02','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000137` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000138`
--

DROP TABLE IF EXISTS `delivery_2017000138`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000138` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000138`
--

LOCK TABLES `delivery_2017000138` WRITE;
/*!40000 ALTER TABLE `delivery_2017000138` DISABLE KEYS */;
INSERT INTO `delivery_2017000138` VALUES (1,'RN-LJH-20170426003','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-05-05','HP 24寸显示器','3','台','','0.0','','N200NW 云终端','3','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000138` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000139`
--

DROP TABLE IF EXISTS `delivery_2017000139`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000139` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000139`
--

LOCK TABLES `delivery_2017000139` WRITE;
/*!40000 ALTER TABLE `delivery_2017000139` DISABLE KEYS */;
INSERT INTO `delivery_2017000139` VALUES (1,'B-D1H030007','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-05-08','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000139` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000140`
--

DROP TABLE IF EXISTS `delivery_2017000140`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000140` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000140`
--

LOCK TABLES `delivery_2017000140` WRITE;
/*!40000 ALTER TABLE `delivery_2017000140` DISABLE KEYS */;
INSERT INTO `delivery_2017000140` VALUES (1,'B-V8H030002','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-05-08','C100NW','1','台','350','350.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','350.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000140` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000141`
--

DROP TABLE IF EXISTS `delivery_2017000141`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000141` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000141`
--

LOCK TABLES `delivery_2017000141` WRITE;
/*!40000 ALTER TABLE `delivery_2017000141` DISABLE KEYS */;
INSERT INTO `delivery_2017000141` VALUES (1,'20170410','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-05-08','C100NW','100','台','350','35000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','35000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000141` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000142`
--

DROP TABLE IF EXISTS `delivery_2017000142`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000142` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000142`
--

LOCK TABLES `delivery_2017000142` WRITE;
/*!40000 ALTER TABLE `delivery_2017000142` DISABLE KEYS */;
INSERT INTO `delivery_2017000142` VALUES (1,'PO1-2017041301TW','东莞市冠中信息技术有限公司','东莞市东城区光明管理区百分百科技园','腾玮','2017-05-08','16G硬盘','6','PCS','75','450.00','','人工费','1','天','200','200.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','650.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000142` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000143`
--

DROP TABLE IF EXISTS `delivery_2017000143`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000143` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000143`
--

LOCK TABLES `delivery_2017000143` WRITE;
/*!40000 ALTER TABLE `delivery_2017000143` DISABLE KEYS */;
INSERT INTO `delivery_2017000143` VALUES (1,'17727068023645980','四川金星压缩机制造有限公司','四川省成都市郫县红光镇现代工业港港北区港通北三路670号','梁嘉惠','2017-05-11','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000143` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000144`
--

DROP TABLE IF EXISTS `delivery_2017000144`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000144` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000144`
--

LOCK TABLES `delivery_2017000144` WRITE;
/*!40000 ALTER TABLE `delivery_2017000144` DISABLE KEYS */;
INSERT INTO `delivery_2017000144` VALUES (1,'RN-LJH-20170510001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-05-12','HP ProDesk 280 G2 MT 台式机','3','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000144` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000145`
--

DROP TABLE IF EXISTS `delivery_2017000145`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000145` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000145`
--

LOCK TABLES `delivery_2017000145` WRITE;
/*!40000 ALTER TABLE `delivery_2017000145` DISABLE KEYS */;
INSERT INTO `delivery_2017000145` VALUES (1,'RN-LJH-20170509002','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-05-12','HP ProDesk 280 G2 MT 台式机','1','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','1','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000145` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000146`
--

DROP TABLE IF EXISTS `delivery_2017000146`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000146` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000146`
--

LOCK TABLES `delivery_2017000146` WRITE;
/*!40000 ALTER TABLE `delivery_2017000146` DISABLE KEYS */;
INSERT INTO `delivery_2017000146` VALUES (1,'RN-LJH-20170509001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-05-12','HP ProDesk 280 G2 MT 台式机','3','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','3','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000146` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000147`
--

DROP TABLE IF EXISTS `delivery_2017000147`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000147` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000147`
--

LOCK TABLES `delivery_2017000147` WRITE;
/*!40000 ALTER TABLE `delivery_2017000147` DISABLE KEYS */;
INSERT INTO `delivery_2017000147` VALUES (1,'RN-LJH-20170505002','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-05-12','HP ProDesk 280 G2 MT 台式机','2','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','2','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000147` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000149`
--

DROP TABLE IF EXISTS `delivery_2017000149`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000149` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000149`
--

LOCK TABLES `delivery_2017000149` WRITE;
/*!40000 ALTER TABLE `delivery_2017000149` DISABLE KEYS */;
INSERT INTO `delivery_2017000149` VALUES (1,'20170502','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','edit','2017-05-15','T300NW','9','台','520','4680.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','4680.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000149` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000150`
--

DROP TABLE IF EXISTS `delivery_2017000150`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000150` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000150`
--

LOCK TABLES `delivery_2017000150` WRITE;
/*!40000 ALTER TABLE `delivery_2017000150` DISABLE KEYS */;
INSERT INTO `delivery_2017000150` VALUES (1,'20170508','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','edit','2017-05-15','T300NW','1','台','520','520.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','520.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000150` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000151`
--

DROP TABLE IF EXISTS `delivery_2017000151`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000151` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000151`
--

LOCK TABLES `delivery_2017000151` WRITE;
/*!40000 ALTER TABLE `delivery_2017000151` DISABLE KEYS */;
INSERT INTO `delivery_2017000151` VALUES (1,'20170510','重庆道谷科技有限公司','重庆市沙坪坝区金沙时代北苑15号附1号2-8','edit','2017-05-15','T300NW','1','台','520','520.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','520.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000151` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000152`
--

DROP TABLE IF EXISTS `delivery_2017000152`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000152` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000152`
--

LOCK TABLES `delivery_2017000152` WRITE;
/*!40000 ALTER TABLE `delivery_2017000152` DISABLE KEYS */;
INSERT INTO `delivery_2017000152` VALUES (1,'RN-WCR-20170411002','深圳市东鹏程科技发展有限公司','深圳市南山区高新南六道6号迈科龙大厦3A06','梁嘉惠','2017-05-16','Thinsys N600NW 瘦客户机','5','台','','0.0','','DELL R530 机架式服务器（虚拟化服务器）','1','套','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000152` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000153`
--

DROP TABLE IF EXISTS `delivery_2017000153`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000153` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000153`
--

LOCK TABLES `delivery_2017000153` WRITE;
/*!40000 ALTER TABLE `delivery_2017000153` DISABLE KEYS */;
INSERT INTO `delivery_2017000153` VALUES (1,'RN-ZXP-20170515001','东莞市东城大友电脑经营部','东莞市东城世博天源电脑城D2-A53','朱晓平','2017-05-17','瘦客户机 DX86','6','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000153` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000154`
--

DROP TABLE IF EXISTS `delivery_2017000154`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000154` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000154`
--

LOCK TABLES `delivery_2017000154` WRITE;
/*!40000 ALTER TABLE `delivery_2017000154` DISABLE KEYS */;
INSERT INTO `delivery_2017000154` VALUES (1,'20170516','中山志捷鞋业技术服务有限公司','广东中山市张家边沙边工业区敬业路1号','吴中平','2017-05-17','C100NW','100','台','350','35000.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','35000.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000154` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000155`
--

DROP TABLE IF EXISTS `delivery_2017000155`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000155` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000155`
--

LOCK TABLES `delivery_2017000155` WRITE;
/*!40000 ALTER TABLE `delivery_2017000155` DISABLE KEYS */;
INSERT INTO `delivery_2017000155` VALUES (1,'17727068023645980','四川金星压缩机制造有限公司','四川省成都市郫县红光镇现代工业港港北区港通北三路670号','梁嘉惠','2017-05-17','N100','1','台','570','570.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','570.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000155` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000156`
--

DROP TABLE IF EXISTS `delivery_2017000156`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000156` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000156`
--

LOCK TABLES `delivery_2017000156` WRITE;
/*!40000 ALTER TABLE `delivery_2017000156` DISABLE KEYS */;
INSERT INTO `delivery_2017000156` VALUES (1,'RN-LJH-2017051801','重庆高正云睿科技有限公司','重庆市沙坪坝区康安路2号1幢17-2号','梁嘉惠','2017-05-19','N100NW','7','台','450','3150.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','3150.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000156` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000157`
--

DROP TABLE IF EXISTS `delivery_2017000157`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000157` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000157`
--

LOCK TABLES `delivery_2017000157` WRITE;
/*!40000 ALTER TABLE `delivery_2017000157` DISABLE KEYS */;
INSERT INTO `delivery_2017000157` VALUES (1,'RN-ZXP-2017050301','深圳市神州动力数码有限公司','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','朱晓平','2017-05-27','Ryun-Thinsys C110NW云终端','64','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000157` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000158`
--

DROP TABLE IF EXISTS `delivery_2017000158`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000158` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000158`
--

LOCK TABLES `delivery_2017000158` WRITE;
/*!40000 ALTER TABLE `delivery_2017000158` DISABLE KEYS */;
INSERT INTO `delivery_2017000158` VALUES (1,'RN-LJH-20170502001','深圳市汉智星科技有限公司','深圳龙华新区大浪街道国乐科技园3栋8楼','梁嘉和','2017-06-01','DELL R730 机架式服务器','1','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000158` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000159`
--

DROP TABLE IF EXISTS `delivery_2017000159`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000159` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000159`
--

LOCK TABLES `delivery_2017000159` WRITE;
/*!40000 ALTER TABLE `delivery_2017000159` DISABLE KEYS */;
INSERT INTO `delivery_2017000159` VALUES (1,'20170602135656','佛山市圣堡罗门业有限公司','广东省佛山市顺德区勒流西华圣堡罗门业有限公司','梁嘉和','2017-06-02','AX700','3','台','880','2640.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','2640.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000159` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000160`
--

DROP TABLE IF EXISTS `delivery_2017000160`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000160` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000160`
--

LOCK TABLES `delivery_2017000160` WRITE;
/*!40000 ALTER TABLE `delivery_2017000160` DISABLE KEYS */;
INSERT INTO `delivery_2017000160` VALUES (1,'20170602','历俊（广州）珠宝有限公司','广州市南沙区豪岗大道28号历俊公司','梁嘉惠','2017-06-02','Thinsys N500NW 瘦客户机','3','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000160` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000161`
--

DROP TABLE IF EXISTS `delivery_2017000161`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000161` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000161`
--

LOCK TABLES `delivery_2017000161` WRITE;
/*!40000 ALTER TABLE `delivery_2017000161` DISABLE KEYS */;
INSERT INTO `delivery_2017000161` VALUES (1,'2017042001','派龙国际有限公司','黄江','张祖颖','2017-06-05','C100','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000161` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000162`
--

DROP TABLE IF EXISTS `delivery_2017000162`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000162` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000162`
--

LOCK TABLES `delivery_2017000162` WRITE;
/*!40000 ALTER TABLE `delivery_2017000162` DISABLE KEYS */;
INSERT INTO `delivery_2017000162` VALUES (1,'RN-TW-2017053101','广州星晟信息科技有限公司','广州市天河区中山大道西238号勤天大厦1604','腾玮','2017-06-05','C100','5','台','350','1750.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','1750.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000162` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000163`
--

DROP TABLE IF EXISTS `delivery_2017000163`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000163` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000163`
--

LOCK TABLES `delivery_2017000163` WRITE;
/*!40000 ALTER TABLE `delivery_2017000163` DISABLE KEYS */;
INSERT INTO `delivery_2017000163` VALUES (1,'20170522-001','MG Plastic &Hardware Company Limited','UNIT 04,7/F BRIGHT WAY TOWER NO.33 MONG KOK RD KL HK','梁嘉惠','2017-06-05','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000163` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000164`
--

DROP TABLE IF EXISTS `delivery_2017000164`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000164` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000164`
--

LOCK TABLES `delivery_2017000164` WRITE;
/*!40000 ALTER TABLE `delivery_2017000164` DISABLE KEYS */;
INSERT INTO `delivery_2017000164` VALUES (1,'PO1-2017040601TW','荆州市云鹏计算机科技有限公司','荆州市荆州区凤凰路72号','腾玮','2017-06-05','C100','10','台','350','3500.00','','实施费用','2','天','400','800.00','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','4300.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000164` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000165`
--

DROP TABLE IF EXISTS `delivery_2017000165`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000165` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000165`
--

LOCK TABLES `delivery_2017000165` WRITE;
/*!40000 ALTER TABLE `delivery_2017000165` DISABLE KEYS */;
INSERT INTO `delivery_2017000165` VALUES (1,'RN-LJH-20170605001','嘉兴市欧文商贸有限公司','浙江省嘉兴市南湖区东升东路1753号三楼3EB03','梁嘉惠','2017-06-05','N5805瘦客户机','10','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000165` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000166`
--

DROP TABLE IF EXISTS `delivery_2017000166`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000166` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000166`
--

LOCK TABLES `delivery_2017000166` WRITE;
/*!40000 ALTER TABLE `delivery_2017000166` DISABLE KEYS */;
INSERT INTO `delivery_2017000166` VALUES (1,'RN-LJH-2017052301','宁德市蕉城区思快电脑有限公司','宁德市蕉城区闽东西路2号信达豪庭A号1106室','梁嘉惠','2017-06-08','C310NW 云终端','200','台','','0.0','','C310NW 云终端（来电自动开机）','50','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000166` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000167`
--

DROP TABLE IF EXISTS `delivery_2017000167`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000167` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000167`
--

LOCK TABLES `delivery_2017000167` WRITE;
/*!40000 ALTER TABLE `delivery_2017000167` DISABLE KEYS */;
INSERT INTO `delivery_2017000167` VALUES (1,'RN-LJH-2017052302','东莞市思快电脑有限公司','东莞市南城区黄金路1号东莞天安数码城A区A1栋1006','梁嘉惠','2017-06-08','C310NW 云终端','100','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000167` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000168`
--

DROP TABLE IF EXISTS `delivery_2017000168`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000168` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000168`
--

LOCK TABLES `delivery_2017000168` WRITE;
/*!40000 ALTER TABLE `delivery_2017000168` DISABLE KEYS */;
INSERT INTO `delivery_2017000168` VALUES (1,'RN-ZXP-2017060501','深圳市神州动力数码有限公司','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','朱晓平','2017-06-09','Ryun-Thinsys C110NW云终端','9','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000168` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000169`
--

DROP TABLE IF EXISTS `delivery_2017000169`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000169` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000169`
--

LOCK TABLES `delivery_2017000169` WRITE;
/*!40000 ALTER TABLE `delivery_2017000169` DISABLE KEYS */;
INSERT INTO `delivery_2017000169` VALUES (1,'RN-LJH-20170505001','东莞廷鑫贸易有限公司','东莞市南城区三元里万凯商务大厦506号','梁嘉惠','2017-06-12','HP ProDesk 280 G2 MT 台式机','2','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','2','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000169` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000171`
--

DROP TABLE IF EXISTS `delivery_2017000171`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000171` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000171`
--

LOCK TABLES `delivery_2017000171` WRITE;
/*!40000 ALTER TABLE `delivery_2017000171` DISABLE KEYS */;
INSERT INTO `delivery_2017000171` VALUES (1,'20170613','重庆道谷科技有限公司','江苏南京市玄武区珠江路333号百脑汇3楼3A26','欧婕','2017-06-13','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000171` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000172`
--

DROP TABLE IF EXISTS `delivery_2017000172`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000172` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000172`
--

LOCK TABLES `delivery_2017000172` WRITE;
/*!40000 ALTER TABLE `delivery_2017000172` DISABLE KEYS */;
INSERT INTO `delivery_2017000172` VALUES (1,'RN-LJH-20170505002-1','东莞市盛腾进出口有限公司','东莞市 厚街镇 赤岭村一横北路5号','梁嘉惠','2017-06-14','HP ProDesk 280 G2 MT 台式机','16','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','16','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000172` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000173`
--

DROP TABLE IF EXISTS `delivery_2017000173`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000173` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000173`
--

LOCK TABLES `delivery_2017000173` WRITE;
/*!40000 ALTER TABLE `delivery_2017000173` DISABLE KEYS */;
INSERT INTO `delivery_2017000173` VALUES (1,'RN-LJH-2017053101','北京同方微电子有限公司','北京市海淀区王庄路1号院4号楼18层','梁嘉和','2017-06-14','N100NW 云终端','1','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000173` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000174`
--

DROP TABLE IF EXISTS `delivery_2017000174`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000174` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000174`
--

LOCK TABLES `delivery_2017000174` WRITE;
/*!40000 ALTER TABLE `delivery_2017000174` DISABLE KEYS */;
INSERT INTO `delivery_2017000174` VALUES (1,'RN-LJH-20170602001','成都绘景志成软件科技有限公司','四川省成都市青羊区石人南路34号','梁嘉惠','2017-06-15','Thinsys N628NW','16','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000174` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000175`
--

DROP TABLE IF EXISTS `delivery_2017000175`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000175` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000175`
--

LOCK TABLES `delivery_2017000175` WRITE;
/*!40000 ALTER TABLE `delivery_2017000175` DISABLE KEYS */;
INSERT INTO `delivery_2017000175` VALUES (1,'RN-LJH-20170509001-1','东莞市嘉仑信息技术有限公司','东莞市南城街道周溪隆溪路5号','梁嘉惠','2017-06-20','Thinsys N230NW','18','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000175` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000176`
--

DROP TABLE IF EXISTS `delivery_2017000176`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000176` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000176`
--

LOCK TABLES `delivery_2017000176` WRITE;
/*!40000 ALTER TABLE `delivery_2017000176` DISABLE KEYS */;
INSERT INTO `delivery_2017000176` VALUES (1,'RN-LJH-20170616001','东莞绿洲鞋业有限公司','东莞市厚街镇赤岭','梁嘉惠','2017-06-22','HP ProDesk 280 G2 MT 台式机','1','台','','0.0','','HP v202显示器19.45寸宽屏16:9 LED背光液晶显示器','1','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000176` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000177`
--

DROP TABLE IF EXISTS `delivery_2017000177`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000177` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(64) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(64) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(64) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(64) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(64) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(64) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000177`
--

LOCK TABLES `delivery_2017000177` WRITE;
/*!40000 ALTER TABLE `delivery_2017000177` DISABLE KEYS */;
INSERT INTO `delivery_2017000177` VALUES (1,'RN-TW-2017062101','海南汉普科技有限公司','海南省海口市龙华区玉沙路20号国贸经典大厦818室','腾玮','2017-06-26','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000177` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000178`
--

DROP TABLE IF EXISTS `delivery_2017000178`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000178` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000178`
--

LOCK TABLES `delivery_2017000178` WRITE;
/*!40000 ALTER TABLE `delivery_2017000178` DISABLE KEYS */;
INSERT INTO `delivery_2017000178` VALUES (1,'YXGPH17060134','云宏信息科技股份有限公司','广州市天河区元岗横路33号天河慧通产业广场B2栋','梁嘉和','2017-06-30','Thinsys AX700','258','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000178` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_2017000179`
--

DROP TABLE IF EXISTS `delivery_2017000179`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_2017000179` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_adress` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  `production_name1` varchar(288) DEFAULT NULL,
  `nums1` varchar(64) DEFAULT NULL,
  `unit1` varchar(64) DEFAULT NULL,
  `unit_price1` varchar(64) DEFAULT NULL,
  `amount1` varchar(64) DEFAULT NULL,
  `remarks1` varchar(64) DEFAULT NULL,
  `production_name2` varchar(288) DEFAULT NULL,
  `nums2` varchar(64) DEFAULT NULL,
  `unit2` varchar(64) DEFAULT NULL,
  `unit_price2` varchar(64) DEFAULT NULL,
  `amount2` varchar(64) DEFAULT NULL,
  `remarks2` varchar(64) DEFAULT NULL,
  `production_name3` varchar(288) DEFAULT NULL,
  `nums3` varchar(64) DEFAULT NULL,
  `unit3` varchar(64) DEFAULT NULL,
  `unit_price3` varchar(64) DEFAULT NULL,
  `amount3` varchar(64) DEFAULT NULL,
  `remarks3` varchar(64) DEFAULT NULL,
  `production_name4` varchar(288) DEFAULT NULL,
  `nums4` varchar(64) DEFAULT NULL,
  `unit4` varchar(64) DEFAULT NULL,
  `unit_price4` varchar(64) DEFAULT NULL,
  `amount4` varchar(64) DEFAULT NULL,
  `remarks4` varchar(64) DEFAULT NULL,
  `production_name5` varchar(288) DEFAULT NULL,
  `nums5` varchar(64) DEFAULT NULL,
  `unit5` varchar(64) DEFAULT NULL,
  `unit_price5` varchar(64) DEFAULT NULL,
  `amount5` varchar(64) DEFAULT NULL,
  `remarks5` varchar(64) DEFAULT NULL,
  `production_name6` varchar(288) DEFAULT NULL,
  `nums6` varchar(64) DEFAULT NULL,
  `unit6` varchar(64) DEFAULT NULL,
  `unit_price6` varchar(64) DEFAULT NULL,
  `amount6` varchar(64) DEFAULT NULL,
  `remarks6` varchar(64) DEFAULT NULL,
  `all_amount` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_2017000179`
--

LOCK TABLES `delivery_2017000179` WRITE;
/*!40000 ALTER TABLE `delivery_2017000179` DISABLE KEYS */;
INSERT INTO `delivery_2017000179` VALUES (1,'YXGPH17060133','云宏信息科技股份有限公司','广州市天河区元岗横路33号天河慧通产业广场B2栋','梁嘉和','2017-06-30','Thinsys C100NW','200','台','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','','','','','0.0','','0.00','0.00');
/*!40000 ALTER TABLE `delivery_2017000179` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_orders`
--

DROP TABLE IF EXISTS `delivery_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_orders` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `no` varchar(64) DEFAULT NULL,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `delivery_date` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_orders`
--

LOCK TABLES `delivery_orders` WRITE;
/*!40000 ALTER TABLE `delivery_orders` DISABLE KEYS */;
INSERT INTO `delivery_orders` VALUES (1,'2017000001','Z-01G1200157','中山志捷（越南）','吴中平','2017-01-9'),(2,'2017000002','Y-HG1203647','STAR TIGER LIMITED(弘邦)','吴中平','2017-01-4'),(3,'2017000003','B-R6H010001','中山市志捷鞋业技术服务有限公司','吴中平','2017-01-11'),(4,'2017000004','B-M1G120059','中山市志捷鞋业技术服务有限公司','吴中平','2017-01-11'),(5,'2017000005','PMG-20161122-1','毕马杰橡胶科技（常熟）有限公司','梁嘉惠','2017-01-6'),(6,'2017000006','B-D5G120031','中山市志捷鞋业技术服务有限公司','吴中平','2017-01-11'),(7,'2017000007','T-21H0100049','CASTLE SKY LIMITED(宏美)','吴中平','2017-01-13'),(8,'2017000008','N-01H0100131','REDFIRE GLOBAL LIMITED','吴中平','2017-01-18'),(9,'2017000009','B-D5G120002','中山市志捷鞋业技术服务有限公司','吴中平','2017-01-18'),(10,'2017000010','B-R3G120002','中山市志捷鞋业技术服务有限公司','吴中平','2017-01-18'),(11,'2017000011','6-01H0100052','WEALTH EMPEROR LIMITED','吴中平','2017-01-13'),(12,'2017000012','Y-11H0100244','弘邦（越南）鞋业有限公司','吴中平','2017-01-19'),(13,'2017000013','Y-11G1203881','弘邦（越南）鞋业有限公司','吴中平','2017-01-19'),(14,'2017000014','Y-11H0100022','弘邦（越南）鞋业有限公司','吴中平','2017-01-19'),(15,'2017000015','Y-11H0100140','弘邦（越南）鞋业有限公司','吴中平','2017-01-19'),(16,'2017000016','Y-11H0100136','越南弘邦','吴中平','2017-01-19'),(17,'2017000017','G-01G1200301','越南亚欣','吴中平','2017-02-18'),(18,'2017000018','U-01H0100094','越南永正','吴中平','2017-02-18'),(19,'2017000019','8-11H0101444','越南上杰','吴中平','2017-02-18'),(20,'2017000020','T-11H0100711','越南宏美一厂','吴中平','2017-02-18'),(21,'2017000021','Y-11H0102033','越南弘邦','吴中平','2017-02-21'),(22,'2017000022','2017011901','广东智城信息技术有限公司','腾伟','2017-02-21'),(23,'2017000024','Y-11H0102187','越南弘邦','吴中平','2017-02-21'),(24,'2017000025','G-01G120031','越南亚欣','吴中平','2017-02-21'),(25,'2017000026','RN-ZXP-2017021301','南京铠硕信息技术有限公司','朱晓平','2017-02-15'),(26,'2017000027','B-R6H020003','中山志捷鞋业技术服务有限公司','吴中平','2017-02-23'),(27,'2017000028','2017021401','重庆道谷科技有限公司','汪斌','2017-02-23'),(28,'2017000029','G-01H0100181','越南亚欣','吴中平','2017-02-23'),(29,'2017000030','Y-11H0200061','越南弘邦','吴中平','2017-02-23'),(30,'2017000031','T-21H0200413','越南宏美二厂','吴中平','2017-02-23'),(31,'2017000032','80000506','网神信息技术（北京）股份有限公司','梁嘉惠','2017-02-23'),(32,'2017000033','B-R3H010005','中山志捷鞋业技术服务有限公司','吴中平','2017-02-23'),(33,'2017000034','RN-TW-20170209001','海南汉普科技有限公司','腾伟','2017-02-24'),(34,'2017000035','RN-ZXP-20170207001','东莞市东城大友电脑经营部','朱晓平','2017-02-24'),(35,'2017000036','RN-LJH-2017021301','东莞市捷诚计算机科技有限公司','梁嘉惠','2017-02-24'),(36,'2017000037','RN-WB-2017021701','厦门吉宏包装科技股份有公司黄冈分公司','梁嘉惠','2017-02-24'),(37,'2017000038','2017022101','毕马杰橡胶科技（常熟）有限公司','梁嘉惠','2017-02-24'),(38,'2017000039','RN-TW-2017021501','东莞市壹华电子科技有限公司','腾伟','2017-02-25'),(39,'2017000040','RN-WZP-2016022301','深圳凯特电气有限公司','朱晓平','2017-02-25'),(40,'2017000041','RN-WB-2017022301','广东联迪信息科技有限公司','汪斌','2017-02-27'),(41,'2017000042','Y-11H0103031','越南弘邦','吴中平','2017-02-28'),(42,'2017000043','K-01H0200035','越南跃升','吴中平','2017-03-02'),(43,'2017000044','6-01H0200071','越南正川','吴中平','2017-03-02'),(44,'2017000045','U-01H0200114','越南永正','吴中平','2017-03-02'),(45,'2017000046','D-11H0200588','越南立川','吴中平','2017-03-03'),(46,'2017000047','3-11H020076','福建威霖实业有限公司','吴中平','2017-03-03'),(47,'2017000048','B-R1H020019','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(48,'2017000049','8-01H0200068','越南上杰','吴中平','2017-03-03'),(49,'2017000050','B-R1H020026','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(50,'2017000051','B-D7H020002','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(51,'2017000052','B-M1H020047','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(52,'2017000053','RN-TW-20170302001','海南汉普科技有限公司','腾伟','2017-03-03'),(53,'2017000054','B-D7H020002','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(54,'2017000055','B-D8H020003','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(55,'2017000056','B-R6H020008','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(56,'2017000057','B-M1H020035','中山志捷鞋业技术服务有限公司','吴中平','2017-03-03'),(57,'2017000058','U-01H0200146','越南永正','吴中平','2017-03-03'),(58,'2017000059','M-61H0200060','越南百倢','吴中平','2017-03-03'),(59,'2017000060','M-61H0200120','越南百倢','吴中平','2017-03-03'),(60,'2017000061','Z-11H0200167','越南永川','吴中平','2017-03-03'),(61,'2017000062','T-01H0200147','越南宏美二厂','吴中平','2017-03-03'),(62,'2017000064','X-11G1100521','越南邦威','吴中平','2017-03-03'),(63,'2017000065','R-11H0202059','越南永弘','吴中平','2017-03-03'),(64,'2017000066','G-01H0200240','越南亚欣','吴中平','2017-03-03'),(65,'2017000067','Y-11H0200826','越南弘邦','吴中平','2017-03-03'),(66,'2017000068','Y-08H0200001','越南弘邦','吴中平','2017-03-03'),(67,'2017000069','Y-11H0202849','越南弘邦','吴中平','2017-03-03'),(68,'2017000070','Y-01H0200071','越南弘邦','吴中平','2017-03-03'),(69,'2017000071','Y-11H0202022','越南弘邦','吴中平','2017-03-03'),(70,'2017000072','Y-11H0201975','越南弘邦','吴中平','2017-03-03'),(71,'2017000074','Y-11H0203657','越南弘邦','吴中平','2017-03-03'),(72,'2017000075','Y-11H0203667','越南弘邦','吴中平','2017-03-03'),(73,'2017000076','Y-11H0204120','越南弘邦','吴中平','2017-03-03'),(74,'2017000077','Y-11H0202263','越南弘邦','吴中平','2017-03-03'),(75,'2017000078','T-21H0202439','越南宏美二厂','吴中平','2017-03-03'),(76,'2017000079','RN-ZXP-20170303001','东莞市东城大友电脑经营部','朱晓平','2017-03-04'),(77,'2017000081','RN-WCR-20170306001','东莞绿洲鞋业有限公司','梁嘉惠','2017-03-07'),(78,'2017000082','RN-WCR-20160928001','东莞雅利箱包有限公司','梁嘉惠','2017-03-08'),(79,'2017000083','RN-WB-2017030601','北京佰高讯通科技有限公司','梁嘉惠','2017-03-08'),(80,'2017000084','Y-08H0200022','越南弘邦','吴中平','2017-03-08'),(81,'2017000085','Y-11H0204765','越南弘邦','吴中平','2017-03-08'),(82,'2017000086','H-01H0300024','越南弘福','吴中平','2017-03-08'),(83,'2017000087','B-R6H030002','中山志捷鞋业技术服务有限公司','吴中平','2017-03-08'),(84,'2017000088','B-R6H030003','中山志捷鞋业技术服务有限公司','吴中平','2017-03-08'),(85,'2017000089','T-11H0204427','越南宏美一厂','吴中平','2017-03-13'),(86,'2017000090','S-CQH020037','中山精美鞋业有限公司','吴中平','2017-03-13'),(87,'2017000091','G-01H0300072','越南亚欣','吴中平','2017-03-13'),(88,'2017000092','T-21H0301825','越南宏美二厂','吴中平','2017-03-13'),(89,'2017000093','T-21H0302383','越南宏美二厂','吴中平','2017-03-15'),(90,'2017000094','GDRE-WCF-20170118087','东莞怡合达自动化科技有限公司','吴成福','2017-03-16'),(91,'2017000095','8-11H0300882','越南上杰','吴中平','2017-03-17'),(92,'2017000096','PO1-2017031401TW','广州明景信息科技有限公司','腾玮','2017-03-17'),(93,'2017000097','RN-WZP-2016022301-1','深圳凯特电气有限公司','朱晓平','2017-03-17'),(94,'2017000098','R-11H0300793','越南永弘','吴中平','2017-03-18'),(95,'2017000099','CHPO-16-1115','港芝（东莞）电子制造厂有限公司','汪斌','2017-03-23'),(96,'2017000100','CHPO-16-1117','港芝（东莞）电子制造厂有限公司','汪斌','2017-03-23'),(97,'2017000101','RN-WZP-20170320001','深圳凯特电气有限公司','朱晓平','2017-03-23'),(98,'2017000103','RN-LJH-2017032701','东莞市业勤电脑网络有限公司','梁嘉和','2017-03-29'),(99,'2017000104','Y-11H0301016','越南弘邦','吴中平','2017-03-29'),(100,'2017000105','B-D8H030001','中山志捷鞋业技术服务有限公司','吴中平','2017-03-29'),(101,'2017000106','B-D8H030002','中山志捷鞋业技术服务有限公司','吴中平','2017-03-29'),(102,'2017000107','B-D2H030016','中山志捷鞋业技术服务有限公司','吴中平','2017-03-29'),(103,'2017000108','6-01H0300198','越南正川','吴中平','2017-03-29'),(104,'2017000109','8-11H0302262','越南上杰','吴中平','2017-03-29'),(105,'2017000110','T-11H0302873','越南宏美一厂','吴中平','2017-03-29'),(106,'2017000111','G-01H0300207','越南亚欣','吴中平','2017-03-31'),(107,'2017000112','RN-LJH-20170331001','东莞思快电脑','梁嘉惠','2017-03-31'),(108,'2017000113','H-01H0300217','越南弘福','吴中平','2017-04-05'),(109,'2017000114','Z-01H0300158','越南永川','吴中平','2017-04-05'),(110,'2017000115','RN-LJH-20170405001','东莞厚街盛创电脑配件经营部','梁嘉和','2017-04-06'),(111,'2017000116','RN-LJH-2017032201','厦门吉宏包装科技股份有公司黄冈分公司','梁嘉惠','2017-04-06'),(112,'2017000117','20170406','重庆道谷科技有限公司','汪斌','2017-04-07'),(113,'2017000118','Y-01H0300159','越南弘邦','吴中平','2017-04-08'),(114,'2017000119','G-01H0300280','越南亚欣','吴中平','2017-04-08'),(115,'2017000120','RN-LJH-20170327002','东莞市厚街盛创电脑配件经营部','梁嘉惠','2017-04-08'),(116,'2017000121','80000613','网神信息技术（北京）股份有限公司','梁嘉惠','2017-04-10'),(117,'2017000122','M-01H0300054','越南百倢','吴中平','2017-04-11'),(118,'2017000123','Z-01H0400035','越南永川','吴中平','2017-04-11'),(119,'2017000124','S-S1H030024','中山精美鞋业有限公司','吴中平','2017-04-11'),(120,'2017000125','RN-WCR-20170410001','东莞厚街盛创电脑配件经营部','梁嘉和','2017-04-12'),(121,'2017000126','20170417','重庆道谷科技有限公司','汪斌','2017-04-20'),(122,'2017000127','PO1-2017032701TW','远东制杯（深圳）有限公司','腾玮','2017-04-21'),(123,'2017000128','RN-ZXP-20170412001','东莞市东城大友电脑经营部','朱晓平','2017-04-22'),(124,'2017000129','JWT1704200386','四川金网通电子科技有限公司','梁嘉惠','2017-04-25'),(125,'2017000130','JWT1704200371','四川金网通电子科技有限公司','梁嘉惠','2017-04-25'),(126,'2017000131','RN-LJH-20170421001','嘉兴市钜翔信息科技有限公司','梁嘉惠','2017-04-25'),(127,'2017000132','RN-LJH-20170414002','东莞绿洲鞋业有限公司','梁嘉惠','2017-04-25'),(128,'2017000133','RN-LJH-20170414001','东莞绿洲鞋业有限公司','梁嘉惠','2017-04-26'),(129,'2017000134','RN-LJH-20170414001','东莞绿洲鞋业有限公司','梁嘉惠','2017-04-26'),(130,'2017000135','RN-LJH-20170419001','杭州蓝代斯克数字技术有限公司','梁嘉惠','2017-04-28'),(131,'2017000136','RN-WZP-2016072001','株洲高科火炬信息服务有限公司','腾玮','2017-04-28'),(132,'2017000137','GDRE-WCF-20170118087','东莞怡合达自动化科技有限公司','吴成福','2017-05-02'),(133,'2017000138','RN-LJH-20170426003','东莞绿洲鞋业有限公司','梁嘉惠','2017-05-05'),(134,'2017000139','B-D1H030007','中山志捷鞋业技术服务有限公司','吴中平','2017-05-08'),(135,'2017000140','B-V8H030002','中山志捷鞋业技术服务有限公司','吴中平','2017-05-08'),(136,'2017000141','20170410','中山志捷鞋业技术服务有限公司','吴中平','2017-05-08'),(137,'2017000142','PO1-2017041301TW','东莞市冠中信息技术有限公司','腾玮','2017-05-08'),(138,'2017000143','17727068023645980','四川金星压缩机制造有限公司','梁嘉惠','2017-05-11'),(139,'2017000144','RN-LJH-20170510001','东莞绿洲鞋业有限公司','梁嘉惠','2017-05-12'),(140,'2017000145','RN-LJH-20170509002','东莞市嘉仑信息技术有限公司','梁嘉惠','2017-05-12'),(141,'2017000146','RN-LJH-20170509001','东莞绿洲鞋业有限公司','梁嘉惠','2017-05-12'),(142,'2017000147','RN-LJH-20170505002','东莞市盛腾进出口有限公司','梁嘉惠','2017-05-12'),(143,'2017000149','20170502','重庆道谷科技有限公司','edit','2017-05-15'),(144,'2017000150','20170508','重庆道谷科技有限公司','edit','2017-05-15'),(145,'2017000151','20170510','重庆道谷科技有限公司','edit','2017-05-15'),(146,'2017000152','RN-WCR-20170411002','深圳市东鹏程科技发展有限公司','梁嘉惠','2017-05-16'),(147,'2017000153','RN-ZXP-20170515001','东莞市东城大友电脑经营部','朱晓平','2017-05-17'),(148,'2017000154','20170516','中山志捷鞋业技术服务有限公司','吴中平','2017-05-17'),(149,'2017000155','17727068023645980','四川金星压缩机制造有限公司','梁嘉惠','2017-05-17'),(150,'2017000156','RN-LJH-2017051801','重庆高正云睿科技有限公司','梁嘉惠','2017-05-19'),(151,'2017000157','RN-ZXP-2017050301','深圳市神州动力数码有限公司','朱晓平','2017-05-27'),(152,'2017000158','RN-LJH-20170502001','深圳市汉智星科技有限公司','梁嘉和','2017-06-01'),(153,'2017000159','20170602135656','佛山市圣堡罗门业有限公司','梁嘉和','2017-06-02'),(154,'2017000160','20170602','历俊（广州）珠宝有限公司','梁嘉惠','2017-06-02'),(155,'2017000161','2017042001','派龙国际有限公司','张祖颖','2017-06-05'),(156,'2017000162','RN-TW-2017053101','广州星晟信息科技有限公司','腾玮','2017-06-05'),(157,'2017000163','20170522-001','MG Plastic &Hardware Company Limited','梁嘉惠','2017-06-05'),(158,'2017000164','PO1-2017040601TW','荆州市云鹏计算机科技有限公司','腾玮','2017-06-05'),(159,'2017000165','RN-LJH-20170605001','嘉兴市欧文商贸有限公司','梁嘉惠','2017-06-05'),(160,'2017000166','RN-LJH-2017052301','宁德市蕉城区思快电脑有限公司','梁嘉惠','2017-06-08'),(161,'2017000167','RN-LJH-2017052302','东莞市思快电脑有限公司','梁嘉惠','2017-06-08'),(162,'2017000168','RN-ZXP-2017060501','深圳市神州动力数码有限公司','朱晓平','2017-06-09'),(163,'2017000169','RN-LJH-20170505001','东莞廷鑫贸易有限公司','梁嘉惠','2017-06-12'),(164,'2017000171','20170613','重庆道谷科技有限公司','欧婕','2017-06-13'),(165,'2017000172','RN-LJH-20170505002-1','东莞市盛腾进出口有限公司','梁嘉惠','2017-06-14'),(166,'2017000173','RN-LJH-2017053101','北京同方微电子有限公司','梁嘉和','2017-06-14'),(167,'2017000174','RN-LJH-20170602001','成都绘景志成软件科技有限公司','梁嘉惠','2017-06-15'),(168,'2017000175','RN-LJH-20170509001-1','东莞市嘉仑信息技术有限公司','梁嘉惠','2017-06-20'),(169,'2017000176','RN-LJH-20170616001','东莞绿洲鞋业有限公司','梁嘉惠','2017-06-22'),(170,'2017000177','RN-TW-2017062101','海南汉普科技有限公司','腾玮','2017-06-26'),(171,'2017000178','YXGPH17060134','云宏信息科技股份有限公司','梁嘉和','2017-06-30'),(172,'2017000179','YXGPH17060133','云宏信息科技股份有限公司','梁嘉和','2017-06-30');
/*!40000 ALTER TABLE `delivery_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_productions`
--

DROP TABLE IF EXISTS `delivery_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_productions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `purchase_order` varchar(64) DEFAULT NULL,
  `production_name` varchar(64) DEFAULT NULL,
  `nums` varchar(64) DEFAULT NULL,
  `unit` varchar(64) DEFAULT NULL,
  `unit_price` varchar(64) DEFAULT NULL,
  `amount` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_productions`
--

LOCK TABLES `delivery_productions` WRITE;
/*!40000 ALTER TABLE `delivery_productions` DISABLE KEYS */;
INSERT INTO `delivery_productions` VALUES (1,'RN-WZP-2016121401','C100','4','台','600','2400','备注');
/*!40000 ALTER TABLE `delivery_productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_which_in`
--

DROP TABLE IF EXISTS `delivery_which_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_which_in` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `delivery_order` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_which_in`
--

LOCK TABLES `delivery_which_in` WRITE;
/*!40000 ALTER TABLE `delivery_which_in` DISABLE KEYS */;
INSERT INTO `delivery_which_in` VALUES (1,'2017000093');
/*!40000 ALTER TABLE `delivery_which_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product`
--

DROP TABLE IF EXISTS `end_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product`
--

LOCK TABLES `end_product` WRITE;
/*!40000 ALTER TABLE `end_product` DISABLE KEYS */;
INSERT INTO `end_product` VALUES (1,'C100 云终端',0,'350.00',''),(2,'C100借测机',1,'0.00',''),(3,'C300云终端',0,'0.00',''),(4,'C300借测机',1,'0.00',''),(5,'E300 云终端',0,'400.00',NULL),(6,'E300借测机',6,'0.00',''),(7,'一体机（旧）',3,'0.00',NULL),(8,'标点机器（旧）',0,'0.00',NULL),(9,'双COM口机器（旧）',1,'0.00',NULL),(10,'云颠客户机器',2,'0.00',NULL),(11,'华科机器',1,'0.00',NULL),(12,'其他设备机器',1,'0.00',NULL),(13,'KVM   切换器',1,'0.00',NULL),(14,'金士顿16GU盘',10,'40.00',''),(15,'泛联云终端',10,'270.00',''),(16,'泛联I5迷你电脑',6,'0.00','');
/*!40000 ALTER TABLE `end_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input1`
--

DROP TABLE IF EXISTS `end_product_input1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input1` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input1`
--

LOCK TABLES `end_product_input1` WRITE;
/*!40000 ALTER TABLE `end_product_input1` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_input1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input10`
--

DROP TABLE IF EXISTS `end_product_input10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input10`
--

LOCK TABLES `end_product_input10` WRITE;
/*!40000 ALTER TABLE `end_product_input10` DISABLE KEYS */;
INSERT INTO `end_product_input10` VALUES (1,'2017-02-09',2,'0.00','杨木娇','盘点');
/*!40000 ALTER TABLE `end_product_input10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input11`
--

DROP TABLE IF EXISTS `end_product_input11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input11`
--

LOCK TABLES `end_product_input11` WRITE;
/*!40000 ALTER TABLE `end_product_input11` DISABLE KEYS */;
INSERT INTO `end_product_input11` VALUES (1,'2017-02-09',1,'0.00','杨木娇','盘点');
/*!40000 ALTER TABLE `end_product_input11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input12`
--

DROP TABLE IF EXISTS `end_product_input12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input12`
--

LOCK TABLES `end_product_input12` WRITE;
/*!40000 ALTER TABLE `end_product_input12` DISABLE KEYS */;
INSERT INTO `end_product_input12` VALUES (1,'2017-02-09',1,'0.00','杨木娇','盘点');
/*!40000 ALTER TABLE `end_product_input12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input13`
--

DROP TABLE IF EXISTS `end_product_input13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input13`
--

LOCK TABLES `end_product_input13` WRITE;
/*!40000 ALTER TABLE `end_product_input13` DISABLE KEYS */;
INSERT INTO `end_product_input13` VALUES (1,'2017-02-17',1,'0.00','杨木娇','');
/*!40000 ALTER TABLE `end_product_input13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input2`
--

DROP TABLE IF EXISTS `end_product_input2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input2`
--

LOCK TABLES `end_product_input2` WRITE;
/*!40000 ALTER TABLE `end_product_input2` DISABLE KEYS */;
INSERT INTO `end_product_input2` VALUES (1,'2017-02-09',30,'0.00','杨木娇','盘点'),(2,'2017-02-24',1,'0.00','','维修板'),(3,'2017-03-02',1,'0.00','','借测归还（思维动力）'),(4,'2017-03-08',3,'0.00','','越南维修机器换新返还'),(5,'2017-03-14',2,'0.00','','借测归还（步步升）'),(6,'2017-03-15',2,'0.00','','山东中盈维修换新返还'),(7,'2017-03-20',2,'0.00','','借测归还（步步升）'),(8,'2017-03-24',1,'0.00','','日立化成换机返还'),(9,'2017-03-24',1,'0.00','','屏幕波纹（新板）仅供内部测试'),(10,'2017-03-30',2,'0.00','','借测归还（盛元中天）'),(11,'2017-04-06',1,'0.00','','借测归还（圣堡罗）');
/*!40000 ALTER TABLE `end_product_input2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input3`
--

DROP TABLE IF EXISTS `end_product_input3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input3` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input3`
--

LOCK TABLES `end_product_input3` WRITE;
/*!40000 ALTER TABLE `end_product_input3` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_input3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input4`
--

DROP TABLE IF EXISTS `end_product_input4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input4`
--

LOCK TABLES `end_product_input4` WRITE;
/*!40000 ALTER TABLE `end_product_input4` DISABLE KEYS */;
INSERT INTO `end_product_input4` VALUES (1,'2017-02-09',12,'0.00','杨木娇','盘点'),(2,'2017-02-20',2,'0.00','','公司内部回收'),(3,'2017-02-22',1,'0.00','','E300换外壳'),(4,'2017-02-23',3,'0.00','','公司内部回收'),(5,'2017-03-09',4,'0.00','','内部回收（梁生）'),(6,'2017-03-21',2,'0.00','','E300转换入库'),(7,'2017-03-30',1,'0.00','','借测归还（盛元中天)');
/*!40000 ALTER TABLE `end_product_input4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input5`
--

DROP TABLE IF EXISTS `end_product_input5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input5` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input5`
--

LOCK TABLES `end_product_input5` WRITE;
/*!40000 ALTER TABLE `end_product_input5` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_input5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input6`
--

DROP TABLE IF EXISTS `end_product_input6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input6`
--

LOCK TABLES `end_product_input6` WRITE;
/*!40000 ALTER TABLE `end_product_input6` DISABLE KEYS */;
INSERT INTO `end_product_input6` VALUES (1,'2017-02-09',9,'0.00','杨木娇','盘点'),(2,'2017-02-15',1,'0.00','','借测归还'),(3,'2017-02-22',4,'0.00','','借测归还（日立化成）'),(4,'2017-02-23',2,'0.00','','广州办事处归还'),(5,'2017-04-11',3,'0.00','','借用归还（朱可）'),(6,'2017-04-11',1,'0.00','','维修换机（怡合达）');
/*!40000 ALTER TABLE `end_product_input6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input7`
--

DROP TABLE IF EXISTS `end_product_input7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input7`
--

LOCK TABLES `end_product_input7` WRITE;
/*!40000 ALTER TABLE `end_product_input7` DISABLE KEYS */;
INSERT INTO `end_product_input7` VALUES (1,'2017-02-09',3,'0.00','杨木娇','盘点'),(2,'2017-02-23',1,'0.00','杨木娇','广州办事处归还（X86）'),(3,'2017-02-23',2,'0.00','','吴中平');
/*!40000 ALTER TABLE `end_product_input7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input8`
--

DROP TABLE IF EXISTS `end_product_input8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input8`
--

LOCK TABLES `end_product_input8` WRITE;
/*!40000 ALTER TABLE `end_product_input8` DISABLE KEYS */;
INSERT INTO `end_product_input8` VALUES (1,'2017-02-09',1,'0.00','edit',''),(2,'2017-02-13',1,'0.00','','回收');
/*!40000 ALTER TABLE `end_product_input8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_input9`
--

DROP TABLE IF EXISTS `end_product_input9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_input9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_input9`
--

LOCK TABLES `end_product_input9` WRITE;
/*!40000 ALTER TABLE `end_product_input9` DISABLE KEYS */;
INSERT INTO `end_product_input9` VALUES (1,'2017-02-09',1,'0.00','杨木娇','盘点（标点/ N3520）');
/*!40000 ALTER TABLE `end_product_input9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_inputs`
--

DROP TABLE IF EXISTS `end_product_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_inputs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `belongs` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_inputs`
--

LOCK TABLES `end_product_inputs` WRITE;
/*!40000 ALTER TABLE `end_product_inputs` DISABLE KEYS */;
INSERT INTO `end_product_inputs` VALUES (1,'2017-02-09',30,0,'杨木娇','盘点','2'),(2,'2017-02-24',1,0,'杨木娇','维修板','2'),(3,'2017-03-02',1,0,'杨木娇','借测归还（思维动力）','2'),(4,'2017-03-08',3,0,'杨木娇','越南维修机器换新返还','2'),(5,'2017-03-14',2,0,'杨木娇','借测归还（步步升）','2'),(6,'2017-03-15',2,0,'杨木娇','山东中盈维修换新返还','2'),(7,'2017-03-20',2,0,'杨木娇','借测归还（广州步步升）','2'),(8,'2017-03-24',1,0,'杨木娇','日立化成换机返还','2'),(9,'2017-03-24',1,0,'杨木娇','屏幕波纹（新板）仅供内部测试','2'),(10,'2017-03-30',2,0,'杨木娇','借测归还（盛元中天）','2'),(16,'2017-02-09',0,0,'edit','','3'),(17,'2017-02-09',12,0,'杨木娇','盘点','4'),(18,'2017-02-20',2,0,'','公司内部回收','4'),(19,'2017-02-22',1,0,'','E300换外壳','4'),(20,'2017-02-23',3,0,'','公司内部回收','4'),(21,'2017-03-09',4,0,'','内部回收（梁生）','4'),(22,'2017-03-21',2,0,'','E300转换入库','4'),(23,'2017-03-30',1,0,'','借测归还（盛元中天)','4'),(24,'2017-02-09',0,0,'杨木娇','','5'),(25,'2017-02-09',9,0,'杨木娇','盘点','6'),(26,'2017-02-15',1,0,'','借测归还','6'),(27,'2017-02-22',4,0,'','借测归还（日立化成）','6'),(28,'2017-02-23',2,0,'','广州办事处归还','6'),(32,'2017-02-09',3,0,'杨木娇','盘点','7'),(33,'2017-02-23',1,0,'杨木娇','广州办事处归还（X86）','7'),(34,'2017-02-23',2,0,'','吴中平','7'),(35,'2017-02-09',1,0,'edit','','8'),(36,'2017-02-13',1,0,'','回收','8'),(38,'2017-02-09',1,0,'杨木娇','盘点（标点/ N3520）','9'),(39,'2017-02-09',2,0,'杨木娇','盘点','10'),(40,'2017-02-09',1,0,'杨木娇','盘点','11'),(41,'2017-02-09',1,0,'杨木娇','盘点','12'),(42,'2017-02-17',1,0,'杨木娇','','13'),(47,'2017-04-06',1,0,'杨木娇','借测归还（圣堡罗）','2'),(48,'2017-04-11',3,0,'','借用归还（朱可）','6'),(49,'2017-04-11',1,0,'','维修换机（怡合达）','6'),(50,'2017-04-25',1,0,'','内部回收（汪斌）','4'),(51,'2017-04-25',1,0,'','借测归还（上海)','6'),(52,'2017-05-03',2,0,'杨木娇','山东中盈换新返还','2'),(53,'2017-05-05',1,0,'杨木娇','金网通维修换机返还','2'),(54,'2017-05-08',10,40,'杨木娇','16G','14'),(55,'2017-05-09',10,270,'杨木娇','360配置','15'),(56,'2017-05-18',2,0,'杨木娇','维修OK转入','2'),(57,'2017-05-18',1,0,'杨木娇','借测归还（刘统华）','2'),(58,'2017-05-23',1,0,'杨木娇','借测归还（云媒智能）','2'),(59,'2017-05-23',7,0,'杨木娇','5月初入库（吴凯机器作测试用）4G内存+64G硬盘','16');
/*!40000 ALTER TABLE `end_product_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output1`
--

DROP TABLE IF EXISTS `end_product_output1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output1` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output1`
--

LOCK TABLES `end_product_output1` WRITE;
/*!40000 ALTER TABLE `end_product_output1` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output10`
--

DROP TABLE IF EXISTS `end_product_output10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output10` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output10`
--

LOCK TABLES `end_product_output10` WRITE;
/*!40000 ALTER TABLE `end_product_output10` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output11`
--

DROP TABLE IF EXISTS `end_product_output11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output11` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output11`
--

LOCK TABLES `end_product_output11` WRITE;
/*!40000 ALTER TABLE `end_product_output11` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output12`
--

DROP TABLE IF EXISTS `end_product_output12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output12` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output12`
--

LOCK TABLES `end_product_output12` WRITE;
/*!40000 ALTER TABLE `end_product_output12` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output13`
--

DROP TABLE IF EXISTS `end_product_output13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output13` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output13`
--

LOCK TABLES `end_product_output13` WRITE;
/*!40000 ALTER TABLE `end_product_output13` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output2`
--

DROP TABLE IF EXISTS `end_product_output2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output2`
--

LOCK TABLES `end_product_output2` WRITE;
/*!40000 ALTER TABLE `end_product_output2` DISABLE KEYS */;
INSERT INTO `end_product_output2` VALUES (1,'2017-02-13',1,'0.00','出货中山志杰','杨木娇','360归还主板'),(2,'2017-02-14',1,'0.00','出货重庆道谷','edit','旧主板'),(3,'2017-02-14',1,'0.00','出货越南亚欣','edit','旧主板'),(4,'2017-02-14',1,'0.00','出货越南弘邦','edit','旧主板'),(5,'2017-02-14',1,'0.00','出货越南宏美二厂','edit','旧主板'),(6,'2017-02-15',6,'0.00','出货中山志捷','edit','旧主板'),(7,'2017-02-15',15,'0.00','出货南京铠硕 ','edit','360归还主板（铝合金外壳）'),(8,'2017-02-17',2,'0.00','借测重庆正睿','edit','梁生'),(9,'2017-02-22',2,'0.00','出货厦门吉宏包装','edit',''),(10,'2017-03-04',1,'0.00','借测东莞云媒智能','edit','腾伟'),(11,'2017-03-08',1,'0.00','借测广东圣堡罗门业','edit','汪斌'),(12,'2017-03-10',1,'0.00','内部使用','edit','欧婕'),(13,'2017-03-14',1,'0.00','中山志捷维修换机','edit','吴中平'),(14,'2017-03-14',1,'0.00','借测（北京360）','edit','梁生'),(15,'2017-03-20',2,'0.00','借测盛元中天','edit','宴学良'),(16,'2017-04-12',1,'0.00','借测（安徽伟迈）','edit','朱晓平'),(17,'2017-04-14',1,'0.00','借测广州亦云','edit','4月13日寄出');
/*!40000 ALTER TABLE `end_product_output2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output3`
--

DROP TABLE IF EXISTS `end_product_output3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output3` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output3`
--

LOCK TABLES `end_product_output3` WRITE;
/*!40000 ALTER TABLE `end_product_output3` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output4`
--

DROP TABLE IF EXISTS `end_product_output4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output4`
--

LOCK TABLES `end_product_output4` WRITE;
/*!40000 ALTER TABLE `end_product_output4` DISABLE KEYS */;
INSERT INTO `end_product_output4` VALUES (1,'2017-02-15',1,'0.00','维修机器更换主板','杨木娇','港芝维修机器'),(2,'2017-02-23',15,'0.00','借测怡合达','edit',''),(3,'2017-02-24',1,'0.00','出货深圳凯特电气','edit',''),(4,'2017-03-03',1,'0.00','公司内部使用','edit','银凤助理使用'),(5,'2017-03-10',2,'0.00','借测荆州云鹏','edit',''),(6,'2017-03-22',4,'0.00','思快维修换板','edit','');
/*!40000 ALTER TABLE `end_product_output4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output5`
--

DROP TABLE IF EXISTS `end_product_output5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output5` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output5`
--

LOCK TABLES `end_product_output5` WRITE;
/*!40000 ALTER TABLE `end_product_output5` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output6`
--

DROP TABLE IF EXISTS `end_product_output6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output6`
--

LOCK TABLES `end_product_output6` WRITE;
/*!40000 ALTER TABLE `end_product_output6` DISABLE KEYS */;
INSERT INTO `end_product_output6` VALUES (1,'2017-02-22',3,'0.00','出货厦门吉宏包装','杨木娇','换C100塑胶外壳'),(2,'2017-02-22',1,'0.00','借测河北菱美','edit',''),(3,'2017-02-22',1,'0.00','转C300库存','edit',''),(4,'2017-02-24',1,'0.00','出货深圳凯特电气','edit',''),(5,'2017-03-21',2,'0.00','思快维修换板','edit',''),(6,'2017-03-21',2,'0.00','转换C300','edit',''),(7,'2017-03-20',1,'0.00','借测盛元中天','edit','');
/*!40000 ALTER TABLE `end_product_output6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output7`
--

DROP TABLE IF EXISTS `end_product_output7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output7` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output7`
--

LOCK TABLES `end_product_output7` WRITE;
/*!40000 ALTER TABLE `end_product_output7` DISABLE KEYS */;
INSERT INTO `end_product_output7` VALUES (1,'2017-04-06',3,'0.00','归还海兰','杨木娇','共还4台，其中一台未曾入库');
/*!40000 ALTER TABLE `end_product_output7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output8`
--

DROP TABLE IF EXISTS `end_product_output8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output8`
--

LOCK TABLES `end_product_output8` WRITE;
/*!40000 ALTER TABLE `end_product_output8` DISABLE KEYS */;
INSERT INTO `end_product_output8` VALUES (1,'2017-02-014',2,'0.00','归还供应商','杨木娇','系统集成（金凤）');
/*!40000 ALTER TABLE `end_product_output8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_output9`
--

DROP TABLE IF EXISTS `end_product_output9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_output9` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_output9`
--

LOCK TABLES `end_product_output9` WRITE;
/*!40000 ALTER TABLE `end_product_output9` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_product_output9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_outputs`
--

DROP TABLE IF EXISTS `end_product_outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_outputs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `belongs` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_outputs`
--

LOCK TABLES `end_product_outputs` WRITE;
/*!40000 ALTER TABLE `end_product_outputs` DISABLE KEYS */;
INSERT INTO `end_product_outputs` VALUES (1,'2017-02-13',1,'出货中山志杰','杨木娇','360归还主板','2'),(2,'2017-02-14',1,'出货重庆道谷','edit','旧主板','2'),(3,'2017-02-14',1,'出货越南亚欣','edit','旧主板','2'),(4,'2017-02-14',1,'出货越南弘邦','edit','旧主板','2'),(5,'2017-02-14',1,'出货越南宏美二厂','edit','旧主板','2'),(6,'2017-02-15',6,'出货中山志捷','edit','旧主板','2'),(7,'2017-02-15',15,'出货南京铠硕 ','edit','360归还主板（铝合金外壳）','2'),(8,'2017-02-17',2,'借测重庆正睿','edit','梁生','2'),(9,'2017-02-22',2,'出货厦门吉宏包装','edit','梁生','2'),(10,'2017-03-04',1,'借测东莞云媒智能','edit','腾伟','2'),(11,'2017-03-08',1,'借测广东圣堡罗门业','edit','汪斌','2'),(12,'2017-03-10',1,'内部使用','edit','欧婕','2'),(13,'2017-03-14',1,'中山志捷维修换机','edit','吴中平','2'),(14,'2017-03-14',1,'借测（北京360）','edit','梁生','2'),(15,'2017-03-20',2,'借测盛元中天','edit','宴学良','2'),(17,'2017-02-15',1,'维修机器更换主板','杨木娇','港芝维修机器','4'),(18,'2017-02-23',15,'借测怡合达','edit','吴凯','4'),(19,'2017-02-24',1,'出货深圳凯特电气','edit','朱晓平','4'),(20,'2017-03-03',1,'公司内部使用','edit','银凤助理使用','4'),(21,'2017-03-10',2,'借测荆州云鹏','edit','吴中平','4'),(22,'2017-03-22',4,'思快维修换板','edit','','4'),(25,'2017-02-22',3,'出货厦门吉宏包装','杨木娇','换C100塑胶外壳','6'),(26,'2017-02-22',1,'借测河北菱美','edit','汪斌','6'),(27,'2017-02-22',1,'转C300库存','edit','','6'),(28,'2017-02-24',1,'出货深圳凯特电气','edit','朱晓平','6'),(29,'2017-03-21',2,'思快维修换板','edit','','6'),(30,'2017-03-21',2,'转换C300','edit','','6'),(31,'2017-03-20',1,'借测盛元中天','edit','宴学良','6'),(33,'2017-02-014',2,'归还供应商','杨木娇','系统集成（金凤）','8'),(35,'2017-04-12',1,'借测（安徽伟迈）','','朱晓平','2'),(36,'2017-04-14',1,'借测广州亦云','','4月13日寄出','2'),(37,'2017-04-06',3,'归还海兰','杨木娇','共还有4台，其中一台未曾入库','7'),(38,'2017-04-26',1,'借测云宏','','梁生','2'),(39,'2017-05-10',1,'借测深圳（马震）','','梁生','2'),(40,'2017-05-15',1,'公司内部使用（新员工））','','南城办公室','4'),(41,'2017-05-15',1,'公司内部使用（新员工）','','集成部','2'),(42,'2017-05-19',1,'港芝维修换板','','维修板已损坏，无法写系统','2'),(43,'2017-05-23',1,'公司内部测试（邦群）整机一套','杨木娇','*5月13日梁生借用1个64G固态硬盘','16'),(44,'2017-05-23',1,'借测东莞创盛计算机','','腾玮','2'),(45,'2017-05-24',2,'公司内部使用（新员工）','','南城办公室','6'),(46,'2017-05-24',1,'借测东莞捷诚计算机（莫淦军）','','梁生','2'),(47,'2017-06-06',1,'海南汉普维修换机','','','2'),(48,'2017-06-09',2,'借测中域电讯','','吴凯','6'),(49,'2017-06-19',1,'山东中盈维修换板','','','2'),(50,'2017-06-22',3,'借测广州云宏','杨木娇','','2'),(51,'2017-06-22',1,'借测深圳云海麒麟','','','2'),(52,'2017-06-28',1,'借测广州云宏','','','2');
/*!40000 ALTER TABLE `end_product_outputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_which_in`
--

DROP TABLE IF EXISTS `end_product_which_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_which_in` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `which` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_which_in`
--

LOCK TABLES `end_product_which_in` WRITE;
/*!40000 ALTER TABLE `end_product_which_in` DISABLE KEYS */;
INSERT INTO `end_product_which_in` VALUES (1,'2');
/*!40000 ALTER TABLE `end_product_which_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_product_which_out`
--

DROP TABLE IF EXISTS `end_product_which_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_product_which_out` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `which` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_product_which_out`
--

LOCK TABLES `end_product_which_out` WRITE;
/*!40000 ALTER TABLE `end_product_which_out` DISABLE KEYS */;
INSERT INTO `end_product_which_out` VALUES (1,'2');
/*!40000 ALTER TABLE `end_product_which_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fittings`
--

DROP TABLE IF EXISTS `fittings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fittings` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fittings`
--

LOCK TABLES `fittings` WRITE;
/*!40000 ALTER TABLE `fittings` DISABLE KEYS */;
INSERT INTO `fittings` VALUES (1,'2GB内存',75,314),(2,'4GB内存',170,13),(3,'8GB内存',0,1),(4,'8GB固态硬盘',60,286),(5,'16GB固态硬盘',75,30),(6,'32GB固态硬盘',85,1),(7,'64GB固态硬盘',205,0),(8,'128GB固态硬盘',350,30),(9,'ARMRTL8188无线网卡',25,20),(10,'X86Intel无线网卡',45,29),(11,'驱动光盘',0,0),(12,'ThinVirt系统光盘',15,0),(13,'电源12V3A',0,9),(14,'电源12V2A',0,1),(15,'电源12V4A',0,3),(16,'电源12V5A',0,5),(17,'电源5V6A',0,1),(18,'X86说明书',0,1014),(19,'A9说明书',0,455),(20,'保修卡',0,660),(21,'合格证',0,946),(22,'X86包装彩盒（中性）',0,819),(23,'A9包装彩盒',0,292),(24,'X86包装彩盒',0,1156),(25,'包装彩盒（中性）',0,153),(26,'包装螺丝',0,819),(27,'黑色挡板',0,278),(28,'外箱',0,177),(29,'散热片',0,1446),(30,'E300外壳',0,185),(31,'A9上壳黑',0,185),(32,'A9下壳黑',0,20),(33,'A9上壳白',0,1000),(34,'A9下壳白',0,1000),(35,'小头电源',0,452),(36,'大头电源（旧）',0,48),(37,'左右角（R）',0,1195),(38,'左右角（L）',0,1294),(39,'开关PDB板',0,776),(40,'开关线',0,934),(41,'开关按钮（大）',0,187),(42,'开关按钮（小）',0,185),(43,'开关按钮（白）',0,1000),(44,'铁片',0,173),(45,'合格证（迷你仔）',0,952),(46,'说明书（定制）',0,954),(47,'X86说明书   定制',0,868),(48,'E300说明书（迷你仔）',0,998),(49,'c100说明书（定制）',0,998),(50,'X86珍珠泡棉',0,1200),(51,'上盖   加重',0,262),(52,'256GB固态硬盘',405,0),(53,'4GB固态硬盘',0,30),(54,'天线',0,79),(55,'U盘',0,3),(56,'数据线',0,2),(57,'2.5寸8GB固态硬盘',0,2),(58,'8GB不可用固态硬盘',0,40),(59,'512MB内存',0,1),(60,'HDMI转VGA线',0,87),(61,'无线键盘鼠标',0,1),(62,'A9可维修主板',0,18),(63,'A9待维修主板',0,134),(64,'A9报废主板',0,182),(65,'A9电池',0,726),(66,'E300开关配件',0,3197),(67,'A9-PCB主板',0,432),(68,'AX730机箱',105,0),(69,'小头电源5V2A（旧)',0,31),(70,'5V3A小头电源',0,41),(71,'C300 PCB板',0,11),(73,'edit',0,0);
/*!40000 ALTER TABLE `fittings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fittings_inputs`
--

DROP TABLE IF EXISTS `fittings_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fittings_inputs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `suppliers` varchar(64) DEFAULT NULL,
  `examine` varchar(64) DEFAULT NULL,
  `sendee` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `belongs` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fittings_fittings_inputs` (`belongs`),
  CONSTRAINT `fk_fittings_inputs` FOREIGN KEY (`belongs`) REFERENCES `fittings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fittings_inputs`
--

LOCK TABLES `fittings_inputs` WRITE;
/*!40000 ALTER TABLE `fittings_inputs` DISABLE KEYS */;
INSERT INTO `fittings_inputs` VALUES (1,'2017-02-09',37,0,'edit','是','杨木娇','盘点',1),(2,'2017-02-14',2,0,'edit','是','杨木娇','借测归还',1),(4,'2017-02-23',1,0,'edit','是','杨木娇','广州办事处归还',1),(5,'2017-02-23',1,0,'深圳国惠信达','是','杨木娇','供应商维修返还',1),(6,'2017-02-24',50,70,'亿存','是','杨木娇','',1),(7,'2017-02-24',1,0,'亿存','是','杨木娇','供应商维修返还',1),(8,'2017-02-24',1,0,'edit','是','杨木娇','公司内部更换返还(2G更换4G) ',1),(9,'2017-03-01',1,0,'edit','是','杨木娇','借用归还（梁生）',1),(10,'2017-03-02',1,0,'edit','是','杨木娇','借测归还（思维动力）',1),(11,'2017-03-09',100,0,'炬火','是','杨木娇','',1),(12,'2017-03-10',1,0,'edit','是','杨木娇','借用归还（梁生）',1),(13,'2017-03-10',1,0,'edit','是','杨木娇','借测归还（云媒）',1),(14,'2017-03-14',1,0,'edit','是','杨木娇','借测归还（步步升）',1),(15,'2017-03-22',1,0,'edit','是','杨木娇','借测归还（飞鸟科技）',1),(16,'2017-02-09',121,160,'edit','是','杨木娇','盘点',2),(17,'2017-02-16',4,165,'炬火','是','杨木娇','',2),(18,'2017-02-19',30,0,'edit','是','杨木娇','借测归还（360公司）',2),(19,'2017-03-21',10,0,'炬火','是','杨木娇','',2),(24,'2017-02-08',28,0,'edit','是','杨木娇','盘点',4),(25,'2017-02-14',2,0,'edit','是','杨木娇','借测归还',4),(26,'2017-02-16',1,0,'edit','是','杨木娇','好景报废机器回收（黄德欣）',4),(27,'2017-02-20',1,0,'edit','是','杨木娇','公司内部回收',4),(28,'2017-02-23',1,0,'edit','是','杨木娇','广州办事处归还',4),(29,'2017-02-24',50,60,'炬火','是','杨木娇','',4),(30,'2017-02-28',1,0,'edit','是','杨木娇','梁生借用归还',4),(31,'2017-03-02',1,0,'edit','是','杨木娇','借测归还（思维动力）',4),(32,'2017-03-09',60,60,'炬火','是','杨木娇','',4),(33,'2017-03-14',1,0,'edit','是','杨木娇','借测归还（步步升）',4),(34,'2017-03-22',1,0,'edit','是','杨木娇','借测归还（飞鸟科技）',4),(39,'2017-02-08',11,0,'edit','是','杨木娇','盘点',5),(40,'2017-02-28',2,0,'edit','是','杨木娇','梁生借用归还',5),(41,'2017-03-09',40,0,'炬火','是','杨木娇','',5),(42,'2017-03-10',1,0,'edit','是','杨木娇','明景更换128G返还',5),(43,'2017-03-10',1,0,'edit','是','杨木娇','借用归还（梁生）',5),(44,'2017-03-10',1,0,'edit','是','杨木娇','借测归还（云媒）',5),(46,'2017-02-08',1,0,'edit','是','杨木娇','盘点',6),(47,'2017-02-08',1,0,'edit','是','杨木娇','盘点',7),(48,'2017-02-16',4,0,'炬火','是','杨木娇','炬火',8),(49,'2017-02-20',30,0,'edit','是','edit','借测归还（360公司）',8),(50,'2017-03-21',10,0,'炬火','是','杨木娇','',8),(51,'2017-02-08',32,0,'edit','是','杨木娇','盘点',9),(52,'2017-02-08',32,0,'edit','是','杨木娇','盘点',10),(53,'2017-02-08',0,0,'edit','是','edit','',11),(54,'2017-02-08',0,0,'edit','是','edit','',12),(55,'2017-02-09',10,0,'edit','是','李秀荣','盘点',13),(56,'2017-02-09',1,0,'edit','是','李秀荣','盘点',14),(57,'2017-02-09',4,0,'edit','是','李秀荣','盘点',15),(58,'2017-02-09',4,0,'edit','是','李秀荣','盘点',16),(59,'2017-02-16',2,0,'edit','是','李秀荣','借测归还',16),(61,'2017-02-09',1,0,'edit','是','李秀荣','盘点',17),(62,'2017-02-09',313,0,'edit','是','李秀荣','盘点',18),(63,'2017-02-09',478,0,'edit','是','李秀荣','盘点',19),(64,'2017-02-09',55,0,'edit','是','李秀荣','盘点',20),(65,'2017-02-09',323,0,'edit','是','李秀荣','盘点',21),(66,'2017-02-09',1021,0,'edit','是','李秀荣','盘点',22),(67,'2017-02-09',1392,0,'edit','是','李秀荣','盘点',23),(68,'2017-02-09',1250,0,'edit','是','李秀荣','盘点',24),(69,'2017-02-09',1153,0,'edit','是','李秀荣','盘点',25),(70,'2017-02-09',338,0,'edit','是','李秀荣','盘点',26),(71,'2017-03-02',1,0,'edit','是','李秀荣','借测归还（神州动力）',26),(73,'2017-02-09',658,0,'edit','是','李秀荣','盘点',27),(74,'2017-02-09',315,0,'edit','是','李秀荣','盘点',28),(75,'2017-02-09',139,0,'edit','是','edit','',29),(76,'2017-03-17',1000,0,'edit','是','edit','',29),(78,'2017-02-09',297,0,'edit','是','李秀荣','盘点',30),(79,'2017-02-22',4,0,'edit','是','李秀荣','借测归还',30),(81,'2017-02-09',563,0,'edit','是','李秀荣','盘点',31),(82,'2017-02-09',398,0,'edit','是','李秀荣','盘点',32),(83,'2017-02-09',1000,0,'edit','是','李秀荣','盘点',33),(84,'2017-02-09',1000,0,'edit','是','李秀荣','盘点',34),(85,'2017-02-09',36,0,'edit','是','edit','',35),(86,'2017-02-14',300,0,'振发','是','李秀荣','',35),(87,'2017-03-02',1,0,'edit','是','杨木娇','借测归还',35),(88,'2017-02-09',45,0,'edit','是','李秀荣','盘点',36),(89,'2017-02-22',9,0,'edit','是','李秀荣','公司内部回收',36),(91,'2017-02-09',670,0,'edit','是','李秀荣','26旧（盘点）',37),(92,'2017-02-09',765,0,'edit','是','李秀荣','16旧（盘点）',38),(93,'2017-02-09',669,0,'edit','是','李秀荣','盘点',39),(94,'2017-03-09',1000,0,'edit','是','edit','',39),(96,'2017-02-09',427,0,'edit','是','李秀荣','盘点',40),(97,'2017-02-28',1000,0,'edit','是','李秀荣','',40),(99,'2017-02-09',563,0,'edit','是','edit','',41),(100,'2017-02-09',563,0,'edit','是','edit','',42),(101,'2017-02-09',1000,0,'edit','是','李秀荣','盘点',43),(102,'2017-02-09',173,0,'edit','是','李秀荣','盘点',44),(103,'2017-02-09',965,0,'edit','是','edit','',45),(104,'2017-02-09',966,0,'edit','是','edit','',46),(105,'2017-02-09',868,0,'edit','是','李秀荣','盘点',47),(106,'2017-02-09',999,0,'edit','是','李秀荣','盘点',48),(107,'2017-02-09',998,0,'edit','是','李秀荣','盘点',49),(108,'2017-02-09',1200,0,'edit','是','李秀荣','盘点',50),(109,'2017-02-09',262,0,'edit','是','edit','',51),(110,'2017-02-09',120,0,'edit','是','杨木娇','盘点',52),(111,'2017-02-09',28,0,'edit','是','杨木娇','盘点',53),(112,'2017-02-13',2,0,'edit','是','杨木娇','保罗维修机器更换收回（4G换8G））',53),(114,'2017-02-09',95,0,'edit','是','杨木娇','盘点',54),(115,'2017-02-09',3,0,'edit','是','杨木娇','盘点',55),(116,'2017-02-09',2,0,'edit','是','杨木娇','盘点',56),(117,'2017-02-09',2,0,'edit','是','杨木娇','盘点',57),(118,'2017-02-09',40,0,'edit','是','杨木娇','盘点',58),(119,'2017-02-09',1,0,'edit','是','杨木娇','盘点',59),(120,'2017-02-09',100,0,'edit','是','杨木娇','盘点',60),(121,'2017-02-09',1,0,'edit','是','杨木娇','盘点',61),(122,'2017-02-09',18,0,'edit','是','edit','二楼铁柜',62),(123,'2017-02-09',134,0,'edit','是','杨木娇','盘点',63),(124,'2017-02-09',182,0,'edit','是','edit','',64),(125,'2017-02-09',290,0,'edit','是','杨木娇','盘点',65),(126,'2017-02-28',1000,0,'百盛泰','是','杨木娇','',65),(129,'2017-03-03',180,0,'百千成','是','杨木娇','',67),(130,'2017-03-09',810,0,'百千成','是','杨木娇','',67),(131,'2017-04-01',3,0,'edit','是','杨木娇','汉智星借测归还3月27日',4),(132,'2017-04-01',1,0,'edit','是','杨木娇','测试归还（梁生）3月27日',4),(133,'2017-04-01',1,0,'edit','是','杨木娇','借测归还（海兰电子）',1),(134,'2017-04-01',2,0,'edit','是','杨木娇','借测归还（海兰电子）',4),(136,'2017-04-01',3,0,'edit','是','杨木娇','测试归还（盘点）',4),(137,'2017-04-05',725,0,'edit','是','杨木娇','3月中旬购买',26),(138,'2017-04-06',1000,0,'','是','杨木娇','深圳五优精密',31),(139,'2017-04-06',1000,0,'edit','是','杨木娇','深圳五优精密',32),(140,'2017-04-06',1000,0,'edit','是','杨木娇','深圳五优精密',27),(141,'2017-04-06',1000,0,'edit','是','杨木娇','深圳五优精密',42),(142,'2017-04-06',100,0,'振发','是','李秀荣','3月30号',35),(143,'2017-04-06',200,0,'振发','是','李秀荣','4月1号',35),(144,'2017-04-06',1,0,'edit','是','杨木娇','借测归还（圣堡罗）',1),(145,'2017-04-06',1,0,'edit','是','杨木娇','借测归还（圣堡罗）',4),(146,'2017-04-06',1,0,'edit','是','杨木娇','借测归还（圣堡罗）',35),(147,'2017-04-06',1,0,'edit','是','杨木娇','借测归还（圣堡罗）',37),(148,'2017-04-06',1,0,'edit','是','杨木娇','借测归还（圣堡罗）',38),(149,'2017-04-07',1,0,'edit','是','杨木娇','维修返还',1),(151,'2017-04-10',1,0,'edit','是','杨木娇','内部使用归还（梁智轩）',2),(152,'2017-04-11',1000,0,'edit','是','李秀荣','',41),(153,'2017-04-11',1,0,'edit','是','杨木娇','借测归还（桂林辰星办公设备）',1),(154,'2017-04-11',1,0,'edit','是','杨木娇','借测归还（桂林辰星办公设备）',4),(155,'2017-04-11',2,0,'edit','是','杨木娇','借测归还（日立化成）',1),(156,'2017-04-11',2,0,'edit','是','杨木娇','借测归还（日立化成）',4),(157,'2017-04-11',2,0,'edit','是','杨木娇','借用归还（朱可）',1),(158,'2017-04-11',2,0,'edit','是','杨木娇','借用归还（朱可）',4),(159,'2017-04-12',1,0,'edit','是','杨木娇','借测归还（广州办事处）',1),(160,'2017-04-12',1,0,'edit','是','杨木娇','借测归还（广州办事处）',4),(161,'2017-04-12',1,0,'edit','是','杨木娇','借测归还（北京方物）',2),(162,'2017-04-12',1,0,'edit','是','杨木娇','借测归还（北京方物）',6),(163,'2017-04-12',100,0,'振发','是','李秀荣','',35),(164,'2017-04-14',2,0,'edit','是','杨木娇','借测归还（广州蓝爵）',1),(167,'2017-04-14',2,0,'edit','是','杨木娇','借测归还（广州蓝爵）',4),(168,'2017-04-14',1,0,'edit','是','杨木娇','借测归还（东莞捷诚',2),(169,'2017-04-14',1,0,'edit','是','杨木娇','借测归还（捷诚）',8),(170,'2017-04-20',1,0,'edit','是','杨木娇','借测归还（海存志合）',1),(171,'2017-04-22',2016,0,'edit','是','李秀荣','4月21号',37),(172,'2017-04-22',2016,0,'edit','是','李秀荣','4月21号',38),(173,'2017-04-22',15,0,'振发','是','李秀荣','',35),(174,'2017-04-22',1,0,'edit','是','杨木娇','借测归还（海存志合）',4),(175,'2017-04-26',3,0,'edit','是','杨木娇','测试归还（梁生）',5),(176,'2017-04-26',1,0,'edit','是','杨木娇','借用归还（梁生）',8),(177,'2017-04-26',31,0,'edit','是','edit','盘点',69),(178,'2017-04-26',1000,0,'edit','','李秀荣','',20),(179,'2017-04-27',200,0,'edit','是','李秀荣','',35),(180,'2017-04-27',50,0,'edit','是','李秀荣','',70),(181,'2017-05-04',850,0,'edit','是','李秀荣','',19),(182,'2017-05-04',1000,0,'edit','是','李秀荣','',21),(183,'2017-05-05',1,0,'edit','是','杨木娇','借测归还（盛元中天）',1),(184,'2017-05-05',2,0,'edit','是','杨木娇','借测归还（盛元中天）',4),(185,'2017-05-05',10,0,'百千成','是','杨木娇','尾数',67),(186,'2017-05-06',50,60,'炬火','是','杨木娇','',4),(187,'2017-05-08',11,0,'edit','是','杨木娇','盘点仓库（梁生物料整理）',71),(188,'2017-05-10',1,0,'edit','是','杨木娇','借测归还（驰宏光电)',1),(189,'2017-05-10',1,0,'edit','是','杨木娇','借测归还（驰宏光电)',4),(190,'2017-05-10',1,0,'edit','是','杨木娇','借测归还（朱可) ---- 嘉和借用',3),(191,'2017-05-10',1,0,'edit','是','杨木娇','借测归还（朱可）----嘉和借用',8),(192,'2017-05-11',35,0,'edit','是','杨木娇','360网神信息科技退还',2),(193,'2017-05-11',35,0,'edit','是','杨木娇','360网神信息科技退还',8),(194,'2017-05-11',2,205,'炬火','是','杨木娇','',7),(195,'2017-05-12',1000,0,'edit','是','edit','',29),(196,'2017-05-12',3313,0,'edit','是','edit','',66),(197,'2017-05-15',40,75,'炬火','是','杨木娇','5月13日到货',1),(198,'2017-05-15',40,60,'炬火','是','杨木娇','5月13日到货',4),(199,'2017-05-15',1,0,'炬火','是','杨木娇','维修返还',4),(200,'2017-05-18',3,0,'edit','是','杨木娇','借测归还（刘统华）',1),(201,'2017-05-18',3,0,'edit','是','杨木娇','借测归还（刘统华）',4),(202,'2017-05-19',2,0,'edit','是','杨木娇','借测归还（汪金鹏））',1),(203,'2017-05-19',5,0,'edit','是','杨木娇','借测归还（深圳东鹏程)）',1),(204,'2017-05-19',2,0,'edit','是','杨木娇','借测归还（汪金鹏））',4),(205,'2017-05-19',5,0,'edit','是','杨木娇','借测归还（深圳东鹏程））',4),(206,'2017-05-20',1000,0,'百盛泰','是','杨木娇','',65),(207,'2017-05-23',1,0,'edit','是','杨木娇','借测归还（广州知慧云）',1),(208,'2017-05-23',1,0,'edit','是','杨木娇','内部回收（梁生）',1),(209,'2017-05-23',1,0,'edit','是','杨木娇','借测归还（广州知慧云）',4),(210,'2017-05-23',1,0,'edit','是','杨木娇','内部回收（梁生）',4),(211,'2017-05-25',400,0,'百千成','是','杨木娇','',67),(212,'2017-05-31',5,0,'edit','是','杨木娇','借测归还（京信通信）',1),(213,'2017-05-31',5,0,'edit','是','杨木娇','借测归还（京信通信）',4),(214,'2017-06-01',9,0,'edit','是','杨木娇','借测归还（东鹏程）',1),(215,'2017-06-01',2,0,'edit','是','杨木娇','借测归还（东鹏程）',4),(216,'2017-06-02',1250,0,'edit','是','李秀荣','',26),(217,'2017-06-02',1000,0,'edit','是','李秀荣','5月下旬',40),(218,'2017-06-02',1000,0,'edit','是','edit','',35),(219,'2017-06-06',595,0,'百千成','是','杨木娇','',67),(220,'2017-06-06',600,0,'edit','是','李秀荣','',39),(221,'2017-06-13',1,0,'edit','是','杨木娇','维修返还',5),(222,'2017-06-16',1,0,'edit','是','杨木娇','借测归还（明景）',2),(223,'2017-06-16',1,0,'edit','是','杨木娇','借测归还（明景）',8),(224,'2017-06-19',1000,0,'edit','是','李秀荣','5月下旬',18),(225,'2017-06-22',800,0,'edit','是','edit','6月21号',29),(226,'2017-06-27',240,0,'炬火','是','杨木娇','',1),(228,'2017-06-27',240,0,'炬火','是','杨木娇','',4);
/*!40000 ALTER TABLE `fittings_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fittings_outputs`
--

DROP TABLE IF EXISTS `fittings_outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fittings_outputs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `receiptor` varchar(64) DEFAULT NULL,
  `belongs` int(10) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `from_which` varchar(64) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fittings_fittings_outputs` (`belongs`),
  CONSTRAINT `fk_fittings_fittings_outputs` FOREIGN KEY (`belongs`) REFERENCES `fittings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3616 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fittings_outputs`
--

LOCK TABLES `fittings_outputs` WRITE;
/*!40000 ALTER TABLE `fittings_outputs` DISABLE KEYS */;
INSERT INTO `fittings_outputs` VALUES (1,'2017-02-13',1,'广州好云借测','杨木娇',1,'',NULL,NULL),(2,'2017-02-15',2,'深圳东鹏程借测','杨木娇',1,'',NULL,NULL),(4,'2017-02-20',10,'借测深圳东鹏程','杨木娇',1,'',NULL,NULL),(6,'2017-02-22',1,'借测河北菱美','杨木娇',1,'',NULL,NULL),(7,'2017-02-23',1,'借测东莞云媒智能','杨木娇',1,'',NULL,NULL),(8,'2017-02-23',1,'内部 测试（梁生）','杨木娇',1,'',NULL,NULL),(11,'2017-03-08',1,'借测广东圣堡罗门业','杨木娇',1,'',NULL,NULL),(13,'2017-03-20',1,'借测盛元中天生物','杨木娇',1,'',NULL,NULL),(14,'2017-03-22',1,'借测飞鸟科技','杨木娇',1,'',NULL,NULL),(15,'2017-03-22',20,'借测海南汉普','杨木娇',1,'',NULL,NULL),(16,'2017-03-23',1,'借测北京海存志合','杨木娇',1,'',NULL,NULL),(33,'2017-02-16',3,'借测（北京360）','杨木娇',2,NULL,NULL,NULL),(35,'2017-02-24',1,'公司内部终端机使用','梁智轩',2,NULL,NULL,NULL),(37,'2017-03-04',1,'借测东莞捷诚','杨木娇',2,'',NULL,NULL),(38,'2017-03-08',1,'借测广州明景','杨木娇',2,'',NULL,NULL),(39,'2017-03-10',2,'总经办（赠送客户）','杨木娇',2,'',NULL,NULL),(48,'2017-02-13',2,'保罗维修机器更换硬盘','黄德欣',4,NULL,NULL,NULL),(49,'2017-02-15',2,'深圳东鹏程借测','杨木娇',4,NULL,NULL,NULL),(51,'2017-02-20',10,'借测深圳东鹏程','edit',4,NULL,NULL,NULL),(53,'2017-02-22',1,'借测河北菱美','edit',4,NULL,NULL,NULL),(54,'2017-02-22',2,'硬盘损坏，无法写系统','edit',4,NULL,NULL,NULL),(55,'2017-02-22',1,'梁生借用','edit',4,NULL,NULL,NULL),(58,'2017-03-08',1,'借测广东圣堡罗门业','edit',4,NULL,NULL,NULL),(59,'2017-03-15',4,'嘉兴维修更换','edit',4,NULL,NULL,NULL),(60,'2017-03-20',1,'借测盛天中元','edit',4,NULL,NULL,NULL),(61,'2017-03-22',1,'借测飞鸟科技','edit',4,NULL,NULL,NULL),(62,'2017-03-22',20,'借测海南汉普','edit',4,NULL,NULL,NULL),(63,'2017-03-23',1,'借测北京海存志合','edit',4,NULL,NULL,NULL),(64,'2017-03-24',1,'借测中国熊猫电子','edit',4,NULL,NULL,NULL),(65,'2017-03-24',5,'借测  深圳汉智星','梁嘉和',4,'',NULL,NULL),(66,'2017-03-24',1,'内部测试（3150）','杨木娇',4,'',NULL,NULL),(79,'2017-02-13',1,'广州好云借测','杨木娇',5,NULL,NULL,NULL),(80,'2017-02-22',2,'梁生借用','edit',5,NULL,NULL,NULL),(81,'2017-02-23',1,'借测东莞云媒智能','edit',5,NULL,NULL,NULL),(82,'2017-02-23',1,'内部测试使用（梁生）','edit',5,NULL,NULL,NULL),(83,'2017-02-24',1,'硬盘损坏','edit',5,NULL,NULL,NULL),(86,'2017-03-08',1,'借测广州明景','edit',5,NULL,NULL,NULL),(88,'2017-03-15',4,'嘉兴维修机器更换','edit',5,NULL,NULL,NULL),(94,'2017-02-18',1,'硬盘损坏（找不到硬盘显示）','杨木娇',6,NULL,NULL,NULL),(96,'2017-02-16',3,'借测（北京360）','杨木娇',8,NULL,NULL,NULL),(97,'2017-03-04',1,'借测东莞捷诚','edit',8,NULL,NULL,NULL),(98,'2017-03-10',1,'借测广州明景','edit',8,NULL,NULL,NULL),(99,'2017-03-10',2,'总经办(赠送客户)','edit',8,NULL,NULL,NULL),(103,'2017-03-10',2,'借测荆州云鹏','杨木娇',9,NULL,NULL,NULL),(109,'2017-02-25',1,'换出   广东联迪','李秀荣',15,NULL,NULL,NULL),(110,'2017-02-23',1,'借测   腾伟','李秀荣',16,NULL,NULL,NULL),(120,'2017-03-07',2,'梁生','李秀荣',19,NULL,NULL,NULL),(151,'2017-02-17',2,'借测  重庆正睿科技','李秀荣',23,NULL,NULL,NULL),(152,'2017-02-22',1,'借测  河北菱美信息科技','李秀荣',23,NULL,NULL,NULL),(168,'2017-03-10',2,'借测  云鹏计算机','李秀荣',23,NULL,NULL,NULL),(184,'2017-03-10',2,'借测  云鹏计算机','李秀荣',25,NULL,NULL,NULL),(193,'2017-02-17',2,'借测  重庆正睿科技','李秀荣',26,NULL,NULL,NULL),(195,'2017-02-22',1,'借测  河北菱美信息科技','李秀荣',26,NULL,NULL,NULL),(201,'2017-03-07',1,'越南  越南永川','edit',26,NULL,NULL,NULL),(206,'2017-03-07',5,'越南  越南正川','edit',26,NULL,NULL,NULL),(212,'2017-03-10',2,'借测  云鹏计算机','edit',26,NULL,NULL,NULL),(252,'2017-02-17',2,'借测  重庆正睿科技','edit',27,NULL,NULL,NULL),(271,'2017-03-10',2,'借测  云鹏计算机','edit',27,NULL,NULL,NULL),(305,'2017-03-10',2,'借测   云鹏计算机','edit',29,NULL,NULL,NULL),(339,'2017-03-10',2,'借测  云鹏计算机','edit',31,NULL,NULL,NULL),(370,'2017-03-10',2,'借测  云鹏计算机','edit',32,NULL,NULL,NULL),(384,'2017-02-13',4,'换货  保罗','李秀荣',35,NULL,NULL,NULL),(389,'2017-02-17',2,'借测  重庆正睿科技','李秀荣',35,NULL,NULL,NULL),(391,'2017-02-24',14,'借测   怡合达','李秀荣',35,NULL,NULL,NULL),(392,'2017-03-03',1,'公司内部办公','李秀荣',35,NULL,NULL,NULL),(410,'2017-03-10',2,'借测  云鹏计算机','edit',35,NULL,NULL,NULL),(415,'2017-03-14',1,'借测  梁生','edit',35,NULL,NULL,NULL),(446,'2017-02-13',1,'换  保罗','李秀荣',36,NULL,NULL,NULL),(452,'2017-02-17',2,'借测  重庆正睿科技','李秀荣',37,NULL,NULL,NULL),(454,'2017-02-22',1,'借测  河北菱美信息科技','edit',37,NULL,NULL,NULL),(469,'2017-03-10',3,'中山志捷','edit',37,NULL,NULL,NULL),(471,'2017-03-10',2,'借测  云鹏计算机','edit',37,NULL,NULL,NULL),(515,'2017-02-17',2,'借测  重庆正睿科技','李秀荣',38,NULL,NULL,NULL),(534,'2017-03-10',2,'借测  云鹏计算机','edit',38,NULL,NULL,NULL),(596,'2017-03-10',2,'借测  云鹏计算机','edit',39,NULL,NULL,NULL),(659,'2017-03-10',2,'借测  云鹏计算机','edit',40,NULL,NULL,NULL),(750,'2017-03-10',2,'借测  云鹏计算机','edit',42,NULL,NULL,NULL),(773,'2017-03-10',2,'借测荆州云鹏','杨木娇',54,NULL,NULL,NULL),(812,'2017-03-13',2,'山东中盈维修机器换新','edit',65,NULL,NULL,NULL),(815,'2017-03-16',1,'出售淘宝','edit',65,NULL,NULL,NULL),(816,'2017-03-17',1,'出售淘宝','edit',65,NULL,NULL,NULL),(822,'2017-03-22',8,'思快维修换板','edit',65,NULL,NULL,NULL),(824,'2017-03-24',2,'日立化成换新','edit',65,NULL,NULL,NULL),(826,'2017-03-24',1,'屏幕波纹转成品仓','edit',65,NULL,NULL,NULL),(872,'2017-03-13',2,'山东中盈维修换新','杨木娇',67,'',NULL,NULL),(879,'2017-03-16',2,'出售淘宝','杨木娇',67,'',NULL,NULL),(885,'2017-03-22',8,'思快维修换板','杨木娇',67,'',NULL,NULL),(887,'2017-03-24',2,'日立化成换新','杨木娇',67,'',NULL,NULL),(889,'2017-03-24',1,'屏幕波纹转成品仓','杨木娇',67,'',NULL,NULL),(1026,'2017/2/19',1,'出货越南亚欣','杨木娇',31,'','2017000017','完成生产,已出库'),(1027,'2017/2/19',1,'出货越南亚欣','杨木娇',32,'','2017000017','完成生产,已出库'),(1028,'2017/2/19',1,'出货越南亚欣','杨木娇',39,'','2017000017','完成生产,已出库'),(1029,'2017/2/19',1,'出货越南亚欣','杨木娇',40,'','2017000017','完成生产,已出库'),(1030,'2017/2/19',1,'出货越南亚欣','杨木娇',41,'','2017000017','完成生产,已出库'),(1031,'2017/2/19',1,'出货越南亚欣','杨木娇',42,'','2017000017','完成生产,已出库'),(1032,'2017/2/19',1,'出货越南亚欣','杨木娇',35,'','2017000017','完成生产,已出库'),(1033,'2017/2/19',1,'出货越南亚欣','杨木娇',37,'','2017000017','完成生产,已出库'),(1034,'2017/2/19',1,'出货越南亚欣','杨木娇',38,'','2017000017','完成生产,已出库'),(1035,'2017/2/19',1,'出货越南亚欣','杨木娇',23,'','2017000017','完成生产,已出库'),(1037,'2017/2/19',1,'出货越南亚欣','杨木娇',26,'','2017000017','完成生产,已出库'),(1038,'2017/2/19',1,'出货越南亚欣','杨木娇',27,'','2017000017','完成生产,已出库'),(1039,'2017/2/19',1,'出货越南亚欣','杨木娇',29,'','2017000017','完成生产,已出库'),(1040,'2017/2/19',1,'出货越南亚欣','杨木娇',19,'','2017000017','完成生产,已出库'),(1043,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',30,'','2017000026','完成生产,已出库'),(1044,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',66,'','2017000026','完成生产,已出库'),(1045,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',39,'','2017000026','完成生产,已出库'),(1046,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',40,'','2017000026','完成生产,已出库'),(1047,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',35,'','2017000026','完成生产,已出库'),(1048,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',37,'','2017000026','完成生产,已出库'),(1049,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',38,'','2017000026','完成生产,已出库'),(1050,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',23,'','2017000026','完成生产,已出库'),(1052,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',26,'','2017000026','完成生产,已出库'),(1053,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',29,'','2017000026','完成生产,已出库'),(1054,'2017-06-13',8,'出货南京铠硕信息技术有限公','杨木娇  李秀荣',19,'','2017000026','完成生产,已出库'),(1057,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',31,'','2017000030','完成生产,已出库'),(1058,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',32,'','2017000030','完成生产,已出库'),(1059,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',39,'','2017000030','完成生产,已出库'),(1060,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',40,'','2017000030','完成生产,已出库'),(1061,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',41,'','2017000030','完成生产,已出库'),(1062,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',42,'','2017000030','完成生产,已出库'),(1063,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',35,'','2017000030','完成生产,已出库'),(1064,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',37,'','2017000030','完成生产,已出库'),(1065,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',38,'','2017000030','完成生产,已出库'),(1066,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',23,'','2017000030','完成生产,已出库'),(1067,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',25,'','2017000030','完成生产,已出库'),(1068,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',26,'','2017000030','完成生产,已出库'),(1069,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',27,'','2017000030','完成生产,已出库'),(1070,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',29,'','2017000030','完成生产,已出库'),(1071,'2017-02-14',1,'出货越南亚欣','杨木娇  李秀荣',19,'','2017000030','完成生产,已出库'),(1074,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',65,'','2017000029','完成生产,已出库'),(1075,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',31,'','2017000029','完成生产,已出库'),(1076,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',32,'','2017000029','完成生产,已出库'),(1077,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',39,'','2017000029','完成生产,已出库'),(1078,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',40,'','2017000029','完成生产,已出库'),(1079,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',41,'','2017000029','完成生产,已出库'),(1080,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',42,'','2017000029','完成生产,已出库'),(1081,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',35,'','2017000029','完成生产,已出库'),(1082,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',37,'','2017000029','完成生产,已出库'),(1083,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',38,'','2017000029','完成生产,已出库'),(1086,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',26,'','2017000029','完成生产,已出库'),(1087,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',27,'','2017000029','完成生产,已出库'),(1088,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',29,'','2017000029','完成生产,已出库'),(1089,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',19,'','2017000029','完成生产,已出库'),(1092,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000027','完成生产,已出库'),(1093,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000027','完成生产,已出库'),(1094,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000027','完成生产,已出库'),(1095,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000027','完成生产,已出库'),(1096,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000027','完成生产,已出库'),(1097,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000027','完成生产,已出库'),(1098,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000027','完成生产,已出库'),(1099,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000027','完成生产,已出库'),(1100,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000027','完成生产,已出库'),(1101,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000027','完成生产,已出库'),(1102,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000027','完成生产,已出库'),(1103,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000027','完成生产,已出库'),(1104,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000027','完成生产,已出库'),(1105,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000027','完成生产,已出库'),(1106,'2017-02-15',6,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000027','完成生产,已出库'),(1107,'2017-02-13',120,'出货网神信息技术（北京）股份有限公司','杨木娇  李秀荣',18,'','2017000033','完成生产,已出库'),(1109,'2017-02-13',120,'出货网神信息技术（北京）股份有限公司','杨木娇  李秀荣',22,'','2017000033','完成生产,已出库'),(1110,'2017-02-13',120,'出货网神信息技术（北京）股份有限公司','杨木娇  李秀荣',2,'','2017000033','完成生产,已出库'),(1111,'2017-02-13',120,'出货网神信息技术（北京）股份有限公司','杨木娇  李秀荣',52,'','2017000033','完成生产,已出库'),(1115,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000034','完成生产,已出库'),(1116,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000034','完成生产,已出库'),(1117,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000034','完成生产,已出库'),(1118,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000034','完成生产,已出库'),(1119,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000034','完成生产,已出库'),(1120,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000034','完成生产,已出库'),(1121,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000034','完成生产,已出库'),(1122,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000034','完成生产,已出库'),(1123,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000034','完成生产,已出库'),(1124,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000034','完成生产,已出库'),(1125,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000034','完成生产,已出库'),(1126,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000034','完成生产,已出库'),(1127,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000034','完成生产,已出库'),(1128,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000034','完成生产,已出库'),(1129,'2017-02-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000034','完成生产,已出库'),(1132,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',31,'','2017000035','完成生产,已出库'),(1133,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',32,'','2017000035','完成生产,已出库'),(1134,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',39,'','2017000035','完成生产,已出库'),(1135,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',40,'','2017000035','完成生产,已出库'),(1136,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',41,'','2017000035','完成生产,已出库'),(1137,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',42,'','2017000035','完成生产,已出库'),(1138,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',35,'','2017000035','完成生产,已出库'),(1139,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',37,'','2017000035','完成生产,已出库'),(1140,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',38,'','2017000035','完成生产,已出库'),(1141,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',23,'','2017000035','完成生产,已出库'),(1142,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',25,'','2017000035','完成生产,已出库'),(1143,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',26,'','2017000035','完成生产,已出库'),(1144,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',27,'','2017000035','完成生产,已出库'),(1145,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',29,'','2017000035','完成生产,已出库'),(1146,'2017-02-09',4,'出货海南汉普科技有限公司','杨木娇  李秀荣',19,'','2017000035','完成生产,已出库'),(1147,'2017-02-24',5,'出货毕马杰橡胶科技（常熟）有限公司','杨木娇  李秀荣',18,'','2017000039','完成生产,已出库'),(1149,'2017-02-24',5,'出货毕马杰橡胶科技（常熟）有限公司','杨木娇  李秀荣',24,'','2017000039','完成生产,已出库'),(1150,'2017-02-24',5,'出货毕马杰橡胶科技（常熟）有限公司','杨木娇  李秀荣',1,'','2017000039','完成生产,已出库'),(1151,'2017-02-24',5,'出货毕马杰橡胶科技（常熟）有限公司','杨木娇  李秀荣',4,'','2017000039','完成生产,已出库'),(1154,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',65,'','2017000040','完成生产,已出库'),(1155,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',31,'','2017000040','完成生产,已出库'),(1156,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',32,'','2017000040','完成生产,已出库'),(1157,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',39,'','2017000040','完成生产,已出库'),(1158,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',40,'','2017000040','完成生产,已出库'),(1159,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',41,'','2017000040','完成生产,已出库'),(1160,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',42,'','2017000040','完成生产,已出库'),(1161,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',35,'','2017000040','完成生产,已出库'),(1162,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',37,'','2017000040','完成生产,已出库'),(1163,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',38,'','2017000040','完成生产,已出库'),(1164,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',23,'','2017000040','完成生产,已出库'),(1165,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',25,'','2017000040','完成生产,已出库'),(1166,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',26,'','2017000040','完成生产,已出库'),(1167,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',27,'','2017000040','完成生产,已出库'),(1168,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',29,'','2017000040','完成生产,已出库'),(1169,'2017-02-24',2,'出货深圳凯特电气有限公司','杨木娇  李秀荣',19,'','2017000040','完成生产,已出库'),(1170,'2017-02-25',6,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',18,'','2017000041','完成生产,已出库'),(1172,'2017-02-25',6,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',24,'','2017000041','完成生产,已出库'),(1173,'2017-02-25',6,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',1,'','2017000041','完成生产,已出库'),(1174,'2017-02-25',6,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',4,'','2017000041','完成生产,已出库'),(1177,'2017-02-25',4,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',18,'','2017000042','完成生产,已出库'),(1179,'2017-02-25',4,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',24,'','2017000042','完成生产,已出库'),(1180,'2017-02-25',4,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',1,'','2017000042','完成生产,已出库'),(1181,'2017-02-25',4,'出货东莞市壹华电子科技有限公司','杨木娇  李秀荣',5,'','2017000042','完成生产,已出库'),(1185,'2017-02-25',1,'出货广东联迪信息科技有限公司','杨木娇',2,'','2017000044','完成生产,已出库'),(1186,'2017-02-25',1,'出货广东联迪信息科技有限公司','杨木娇',5,'','2017000044','完成生产,已出库'),(1189,'2017-02-22',4,'出货东莞好景','杨木娇  李秀荣',18,'','2017000046','完成生产,已出库'),(1191,'2017-02-22',4,'出货东莞好景','杨木娇  李秀荣',22,'','2017000046','完成生产,已出库'),(1192,'2017-02-22',4,'出货东莞好景','杨木娇  李秀荣',1,'','2017000046','完成生产,已出库'),(1193,'2017-02-22',4,'出货东莞好景','杨木娇  李秀荣',4,'','2017000046','完成生产,已出库'),(1197,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',31,'','2017000047','完成生产,已出库'),(1198,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',32,'','2017000047','完成生产,已出库'),(1199,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',39,'','2017000047','完成生产,已出库'),(1200,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',40,'','2017000047','完成生产,已出库'),(1201,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',41,'','2017000047','完成生产,已出库'),(1202,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',42,'','2017000047','完成生产,已出库'),(1203,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',35,'','2017000047','完成生产,已出库'),(1204,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',37,'','2017000047','完成生产,已出库'),(1205,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',38,'','2017000047','完成生产,已出库'),(1206,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',23,'','2017000047','完成生产,已出库'),(1208,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',26,'','2017000047','完成生产,已出库'),(1209,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',27,'','2017000047','完成生产,已出库'),(1210,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',29,'','2017000047','完成生产,已出库'),(1211,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',19,'','2017000047','完成生产,已出库'),(1212,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',67,'','2017000048','完成生产,已出库'),(1214,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',31,'','2017000048','完成生产,已出库'),(1215,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',32,'','2017000048','完成生产,已出库'),(1216,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',39,'','2017000048','完成生产,已出库'),(1217,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',40,'','2017000048','完成生产,已出库'),(1218,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',41,'','2017000048','完成生产,已出库'),(1219,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',42,'','2017000048','完成生产,已出库'),(1220,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',35,'','2017000048','完成生产,已出库'),(1221,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',37,'','2017000048','完成生产,已出库'),(1222,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',38,'','2017000048','完成生产,已出库'),(1223,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',23,'','2017000048','完成生产,已出库'),(1225,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',26,'','2017000048','完成生产,已出库'),(1226,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',27,'','2017000048','完成生产,已出库'),(1227,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',29,'','2017000048','完成生产,已出库'),(1228,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',19,'','2017000048','完成生产,已出库'),(1231,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',31,'','2017000049','完成生产,已出库'),(1232,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',32,'','2017000049','完成生产,已出库'),(1233,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',39,'','2017000049','完成生产,已出库'),(1234,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',40,'','2017000049','完成生产,已出库'),(1235,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',41,'','2017000049','完成生产,已出库'),(1236,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',42,'','2017000049','完成生产,已出库'),(1237,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',35,'','2017000049','完成生产,已出库'),(1238,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',37,'','2017000049','完成生产,已出库'),(1239,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',38,'','2017000049','完成生产,已出库'),(1240,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',23,'','2017000049','完成生产,已出库'),(1242,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',26,'','2017000049','完成生产,已出库'),(1243,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',27,'','2017000049','完成生产,已出库'),(1244,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',29,'','2017000049','完成生产,已出库'),(1245,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',19,'','2017000049','完成生产,已出库'),(1246,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',67,'','2017000050','完成生产,已出库'),(1247,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',65,'','2017000050','完成生产,已出库'),(1248,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',31,'','2017000050','完成生产,已出库'),(1249,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',32,'','2017000050','完成生产,已出库'),(1250,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',39,'','2017000050','完成生产,已出库'),(1251,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',40,'','2017000050','完成生产,已出库'),(1252,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',41,'','2017000050','完成生产,已出库'),(1253,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',42,'','2017000050','完成生产,已出库'),(1254,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',35,'','2017000050','完成生产,已出库'),(1255,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',37,'','2017000050','完成生产,已出库'),(1256,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',38,'','2017000050','完成生产,已出库'),(1257,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',23,'','2017000050','完成生产,已出库'),(1259,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',26,'','2017000050','完成生产,已出库'),(1260,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',27,'','2017000050','完成生产,已出库'),(1261,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',29,'','2017000050','完成生产,已出库'),(1262,'2017-03-07',1,'出货越南立川','杨木娇、李秀荣',19,'','2017000050','完成生产,已出库'),(1265,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',31,'','2017000051','完成生产,已出库'),(1266,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',32,'','2017000051','完成生产,已出库'),(1267,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',39,'','2017000051','完成生产,已出库'),(1268,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',40,'','2017000051','完成生产,已出库'),(1269,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',41,'','2017000051','完成生产,已出库'),(1270,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',42,'','2017000051','完成生产,已出库'),(1271,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',35,'','2017000051','完成生产,已出库'),(1272,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',37,'','2017000051','完成生产,已出库'),(1273,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',38,'','2017000051','完成生产,已出库'),(1274,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',23,'','2017000051','完成生产,已出库'),(1275,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',25,'','2017000051','完成生产,已出库'),(1276,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',26,'','2017000051','完成生产,已出库'),(1277,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',27,'','2017000051','完成生产,已出库'),(1278,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',29,'','2017000051','完成生产,已出库'),(1279,'2017-03-06',1,'出货福建威霖实业有限公司','杨木娇、李秀荣',19,'','2017000051','完成生产,已出库'),(1280,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000052','完成生产,已出库'),(1282,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000052','完成生产,已出库'),(1283,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000052','完成生产,已出库'),(1284,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000052','完成生产,已出库'),(1285,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000052','完成生产,已出库'),(1286,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000052','完成生产,已出库'),(1287,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000052','完成生产,已出库'),(1288,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000052','完成生产,已出库'),(1289,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000052','完成生产,已出库'),(1290,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000052','完成生产,已出库'),(1291,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000052','完成生产,已出库'),(1293,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000052','完成生产,已出库'),(1294,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000052','完成生产,已出库'),(1295,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000052','完成生产,已出库'),(1296,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000052','完成生产,已出库'),(1297,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',67,'','2017000053','完成生产,已出库'),(1299,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',31,'','2017000053','完成生产,已出库'),(1300,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',32,'','2017000053','完成生产,已出库'),(1301,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',39,'','2017000053','完成生产,已出库'),(1302,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',40,'','2017000053','完成生产,已出库'),(1303,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',41,'','2017000053','完成生产,已出库'),(1304,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',42,'','2017000053','完成生产,已出库'),(1305,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',35,'','2017000053','完成生产,已出库'),(1306,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',37,'','2017000053','完成生产,已出库'),(1307,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',38,'','2017000053','完成生产,已出库'),(1308,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',23,'','2017000053','完成生产,已出库'),(1310,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',26,'','2017000053','完成生产,已出库'),(1311,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',27,'','2017000053','完成生产,已出库'),(1312,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',29,'','2017000053','完成生产,已出库'),(1313,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',19,'','2017000053','完成生产,已出库'),(1314,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000054','完成生产,已出库'),(1315,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000054','完成生产,已出库'),(1316,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000054','完成生产,已出库'),(1317,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000054','完成生产,已出库'),(1318,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000054','完成生产,已出库'),(1319,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000054','完成生产,已出库'),(1320,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000054','完成生产,已出库'),(1321,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000054','完成生产,已出库'),(1322,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000054','完成生产,已出库'),(1323,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000054','完成生产,已出库'),(1324,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000054','完成生产,已出库'),(1325,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000054','完成生产,已出库'),(1327,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000054','完成生产,已出库'),(1328,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000054','完成生产,已出库'),(1329,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000054','完成生产,已出库'),(1330,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000054','完成生产,已出库'),(1331,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000055','完成生产,已出库'),(1332,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000055','完成生产,已出库'),(1333,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000055','完成生产,已出库'),(1334,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000055','完成生产,已出库'),(1335,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000055','完成生产,已出库'),(1336,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000055','完成生产,已出库'),(1337,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000055','完成生产,已出库'),(1338,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000055','完成生产,已出库'),(1339,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000055','完成生产,已出库'),(1340,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000055','完成生产,已出库'),(1341,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000055','完成生产,已出库'),(1342,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000055','完成生产,已出库'),(1343,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000055','完成生产,已出库'),(1344,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000055','完成生产,已出库'),(1345,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000055','完成生产,已出库'),(1346,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000055','完成生产,已出库'),(1347,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000055','完成生产,已出库'),(1348,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',67,'','2017000056','完成生产,已出库'),(1349,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',65,'','2017000056','完成生产,已出库'),(1350,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',31,'','2017000056','完成生产,已出库'),(1351,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',32,'','2017000056','完成生产,已出库'),(1352,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',39,'','2017000056','完成生产,已出库'),(1353,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',40,'','2017000056','完成生产,已出库'),(1354,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',41,'','2017000056','完成生产,已出库'),(1355,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',42,'','2017000056','完成生产,已出库'),(1356,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',35,'','2017000056','完成生产,已出库'),(1357,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',37,'','2017000056','完成生产,已出库'),(1358,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',38,'','2017000056','完成生产,已出库'),(1359,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',23,'','2017000056','完成生产,已出库'),(1360,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',25,'','2017000056','完成生产,已出库'),(1361,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',26,'','2017000056','完成生产,已出库'),(1362,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',27,'','2017000056','完成生产,已出库'),(1363,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',29,'','2017000056','完成生产,已出库'),(1364,'2017-03-06',10,'出货海南汉普科技有限公司','杨木娇  李秀荣',19,'','2017000056','完成生产,已出库'),(1365,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000057','完成生产,已出库'),(1366,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000057','完成生产,已出库'),(1367,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000057','完成生产,已出库'),(1368,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000057','完成生产,已出库'),(1369,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000057','完成生产,已出库'),(1370,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000057','完成生产,已出库'),(1371,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000057','完成生产,已出库'),(1372,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000057','完成生产,已出库'),(1373,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000057','完成生产,已出库'),(1374,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000057','完成生产,已出库'),(1375,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000057','完成生产,已出库'),(1376,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000057','完成生产,已出库'),(1377,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',25,'','2017000057','完成生产,已出库'),(1378,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000057','完成生产,已出库'),(1379,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000057','完成生产,已出库'),(1380,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000057','完成生产,已出库'),(1381,'2017-03-07',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000057','完成生产,已出库'),(1382,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000058','完成生产,已出库'),(1383,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000058','完成生产,已出库'),(1384,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000058','完成生产,已出库'),(1385,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000058','完成生产,已出库'),(1386,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000058','完成生产,已出库'),(1387,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000058','完成生产,已出库'),(1388,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000058','完成生产,已出库'),(1389,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000058','完成生产,已出库'),(1390,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000058','完成生产,已出库'),(1391,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000058','完成生产,已出库'),(1392,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000058','完成生产,已出库'),(1393,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000058','完成生产,已出库'),(1394,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000058','完成生产,已出库'),(1395,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000058','完成生产,已出库'),(1396,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000058','完成生产,已出库'),(1397,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000058','完成生产,已出库'),(1398,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000058','完成生产,已出库'),(1399,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000059','完成生产,已出库'),(1400,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000059','完成生产,已出库'),(1401,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000059','完成生产,已出库'),(1402,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000059','完成生产,已出库'),(1403,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000059','完成生产,已出库'),(1404,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000059','完成生产,已出库'),(1405,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000059','完成生产,已出库'),(1406,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000059','完成生产,已出库'),(1407,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000059','完成生产,已出库'),(1408,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000059','完成生产,已出库'),(1409,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000059','完成生产,已出库'),(1410,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000059','完成生产,已出库'),(1411,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000059','完成生产,已出库'),(1412,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000059','完成生产,已出库'),(1413,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000059','完成生产,已出库'),(1414,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000059','完成生产,已出库'),(1415,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000059','完成生产,已出库'),(1416,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000060','完成生产,已出库'),(1417,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000060','完成生产,已出库'),(1418,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000060','完成生产,已出库'),(1419,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000060','完成生产,已出库'),(1420,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000060','完成生产,已出库'),(1421,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000060','完成生产,已出库'),(1422,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000060','完成生产,已出库'),(1423,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000060','完成生产,已出库'),(1424,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000060','完成生产,已出库'),(1425,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000060','完成生产,已出库'),(1426,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000060','完成生产,已出库'),(1427,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000060','完成生产,已出库'),(1428,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000060','完成生产,已出库'),(1429,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000060','完成生产,已出库'),(1430,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000060','完成生产,已出库'),(1431,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000060','完成生产,已出库'),(1432,'2017-03-07',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000060','完成生产,已出库'),(1433,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',67,'','2017000061','完成生产,已出库'),(1434,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',65,'','2017000061','完成生产,已出库'),(1435,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',31,'','2017000061','完成生产,已出库'),(1436,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',32,'','2017000061','完成生产,已出库'),(1437,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',39,'','2017000061','完成生产,已出库'),(1438,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',40,'','2017000061','完成生产,已出库'),(1439,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',41,'','2017000061','完成生产,已出库'),(1440,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',42,'','2017000061','完成生产,已出库'),(1441,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',35,'','2017000061','完成生产,已出库'),(1442,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',37,'','2017000061','完成生产,已出库'),(1443,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',38,'','2017000061','完成生产,已出库'),(1444,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',23,'','2017000061','完成生产,已出库'),(1445,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',25,'','2017000061','完成生产,已出库'),(1446,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',26,'','2017000061','完成生产,已出库'),(1447,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',27,'','2017000061','完成生产,已出库'),(1448,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',29,'','2017000061','完成生产,已出库'),(1449,'2017-03-07',1,'出货越南永正','杨木娇  李秀荣',19,'','2017000061','完成生产,已出库'),(1450,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',67,'','2017000062','完成生产,已出库'),(1451,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',65,'','2017000062','完成生产,已出库'),(1452,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',31,'','2017000062','完成生产,已出库'),(1453,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',32,'','2017000062','完成生产,已出库'),(1454,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',39,'','2017000062','完成生产,已出库'),(1455,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',40,'','2017000062','完成生产,已出库'),(1456,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',41,'','2017000062','完成生产,已出库'),(1457,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',42,'','2017000062','完成生产,已出库'),(1458,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',35,'','2017000062','完成生产,已出库'),(1459,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',37,'','2017000062','完成生产,已出库'),(1460,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',38,'','2017000062','完成生产,已出库'),(1461,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',23,'','2017000062','完成生产,已出库'),(1462,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',25,'','2017000062','完成生产,已出库'),(1463,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',26,'','2017000062','完成生产,已出库'),(1464,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',27,'','2017000062','完成生产,已出库'),(1465,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',29,'','2017000062','完成生产,已出库'),(1466,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',19,'','2017000062','完成生产,已出库'),(1467,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',67,'','2017000063','完成生产,已出库'),(1468,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',65,'','2017000063','完成生产,已出库'),(1469,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',31,'','2017000063','完成生产,已出库'),(1470,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',32,'','2017000063','完成生产,已出库'),(1471,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',39,'','2017000063','完成生产,已出库'),(1472,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',40,'','2017000063','完成生产,已出库'),(1473,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',41,'','2017000063','完成生产,已出库'),(1474,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',42,'','2017000063','完成生产,已出库'),(1475,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',35,'','2017000063','完成生产,已出库'),(1476,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',37,'','2017000063','完成生产,已出库'),(1477,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',38,'','2017000063','完成生产,已出库'),(1478,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',23,'','2017000063','完成生产,已出库'),(1479,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',25,'','2017000063','完成生产,已出库'),(1480,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',26,'','2017000063','完成生产,已出库'),(1481,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',27,'','2017000063','完成生产,已出库'),(1482,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',29,'','2017000063','完成生产,已出库'),(1483,'2017-03-06',1,'出货越南百倢','杨木娇  李秀荣',19,'','2017000063','完成生产,已出库'),(1484,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',67,'','2017000064','完成生产,已出库'),(1485,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',65,'','2017000064','完成生产,已出库'),(1486,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',31,'','2017000064','完成生产,已出库'),(1487,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',32,'','2017000064','完成生产,已出库'),(1488,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',39,'','2017000064','完成生产,已出库'),(1489,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',40,'','2017000064','完成生产,已出库'),(1490,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',41,'','2017000064','完成生产,已出库'),(1491,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',42,'','2017000064','完成生产,已出库'),(1492,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',35,'','2017000064','完成生产,已出库'),(1493,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',37,'','2017000064','完成生产,已出库'),(1494,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',38,'','2017000064','完成生产,已出库'),(1495,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',23,'','2017000064','完成生产,已出库'),(1496,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',25,'','2017000064','完成生产,已出库'),(1497,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',26,'','2017000064','完成生产,已出库'),(1498,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',27,'','2017000064','完成生产,已出库'),(1499,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',29,'','2017000064','完成生产,已出库'),(1500,'2017-03-07',1,'出货越南永川','杨木娇  李秀荣',19,'','2017000064','完成生产,已出库'),(1501,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',67,'','2017000065','完成生产,已出库'),(1502,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',65,'','2017000065','完成生产,已出库'),(1503,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',31,'','2017000065','完成生产,已出库'),(1504,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',32,'','2017000065','完成生产,已出库'),(1505,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',39,'','2017000065','完成生产,已出库'),(1506,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',40,'','2017000065','完成生产,已出库'),(1507,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',41,'','2017000065','完成生产,已出库'),(1508,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',42,'','2017000065','完成生产,已出库'),(1509,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',35,'','2017000065','完成生产,已出库'),(1510,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',37,'','2017000065','完成生产,已出库'),(1511,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',38,'','2017000065','完成生产,已出库'),(1512,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',23,'','2017000065','完成生产,已出库'),(1514,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',26,'','2017000065','完成生产,已出库'),(1515,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',27,'','2017000065','完成生产,已出库'),(1516,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',29,'','2017000065','完成生产,已出库'),(1517,'2017-03-07',3,'出货越南宏美二厂','杨木娇  李秀荣',19,'','2017000065','完成生产,已出库'),(1518,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',67,'','2017000067','完成生产,已出库'),(1519,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',65,'','2017000067','完成生产,已出库'),(1520,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',31,'','2017000067','完成生产,已出库'),(1521,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',32,'','2017000067','完成生产,已出库'),(1522,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',39,'','2017000067','完成生产,已出库'),(1523,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',40,'','2017000067','完成生产,已出库'),(1524,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',41,'','2017000067','完成生产,已出库'),(1525,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',42,'','2017000067','完成生产,已出库'),(1526,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',35,'','2017000067','完成生产,已出库'),(1527,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',37,'','2017000067','完成生产,已出库'),(1528,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',38,'','2017000067','完成生产,已出库'),(1529,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',23,'','2017000067','完成生产,已出库'),(1530,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',25,'','2017000067','完成生产,已出库'),(1531,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',26,'','2017000067','完成生产,已出库'),(1532,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',27,'','2017000067','完成生产,已出库'),(1533,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',29,'','2017000067','完成生产,已出库'),(1534,'2017-03-06',2,'出货越南邦威','杨木娇  李秀荣',19,'','2017000067','完成生产,已出库'),(1535,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',67,'','2017000068','完成生产,已出库'),(1536,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',65,'','2017000068','完成生产,已出库'),(1537,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',31,'','2017000068','完成生产,已出库'),(1538,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',32,'','2017000068','完成生产,已出库'),(1539,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',39,'','2017000068','完成生产,已出库'),(1540,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',40,'','2017000068','完成生产,已出库'),(1541,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',41,'','2017000068','完成生产,已出库'),(1542,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',42,'','2017000068','完成生产,已出库'),(1543,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',35,'','2017000068','完成生产,已出库'),(1544,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',37,'','2017000068','完成生产,已出库'),(1545,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',38,'','2017000068','完成生产,已出库'),(1546,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',23,'','2017000068','完成生产,已出库'),(1547,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',25,'','2017000068','完成生产,已出库'),(1548,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',26,'','2017000068','完成生产,已出库'),(1549,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',27,'','2017000068','完成生产,已出库'),(1550,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',29,'','2017000068','完成生产,已出库'),(1551,'2017-03-07',1,'出货越南永弘','杨木娇  李秀荣',19,'','2017000068','完成生产,已出库'),(1552,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',67,'','2017000069','完成生产,已出库'),(1553,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',65,'','2017000069','完成生产,已出库'),(1554,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',31,'','2017000069','完成生产,已出库'),(1555,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',32,'','2017000069','完成生产,已出库'),(1556,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',39,'','2017000069','完成生产,已出库'),(1557,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',40,'','2017000069','完成生产,已出库'),(1558,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',41,'','2017000069','完成生产,已出库'),(1559,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',42,'','2017000069','完成生产,已出库'),(1560,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',35,'','2017000069','完成生产,已出库'),(1561,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',37,'','2017000069','完成生产,已出库'),(1562,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',38,'','2017000069','完成生产,已出库'),(1563,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',23,'','2017000069','完成生产,已出库'),(1564,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',25,'','2017000069','完成生产,已出库'),(1565,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',26,'','2017000069','完成生产,已出库'),(1566,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',27,'','2017000069','完成生产,已出库'),(1567,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',29,'','2017000069','完成生产,已出库'),(1568,'2017-03-06',5,'出货越南亚欣','杨木娇  李秀荣',19,'','2017000069','完成生产,已出库'),(1569,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000070','完成生产,已出库'),(1570,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000070','完成生产,已出库'),(1571,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000070','完成生产,已出库'),(1572,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000070','完成生产,已出库'),(1573,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000070','完成生产,已出库'),(1574,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000070','完成生产,已出库'),(1575,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000070','完成生产,已出库'),(1576,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000070','完成生产,已出库'),(1577,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000070','完成生产,已出库'),(1578,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000070','完成生产,已出库'),(1579,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000070','完成生产,已出库'),(1580,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000070','完成生产,已出库'),(1581,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000070','完成生产,已出库'),(1582,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000070','完成生产,已出库'),(1583,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000070','完成生产,已出库'),(1584,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000070','完成生产,已出库'),(1585,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000070','完成生产,已出库'),(1586,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000071','完成生产,已出库'),(1587,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000071','完成生产,已出库'),(1588,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000071','完成生产,已出库'),(1589,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000071','完成生产,已出库'),(1590,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000071','完成生产,已出库'),(1591,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000071','完成生产,已出库'),(1592,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000071','完成生产,已出库'),(1593,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000071','完成生产,已出库'),(1594,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000071','完成生产,已出库'),(1595,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000071','完成生产,已出库'),(1596,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000071','完成生产,已出库'),(1597,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000071','完成生产,已出库'),(1598,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000071','完成生产,已出库'),(1599,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000071','完成生产,已出库'),(1600,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000071','完成生产,已出库'),(1601,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000071','完成生产,已出库'),(1602,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000071','完成生产,已出库'),(1603,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000072','完成生产,已出库'),(1604,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000072','完成生产,已出库'),(1605,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000072','完成生产,已出库'),(1606,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000072','完成生产,已出库'),(1607,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000072','完成生产,已出库'),(1608,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000072','完成生产,已出库'),(1609,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000072','完成生产,已出库'),(1610,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000072','完成生产,已出库'),(1611,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000072','完成生产,已出库'),(1612,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000072','完成生产,已出库'),(1613,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000072','完成生产,已出库'),(1614,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000072','完成生产,已出库'),(1615,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000072','完成生产,已出库'),(1616,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000072','完成生产,已出库'),(1617,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000072','完成生产,已出库'),(1618,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000072','完成生产,已出库'),(1619,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000072','完成生产,已出库'),(1620,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000073','完成生产,已出库'),(1621,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000073','完成生产,已出库'),(1622,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000073','完成生产,已出库'),(1623,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000073','完成生产,已出库'),(1624,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000073','完成生产,已出库'),(1625,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000073','完成生产,已出库'),(1626,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000073','完成生产,已出库'),(1627,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000073','完成生产,已出库'),(1628,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000073','完成生产,已出库'),(1629,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000073','完成生产,已出库'),(1630,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000073','完成生产,已出库'),(1631,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000073','完成生产,已出库'),(1632,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000073','完成生产,已出库'),(1633,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000073','完成生产,已出库'),(1634,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000073','完成生产,已出库'),(1635,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000073','完成生产,已出库'),(1636,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000073','完成生产,已出库'),(1637,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000074','完成生产,已出库'),(1638,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000074','完成生产,已出库'),(1639,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000074','完成生产,已出库'),(1640,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000074','完成生产,已出库'),(1641,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000074','完成生产,已出库'),(1642,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000074','完成生产,已出库'),(1643,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000074','完成生产,已出库'),(1644,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000074','完成生产,已出库'),(1645,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000074','完成生产,已出库'),(1646,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000074','完成生产,已出库'),(1647,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000074','完成生产,已出库'),(1648,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000074','完成生产,已出库'),(1649,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000074','完成生产,已出库'),(1650,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000074','完成生产,已出库'),(1651,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000074','完成生产,已出库'),(1652,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000074','完成生产,已出库'),(1653,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000074','完成生产,已出库'),(1654,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000075','完成生产,已出库'),(1655,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000075','完成生产,已出库'),(1656,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000075','完成生产,已出库'),(1657,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000075','完成生产,已出库'),(1658,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000075','完成生产,已出库'),(1659,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000075','完成生产,已出库'),(1660,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000075','完成生产,已出库'),(1661,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000075','完成生产,已出库'),(1662,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000075','完成生产,已出库'),(1663,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000075','完成生产,已出库'),(1664,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000075','完成生产,已出库'),(1665,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000075','完成生产,已出库'),(1666,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000075','完成生产,已出库'),(1667,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000075','完成生产,已出库'),(1668,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000075','完成生产,已出库'),(1669,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000075','完成生产,已出库'),(1670,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000075','完成生产,已出库'),(1671,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000077','完成生产,已出库'),(1672,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000077','完成生产,已出库'),(1673,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000077','完成生产,已出库'),(1674,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000077','完成生产,已出库'),(1675,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000077','完成生产,已出库'),(1676,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000077','完成生产,已出库'),(1677,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000077','完成生产,已出库'),(1678,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000077','完成生产,已出库'),(1679,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000077','完成生产,已出库'),(1680,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000077','完成生产,已出库'),(1681,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000077','完成生产,已出库'),(1682,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000077','完成生产,已出库'),(1683,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000077','完成生产,已出库'),(1684,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000077','完成生产,已出库'),(1685,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000077','完成生产,已出库'),(1686,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000077','完成生产,已出库'),(1687,'2017-03-06',2,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000077','完成生产,已出库'),(1688,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000078','完成生产,已出库'),(1689,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000078','完成生产,已出库'),(1690,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000078','完成生产,已出库'),(1691,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000078','完成生产,已出库'),(1692,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000078','完成生产,已出库'),(1693,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000078','完成生产,已出库'),(1694,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000078','完成生产,已出库'),(1695,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000078','完成生产,已出库'),(1696,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000078','完成生产,已出库'),(1697,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000078','完成生产,已出库'),(1698,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000078','完成生产,已出库'),(1699,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000078','完成生产,已出库'),(1700,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000078','完成生产,已出库'),(1701,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000078','完成生产,已出库'),(1702,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000078','完成生产,已出库'),(1703,'2017-03-06',1,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000078','完成生产,已出库'),(1704,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',67,'','2017000079','完成生产,已出库'),(1705,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',65,'','2017000079','完成生产,已出库'),(1706,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',31,'','2017000079','完成生产,已出库'),(1707,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',32,'','2017000079','完成生产,已出库'),(1708,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',39,'','2017000079','完成生产,已出库'),(1709,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',40,'','2017000079','完成生产,已出库'),(1710,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',41,'','2017000079','完成生产,已出库'),(1711,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',42,'','2017000079','完成生产,已出库'),(1712,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',35,'','2017000079','完成生产,已出库'),(1713,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',37,'','2017000079','完成生产,已出库'),(1714,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',38,'','2017000079','完成生产,已出库'),(1715,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',23,'','2017000079','完成生产,已出库'),(1716,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',25,'','2017000079','完成生产,已出库'),(1717,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',26,'','2017000079','完成生产,已出库'),(1718,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',27,'','2017000079','完成生产,已出库'),(1719,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',29,'','2017000079','完成生产,已出库'),(1720,'2017-03-06',2,'出货越南弘邦','杨木娇 李秀荣',19,'','2017000079','完成生产,已出库'),(1721,'2017-03-08',5,'出货北京佰高讯通科技有限公司','杨木娇  李秀荣',18,'','2017000085','完成生产,已出库'),(1723,'2017-03-08',5,'出货北京佰高讯通科技有限公司','杨木娇  李秀荣',22,'','2017000085','完成生产,已出库'),(1724,'2017-03-08',5,'出货北京佰高讯通科技有限公司','杨木娇  李秀荣',1,'','2017000085','完成生产,已出库'),(1725,'2017-03-08',5,'出货北京佰高讯通科技有限公司','杨木娇  李秀荣',5,'','2017000085','完成生产,已出库'),(1727,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000086','完成生产,已出库'),(1728,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000086','完成生产,已出库'),(1729,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000086','完成生产,已出库'),(1730,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000086','完成生产,已出库'),(1731,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000086','完成生产,已出库'),(1732,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000086','完成生产,已出库'),(1733,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000086','完成生产,已出库'),(1734,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000086','完成生产,已出库'),(1735,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000086','完成生产,已出库'),(1736,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000086','完成生产,已出库'),(1737,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000086','完成生产,已出库'),(1738,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000086','完成生产,已出库'),(1739,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000086','完成生产,已出库'),(1740,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000086','完成生产,已出库'),(1741,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000086','完成生产,已出库'),(1742,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000086','完成生产,已出库'),(1743,'2017-03-09',7,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000086','完成生产,已出库'),(1744,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',67,'','2017000087','完成生产,已出库'),(1745,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',65,'','2017000087','完成生产,已出库'),(1746,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',31,'','2017000087','完成生产,已出库'),(1747,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',32,'','2017000087','完成生产,已出库'),(1748,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',39,'','2017000087','完成生产,已出库'),(1749,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',40,'','2017000087','完成生产,已出库'),(1750,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',41,'','2017000087','完成生产,已出库'),(1751,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',42,'','2017000087','完成生产,已出库'),(1752,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',35,'','2017000087','完成生产,已出库'),(1753,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',37,'','2017000087','完成生产,已出库'),(1754,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',38,'','2017000087','完成生产,已出库'),(1755,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',23,'','2017000087','完成生产,已出库'),(1756,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',25,'','2017000087','完成生产,已出库'),(1757,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',26,'','2017000087','完成生产,已出库'),(1758,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',27,'','2017000087','完成生产,已出库'),(1759,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',29,'','2017000087','完成生产,已出库'),(1760,'2017-03-09',2,'出货越南弘邦','杨木娇  李秀荣',19,'','2017000087','完成生产,已出库'),(1761,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',67,'','2017000088','完成生产,已出库'),(1762,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',65,'','2017000088','完成生产,已出库'),(1763,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',31,'','2017000088','完成生产,已出库'),(1764,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',32,'','2017000088','完成生产,已出库'),(1765,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',39,'','2017000088','完成生产,已出库'),(1766,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',40,'','2017000088','完成生产,已出库'),(1767,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',41,'','2017000088','完成生产,已出库'),(1768,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',42,'','2017000088','完成生产,已出库'),(1769,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',35,'','2017000088','完成生产,已出库'),(1770,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',37,'','2017000088','完成生产,已出库'),(1771,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',38,'','2017000088','完成生产,已出库'),(1772,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',23,'','2017000088','完成生产,已出库'),(1773,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',25,'','2017000088','完成生产,已出库'),(1774,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',26,'','2017000088','完成生产,已出库'),(1775,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',27,'','2017000088','完成生产,已出库'),(1776,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',29,'','2017000088','完成生产,已出库'),(1777,'2017-03-09',3,'出货越南弘福','杨木娇  李秀荣',19,'','2017000088','完成生产,已出库'),(1778,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000089','完成生产,已出库'),(1779,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000089','完成生产,已出库'),(1780,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000089','完成生产,已出库'),(1781,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000089','完成生产,已出库'),(1782,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000089','完成生产,已出库'),(1783,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000089','完成生产,已出库'),(1784,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000089','完成生产,已出库'),(1785,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000089','完成生产,已出库'),(1786,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000089','完成生产,已出库'),(1787,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000089','完成生产,已出库'),(1788,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000089','完成生产,已出库'),(1789,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000089','完成生产,已出库'),(1790,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000089','完成生产,已出库'),(1791,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000089','完成生产,已出库'),(1792,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000089','完成生产,已出库'),(1793,'2017-03-09',1,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000089','完成生产,已出库'),(1794,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',67,'','2017000090','完成生产,已出库'),(1795,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',65,'','2017000090','完成生产,已出库'),(1796,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',31,'','2017000090','完成生产,已出库'),(1797,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',32,'','2017000090','完成生产,已出库'),(1798,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',39,'','2017000090','完成生产,已出库'),(1799,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',40,'','2017000090','完成生产,已出库'),(1800,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',41,'','2017000090','完成生产,已出库'),(1801,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',42,'','2017000090','完成生产,已出库'),(1802,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',35,'','2017000090','完成生产,已出库'),(1803,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',37,'','2017000090','完成生产,已出库'),(1804,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',38,'','2017000090','完成生产,已出库'),(1805,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',23,'','2017000090','完成生产,已出库'),(1806,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',25,'','2017000090','完成生产,已出库'),(1807,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',26,'','2017000090','完成生产,已出库'),(1808,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',27,'','2017000090','完成生产,已出库'),(1809,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',29,'','2017000090','完成生产,已出库'),(1810,'2017-03-09',2,'出货中山志捷鞋业技术服务有限公司','杨木娇  李秀荣',19,'','2017000090','完成生产,已出库'),(1811,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',67,'','2017000091','完成生产,已出库'),(1812,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',65,'','2017000091','完成生产,已出库'),(1813,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',31,'','2017000091','完成生产,已出库'),(1814,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',32,'','2017000091','完成生产,已出库'),(1815,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',39,'','2017000091','完成生产,已出库'),(1816,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',40,'','2017000091','完成生产,已出库'),(1817,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',41,'','2017000091','完成生产,已出库'),(1818,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',42,'','2017000091','完成生产,已出库'),(1819,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',35,'','2017000091','完成生产,已出库'),(1820,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',37,'','2017000091','完成生产,已出库'),(1821,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',38,'','2017000091','完成生产,已出库'),(1822,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',23,'','2017000091','完成生产,已出库'),(1823,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',25,'','2017000091','完成生产,已出库'),(1824,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',26,'','2017000091','完成生产,已出库'),(1825,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',27,'','2017000091','完成生产,已出库'),(1826,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',29,'','2017000091','完成生产,已出库'),(1827,'2017-03-13',1,'出货越南宏美一厂','杨木娇  李秀荣',19,'','2017000091','完成生产,已出库'),(1828,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',67,'','2017000093','完成生产,已出库'),(1829,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',65,'','2017000093','完成生产,已出库'),(1830,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',31,'','2017000093','完成生产,已出库'),(1831,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',32,'','2017000093','完成生产,已出库'),(1832,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',39,'','2017000093','完成生产,已出库'),(1833,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',40,'','2017000093','完成生产,已出库'),(1834,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',41,'','2017000093','完成生产,已出库'),(1835,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',42,'','2017000093','完成生产,已出库'),(1836,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',35,'','2017000093','完成生产,已出库'),(1837,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',37,'','2017000093','完成生产,已出库'),(1838,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',38,'','2017000093','完成生产,已出库'),(1839,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',23,'','2017000093','完成生产,已出库'),(1841,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',26,'','2017000093','完成生产,已出库'),(1842,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',27,'','2017000093','完成生产,已出库'),(1843,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',29,'','2017000093','完成生产,已出库'),(1844,'2017-03-13',1,'出货中山精美鞋业有限公司','杨木娇  李秀荣',19,'','2017000093','完成生产,已出库'),(1845,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',67,'','2017000094','完成生产,已出库'),(1846,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',65,'','2017000094','完成生产,已出库'),(1847,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',31,'','2017000094','完成生产,已出库'),(1848,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',32,'','2017000094','完成生产,已出库'),(1849,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',39,'','2017000094','完成生产,已出库'),(1850,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',40,'','2017000094','完成生产,已出库'),(1851,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',41,'','2017000094','完成生产,已出库'),(1852,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',42,'','2017000094','完成生产,已出库'),(1853,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',35,'','2017000094','完成生产,已出库'),(1854,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',37,'','2017000094','完成生产,已出库'),(1855,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',38,'','2017000094','完成生产,已出库'),(1856,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',23,'','2017000094','完成生产,已出库'),(1857,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',25,'','2017000094','完成生产,已出库'),(1858,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',26,'','2017000094','完成生产,已出库'),(1859,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',27,'','2017000094','完成生产,已出库'),(1860,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',29,'','2017000094','完成生产,已出库'),(1861,'2017-03-13',1,'出货越南亚欣','杨木娇  李秀荣',19,'','2017000094','完成生产,已出库'),(1862,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',67,'','2017000095','完成生产,已出库'),(1863,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',65,'','2017000095','完成生产,已出库'),(1864,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',31,'','2017000095','完成生产,已出库'),(1865,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',32,'','2017000095','完成生产,已出库'),(1866,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',39,'','2017000095','完成生产,已出库'),(1867,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',40,'','2017000095','完成生产,已出库'),(1868,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',41,'','2017000095','完成生产,已出库'),(1869,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',42,'','2017000095','完成生产,已出库'),(1870,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',35,'','2017000095','完成生产,已出库'),(1871,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',37,'','2017000095','完成生产,已出库'),(1872,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',38,'','2017000095','完成生产,已出库'),(1873,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',23,'','2017000095','完成生产,已出库'),(1875,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',26,'','2017000095','完成生产,已出库'),(1876,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',27,'','2017000095','完成生产,已出库'),(1877,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',29,'','2017000095','完成生产,已出库'),(1878,'2017-03-13',1,'出货越南宏美二厂','杨木娇  李秀荣',19,'','2017000095','完成生产,已出库'),(1879,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',67,'','2017000125','完成生产,已出库'),(1880,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',65,'','2017000125','完成生产,已出库'),(1881,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',31,'','2017000125','完成生产,已出库'),(1882,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',32,'','2017000125','完成生产,已出库'),(1883,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',39,'','2017000125','完成生产,已出库'),(1884,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',40,'','2017000125','完成生产,已出库'),(1885,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',41,'','2017000125','完成生产,已出库'),(1886,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',42,'','2017000125','完成生产,已出库'),(1887,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',35,'','2017000125','完成生产,已出库'),(1888,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',37,'','2017000125','完成生产,已出库'),(1889,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',38,'','2017000125','完成生产,已出库'),(1890,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',23,'','2017000125','完成生产,已出库'),(1891,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',25,'','2017000125','完成生产,已出库'),(1892,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',26,'','2017000125','完成生产,已出库'),(1893,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',27,'','2017000125','完成生产,已出库'),(1894,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',29,'','2017000125','完成生产,已出库'),(1895,'2017-03-09',1,'出货深圳凯特电气有限公司','杨木娇、李秀荣',19,'','2017000125','完成生产,已出库'),(1896,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',67,'','2017000101','完成生产,已出库'),(1897,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',65,'','2017000101','完成生产,已出库'),(1898,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',31,'','2017000101','完成生产,已出库'),(1899,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',32,'','2017000101','完成生产,已出库'),(1900,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',39,'','2017000101','完成生产,已出库'),(1901,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',40,'','2017000101','完成生产,已出库'),(1902,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',41,'','2017000101','完成生产,已出库'),(1903,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',42,'','2017000101','完成生产,已出库'),(1904,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',35,'','2017000101','完成生产,已出库'),(1905,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',37,'','2017000101','完成生产,已出库'),(1906,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',38,'','2017000101','完成生产,已出库'),(1907,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',23,'','2017000101','完成生产,已出库'),(1908,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',25,'','2017000101','完成生产,已出库'),(1909,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',26,'','2017000101','完成生产,已出库'),(1910,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',27,'','2017000101','完成生产,已出库'),(1911,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',29,'','2017000101','完成生产,已出库'),(1912,'2017-03-24',30,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',19,'','2017000101','完成生产,已出库'),(1914,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',67,'','2017000102','完成生产,已出库'),(1915,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',65,'','2017000102','完成生产,已出库'),(1916,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',31,'','2017000102','完成生产,已出库'),(1917,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',32,'','2017000102','完成生产,已出库'),(1918,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',39,'','2017000102','完成生产,已出库'),(1919,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',40,'','2017000102','完成生产,已出库'),(1920,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',41,'','2017000102','完成生产,已出库'),(1921,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',42,'','2017000102','完成生产,已出库'),(1922,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',35,'','2017000102','完成生产,已出库'),(1923,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',37,'','2017000102','完成生产,已出库'),(1924,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',38,'','2017000102','完成生产,已出库'),(1925,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',23,'','2017000102','完成生产,已出库'),(1926,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',25,'','2017000102','完成生产,已出库'),(1927,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',26,'','2017000102','完成生产,已出库'),(1928,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',27,'','2017000102','完成生产,已出库'),(1929,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',29,'','2017000102','完成生产,已出库'),(1930,'2017-03-24',20,'出货港芝（东莞）电子制造厂有限公司','杨木娇 李秀荣',19,'','2017000102','完成生产,已出库'),(1931,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',67,'','2017000104','完成生产,已出库'),(1932,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',65,'','2017000104','完成生产,已出库'),(1933,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',30,'','2017000104','完成生产,已出库'),(1934,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',66,'','2017000104','完成生产,已出库'),(1935,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',39,'','2017000104','完成生产,已出库'),(1936,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',40,'','2017000104','完成生产,已出库'),(1937,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',35,'','2017000104','完成生产,已出库'),(1938,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',37,'','2017000104','完成生产,已出库'),(1939,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',38,'','2017000104','完成生产,已出库'),(1940,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',23,'','2017000104','完成生产,已出库'),(1941,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',25,'','2017000104','完成生产,已出库'),(1942,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',26,'','2017000104','完成生产,已出库'),(1943,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',29,'','2017000104','完成生产,已出库'),(1949,'2017-03-17',50,'出货东莞怡合达自动化科技有限公司','杨木娇 李秀荣',19,'','2017000104','完成生产,已出库'),(1950,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',67,'','2017000105','完成生产,已出库'),(1951,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',65,'','2017000105','完成生产,已出库'),(1952,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',31,'','2017000105','完成生产,已出库'),(1953,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',32,'','2017000105','完成生产,已出库'),(1954,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',39,'','2017000105','完成生产,已出库'),(1955,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',40,'','2017000105','完成生产,已出库'),(1956,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',41,'','2017000105','完成生产,已出库'),(1957,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',42,'','2017000105','完成生产,已出库'),(1958,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',35,'','2017000105','完成生产,已出库'),(1959,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',37,'','2017000105','完成生产,已出库'),(1960,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',38,'','2017000105','完成生产,已出库'),(1961,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',23,'','2017000105','完成生产,已出库'),(1962,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',25,'','2017000105','完成生产,已出库'),(1963,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',26,'','2017000105','完成生产,已出库'),(1964,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',27,'','2017000105','完成生产,已出库'),(1965,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',29,'','2017000105','完成生产,已出库'),(1966,'2017-03-17',2,'出货越南上杰','杨木娇 李秀荣',19,'','2017000105','完成生产,已出库'),(1967,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',67,'','2017000106','完成生产,已出库'),(1968,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',65,'','2017000106','完成生产,已出库'),(1969,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',31,'','2017000106','完成生产,已出库'),(1970,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',32,'','2017000106','完成生产,已出库'),(1971,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',39,'','2017000106','完成生产,已出库'),(1972,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',40,'','2017000106','完成生产,已出库'),(1973,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',41,'','2017000106','完成生产,已出库'),(1974,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',42,'','2017000106','完成生产,已出库'),(1975,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',35,'','2017000106','完成生产,已出库'),(1976,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',37,'','2017000106','完成生产,已出库'),(1977,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',38,'','2017000106','完成生产,已出库'),(1978,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',23,'','2017000106','完成生产,已出库'),(1979,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',25,'','2017000106','完成生产,已出库'),(1980,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',26,'','2017000106','完成生产,已出库'),(1981,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',27,'','2017000106','完成生产,已出库'),(1982,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',29,'','2017000106','完成生产,已出库'),(1983,'2017-03-15',2,'出货越南永弘','杨木娇、李秀荣',19,'','2017000106','完成生产,已出库'),(1984,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',67,'','2017000107','完成生产,已出库'),(1985,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',65,'','2017000107','完成生产,已出库'),(1986,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',31,'','2017000107','完成生产,已出库'),(1987,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',32,'','2017000107','完成生产,已出库'),(1988,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',39,'','2017000107','完成生产,已出库'),(1989,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',40,'','2017000107','完成生产,已出库'),(1990,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',41,'','2017000107','完成生产,已出库'),(1991,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',42,'','2017000107','完成生产,已出库'),(1992,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',35,'','2017000107','完成生产,已出库'),(1993,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',37,'','2017000107','完成生产,已出库'),(1994,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',38,'','2017000107','完成生产,已出库'),(1995,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',23,'','2017000107','完成生产,已出库'),(1996,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',25,'','2017000107','完成生产,已出库'),(1997,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',26,'','2017000107','完成生产,已出库'),(1998,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',27,'','2017000107','完成生产,已出库'),(1999,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',29,'','2017000107','完成生产,已出库'),(2000,'2017-03-21',2,'出货深圳凯特电气有限公司','杨木娇 李秀荣',19,'','2017000107','完成生产,已出库'),(2001,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',67,'','2017000108','完成生产,已出库'),(2002,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',65,'','2017000108','完成生产,已出库'),(2003,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',31,'','2017000108','完成生产,已出库'),(2004,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',32,'','2017000108','完成生产,已出库'),(2005,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',39,'','2017000108','完成生产,已出库'),(2006,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',40,'','2017000108','完成生产,已出库'),(2007,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',41,'','2017000108','完成生产,已出库'),(2008,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',42,'','2017000108','完成生产,已出库'),(2009,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',35,'','2017000108','完成生产,已出库'),(2010,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',37,'','2017000108','完成生产,已出库'),(2011,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',38,'','2017000108','完成生产,已出库'),(2012,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',23,'','2017000108','完成生产,已出库'),(2013,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',25,'','2017000108','完成生产,已出库'),(2014,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',26,'','2017000108','完成生产,已出库'),(2015,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',27,'','2017000108','完成生产,已出库'),(2016,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',29,'','2017000108','完成生产,已出库'),(2017,'2017-03-22',1,'出货越南弘邦','杨木娇、李秀荣',19,'','2017000108','完成生产,已出库'),(2018,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000110','完成生产,已出库'),(2019,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000110','完成生产,已出库'),(2020,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000110','完成生产,已出库'),(2021,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000110','完成生产,已出库'),(2022,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000110','完成生产,已出库'),(2023,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000110','完成生产,已出库'),(2024,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000110','完成生产,已出库'),(2025,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000110','完成生产,已出库'),(2026,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000110','完成生产,已出库'),(2027,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000110','完成生产,已出库'),(2028,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000110','完成生产,已出库'),(2029,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000110','完成生产,已出库'),(2031,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000110','完成生产,已出库'),(2032,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000110','完成生产,已出库'),(2033,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000110','完成生产,已出库'),(2034,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000110','完成生产,已出库'),(2035,'2017-03-22',3,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'其中2台备用机','2017000111','完成生产,已出库'),(2036,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000111','完成生产,已出库'),(2037,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000111','完成生产,已出库'),(2038,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000111','完成生产,已出库'),(2039,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000111','完成生产,已出库'),(2040,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000111','完成生产,已出库'),(2041,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000111','完成生产,已出库'),(2042,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000111','完成生产,已出库'),(2043,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000111','完成生产,已出库'),(2044,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000111','完成生产,已出库'),(2045,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000111','完成生产,已出库'),(2046,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000111','完成生产,已出库'),(2048,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000111','完成生产,已出库'),(2049,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000111','完成生产,已出库'),(2050,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000111','完成生产,已出库'),(2051,'2017-03-22',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000111','完成生产,已出库'),(2052,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',67,'','2017000112','完成生产,已出库'),(2053,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',65,'','2017000112','完成生产,已出库'),(2054,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',31,'','2017000112','完成生产,已出库'),(2055,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',32,'','2017000112','完成生产,已出库'),(2056,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',39,'','2017000112','完成生产,已出库'),(2057,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',40,'','2017000112','完成生产,已出库'),(2058,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',41,'','2017000112','完成生产,已出库'),(2059,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',42,'','2017000112','完成生产,已出库'),(2060,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',35,'','2017000112','完成生产,已出库'),(2061,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',37,'','2017000112','完成生产,已出库'),(2062,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',38,'','2017000112','完成生产,已出库'),(2063,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',23,'','2017000112','完成生产,已出库'),(2064,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',25,'','2017000112','完成生产,已出库'),(2065,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',26,'','2017000112','完成生产,已出库'),(2066,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',27,'','2017000112','完成生产,已出库'),(2067,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',29,'','2017000112','完成生产,已出库'),(2068,'2017-03-23',6,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇、李秀荣',19,'','2017000112','完成生产,已出库'),(2069,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000113','完成生产,已出库'),(2070,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000113','完成生产,已出库'),(2071,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000113','完成生产,已出库'),(2072,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000113','完成生产,已出库'),(2073,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000113','完成生产,已出库'),(2074,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000113','完成生产,已出库'),(2075,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000113','完成生产,已出库'),(2076,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000113','完成生产,已出库'),(2077,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000113','完成生产,已出库'),(2078,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000113','完成生产,已出库'),(2079,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000113','完成生产,已出库'),(2080,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000113','完成生产,已出库'),(2081,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',25,'','2017000113','完成生产,已出库'),(2082,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000113','完成生产,已出库'),(2083,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000113','完成生产,已出库'),(2084,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000113','完成生产,已出库'),(2085,'2017-03-27',5,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000113','完成生产,已出库'),(2086,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',67,'','2017000114','完成生产,已出库'),(2087,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',65,'','2017000114','完成生产,已出库'),(2088,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',31,'','2017000114','完成生产,已出库'),(2089,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',32,'','2017000114','完成生产,已出库'),(2090,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',39,'','2017000114','完成生产,已出库'),(2091,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',40,'','2017000114','完成生产,已出库'),(2092,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',41,'','2017000114','完成生产,已出库'),(2093,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',42,'','2017000114','完成生产,已出库'),(2094,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',35,'','2017000114','完成生产,已出库'),(2095,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',37,'','2017000114','完成生产,已出库'),(2096,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',38,'','2017000114','完成生产,已出库'),(2097,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',23,'','2017000114','完成生产,已出库'),(2098,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',25,'','2017000114','完成生产,已出库'),(2099,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',26,'','2017000114','完成生产,已出库'),(2100,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',27,'','2017000114','完成生产,已出库'),(2101,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',29,'','2017000114','完成生产,已出库'),(2102,'2017-03-27',2,'出货越南上杰','杨木娇、李秀荣',19,'','2017000114','完成生产,已出库'),(2103,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',67,'','2017000115','完成生产,已出库'),(2104,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',65,'','2017000115','完成生产,已出库'),(2105,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',31,'','2017000115','完成生产,已出库'),(2106,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',32,'','2017000115','完成生产,已出库'),(2107,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',39,'','2017000115','完成生产,已出库'),(2108,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',40,'','2017000115','完成生产,已出库'),(2109,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',41,'','2017000115','完成生产,已出库'),(2110,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',42,'','2017000115','完成生产,已出库'),(2111,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',35,'','2017000115','完成生产,已出库'),(2112,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',37,'','2017000115','完成生产,已出库'),(2113,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',38,'','2017000115','完成生产,已出库'),(2114,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',23,'','2017000115','完成生产,已出库'),(2115,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',25,'','2017000115','完成生产,已出库'),(2116,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',26,'','2017000115','完成生产,已出库'),(2117,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',27,'','2017000115','完成生产,已出库'),(2118,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',29,'','2017000115','完成生产,已出库'),(2119,'2017-03-27',5,'出货越南正川','杨木娇、李秀荣',19,'','2017000115','完成生产,已出库'),(2120,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',67,'','2017000116','完成生产,已出库'),(2121,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',65,'','2017000116','完成生产,已出库'),(2122,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',31,'','2017000116','完成生产,已出库'),(2123,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',32,'','2017000116','完成生产,已出库'),(2124,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',39,'','2017000116','完成生产,已出库'),(2125,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',40,'','2017000116','完成生产,已出库'),(2126,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',41,'','2017000116','完成生产,已出库'),(2127,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',42,'','2017000116','完成生产,已出库'),(2128,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',35,'','2017000116','完成生产,已出库'),(2129,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',37,'','2017000116','完成生产,已出库'),(2130,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',38,'','2017000116','完成生产,已出库'),(2131,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',23,'','2017000116','完成生产,已出库'),(2132,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',25,'','2017000116','完成生产,已出库'),(2133,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',26,'','2017000116','完成生产,已出库'),(2134,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',27,'','2017000116','完成生产,已出库'),(2135,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',29,'','2017000116','完成生产,已出库'),(2136,'2017-03-28',2,'出货越南宏美一厂','杨木娇、李秀荣',19,'','2017000116','完成生产,已出库'),(2137,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',67,'','2017000117','完成生产,已出库'),(2138,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',65,'','2017000117','完成生产,已出库'),(2139,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',31,'','2017000117','完成生产,已出库'),(2140,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',32,'','2017000117','完成生产,已出库'),(2141,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',39,'','2017000117','完成生产,已出库'),(2142,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',40,'','2017000117','完成生产,已出库'),(2143,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',41,'','2017000117','完成生产,已出库'),(2144,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',42,'','2017000117','完成生产,已出库'),(2145,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',35,'','2017000117','完成生产,已出库'),(2146,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',37,'','2017000117','完成生产,已出库'),(2147,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',38,'','2017000117','完成生产,已出库'),(2148,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',23,'','2017000117','完成生产,已出库'),(2149,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',25,'','2017000117','完成生产,已出库'),(2150,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',26,'','2017000117','完成生产,已出库'),(2151,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',27,'','2017000117','完成生产,已出库'),(2152,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',29,'','2017000117','完成生产,已出库'),(2153,'2017-03-28',4,'出货东莞市厚街盛创电脑配件经营部','杨木娇、李秀荣',19,'','2017000117','完成生产,已出库'),(2154,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',67,'','2017000119','完成生产,已出库'),(2155,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',65,'','2017000119','完成生产,已出库'),(2156,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',31,'','2017000119','完成生产,已出库'),(2157,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',32,'','2017000119','完成生产,已出库'),(2158,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',39,'','2017000119','完成生产,已出库'),(2159,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',40,'','2017000119','完成生产,已出库'),(2160,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',41,'','2017000119','完成生产,已出库'),(2161,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',42,'','2017000119','完成生产,已出库'),(2162,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',35,'','2017000119','完成生产,已出库'),(2163,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',37,'','2017000119','完成生产,已出库'),(2164,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',38,'','2017000119','完成生产,已出库'),(2165,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',23,'','2017000119','完成生产,已出库'),(2166,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',25,'','2017000119','完成生产,已出库'),(2167,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',26,'','2017000119','完成生产,已出库'),(2168,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',27,'','2017000119','完成生产,已出库'),(2169,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',29,'','2017000119','完成生产,已出库'),(2170,'2017-03-29',40,'出货东莞市业勤电脑网络有限公司','杨木娇、李秀荣',19,'','2017000119','完成生产,已出库'),(2171,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',67,'','2017000120','完成生产,已出库'),(2172,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',65,'','2017000120','完成生产,已出库'),(2173,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',31,'','2017000120','完成生产,已出库'),(2174,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',32,'','2017000120','完成生产,已出库'),(2175,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',39,'','2017000120','完成生产,已出库'),(2176,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',40,'','2017000120','完成生产,已出库'),(2177,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',41,'','2017000120','完成生产,已出库'),(2178,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',42,'','2017000120','完成生产,已出库'),(2179,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',35,'','2017000120','完成生产,已出库'),(2180,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',37,'','2017000120','完成生产,已出库'),(2181,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',38,'','2017000120','完成生产,已出库'),(2182,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',23,'','2017000120','完成生产,已出库'),(2183,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',25,'','2017000120','完成生产,已出库'),(2184,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',26,'','2017000120','完成生产,已出库'),(2185,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',27,'','2017000120','完成生产,已出库'),(2186,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',29,'','2017000120','完成生产,已出库'),(2187,'2017-03-30',2,'出货越南亚欣','杨木娇、李秀荣',19,'','2017000120','完成生产,已出库'),(2191,'2017-04-01',1,'借测日立化成','杨木娇',1,'2017-3-29',NULL,''),(2192,'2017-04-01',1,'借测桂林辰星办公设备','杨木娇',1,'2017-3-29',NULL,''),(2193,'2017-04-01',2,'借测广州好云','扬木娇',1,'',NULL,''),(2194,'2017-04-01',1,'借测盛元中天','杨木娇',4,'',NULL,''),(2195,'2017-04-01',3,'借测-汉智星','梁嘉和',4,'3-31借',NULL,''),(2196,'2017-04-01',4,'借测-广州好云','杨木娇',4,'',NULL,''),(2197,'2017-02-16',10,'出货东莞市捷诚计算机科技有限公司','杨木娇  李秀荣',18,'','2017000037','完成生产,已出库'),(2199,'2017-02-16',10,'出货东莞市捷诚计算机科技有限公司','杨木娇  李秀荣',24,'','2017000037','完成生产,已出库'),(2200,'2017-02-16',10,'出货东莞市捷诚计算机科技有限公司','杨木娇  李秀荣',1,'','2017000037','完成生产,已出库'),(2201,'2017-02-16',10,'出货东莞市捷诚计算机科技有限公司','杨木娇  李秀荣',4,'','2017000037','完成生产,已出库'),(2203,'2017-04-01',2,'出货颖宝玩具','edit',1,'2017-3-7',NULL,''),(2204,'2017-04-01',2,'出货东莞颖宝玩具','杨木娇',4,'2017-3-7',NULL,''),(2205,'2017-04-01',1,'借测日立化成','杨木娇',4,'2017-3-29',NULL,''),(2206,'2017-04-01',1,'借测桂林辰星办公设备','杨木娇',4,'2017-3-29',NULL,''),(2207,'2017-04-01',1,'出货四川（梁生）','杨木娇',2,'2017-2-19',NULL,''),(2208,'2017-04-01',1,'出货江苏（梁生)','杨木娇',2,'2017-03-16',NULL,''),(2209,'2017-04-01',1,'出货四川（梁生）','杨木娇',7,'2017-02-16',NULL,''),(2210,'2017-04-01',1,'出货江苏（梁生）','edit',8,'2017-03-16',NULL,''),(2211,'2017-04-01',1,'出货四川（梁生）','杨木娇',10,'2017-02-19',NULL,''),(2216,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',65,'','2017000038','完成生产,已出库'),(2217,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',31,'','2017000038','完成生产,已出库'),(2218,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',32,'','2017000038','完成生产,已出库'),(2219,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',39,'','2017000038','完成生产,已出库'),(2220,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',40,'','2017000038','完成生产,已出库'),(2221,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',41,'','2017000038','完成生产,已出库'),(2222,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',42,'','2017000038','完成生产,已出库'),(2223,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',35,'','2017000038','完成生产,已出库'),(2224,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',37,'','2017000038','完成生产,已出库'),(2225,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',38,'','2017000038','完成生产,已出库'),(2226,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',23,'','2017000038','完成生产,已出库'),(2227,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',25,'','2017000038','完成生产,已出库'),(2228,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',26,'','2017000038','完成生产,已出库'),(2229,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',27,'','2017000038','完成生产,已出库'),(2230,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',29,'','2017000038','完成生产,已出库'),(2231,'2017-02-22',10,'出货厦门吉宏包装科技股份有公司黄冈分公司','杨木娇  李秀荣',19,'','2017000038','完成生产,已出库'),(2234,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',67,'','2017000082','完成生产,已出库'),(2235,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',65,'','2017000082','完成生产,已出库'),(2236,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',31,'','2017000082','完成生产,已出库'),(2237,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',32,'','2017000082','完成生产,已出库'),(2238,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',39,'','2017000082','完成生产,已出库'),(2239,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',40,'','2017000082','完成生产,已出库'),(2240,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',41,'','2017000082','完成生产,已出库'),(2241,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',42,'','2017000082','完成生产,已出库'),(2242,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',35,'','2017000082','完成生产,已出库'),(2243,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',37,'','2017000082','完成生产,已出库'),(2244,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',38,'','2017000082','完成生产,已出库'),(2245,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',23,'','2017000082','完成生产,已出库'),(2246,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',25,'','2017000082','完成生产,已出库'),(2247,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',26,'','2017000082','完成生产,已出库'),(2248,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',27,'','2017000082','完成生产,已出库'),(2249,'2017-03-08',10,'出货东莞市东城大友电脑经营部','杨木娇  李秀荣',29,'','2017000082','完成生产,已出库'),(2250,'2017-04-01',10,'出货佛山沃迪机械设备','杨木娇、李秀荣',67,'2017-3-23',NULL,''),(2251,'2017-04-01',1,'出货Enmax Solar I Co., Ltd.(泰国）','杨木娇、李秀荣',67,'2017-3-31',NULL,''),(2252,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',67,'','2017000126','完成生产,已出库'),(2253,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',65,'','2017000126','完成生产,已出库'),(2254,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',31,'','2017000126','完成生产,已出库'),(2255,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',32,'','2017000126','完成生产,已出库'),(2256,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',39,'','2017000126','完成生产,已出库'),(2257,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',40,'','2017000126','完成生产,已出库'),(2258,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',41,'','2017000126','完成生产,已出库'),(2259,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',42,'','2017000126','完成生产,已出库'),(2260,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',35,'','2017000126','完成生产,已出库'),(2261,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',37,'','2017000126','完成生产,已出库'),(2262,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',38,'','2017000126','完成生产,已出库'),(2263,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',23,'','2017000126','完成生产,已出库'),(2264,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',25,'','2017000126','完成生产,已出库'),(2265,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',26,'','2017000126','完成生产,已出库'),(2266,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',27,'','2017000126','完成生产,已出库'),(2267,'2017-03-31',100,'出货东莞思快电脑','杨木娇、李秀荣',29,'','2017000126','完成生产,已出库'),(2268,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',67,'','2017000123','完成生产,已出库'),(2269,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',65,'','2017000123','完成生产,已出库'),(2270,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',31,'','2017000123','完成生产,已出库'),(2271,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',32,'','2017000123','完成生产,已出库'),(2272,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',39,'','2017000123','完成生产,已出库'),(2273,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',40,'','2017000123','完成生产,已出库'),(2274,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',41,'','2017000123','完成生产,已出库'),(2275,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',42,'','2017000123','完成生产,已出库'),(2276,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',35,'','2017000123','完成生产,已出库'),(2277,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',37,'','2017000123','完成生产,已出库'),(2278,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',38,'','2017000123','完成生产,已出库'),(2279,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',23,'','2017000123','完成生产,已出库'),(2280,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',25,'','2017000123','完成生产,已出库'),(2281,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',26,'','2017000123','完成生产,已出库'),(2282,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',27,'','2017000123','完成生产,已出库'),(2283,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',29,'','2017000123','完成生产,已出库'),(2284,'2017-04-05',3,'出货越南弘福','杨木娇、李秀荣',19,'','2017000123','完成生产,已出库'),(2285,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',67,'','2017000122','完成生产,已出库'),(2286,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',65,'','2017000122','完成生产,已出库'),(2287,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',31,'','2017000122','完成生产,已出库'),(2288,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',32,'','2017000122','完成生产,已出库'),(2289,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',39,'','2017000122','完成生产,已出库'),(2290,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',40,'','2017000122','完成生产,已出库'),(2291,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',41,'','2017000122','完成生产,已出库'),(2292,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',42,'','2017000122','完成生产,已出库'),(2293,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',35,'','2017000122','完成生产,已出库'),(2294,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',37,'','2017000122','完成生产,已出库'),(2295,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',38,'','2017000122','完成生产,已出库'),(2296,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',23,'','2017000122','完成生产,已出库'),(2297,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',25,'','2017000122','完成生产,已出库'),(2298,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',26,'','2017000122','完成生产,已出库'),(2299,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',27,'','2017000122','完成生产,已出库'),(2300,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',29,'','2017000122','完成生产,已出库'),(2301,'2017-04-05',29,'出货越南永川','杨木娇、李秀荣',19,'','2017000122','完成生产,已出库'),(2302,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',67,'','2017000121','完成生产,已出库'),(2303,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',65,'','2017000121','完成生产,已出库'),(2304,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',30,'','2017000121','完成生产,已出库'),(2305,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',66,'','2017000121','完成生产,已出库'),(2306,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',39,'','2017000121','完成生产,已出库'),(2307,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',40,'','2017000121','完成生产,已出库'),(2308,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',35,'','2017000121','完成生产,已出库'),(2309,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',37,'','2017000121','完成生产,已出库'),(2310,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',38,'','2017000121','完成生产,已出库'),(2311,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',23,'','2017000121','完成生产,已出库'),(2312,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',25,'','2017000121','完成生产,已出库'),(2313,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',26,'','2017000121','完成生产,已出库'),(2314,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',29,'','2017000121','完成生产,已出库'),(2315,'2017-04-05',30,'出货东莞怡合达自动化科技有限公司','杨木娇、李秀荣',19,'','2017000121','完成生产,已出库'),(2316,'2017-04-05',1,'怡合达维修换新','杨木娇',67,'',NULL,''),(2317,'2017-04-05',1,'怡合达维修换新','杨木娇',65,'',NULL,''),(2318,'2017-04-05',1,'怡合达维修换新','杨木娇',30,'',NULL,''),(2319,'2017-04-05',1,'怡合达维修换新','杨木娇',29,'',NULL,''),(2320,'2017-04-05',1,'怡合达维修换新','杨木娇',39,'',NULL,''),(2321,'2017-04-05',1,'怡合达维修换新','杨木娇',40,'',NULL,''),(2322,'2017-04-05',1,'怡合达维修换新','edit',66,'',NULL,''),(2323,'2017-04-05',1,'出货怡合达','杨木娇',28,'',NULL,''),(2324,'2017-04-05',5,'出货越南弘邦','杨木娇',67,'','2017000131','完成生产,已出库'),(2325,'2017-04-05',5,'出货越南弘邦','杨木娇',65,'','2017000131','完成生产,已出库'),(2326,'2017-04-05',5,'出货越南弘邦','杨木娇',31,'','2017000131','完成生产,已出库'),(2327,'2017-04-05',5,'出货越南弘邦','杨木娇',32,'','2017000131','完成生产,已出库'),(2328,'2017-04-05',5,'出货越南弘邦','杨木娇',39,'','2017000131','完成生产,已出库'),(2329,'2017-04-05',5,'出货越南弘邦','杨木娇',40,'','2017000131','完成生产,已出库'),(2330,'2017-04-05',5,'出货越南弘邦','杨木娇',41,'','2017000131','完成生产,已出库'),(2331,'2017-04-05',5,'出货越南弘邦','杨木娇',42,'','2017000131','完成生产,已出库'),(2332,'2017-04-05',5,'出货越南弘邦','杨木娇',35,'','2017000131','完成生产,已出库'),(2333,'2017-04-05',5,'出货越南弘邦','杨木娇',37,'','2017000131','完成生产,已出库'),(2334,'2017-04-05',5,'出货越南弘邦','杨木娇',38,'','2017000131','完成生产,已出库'),(2335,'2017-04-05',5,'出货越南弘邦','杨木娇',23,'','2017000131','完成生产,已出库'),(2336,'2017-04-05',5,'出货越南弘邦','杨木娇',25,'','2017000131','完成生产,已出库'),(2337,'2017-04-05',5,'出货越南弘邦','杨木娇',26,'','2017000131','完成生产,已出库'),(2338,'2017-04-05',5,'出货越南弘邦','杨木娇',27,'','2017000131','完成生产,已出库'),(2339,'2017-04-05',5,'出货越南弘邦','杨木娇',29,'','2017000131','完成生产,已出库'),(2340,'2017-04-05',5,'出货越南弘邦','杨木娇',19,'','2017000131','完成生产,已出库'),(2341,'2017-04-05',1,'出货越南亚欣','杨木娇',67,'','2017000129','完成生产,已出库'),(2342,'2017-04-05',1,'出货越南亚欣','杨木娇',65,'','2017000129','完成生产,已出库'),(2343,'2017-04-05',1,'出货越南亚欣','杨木娇',31,'','2017000129','完成生产,已出库'),(2344,'2017-04-05',1,'出货越南亚欣','杨木娇',32,'','2017000129','完成生产,已出库'),(2345,'2017-04-05',1,'出货越南亚欣','杨木娇',39,'','2017000129','完成生产,已出库'),(2346,'2017-04-05',1,'出货越南亚欣','杨木娇',40,'','2017000129','完成生产,已出库'),(2347,'2017-04-05',1,'出货越南亚欣','杨木娇',41,'','2017000129','完成生产,已出库'),(2348,'2017-04-05',1,'出货越南亚欣','杨木娇',42,'','2017000129','完成生产,已出库'),(2349,'2017-04-05',1,'出货越南亚欣','杨木娇',35,'','2017000129','完成生产,已出库'),(2350,'2017-04-05',1,'出货越南亚欣','杨木娇',37,'','2017000129','完成生产,已出库'),(2351,'2017-04-05',1,'出货越南亚欣','杨木娇',38,'','2017000129','完成生产,已出库'),(2352,'2017-04-05',1,'出货越南亚欣','杨木娇',23,'','2017000129','完成生产,已出库'),(2353,'2017-04-05',1,'出货越南亚欣','杨木娇',25,'','2017000129','完成生产,已出库'),(2354,'2017-04-05',1,'出货越南亚欣','杨木娇',26,'','2017000129','完成生产,已出库'),(2355,'2017-04-05',1,'出货越南亚欣','杨木娇',27,'','2017000129','完成生产,已出库'),(2356,'2017-04-05',1,'出货越南亚欣','杨木娇',29,'','2017000129','完成生产,已出库'),(2357,'2017-04-05',1,'出货越南亚欣','杨木娇',19,'','2017000129','完成生产,已出库'),(2358,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',67,'','2017000127','完成生产,已出库'),(2359,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',65,'','2017000127','完成生产,已出库'),(2360,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',31,'','2017000127','完成生产,已出库'),(2361,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',32,'','2017000127','完成生产,已出库'),(2362,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',39,'','2017000127','完成生产,已出库'),(2363,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',40,'','2017000127','完成生产,已出库'),(2364,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',41,'','2017000127','完成生产,已出库'),(2365,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',42,'','2017000127','完成生产,已出库'),(2366,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',35,'','2017000127','完成生产,已出库'),(2367,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',37,'','2017000127','完成生产,已出库'),(2368,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',38,'','2017000127','完成生产,已出库'),(2369,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',23,'','2017000127','完成生产,已出库'),(2370,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',25,'','2017000127','完成生产,已出库'),(2371,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',26,'','2017000127','完成生产,已出库'),(2372,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',27,'','2017000127','完成生产,已出库'),(2373,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',29,'','2017000127','完成生产,已出库'),(2374,'2017-04-05',8,'出货东莞厚街盛创电脑配件经营部','杨木娇',19,'','2017000127','完成生产,已出库'),(2375,'2017-04-07',1,'寄回厂家维修','杨木娇',1,'3/22寄出',NULL,''),(2376,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',67,'','2017000132','完成生产,已出库'),(2377,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',65,'','2017000132','完成生产,已出库'),(2378,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',31,'','2017000132','完成生产,已出库'),(2379,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',32,'','2017000132','完成生产,已出库'),(2380,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',39,'','2017000132','完成生产,已出库'),(2381,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',40,'','2017000132','完成生产,已出库'),(2382,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',41,'','2017000132','完成生产,已出库'),(2383,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',42,'','2017000132','完成生产,已出库'),(2384,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',35,'','2017000132','完成生产,已出库'),(2385,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',37,'','2017000132','完成生产,已出库'),(2386,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',38,'','2017000132','完成生产,已出库'),(2387,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',23,'','2017000132','完成生产,已出库'),(2388,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',25,'','2017000132','完成生产,已出库'),(2389,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',26,'','2017000132','完成生产,已出库'),(2390,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',27,'','2017000132','完成生产,已出库'),(2391,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',29,'','2017000132','完成生产,已出库'),(2392,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',46,'','2017000132','完成生产,已出库'),(2393,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',45,'','2017000132','完成生产,已出库'),(2394,'2017-04-07',1,'出货重庆道谷科技有限公司','杨木娇',20,'','2017000132','完成生产,已出库'),(2395,'2017-04-07',3,'出货集成部','杨木娇',1,'科达借测单',NULL,''),(2396,'2017-04-07',3,'出货集成部','杨木娇',4,'科达借测单',NULL,''),(2397,'2017-04-07',3,'出货集成部','杨木娇',18,'科达借测单',NULL,''),(2398,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',67,'','2017000128','完成生产,已出库'),(2399,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',65,'','2017000128','完成生产,已出库'),(2400,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',31,'','2017000128','完成生产,已出库'),(2401,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',32,'','2017000128','完成生产,已出库'),(2402,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',39,'','2017000128','完成生产,已出库'),(2403,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',40,'','2017000128','完成生产,已出库'),(2404,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',41,'','2017000128','完成生产,已出库'),(2405,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',42,'','2017000128','完成生产,已出库'),(2406,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',35,'','2017000128','完成生产,已出库'),(2407,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',37,'','2017000128','完成生产,已出库'),(2408,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',38,'','2017000128','完成生产,已出库'),(2409,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',23,'','2017000128','完成生产,已出库'),(2410,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',25,'','2017000128','完成生产,已出库'),(2411,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',26,'','2017000128','完成生产,已出库'),(2412,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',27,'','2017000128','完成生产,已出库'),(2413,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',29,'','2017000128','完成生产,已出库'),(2414,'2017-04-08',7,'出货深圳市神州动力数码有限公司','杨木娇',19,'','2017000128','完成生产,已出库'),(2432,'2017-04-10',35,'出货网神信息技术（北京）股份有限公司','杨木娇、李秀荣',18,'','2017000142','完成生产,已出库'),(2434,'2017-04-10',35,'出货网神信息技术（北京）股份有限公司','杨木娇、李秀荣',22,'','2017000142','完成生产,已出库'),(2435,'2017-04-10',35,'出货网神信息技术（北京）股份有限公司','杨木娇、李秀荣',2,'','2017000142','完成生产,已出库'),(2436,'2017-04-10',35,'出货网神信息技术（北京）股份有限公司','杨木娇、李秀荣',8,'','2017000142','完成生产,已出库'),(2439,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',67,'','2017000143','完成生产,已出库'),(2440,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',65,'','2017000143','完成生产,已出库'),(2441,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',31,'','2017000143','完成生产,已出库'),(2442,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',32,'','2017000143','完成生产,已出库'),(2443,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',39,'','2017000143','完成生产,已出库'),(2444,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',40,'','2017000143','完成生产,已出库'),(2445,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',41,'','2017000143','完成生产,已出库'),(2446,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',42,'','2017000143','完成生产,已出库'),(2447,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',35,'','2017000143','完成生产,已出库'),(2448,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',37,'','2017000143','完成生产,已出库'),(2449,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',38,'','2017000143','完成生产,已出库'),(2450,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',23,'','2017000143','完成生产,已出库'),(2451,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',25,'','2017000143','完成生产,已出库'),(2452,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',26,'','2017000143','完成生产,已出库'),(2453,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',27,'','2017000143','完成生产,已出库'),(2454,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',29,'','2017000143','完成生产,已出库'),(2455,'2017-04-08',10,'出货荆州市云鹏计算机科技有限公司','杨木娇',19,'','2017000143','完成生产,已出库'),(2456,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',67,'','2017000145','完成生产,已出库'),(2457,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',65,'','2017000145','完成生产,已出库'),(2458,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',31,'','2017000145','完成生产,已出库'),(2459,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',32,'','2017000145','完成生产,已出库'),(2460,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',39,'','2017000145','完成生产,已出库'),(2461,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',40,'','2017000145','完成生产,已出库'),(2462,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',41,'','2017000145','完成生产,已出库'),(2463,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',42,'','2017000145','完成生产,已出库'),(2464,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',35,'','2017000145','完成生产,已出库'),(2465,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',37,'','2017000145','完成生产,已出库'),(2466,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',38,'','2017000145','完成生产,已出库'),(2467,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',23,'','2017000145','完成生产,已出库'),(2468,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',25,'','2017000145','完成生产,已出库'),(2469,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',26,'','2017000145','完成生产,已出库'),(2470,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',27,'','2017000145','完成生产,已出库'),(2471,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',29,'','2017000145','完成生产,已出库'),(2472,'2017-04-08',10,'出货深圳市神州动力数码有限公司','杨木娇',19,'','2017000145','完成生产,已出库'),(2473,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',67,'','2017000133','完成生产,已出库'),(2474,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',65,'','2017000133','完成生产,已出库'),(2475,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',31,'','2017000133','完成生产,已出库'),(2476,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',32,'','2017000133','完成生产,已出库'),(2477,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',39,'','2017000133','完成生产,已出库'),(2478,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',40,'','2017000133','完成生产,已出库'),(2479,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',41,'','2017000133','完成生产,已出库'),(2480,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',42,'','2017000133','完成生产,已出库'),(2481,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',35,'','2017000133','完成生产,已出库'),(2482,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',37,'','2017000133','完成生产,已出库'),(2483,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',38,'','2017000133','完成生产,已出库'),(2484,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',23,'','2017000133','完成生产,已出库'),(2485,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',25,'','2017000133','完成生产,已出库'),(2486,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',26,'','2017000133','完成生产,已出库'),(2487,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',27,'','2017000133','完成生产,已出库'),(2488,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',29,'','2017000133','完成生产,已出库'),(2489,'2017-04-10',6,'出货越南永川','杨木娇、李秀荣',19,'','2017000133','完成生产,已出库'),(2490,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',67,'','2017000134','完成生产,已出库'),(2491,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',65,'','2017000134','完成生产,已出库'),(2492,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',31,'','2017000134','完成生产,已出库'),(2493,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',32,'','2017000134','完成生产,已出库'),(2494,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',39,'','2017000134','完成生产,已出库'),(2495,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',40,'','2017000134','完成生产,已出库'),(2496,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',41,'','2017000134','完成生产,已出库'),(2497,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',42,'','2017000134','完成生产,已出库'),(2498,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',35,'','2017000134','完成生产,已出库'),(2499,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',37,'','2017000134','完成生产,已出库'),(2500,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',38,'','2017000134','完成生产,已出库'),(2501,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',23,'','2017000134','完成生产,已出库'),(2502,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',25,'','2017000134','完成生产,已出库'),(2503,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',26,'','2017000134','完成生产,已出库'),(2504,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',27,'','2017000134','完成生产,已出库'),(2505,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',29,'','2017000134','完成生产,已出库'),(2506,'2017-04-10',5,'出货中山精美鞋业有限公司','杨木娇、李秀荣',19,'','2017000134','完成生产,已出库'),(2507,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',67,'','2017000136','完成生产,已出库'),(2508,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',65,'','2017000136','完成生产,已出库'),(2509,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',31,'','2017000136','完成生产,已出库'),(2510,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',32,'','2017000136','完成生产,已出库'),(2511,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',39,'','2017000136','完成生产,已出库'),(2512,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',40,'','2017000136','完成生产,已出库'),(2513,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',41,'','2017000136','完成生产,已出库'),(2514,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',42,'','2017000136','完成生产,已出库'),(2515,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',35,'','2017000136','完成生产,已出库'),(2516,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',37,'','2017000136','完成生产,已出库'),(2517,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',38,'','2017000136','完成生产,已出库'),(2518,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',23,'','2017000136','完成生产,已出库'),(2519,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',25,'','2017000136','完成生产,已出库'),(2520,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',26,'','2017000136','完成生产,已出库'),(2521,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',27,'','2017000136','完成生产,已出库'),(2522,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',29,'','2017000136','完成生产,已出库'),(2523,'2017-04-10',1,'出货越南百倢','杨木娇、李秀荣',19,'','2017000136','完成生产,已出库'),(2524,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000140','正在生产中...'),(2525,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000140','正在生产中...'),(2526,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000140','正在生产中...'),(2527,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000140','正在生产中...'),(2528,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000140','正在生产中...'),(2529,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000140','正在生产中...'),(2530,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000140','正在生产中...'),(2531,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000140','正在生产中...'),(2532,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000140','正在生产中...'),(2533,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000140','正在生产中...'),(2534,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000140','正在生产中...'),(2535,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000140','正在生产中...'),(2536,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',25,'','2017000140','正在生产中...'),(2537,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000140','正在生产中...'),(2538,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000140','正在生产中...'),(2539,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000140','正在生产中...'),(2540,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000140','正在生产中...'),(2541,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000141','完成生产,已出库'),(2542,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000141','完成生产,已出库'),(2543,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000141','完成生产,已出库'),(2544,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000141','完成生产,已出库'),(2545,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000141','完成生产,已出库'),(2546,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000141','完成生产,已出库'),(2547,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000141','完成生产,已出库'),(2548,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000141','完成生产,已出库'),(2549,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000141','完成生产,已出库'),(2550,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000141','完成生产,已出库'),(2551,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000141','完成生产,已出库'),(2552,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000141','完成生产,已出库'),(2553,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',25,'','2017000141','完成生产,已出库'),(2554,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000141','完成生产,已出库'),(2555,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000141','完成生产,已出库'),(2556,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000141','完成生产,已出库'),(2557,'2017-04-10',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000141','完成生产,已出库'),(2559,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',67,'','2017000144','完成生产,已出库'),(2560,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',65,'','2017000144','完成生产,已出库'),(2561,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',31,'','2017000144','完成生产,已出库'),(2562,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',32,'','2017000144','完成生产,已出库'),(2563,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',39,'','2017000144','完成生产,已出库'),(2564,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',40,'','2017000144','完成生产,已出库'),(2565,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',41,'','2017000144','完成生产,已出库'),(2566,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',42,'','2017000144','完成生产,已出库'),(2567,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',35,'','2017000144','完成生产,已出库'),(2568,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',37,'','2017000144','完成生产,已出库'),(2569,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',38,'','2017000144','完成生产,已出库'),(2570,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',23,'','2017000144','完成生产,已出库'),(2571,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',25,'','2017000144','完成生产,已出库'),(2572,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',26,'','2017000144','完成生产,已出库'),(2573,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',27,'','2017000144','完成生产,已出库'),(2574,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',29,'','2017000144','完成生产,已出库'),(2575,'2017-04-12',8,'出货东莞厚街盛创电脑配件经营部','杨木娇、李秀荣',19,'','2017000144','完成生产,已出库'),(2576,'2017-04-12',1,'内部使用（梁智轩）','梁智轩',2,'',NULL,''),(2581,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',67,'出售淘宝','2017000151','完成生产,已出库'),(2582,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',65,'','2017000151','完成生产,已出库'),(2583,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',31,'','2017000151','完成生产,已出库'),(2584,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',32,'','2017000151','完成生产,已出库'),(2585,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',39,'','2017000151','完成生产,已出库'),(2586,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',40,'','2017000151','完成生产,已出库'),(2587,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',41,'','2017000151','完成生产,已出库'),(2588,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',42,'','2017000151','完成生产,已出库'),(2589,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',35,'','2017000151','完成生产,已出库'),(2590,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',37,'','2017000151','完成生产,已出库'),(2591,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',38,'','2017000151','完成生产,已出库'),(2592,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',23,'','2017000151','完成生产,已出库'),(2593,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',25,'','2017000151','完成生产,已出库'),(2594,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',26,'','2017000151','完成生产,已出库'),(2595,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',27,'','2017000151','完成生产,已出库'),(2596,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',29,'','2017000151','完成生产,已出库'),(2597,'2017-04-12',4,'出货梁富荣','杨木娇、李秀荣',19,'','2017000151','完成生产,已出库'),(2598,'2017-04-12',1,'借测（安徽伟迈）','杨木娇',1,'',NULL,''),(2599,'2017-04-12',1,'借测（安徽伟迈）','杨木娇',4,'',NULL,''),(2600,'2017-04-14',2,'借测广州蓝爵','杨木娇',1,'4月13日借出',NULL,''),(2601,'2017-04-14',1,'借测广州亦云','杨木娇',1,'4月13日借出',NULL,''),(2602,'2017-04-14',2,'借测广州蓝爵','杨木娇',4,'4月13日寄出',NULL,''),(2603,'2017-04-14',1,'借测广州亦云','杨木娇',4,'4月13 日借出',NULL,''),(2604,'2017-04-14',1,'借测云南驰宏光电','杨木娇',4,'',NULL,''),(2605,'2017-04-14',3,'公司展示厅使用','杨木娇',4,'',NULL,''),(2606,'2017-04-14',1,'借测云南驰宏光电','杨木娇',1,'',NULL,''),(2607,'2017-04-14',3,'公司展示厅使用','杨木娇',1,'',NULL,''),(2608,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',67,'','2017000153','完成生产,已出库'),(2609,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',65,'','2017000153','完成生产,已出库'),(2610,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',31,'','2017000153','完成生产,已出库'),(2611,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',32,'','2017000153','完成生产,已出库'),(2612,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',39,'','2017000153','完成生产,已出库'),(2613,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',40,'','2017000153','完成生产,已出库'),(2614,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',41,'','2017000153','完成生产,已出库'),(2615,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',42,'','2017000153','完成生产,已出库'),(2616,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',35,'','2017000153','完成生产,已出库'),(2617,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',37,'','2017000153','完成生产,已出库'),(2618,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',38,'','2017000153','完成生产,已出库'),(2619,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',23,'','2017000153','完成生产,已出库'),(2620,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',25,'','2017000153','完成生产,已出库'),(2621,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',26,'','2017000153','完成生产,已出库'),(2622,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',27,'','2017000153','完成生产,已出库'),(2623,'2017-04-14',100,'出货东莞思快电脑','杨木娇、李秀荣',29,'','2017000153','完成生产,已出库'),(2624,'2017-04-14',25,'出货广东众生药业股份有限公司','杨木娇、李秀荣',18,'','2017000137','完成生产,已出库'),(2626,'2017-04-14',25,'出货广东众生药业股份有限公司','杨木娇、李秀荣',24,'','2017000137','完成生产,已出库'),(2627,'2017-04-14',25,'出货广东众生药业股份有限公司','杨木娇、李秀荣',1,'','2017000137','完成生产,已出库'),(2628,'2017-04-14',25,'出货广东众生药业股份有限公司','杨木娇、李秀荣',4,'','2017000137','完成生产,已出库'),(2631,'2017-04-14',2,'山东中盈维修换机','杨木娇',67,'',NULL,''),(2632,'2017-04-14',10,'出货神州动力','杨木娇',54,'4月8日寄出',NULL,''),(2633,'2017-04-14',10,'出货神州动力','杨木娇',9,'4月8日寄出',NULL,''),(2634,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',67,'','2017000154','完成生产,已出库'),(2635,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',65,'','2017000154','完成生产,已出库'),(2636,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',31,'','2017000154','完成生产,已出库'),(2637,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',32,'','2017000154','完成生产,已出库'),(2638,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',39,'','2017000154','完成生产,已出库'),(2639,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',40,'','2017000154','完成生产,已出库'),(2640,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',41,'','2017000154','完成生产,已出库'),(2641,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',42,'','2017000154','完成生产,已出库'),(2642,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',35,'','2017000154','完成生产,已出库'),(2643,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',37,'','2017000154','完成生产,已出库'),(2644,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',38,'','2017000154','完成生产,已出库'),(2645,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',23,'','2017000154','完成生产,已出库'),(2646,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',25,'','2017000154','完成生产,已出库'),(2647,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',26,'','2017000154','完成生产,已出库'),(2648,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',27,'','2017000154','完成生产,已出库'),(2649,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',29,'','2017000154','完成生产,已出库'),(2650,'2017-04--18',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',19,'','2017000154','完成生产,已出库'),(2651,'2017-04-20',5,'借测广州京信通信','杨木娇',1,'4月17日寄出',NULL,''),(2652,'2017-04-20',1,'借测安徽伟迈','杨木娇',1,'4月18日寄出',NULL,''),(2653,'2017-04-20',5,'借测广州京信通信','杨木娇',4,'4月17日寄出',NULL,''),(2654,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',67,'','2017000156','完成生产,已出库'),(2655,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',65,'','2017000156','完成生产,已出库'),(2656,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',30,'','2017000156','完成生产,已出库'),(2657,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',66,'','2017000156','完成生产,已出库'),(2658,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',39,'','2017000156','完成生产,已出库'),(2659,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',40,'','2017000156','完成生产,已出库'),(2660,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',35,'','2017000156','完成生产,已出库'),(2661,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',37,'','2017000156','完成生产,已出库'),(2662,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',38,'','2017000156','完成生产,已出库'),(2663,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',23,'','2017000156','完成生产,已出库'),(2665,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',26,'','2017000156','完成生产,已出库'),(2666,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',29,'','2017000156','完成生产,已出库'),(2667,'2017-04-20',2,'出货远东制杯（深圳）有限公司','杨木娇、李秀荣',19,'','2017000156','完成生产,已出库'),(2668,'2017-04-20',2,'借测汉智星','杨木娇',67,'4月18日寄出',NULL,''),(2669,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',67,'','2017000152','完成生产,已出库'),(2670,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',65,'','2017000152','完成生产,已出库'),(2671,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',31,'','2017000152','完成生产,已出库'),(2672,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',32,'','2017000152','完成生产,已出库'),(2673,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',39,'','2017000152','完成生产,已出库'),(2674,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',40,'','2017000152','完成生产,已出库'),(2675,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',41,'','2017000152','完成生产,已出库'),(2676,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',42,'','2017000152','完成生产,已出库'),(2677,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',35,'','2017000152','完成生产,已出库'),(2678,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',37,'','2017000152','完成生产,已出库'),(2679,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',38,'','2017000152','完成生产,已出库'),(2680,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',23,'','2017000152','完成生产,已出库'),(2681,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',25,'','2017000152','完成生产,已出库'),(2682,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',26,'','2017000152','完成生产,已出库'),(2683,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',27,'','2017000152','完成生产,已出库'),(2684,'2017-04-22',14,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',29,'','2017000152','完成生产,已出库'),(2685,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',67,'','2017000160','完成生产,已出库'),(2686,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',65,'','2017000160','完成生产,已出库'),(2687,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',31,'','2017000160','完成生产,已出库'),(2688,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',32,'','2017000160','完成生产,已出库'),(2689,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',39,'','2017000160','完成生产,已出库'),(2690,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',40,'','2017000160','完成生产,已出库'),(2691,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',41,'','2017000160','完成生产,已出库'),(2692,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',42,'','2017000160','完成生产,已出库'),(2693,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',35,'','2017000160','完成生产,已出库'),(2694,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',37,'','2017000160','完成生产,已出库'),(2695,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',38,'','2017000160','完成生产,已出库'),(2696,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',26,'','2017000160','完成生产,已出库'),(2697,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',27,'','2017000160','完成生产,已出库'),(2698,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',29,'','2017000160','完成生产,已出库'),(2699,'2017-04-25',6,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',19,'','2017000160','完成生产,已出库'),(2700,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',67,'','2017000159','完成生产,已出库'),(2701,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',65,'','2017000159','完成生产,已出库'),(2702,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',31,'','2017000159','完成生产,已出库'),(2703,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',32,'','2017000159','完成生产,已出库'),(2704,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',39,'','2017000159','完成生产,已出库'),(2705,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',40,'','2017000159','完成生产,已出库'),(2706,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',41,'','2017000159','完成生产,已出库'),(2707,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',42,'','2017000159','完成生产,已出库'),(2708,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',35,'','2017000159','完成生产,已出库'),(2709,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',37,'','2017000159','完成生产,已出库'),(2710,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',38,'','2017000159','完成生产,已出库'),(2711,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',26,'','2017000159','完成生产,已出库'),(2712,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',27,'','2017000159','完成生产,已出库'),(2713,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',29,'','2017000159','完成生产,已出库'),(2714,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',19,'','2017000159','完成生产,已出库'),(2715,'2017-04-25',3,'出货四川金网通电子科技有限公司','杨木娇、李秀荣',23,'','2017000159','完成生产,已出库'),(2716,'2017-04-25',10,'出货嘉兴市钜翔信息科技有限公司','杨木娇、李秀荣',18,'','2017000157','完成生产,已出库'),(2718,'2017-04-25',10,'出货嘉兴市钜翔信息科技有限公司','杨木娇、李秀荣',24,'','2017000157','完成生产,已出库'),(2724,'2017-04-25',6,'出货东莞市冠中信息技术','edit',5,'',NULL,''),(2735,'2017-04-25',10,'出货嘉兴市钜翔信息科技有限公司','杨木娇、李秀荣',1,'','2017000157','完成生产,已出库'),(2736,'2017-04-25',10,'出货嘉兴市钜翔信息科技有限公司','杨木娇、李秀荣',4,'','2017000157','完成生产,已出库'),(2742,'2017-04-25',1,'内部测试（梁生）','edit',8,'4月中旬',NULL,''),(2743,'2017-04-26',1,'借测云宏','杨木娇',1,'',NULL,''),(2744,'2017-04-26',1,'借测云宏','杨木娇',4,'',NULL,''),(2745,'2017-04-26',1,'出货南京铠硕信息科技','李秀荣',28,'2月15号',NULL,''),(2746,'2017-04-26',1,'出货汉普科技','李秀荣',28,'3月6号',NULL,''),(2747,'2017-04-26',3,'出货东莞港芝电子制造厂有限公司','李秀荣',28,'3月24 号',NULL,''),(2748,'2017-04-26',3,'出货东莞怡合达自动化科技有限公司','李秀荣',28,'3月17号',NULL,''),(2749,'2017-04-26',2,'出货业勤电脑网络有限公司','李秀荣',28,'3月29号',NULL,''),(2750,'2017-04-26',5,'出货东莞思快电脑','李秀荣',28,'3月31号',NULL,''),(2751,'2017-04-26',1,'出货越南永川','李秀荣',28,'4月5号',NULL,''),(2752,'2017-04-26',2,'出货东莞怡合达自动化科技有限公司','李秀荣',28,'4月5号',NULL,''),(2753,'2017-04-26',5,'出货东莞思快电脑','李秀荣',28,'4月14号',NULL,''),(2754,'2017-04-26',1,'出货东城大友','李秀荣',28,'4月1 4号',NULL,''),(2755,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',67,'其中一台维修换新','2017000165','完成生产,已出库'),(2756,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',65,'','2017000165','完成生产,已出库'),(2757,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',31,'','2017000165','完成生产,已出库'),(2758,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',32,'','2017000165','完成生产,已出库'),(2759,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',39,'','2017000165','完成生产,已出库'),(2760,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',40,'','2017000165','完成生产,已出库'),(2761,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',41,'','2017000165','完成生产,已出库'),(2762,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',42,'','2017000165','完成生产,已出库'),(2764,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',37,'','2017000165','完成生产,已出库'),(2765,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',38,'','2017000165','完成生产,已出库'),(2766,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',26,'','2017000165','完成生产,已出库'),(2767,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',27,'','2017000165','完成生产,已出库'),(2768,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',29,'','2017000165','完成生产,已出库'),(2769,'2017.04.28',7,'出货四川金网通电子科技有限公司','李秀荣',23,'','2017000165','完成生产,已出库'),(2770,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',67,'','2017000166','完成生产,已出库'),(2771,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',65,'','2017000166','完成生产,已出库'),(2772,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',31,'','2017000166','完成生产,已出库'),(2773,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',32,'','2017000166','完成生产,已出库'),(2774,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',39,'','2017000166','完成生产,已出库'),(2775,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',40,'','2017000166','完成生产,已出库'),(2776,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',41,'','2017000166','完成生产,已出库'),(2777,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',42,'','2017000166','完成生产,已出库'),(2778,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',35,'','2017000166','完成生产,已出库'),(2779,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',37,'','2017000166','完成生产,已出库'),(2780,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',38,'','2017000166','完成生产,已出库'),(2781,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',26,'','2017000166','完成生产,已出库'),(2782,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',27,'','2017000166','完成生产,已出库'),(2783,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',29,'','2017000166','完成生产,已出库'),(2786,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',20,'','2017000166','完成生产,已出库'),(2787,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',21,'','2017000166','完成生产,已出库'),(2791,'2017-05-02',7,'出货  四川金网通','李秀荣',70,'4月28号',NULL,''),(2792,'2017-05-02',1,'借测厦门楷睿','杨木娇',1,'4月26日借出',NULL,''),(2793,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',19,'','2017000166','完成生产,已出库'),(2794,'2017.04.28',8,'出货株洲高科火炬信息服务有限公司','李秀荣',23,'','2017000166','完成生产,已出库'),(2795,'2017-05-02',1,'借测厦门楷睿','杨木娇',4,'4月26日借出',NULL,''),(2796,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',18,'','2017000167','完成生产,已出库'),(2797,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',20,'','2017000167','完成生产,已出库'),(2798,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',21,'','2017000167','完成生产,已出库'),(2799,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',22,'','2017000167','完成生产,已出库'),(2800,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',1,'','2017000167','完成生产,已出库'),(2801,'2017-04-28',6,'出货株洲高科火炬信息服务有限公司','李秀荣',4,'','2017000167','完成生产,已出库'),(2804,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',67,'','2017000169','完成生产,已出库'),(2805,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000169','完成生产,已出库'),(2806,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',31,'','2017000169','完成生产,已出库'),(2807,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',32,'','2017000169','完成生产,已出库'),(2808,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',39,'','2017000169','完成生产,已出库'),(2809,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',40,'','2017000169','完成生产,已出库'),(2810,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',41,'','2017000169','完成生产,已出库'),(2811,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',42,'','2017000169','完成生产,已出库'),(2812,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',35,'','2017000169','完成生产,已出库'),(2813,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',37,'','2017000169','完成生产,已出库'),(2814,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',38,'','2017000169','完成生产,已出库'),(2815,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',26,'','2017000169','完成生产,已出库'),(2816,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',27,'','2017000169','完成生产,已出库'),(2817,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',29,'','2017000169','完成生产,已出库'),(2818,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',19,'','2017000169','完成生产,已出库'),(2819,'2017-05-02',100,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',23,'','2017000169','完成生产,已出库'),(2835,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',67,'','2017000171','完成生产,已出库'),(2836,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',65,'','2017000171','完成生产,已出库'),(2837,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',31,'','2017000171','完成生产,已出库'),(2838,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',32,'','2017000171','完成生产,已出库'),(2839,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',39,'','2017000171','完成生产,已出库'),(2840,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',40,'','2017000171','完成生产,已出库'),(2841,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',41,'','2017000171','完成生产,已出库'),(2842,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',42,'','2017000171','完成生产,已出库'),(2843,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',35,'','2017000171','完成生产,已出库'),(2844,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',37,'','2017000171','完成生产,已出库'),(2845,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',38,'','2017000171','完成生产,已出库'),(2846,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',26,'','2017000171','完成生产,已出库'),(2847,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',27,'','2017000171','完成生产,已出库'),(2848,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',29,'','2017000171','完成生产,已出库'),(2849,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',46,'','2017000171','完成生产,已出库'),(2850,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',45,'','2017000171','完成生产,已出库'),(2851,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',20,'','2017000171','完成生产,已出库'),(2852,'2017-05-03',9,'出货重庆道谷科技有限公司','杨木娇、李秀荣',25,'','2017000171','完成生产,已出库'),(2853,'2017-05-03',3,'出货  系统集成部订单','李秀荣',28,'5月2号',NULL,''),(2854,'2017-05-03',10,'搬新办公室','李秀荣',28,'4月16号',NULL,''),(2855,'2017-05-03',1,'广东联迪维修换硬盘','杨木娇',5,'不良硬盘已发厂家维修',NULL,''),(2856,'2017-05-03',1,'中国电子维修换硬盘','杨木娇',4,'不良硬盘已发厂家维修',NULL,''),(2857,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',67,'','2017000168','完成生产,已出库'),(2858,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',65,'','2017000168','完成生产,已出库'),(2859,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',30,'','2017000168','完成生产,已出库'),(2860,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',66,'','2017000168','完成生产,已出库'),(2861,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',39,'','2017000168','完成生产,已出库'),(2862,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',40,'','2017000168','完成生产,已出库'),(2863,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',35,'','2017000168','完成生产,已出库'),(2864,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',37,'','2017000168','完成生产,已出库'),(2865,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',38,'','2017000168','完成生产,已出库'),(2866,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',23,'','2017000168','完成生产,已出库'),(2868,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',26,'','2017000168','完成生产,已出库'),(2869,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',29,'','2017000168','完成生产,已出库'),(2870,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',19,'','2017000168','完成生产,已出库'),(2871,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',20,'','2017000168','完成生产,已出库'),(2872,'2017-05-04',3,'出货东莞绿洲鞋业有限公司','杨木娇、李秀荣',21,'','2017000168','完成生产,已出库'),(2873,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',67,'','2017000164','完成生产,已出库'),(2874,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',65,'','2017000164','完成生产,已出库'),(2875,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',31,'','2017000164','完成生产,已出库'),(2876,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',32,'','2017000164','完成生产,已出库'),(2877,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',39,'','2017000164','完成生产,已出库'),(2878,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',40,'','2017000164','完成生产,已出库'),(2879,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',41,'','2017000164','完成生产,已出库'),(2880,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',42,'','2017000164','完成生产,已出库'),(2881,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',35,'','2017000164','完成生产,已出库'),(2882,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',37,'','2017000164','完成生产,已出库'),(2883,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',38,'','2017000164','完成生产,已出库'),(2884,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',26,'','2017000164','完成生产,已出库'),(2885,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',27,'','2017000164','完成生产,已出库'),(2886,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',29,'','2017000164','完成生产,已出库'),(2887,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',19,'','2017000164','完成生产,已出库'),(2888,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',21,'','2017000164','完成生产,已出库'),(2889,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',20,'','2017000164','完成生产,已出库'),(2890,'2017-05-05',110,'出货四川新环佳科技发展有限公司','杨木娇、李秀荣',23,'','2017000164','完成生产,已出库'),(2895,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',67,'','2017000172','完成生产,已出库'),(2896,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',65,'','2017000172','完成生产,已出库'),(2897,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',31,'','2017000172','完成生产,已出库'),(2898,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',32,'','2017000172','完成生产,已出库'),(2899,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',39,'','2017000172','完成生产,已出库'),(2900,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',40,'','2017000172','完成生产,已出库'),(2901,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',41,'','2017000172','完成生产,已出库'),(2902,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',42,'','2017000172','完成生产,已出库'),(2903,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',35,'','2017000172','完成生产,已出库'),(2904,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',37,'','2017000172','完成生产,已出库'),(2905,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',38,'','2017000172','完成生产,已出库'),(2906,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',26,'','2017000172','完成生产,已出库'),(2907,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',27,'','2017000172','完成生产,已出库'),(2908,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',29,'','2017000172','完成生产,已出库'),(2909,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',46,'','2017000172','完成生产,已出库'),(2910,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',45,'','2017000172','完成生产,已出库'),(2911,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',20,'','2017000172','完成生产,已出库'),(2912,'2017-05-08',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',25,'','2017000172','完成生产,已出库'),(2913,'2017-05-09',1,'借测广州知惠云','扬木娇',1,'',NULL,''),(2914,'2017-05-09',1,'借测广州知慧云','扬木娇',4,'',NULL,''),(2915,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',67,'','2017000173','完成生产,已出库'),(2916,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',65,'','2017000173','完成生产,已出库'),(2917,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',31,'','2017000173','完成生产,已出库'),(2918,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',32,'','2017000173','完成生产,已出库'),(2919,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',39,'','2017000173','完成生产,已出库'),(2920,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',40,'','2017000173','完成生产,已出库'),(2921,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',41,'','2017000173','完成生产,已出库'),(2922,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',42,'','2017000173','完成生产,已出库'),(2923,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',35,'','2017000173','完成生产,已出库'),(2924,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',37,'','2017000173','完成生产,已出库'),(2925,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',38,'','2017000173','完成生产,已出库'),(2926,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',26,'','2017000173','完成生产,已出库'),(2927,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',27,'','2017000173','完成生产,已出库'),(2928,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',29,'','2017000173','完成生产,已出库'),(2929,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',46,'','2017000173','完成生产,已出库'),(2930,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',45,'','2017000173','完成生产,已出库'),(2931,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',20,'','2017000173','完成生产,已出库'),(2932,'2017-05-10',1,'出货重庆道谷科技有限公司','杨木娇、李秀荣',25,'','2017000173','完成生产,已出库'),(2933,'2017-05-11',3,'四川空港口岸服务中心','杨木娇',60,'',NULL,''),(2934,'2017-05-11',1,'四川空港口岸服务中心','杨木娇',13,'',NULL,''),(2935,'2017-05-11',30,'出货  朱晓平','李秀荣',28,'',NULL,''),(2936,'2017-05-11',6,'出货四川新环佳科技发展有限公司','李秀荣',28,'5月5号',NULL,''),(2937,'2017-05-11',2,'出货四川成都','杨木娇',2,'',NULL,''),(2938,'2017-05-11',2,'出货四川成都','杨木娇',7,'李晓东',NULL,''),(2939,'2017-05-11',2,'出货四川成都','杨木娇',10,'李晓东',NULL,''),(2940,'2017-05-11',1,'出货四川金星压缩机制造有限公司','杨木娇',67,'出售淘宝','2017000174','完成生产,已出库'),(2941,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',65,'','2017000174','完成生产,已出库'),(2942,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',31,'','2017000174','完成生产,已出库'),(2943,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',32,'','2017000174','完成生产,已出库'),(2944,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',39,'','2017000174','完成生产,已出库'),(2945,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',40,'','2017000174','完成生产,已出库'),(2946,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',41,'','2017000174','完成生产,已出库'),(2947,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',42,'','2017000174','完成生产,已出库'),(2948,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',35,'','2017000174','完成生产,已出库'),(2949,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',37,'','2017000174','完成生产,已出库'),(2950,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',38,'','2017000174','完成生产,已出库'),(2951,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',26,'','2017000174','完成生产,已出库'),(2952,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',27,'','2017000174','完成生产,已出库'),(2953,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',29,'','2017000174','完成生产,已出库'),(2954,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',19,'','2017000174','完成生产,已出库'),(2955,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',21,'','2017000174','完成生产,已出库'),(2956,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',20,'','2017000174','完成生产,已出库'),(2957,'2017-05-11',1,'出货四川金星压缩机制造有限公司','2017-05-11',23,'','2017000174','完成生产,已出库'),(2958,'2017-05-12',3,'中国电子不良更换','杨木娇',4,'不良已寄回，不可用',NULL,''),(2965,'2017-05-13',1,'出差测试用','梁生',2,'',NULL,''),(2984,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',67,'出售淘宝','2017000178','完成生产,已出库'),(2985,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',65,'','2017000178','完成生产,已出库'),(2986,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',31,'','2017000178','完成生产,已出库'),(2987,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',32,'','2017000178','完成生产,已出库'),(2988,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',39,'','2017000178','完成生产,已出库'),(2989,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',40,'','2017000178','完成生产,已出库'),(2990,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',41,'','2017000178','完成生产,已出库'),(2991,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',42,'','2017000178','完成生产,已出库'),(2992,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',35,'','2017000178','完成生产,已出库'),(2993,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',37,'','2017000178','完成生产,已出库'),(2994,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',38,'','2017000178','完成生产,已出库'),(2995,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',26,'','2017000178','完成生产,已出库'),(2996,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',27,'','2017000178','完成生产,已出库'),(2997,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',29,'','2017000178','完成生产,已出库'),(2998,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',21,'','2017000178','完成生产,已出库'),(2999,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',20,'','2017000178','完成生产,已出库'),(3000,'2017-05-16',1,'出货 李经钢','杨木娇、李秀荣',23,'','2017000178','完成生产,已出库'),(3001,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',67,'','2017000179','完成生产,已出库'),(3002,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',65,'','2017000179','完成生产,已出库'),(3003,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',31,'','2017000179','完成生产,已出库'),(3004,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',32,'','2017000179','完成生产,已出库'),(3005,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',39,'','2017000179','完成生产,已出库'),(3006,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',40,'','2017000179','完成生产,已出库'),(3007,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',41,'','2017000179','完成生产,已出库'),(3008,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',42,'','2017000179','完成生产,已出库'),(3009,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',35,'','2017000179','完成生产,已出库'),(3010,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',37,'','2017000179','完成生产,已出库'),(3011,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',38,'','2017000179','完成生产,已出库'),(3012,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',26,'','2017000179','完成生产,已出库'),(3013,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',27,'','2017000179','完成生产,已出库'),(3014,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',29,'','2017000179','完成生产,已出库'),(3015,'2017-05-17',6,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',25,'','2017000179','完成生产,已出库'),(3018,'2017-05-17',5,'出货厦门吉宏包装','杨木娇',67,'2017-03-04出货',NULL,''),(3019,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',67,'','2017000081','完成生产,已出库'),(3020,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',65,'','2017000081','完成生产,已出库'),(3021,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',31,'','2017000081','完成生产,已出库'),(3022,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',32,'','2017000081','完成生产,已出库'),(3023,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',39,'','2017000081','完成生产,已出库'),(3024,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',40,'','2017000081','完成生产,已出库'),(3025,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',41,'','2017000081','完成生产,已出库'),(3026,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',42,'','2017000081','完成生产,已出库'),(3027,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',35,'','2017000081','完成生产,已出库'),(3028,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',37,'','2017000081','完成生产,已出库'),(3029,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',38,'','2017000081','完成生产,已出库'),(3030,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',26,'','2017000081','完成生产,已出库'),(3031,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',27,'','2017000081','完成生产,已出库'),(3032,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',29,'','2017000081','完成生产,已出库'),(3033,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',19,'','2017000081','完成生产,已出库'),(3034,'2017-03-07',1,'出货越南宏美二厂','杨木娇、李秀荣',23,'','2017000081','完成生产,已出库'),(3035,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',67,'','2017000124','完成生产,已出库'),(3036,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',65,'','2017000124','完成生产,已出库'),(3037,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',31,'','2017000124','完成生产,已出库'),(3038,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',32,'','2017000124','完成生产,已出库'),(3039,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',39,'','2017000124','完成生产,已出库'),(3040,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',40,'','2017000124','完成生产,已出库'),(3041,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',41,'','2017000124','完成生产,已出库'),(3042,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',42,'','2017000124','完成生产,已出库'),(3043,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',35,'','2017000124','完成生产,已出库'),(3044,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',37,'','2017000124','完成生产,已出库'),(3045,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',38,'','2017000124','完成生产,已出库'),(3046,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',26,'','2017000124','完成生产,已出库'),(3047,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',27,'','2017000124','完成生产,已出库'),(3048,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',29,'','2017000124','完成生产,已出库'),(3049,'2017-03-17',1,'出货越南宏美二厂','杨木娇、李秀荣',23,'','2017000124','完成生产,已出库'),(3050,'2017-05-17',1,'测试','梁生',67,'5月6日借用',NULL,''),(3051,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',67,'','2017000080','完成生产,已出库'),(3052,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',65,'','2017000080','完成生产,已出库'),(3053,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',31,'','2017000080','完成生产,已出库'),(3054,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',32,'','2017000080','完成生产,已出库'),(3055,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',39,'','2017000080','完成生产,已出库'),(3056,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',40,'','2017000080','完成生产,已出库'),(3057,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',41,'','2017000080','完成生产,已出库'),(3058,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',42,'','2017000080','完成生产,已出库'),(3059,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',35,'','2017000080','完成生产,已出库'),(3060,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',37,'','2017000080','完成生产,已出库'),(3061,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',38,'','2017000080','完成生产,已出库'),(3062,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',26,'','2017000080','完成生产,已出库'),(3063,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',27,'','2017000080','完成生产,已出库'),(3064,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',29,'','2017000080','完成生产,已出库'),(3065,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',19,'','2017000080','完成生产,已出库'),(3066,'2017-03-06',4,'出货越南弘邦','杨木娇、李秀荣',23,'','2017000080','完成生产,已出库'),(3067,'2017-05-17',1,'借测成都绘景志成','杨木娇',2,'',NULL,''),(3068,'2017-05-17',1,'借测成都绘景志成','杨木娇',4,'',NULL,''),(3069,'2017-05-17',3,'越南弘邦维修换新','杨木娇',67,'2017-03-06换',NULL,''),(3070,'2017-03-07',5,'出货越南正川','杨木娇、李秀荣',65,'','2017000048','完成生产,已出库'),(3071,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',67,'','2017000049','完成生产,已出库'),(3072,'2017-03-07',4,'出货越南永正','杨木娇、李秀荣',65,'','2017000049','完成生产,已出库'),(3073,'2017-03-07',1,'出货越南上杰','杨木娇、李秀荣',65,'','2017000053','完成生产,已出库'),(3074,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',67,'','2017000047','完成生产,已出库'),(3075,'2017-03-06',1,'出货越南跃升','杨木娇、李秀荣',65,'','2017000047','完成生产,已出库'),(3076,'2017-03-07',1,'出货中山志捷鞋业技术服务有限公司','杨木娇、李秀荣',65,'','2017000052','完成生产,已出库'),(3077,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',67,'','2017000083','完成生产,已出库'),(3078,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',65,'','2017000083','完成生产,已出库'),(3079,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',30,'','2017000083','完成生产,已出库'),(3080,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',66,'','2017000083','完成生产,已出库'),(3081,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',39,'','2017000083','完成生产,已出库'),(3082,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',40,'','2017000083','完成生产,已出库'),(3083,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',35,'','2017000083','完成生产,已出库'),(3084,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',37,'','2017000083','完成生产,已出库'),(3085,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',38,'','2017000083','完成生产,已出库'),(3086,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',23,'','2017000083','完成生产,已出库'),(3088,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',26,'','2017000083','完成生产,已出库'),(3089,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',29,'','2017000083','完成生产,已出库'),(3090,'2017-03-07',2,'出货东莞绿洲鞋业有限公司','杨木娇  李秀荣',19,'','2017000083','完成生产,已出库'),(3092,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',67,'','2017000084','完成生产,已出库'),(3093,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',65,'','2017000084','完成生产,已出库'),(3094,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',31,'','2017000084','完成生产,已出库'),(3095,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',32,'','2017000084','完成生产,已出库'),(3096,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',39,'','2017000084','完成生产,已出库'),(3097,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',40,'','2017000084','完成生产,已出库'),(3098,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',41,'','2017000084','完成生产,已出库'),(3099,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',42,'','2017000084','完成生产,已出库'),(3100,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',35,'','2017000084','完成生产,已出库'),(3101,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',37,'','2017000084','完成生产,已出库'),(3102,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',38,'','2017000084','完成生产,已出库'),(3103,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',26,'','2017000084','完成生产,已出库'),(3104,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',27,'','2017000084','完成生产,已出库'),(3105,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',29,'','2017000084','完成生产,已出库'),(3106,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',19,'','2017000084','完成生产,已出库'),(3107,'2017-03-04',4,'出货东莞雅利箱包有限公司','杨木娇  李秀荣',23,'','2017000084','完成生产,已出库'),(3108,'2017-05-18',52,'不良转待维修','杨木娇',67,'',NULL,''),(3109,'2017-05-18',2,'开机不稳定转成品测试机','杨木娇',67,'',NULL,''),(3110,'2017-05-18',52,'不良板转维修','杨木娇',65,'',NULL,''),(3111,'2017-05-18',5,'出货厦门吉宏','杨木娇',65,'3月4日出货',NULL,''),(3112,'2017-05-19',4,'出货四川成都','杨木娇',54,'4月11日出货',NULL,''),(3113,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',67,'','2017000181','完成生产,已出库'),(3114,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',65,'','2017000181','完成生产,已出库'),(3115,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',31,'','2017000181','完成生产,已出库'),(3116,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',32,'','2017000181','完成生产,已出库'),(3117,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',39,'','2017000181','完成生产,已出库'),(3118,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',40,'','2017000181','完成生产,已出库'),(3119,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',41,'','2017000181','完成生产,已出库'),(3120,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',42,'','2017000181','完成生产,已出库'),(3121,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',35,'','2017000181','完成生产,已出库'),(3122,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',37,'','2017000181','完成生产,已出库'),(3123,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',38,'','2017000181','完成生产,已出库'),(3124,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',26,'','2017000181','完成生产,已出库'),(3125,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',27,'','2017000181','完成生产,已出库'),(3126,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',29,'','2017000181','完成生产,已出库'),(3127,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',19,'','2017000181','完成生产,已出库'),(3128,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',20,'','2017000181','完成生产,已出库'),(3129,'2017-05-18',5,'出货重庆高正云睿科技有限公司','杨木娇、李秀荣',25,'','2017000181','完成生产,已出库'),(3130,'2017-05-22',1,'借测北京/刘元辉','杨木娇',1,'',NULL,''),(3131,'2017-05-22',1,'借测北京/刘元辉','杨木娇',4,'',NULL,''),(3132,'2017-05-23',2,'梁生','edit',70,'5月22',NULL,''),(3133,'2017-05-24',1,'测试用（梁生）','杨木娇',5,'',NULL,''),(3134,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',67,'','2017000180','完成生产,已出库'),(3135,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',65,'','2017000180','完成生产,已出库'),(3136,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',31,'','2017000180','完成生产,已出库'),(3137,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',32,'','2017000180','完成生产,已出库'),(3138,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',39,'','2017000180','完成生产,已出库'),(3139,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',40,'','2017000180','完成生产,已出库'),(3140,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',41,'','2017000180','完成生产,已出库'),(3141,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',42,'','2017000180','完成生产,已出库'),(3142,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',35,'','2017000180','完成生产,已出库'),(3143,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',37,'','2017000180','完成生产,已出库'),(3144,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',38,'','2017000180','完成生产,已出库'),(3145,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',26,'','2017000180','完成生产,已出库'),(3146,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',27,'','2017000180','完成生产,已出库'),(3147,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',29,'','2017000180','完成生产,已出库'),(3148,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',19,'','2017000180','完成生产,已出库'),(3149,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',21,'','2017000180','完成生产,已出库'),(3150,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',20,'','2017000180','完成生产,已出库'),(3151,'2017-06-13',100,'出货中山志捷鞋业技术服务有限公司','',23,'','2017000180','完成生产,已出库'),(3152,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',67,'','2017000177','完成生产,已出库'),(3153,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',65,'','2017000177','完成生产,已出库'),(3154,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',30,'','2017000177','完成生产,已出库'),(3155,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',66,'','2017000177','完成生产,已出库'),(3156,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',39,'','2017000177','完成生产,已出库'),(3157,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',40,'','2017000177','完成生产,已出库'),(3158,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',35,'','2017000177','完成生产,已出库'),(3159,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',37,'','2017000177','完成生产,已出库'),(3160,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',38,'','2017000177','完成生产,已出库'),(3161,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',23,'','2017000177','完成生产,已出库'),(3163,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',26,'','2017000177','完成生产,已出库'),(3164,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',29,'','2017000177','完成生产,已出库'),(3165,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',19,'','2017000177','完成生产,已出库'),(3166,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',20,'','2017000177','完成生产,已出库'),(3167,'2017-06-06',18,'出货东莞市嘉仑信息技术有限公司','',21,'','2017000177','完成生产,已出库'),(3169,'2017-05-18',5,'出货深圳市东鹏程科技发展有限公司','杨木娇、李秀荣',18,'','2017000182','完成生产,已出库'),(3171,'2017-05-18',5,'出货深圳市东鹏程科技发展有限公司','杨木娇、李秀荣',22,'','2017000182','完成生产,已出库'),(3172,'2017-05-18',5,'出货深圳市东鹏程科技发展有限公司','杨木娇、李秀荣',1,'','2017000182','完成生产,已出库'),(3173,'2017-05-18',5,'出货深圳市东鹏程科技发展有限公司','杨木娇、李秀荣',4,'','2017000182','完成生产,已出库'),(3177,'2017-05-26',1,'借测荆州云鹏','杨木娇',1,'',NULL,''),(3178,'2017-05-26',1,'借测荆州云鹏','杨木娇',5,'',NULL,''),(3179,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',67,'','2017000183','完成生产,已出库'),(3180,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',65,'','2017000183','完成生产,已出库'),(3181,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',31,'','2017000183','完成生产,已出库'),(3182,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',32,'','2017000183','完成生产,已出库'),(3183,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',39,'','2017000183','完成生产,已出库'),(3184,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',40,'','2017000183','完成生产,已出库'),(3185,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',41,'','2017000183','完成生产,已出库'),(3186,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',42,'','2017000183','完成生产,已出库'),(3187,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',35,'','2017000183','完成生产,已出库'),(3188,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',37,'','2017000183','完成生产,已出库'),(3189,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',38,'','2017000183','完成生产,已出库'),(3190,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',26,'','2017000183','完成生产,已出库'),(3191,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',27,'','2017000183','完成生产,已出库'),(3192,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',29,'','2017000183','完成生产,已出库'),(3193,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',19,'','2017000183','完成生产,已出库'),(3194,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',21,'','2017000183','完成生产,已出库'),(3195,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',20,'','2017000183','完成生产,已出库'),(3196,'2017-05-27',64,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',23,'','2017000183','完成生产,已出库'),(3210,'2017-06-02',6,'越南不良换机','杨木娇',67,'不良待寄回',NULL,''),(3211,'2017-06-02',1,'公司内部使用（储存数据）','杨木娇',8,'梁生',NULL,''),(3212,'2017-06-02',1,'公司内部使用（储存数据）','杨木娇',2,'梁生',NULL,''),(3219,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',29,'',NULL,''),(3220,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',27,'',NULL,''),(3222,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',31,'',NULL,''),(3223,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',32,'',NULL,''),(3224,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',39,'',NULL,''),(3225,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',40,'',NULL,''),(3226,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',41,'',NULL,''),(3227,'2017-06-02',6,'换机器、系统集成部','杨木娇、李秀荣',42,'',NULL,''),(3241,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',67,'','2017000193','完成生产,已出库'),(3242,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',65,'','2017000193','完成生产,已出库'),(3243,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',31,'','2017000193','完成生产,已出库'),(3244,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',32,'','2017000193','完成生产,已出库'),(3245,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',39,'','2017000193','完成生产,已出库'),(3246,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',40,'','2017000193','完成生产,已出库'),(3247,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',41,'','2017000193','完成生产,已出库'),(3248,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',42,'','2017000193','完成生产,已出库'),(3249,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',35,'','2017000193','完成生产,已出库'),(3250,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',37,'','2017000193','完成生产,已出库'),(3251,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',38,'','2017000193','完成生产,已出库'),(3252,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',26,'','2017000193','完成生产,已出库'),(3253,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',27,'','2017000193','完成生产,已出库'),(3254,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',29,'','2017000193','完成生产,已出库'),(3255,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',19,'','2017000193','完成生产,已出库'),(3256,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',21,'','2017000193','完成生产,已出库'),(3257,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',20,'','2017000193','完成生产,已出库'),(3258,'2017-06-03',5,'出货派龙国际有限公司','杨木娇、李秀荣',23,'','2017000193','完成生产,已出库'),(3259,'2017-06-10',5,'出货广州星晟信息科技有限公司','',67,'','2017000186','完成生产,已出库'),(3260,'2017-06-10',5,'出货广州星晟信息科技有限公司','',65,'','2017000186','完成生产,已出库'),(3261,'2017-06-10',5,'出货广州星晟信息科技有限公司','',31,'','2017000186','完成生产,已出库'),(3262,'2017-06-10',5,'出货广州星晟信息科技有限公司','',32,'','2017000186','完成生产,已出库'),(3263,'2017-06-10',5,'出货广州星晟信息科技有限公司','',39,'','2017000186','完成生产,已出库'),(3264,'2017-06-10',5,'出货广州星晟信息科技有限公司','',40,'','2017000186','完成生产,已出库'),(3265,'2017-06-10',5,'出货广州星晟信息科技有限公司','',41,'','2017000186','完成生产,已出库'),(3266,'2017-06-10',5,'出货广州星晟信息科技有限公司','',42,'','2017000186','完成生产,已出库'),(3267,'2017-06-10',5,'出货广州星晟信息科技有限公司','',35,'','2017000186','完成生产,已出库'),(3268,'2017-06-10',5,'出货广州星晟信息科技有限公司','',37,'','2017000186','完成生产,已出库'),(3269,'2017-06-10',5,'出货广州星晟信息科技有限公司','',38,'','2017000186','完成生产,已出库'),(3270,'2017-06-10',5,'出货广州星晟信息科技有限公司','',26,'','2017000186','完成生产,已出库'),(3271,'2017-06-10',5,'出货广州星晟信息科技有限公司','',27,'','2017000186','完成生产,已出库'),(3272,'2017-06-10',5,'出货广州星晟信息科技有限公司','',29,'','2017000186','完成生产,已出库'),(3273,'2017-06-10',5,'出货广州星晟信息科技有限公司','',19,'','2017000186','完成生产,已出库'),(3274,'2017-06-10',5,'出货广州星晟信息科技有限公司','',21,'','2017000186','完成生产,已出库'),(3275,'2017-06-10',5,'出货广州星晟信息科技有限公司','',20,'','2017000186','完成生产,已出库'),(3276,'2017-06-10',5,'出货广州星晟信息科技有限公司','',23,'','2017000186','完成生产,已出库'),(3285,'2017-06-05',1,'广州云宏借测','杨木娇',1,'',NULL,''),(3286,'2017-06-05',1,'广州云宏借测','杨木娇',4,'',NULL,''),(3287,'2017-06-05',20,'寄山东中盈（终端显示时间还原）','杨木娇',65,'',NULL,''),(3288,'2017-06-05',1,'广州云宏借测','杨木娇',65,'',NULL,''),(3289,'2017-06-05',1,'广州云宏借测','杨木娇',67,'',NULL,''),(3298,'2017-06-06',3,'出货深圳神州动力数码有限公司','李秀荣',28,'',NULL,''),(3299,'2017-06-06',1,'出货东莞嘉伦','李秀荣',28,'',NULL,''),(3301,'2017-06-06',18,'出货思快电脑','李秀荣',28,'',NULL,''),(3316,'2017/2/14',1,'出货重庆道谷科技有限公司','杨木娇  李秀荣',67,'','2017000029','完成生产,已出库'),(3336,'2017-06-07',1,'内部使用（嘉和）','梁嘉和',2,'',NULL,''),(3337,'2017-06-07',6,'梁生借用','edit',8,'',NULL,''),(3340,'2017-06-06',10,'出货嘉兴市欧文商贸有限公司','杨木娇、李秀荣',18,'','2017000199','完成生产,已出库'),(3342,'2017-06-06',10,'出货嘉兴市欧文商贸有限公司','杨木娇、李秀荣',22,'','2017000199','完成生产,已出库'),(3343,'2017-06-06',10,'出货嘉兴市欧文商贸有限公司','杨木娇、李秀荣',1,'','2017000199','完成生产,已出库'),(3344,'2017-06-06',10,'出货嘉兴市欧文商贸有限公司','杨木娇、李秀荣',4,'','2017000199','完成生产,已出库'),(3346,'2017-06-02',3,'出货佛山市圣堡罗门业有限公司','杨木娇',18,'','2017000200','完成生产,已出库'),(3348,'2017-06-02',3,'出货佛山市圣堡罗门业有限公司','杨木娇',24,'','2017000200','完成生产,已出库'),(3349,'2017-06-02',3,'出货佛山市圣堡罗门业有限公司','杨木娇',1,'','2017000200','完成生产,已出库'),(3350,'2017-06-02',3,'出货佛山市圣堡罗门业有限公司','杨木娇',4,'','2017000200','完成生产,已出库'),(3352,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',67,'','2017000184','完成生产,已出库'),(3353,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',65,'','2017000184','完成生产,已出库'),(3354,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',31,'','2017000184','完成生产,已出库'),(3355,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',32,'','2017000184','完成生产,已出库'),(3356,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',39,'','2017000184','完成生产,已出库'),(3357,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',40,'','2017000184','完成生产,已出库'),(3358,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',41,'','2017000184','完成生产,已出库'),(3359,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',42,'','2017000184','完成生产,已出库'),(3360,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',35,'','2017000184','完成生产,已出库'),(3361,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',37,'','2017000184','完成生产,已出库'),(3362,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',38,'','2017000184','完成生产,已出库'),(3363,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',26,'','2017000184','完成生产,已出库'),(3364,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',27,'','2017000184','完成生产,已出库'),(3365,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',29,'','2017000184','完成生产,已出库'),(3366,'2017-06-10',100,'出货东莞市思快电脑有限公司','杨木娇、李秀荣',25,'','2017000184','完成生产,已出库'),(3412,'2017-05-27',1,'出货珠海顺培源商贸有限公司','杨木娇',18,'','2017000202','完成生产,已出库'),(3414,'2017-05-27',1,'出货珠海顺培源商贸有限公司','杨木娇',22,'','2017000202','完成生产,已出库'),(3415,'2017-05-27',1,'出货珠海顺培源商贸有限公司','杨木娇',2,'','2017000202','完成生产,已出库'),(3416,'2017-05-27',1,'出货珠海顺培源商贸有限公司','杨木娇',8,'','2017000202','完成生产,已出库'),(3432,'2017-06-12',10,'出货泰国','edit',60,'',NULL,''),(3433,'2017-06-13',8,'出货南京铠硕信息技术有限公司','杨木娇  李秀荣',67,'','2017000026','完成生产,已出库'),(3434,'2017-06-13',8,'出货南京铠硕信息技术有限公司','杨木娇  李秀荣',65,'','2017000026','完成生产,已出库'),(3470,'2017-06-12',1,'出货东莞颖宝','edit',1,'',NULL,''),(3471,'2017-06-12',1,'出货东莞颖宝','杨木娇',4,'',NULL,''),(3472,'2017-06-12',1,'出货东莞颖宝玩具','杨木娇',24,'',NULL,''),(3473,'2017-06-12',0,'edit','edit',20,'',NULL,''),(3474,'2017-06-12',1,'出货东莞颖宝玩具','杨木娇',18,'',NULL,''),(3475,'2017-06-13',1,'借测深圳云海麒麟','edit',1,'',NULL,''),(3476,'2017-06-13',1,'借测深圳云海麒麟','edit',4,'',NULL,''),(3477,'2017-06-13',5,'出货系统集成部','杨木娇',36,'',NULL,''),(3478,'2017-06-13',1,'维修换机（梁生）','edit',67,'C100更换E300',NULL,''),(3479,'2017-06-13',1,'维修换机（梁生）','edit',30,'C100更换E300',NULL,''),(3480,'2017-06-13',1,'维修换机','edit',66,'',NULL,''),(3501,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',18,'','2017000206','完成生产,已出库'),(3502,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',20,'','2017000206','完成生产,已出库'),(3503,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',21,'','2017000206','完成生产,已出库'),(3504,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',22,'','2017000206','完成生产,已出库'),(3505,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',2,'','2017000206','完成生产,已出库'),(3506,'2017-06-16',16,'出货成都绘景志成软件科技有限公司','杨木娇、李秀荣',4,'','2017000206','完成生产,已出库'),(3507,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',67,'','2017000207','完成生产,已出库'),(3508,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',65,'','2017000207','完成生产,已出库'),(3509,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',31,'','2017000207','完成生产,已出库'),(3510,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',32,'','2017000207','完成生产,已出库'),(3511,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',39,'','2017000207','完成生产,已出库'),(3512,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',40,'','2017000207','完成生产,已出库'),(3513,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',41,'','2017000207','完成生产,已出库'),(3514,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',42,'','2017000207','完成生产,已出库'),(3515,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',35,'','2017000207','完成生产,已出库'),(3516,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',37,'','2017000207','完成生产,已出库'),(3517,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',38,'','2017000207','完成生产,已出库'),(3518,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',26,'','2017000207','完成生产,已出库'),(3519,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',27,'','2017000207','完成生产,已出库'),(3520,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',29,'','2017000207','完成生产,已出库'),(3521,'2017-06-10',250,'出货宁德市蕉城区思快电脑有限公司','杨木娇、李秀荣',25,'','2017000207','完成生产,已出库'),(3522,'2017-06-16',1,'借测东莞捷诚','edit',1,'',NULL,''),(3523,'2017-06-16',1,'借测东莞捷诚','edit',4,'',NULL,''),(3524,'2017-06-16',1,'内部使用（梁生）','edit',2,'明景归还',NULL,''),(3525,'2017-06-16',1,'内部使用（梁生）','edit',8,'明景归还',NULL,''),(3526,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',67,'','2017000205','完成生产,已出库'),(3527,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',65,'','2017000205','完成生产,已出库'),(3528,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',31,'','2017000205','完成生产,已出库'),(3529,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',32,'','2017000205','完成生产,已出库'),(3530,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',39,'','2017000205','完成生产,已出库'),(3531,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',40,'','2017000205','完成生产,已出库'),(3532,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',41,'','2017000205','完成生产,已出库'),(3533,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',42,'','2017000205','完成生产,已出库'),(3534,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',35,'','2017000205','完成生产,已出库'),(3535,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',37,'','2017000205','完成生产,已出库'),(3536,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',38,'','2017000205','完成生产,已出库'),(3537,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',26,'','2017000205','完成生产,已出库'),(3538,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',27,'','2017000205','完成生产,已出库'),(3539,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',29,'','2017000205','完成生产,已出库'),(3540,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',19,'','2017000205','完成生产,已出库'),(3541,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',21,'','2017000205','完成生产,已出库'),(3542,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',20,'','2017000205','完成生产,已出库'),(3543,'2017-06-14',1,'出货北京同方微电子有限公司','杨木娇',23,'','2017000205','完成生产,已出库'),(3544,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',67,'','2017000204','正在生产中...'),(3545,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',65,'','2017000204','正在生产中...'),(3546,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',30,'','2017000204','正在生产中...'),(3547,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',66,'','2017000204','正在生产中...'),(3548,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',39,'','2017000204','正在生产中...'),(3549,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',40,'','2017000204','正在生产中...'),(3550,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',35,'','2017000204','正在生产中...'),(3551,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',37,'','2017000204','正在生产中...'),(3552,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',38,'','2017000204','正在生产中...'),(3554,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',25,'','2017000204','完成生产,已出库'),(3555,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',26,'','2017000204','正在生产中...'),(3556,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',29,'','2017000204','正在生产中...'),(3557,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',48,'','2017000204','正在生产中...'),(3558,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',20,'','2017000204','正在生产中...'),(3559,'2017-06-12',1,'出货重庆道谷科技有限公司','杨木娇',45,'','2017000204','正在生产中...'),(3561,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',67,'','2017000208','完成生产,已出库'),(3562,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',65,'','2017000208','完成生产,已出库'),(3563,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',31,'','2017000208','完成生产,已出库'),(3564,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',32,'','2017000208','完成生产,已出库'),(3565,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',39,'','2017000208','完成生产,已出库'),(3566,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',40,'','2017000208','完成生产,已出库'),(3567,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',41,'','2017000208','完成生产,已出库'),(3568,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',42,'','2017000208','完成生产,已出库'),(3569,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',35,'','2017000208','完成生产,已出库'),(3570,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',37,'','2017000208','完成生产,已出库'),(3571,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',38,'','2017000208','完成生产,已出库'),(3572,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',26,'','2017000208','完成生产,已出库'),(3573,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',27,'','2017000208','完成生产,已出库'),(3574,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',29,'','2017000208','完成生产,已出库'),(3575,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',19,'','2017000208','完成生产,已出库'),(3576,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',21,'','2017000208','完成生产,已出库'),(3577,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',20,'','2017000208','完成生产,已出库'),(3578,'2017-06-12',9,'出货深圳市神州动力数码有限公司','杨木娇、李秀荣',23,'','2017000208','完成生产,已出库'),(3579,'2017-06-20',5,'借测深圳中银','edit',1,'',NULL,''),(3580,'2017-06-20',5,'借测深圳中银','edit',4,'',NULL,''),(3581,'2017-06-20',1,'借测深圳中银','edit',67,'',NULL,''),(3586,'2017-06-22',2,'借测广州云宏','edit',1,'',NULL,''),(3587,'2017-06-22',2,'借测广州云宏','edit',4,'',NULL,''),(3588,'2017-06-28',1,'借测广州云宏','edit',1,'',NULL,''),(3589,'2017-06-28',1,'借测广州云宏','edit',4,'',NULL,''),(3590,'2017-06-28',0,'edit','edit',4,'',NULL,''),(3591,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',18,'','2017000212','正在生产中...'),(3592,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',20,'','2017000212','正在生产中...'),(3593,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',21,'','2017000212','正在生产中...'),(3594,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',24,'','2017000212','正在生产中...'),(3595,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',1,'','2017000212','正在生产中...'),(3596,'2017-06-24',30,'出货海南汉普科技有限公司','杨木娇、李秀荣',4,'','2017000212','正在生产中...'),(3597,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',67,'','2017000209','正在生产中...'),(3598,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',65,'','2017000209','正在生产中...'),(3599,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',31,'','2017000209','正在生产中...'),(3600,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',32,'','2017000209','正在生产中...'),(3601,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',39,'','2017000209','正在生产中...'),(3602,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',40,'','2017000209','正在生产中...'),(3603,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',41,'','2017000209','正在生产中...'),(3604,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',42,'','2017000209','正在生产中...'),(3605,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',35,'','2017000209','正在生产中...'),(3606,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',37,'','2017000209','正在生产中...'),(3607,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',38,'','2017000209','正在生产中...'),(3608,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',26,'','2017000209','正在生产中...'),(3609,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',27,'','2017000209','正在生产中...'),(3610,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',29,'','2017000209','正在生产中...'),(3611,'2017-06-21',9,'出货东莞市东城大友电脑经营部','杨木娇、李秀荣',25,'','2017000209','正在生产中...'),(3612,'2017-06-28',1,'借测重庆道谷科技','edit',1,'',NULL,''),(3613,'2017-06-28',1,'借测重庆道谷科技','edit',4,'',NULL,''),(3614,'2017-06-29',42,'出货云宏信息股份有限公司','李秀荣',28,'',NULL,'');
/*!40000 ALTER TABLE `fittings_outputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_price`
--

DROP TABLE IF EXISTS `goods_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_price` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price_oem` varchar(64) DEFAULT NULL,
  `price_own` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_price`
--

LOCK TABLES `goods_price` WRITE;
/*!40000 ALTER TABLE `goods_price` DISABLE KEYS */;
INSERT INTO `goods_price` VALUES (2,'AX700 瘦客户机 (J192G8G)','650','Intel J1900 四核 2.0G/2G/8G/6xUSB/1000NIC/企业版嵌入式Linux',0,'880','850'),(3,'C100 云终端','350','ARM RK3188 四核1.6G/1G/8G/4xUSB/100NIC/标准版嵌入式Linux',0,'450','430'),(4,'AX730 瘦客户机(E192G8G)','680','Intel J1900 四核 2.0G/2G/8G/6xUSB/1000NIC/企业版嵌入式Linux',0,'900','880'),(5,'AX830 迷你电脑','1480','Intel I3 4005U 四核 1.7G/4G/128G/6xUSB/1000NIC/不含系统',0,'无','1780'),(6,'E300 云终端','400','ARM RK3188 四核1.6G/1G/8G/4xUSB/100NIC/标准版嵌入式Linux',0,'550','530'),(9,'ThinVirt 企业版授权（3年5*8服务）','4500','ThinVirt企业版 1台虚拟化主机授权（含3年5*8专业服务）',0,'4500','4000'),(10,'ThinVirt 企业版授权（3年7*24服务）','7200','ThinVirt企业版 1台虚拟化主机授权（含3年7*24尊贵服务）',0,'7200','6800'),(11,'5*8专业服务（1年5*8服务）','1200','1年5*8专业服务（文档/论坛/邮件/QQ群咨询、400技术支持、在线远程处理）',0,'无','1200'),(12,'7*24 尊贵服务(1年7*24服务)','2400','1年7*24尊贵服务（文档/论坛/邮件/QQ群咨询、400技术支持、在线远程处理、提供备件、预约上门服务）',0,'无','2400'),(16,'AX700 瘦客户机 (J192G16G)','670','Intel J1900 四核 2.0G/2G/16G/6xUSB/1000NIC/企业版嵌入式Linux',NULL,'900','880'),(18,'ThinWork 企业版授权(1台IDV设备许可)','300','单台管理服务器支持1000并发连接设备/支持主流2D与3D设计软件/支持主流USB设备/来宾系统支持32位与64位Windows',0,'无','400'),(20,'AX800 迷你电脑','1080','Intel J1900 四核 2.0G/4G/128G/6xUSB/1000NIC/不含系统',3,'无','1380'),(21,'AX900 瘦客户机','1750','Intel I5 5200U 四核 2.2G/4G/64G/6xUSB/1000NIC/Linux系统',0,'无','1950');
/*!40000 ALTER TABLE `goods_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lend`
--

DROP TABLE IF EXISTS `lend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lend_dates` varchar(64) DEFAULT NULL,
  `expect_return_dates` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `nums` varchar(64) DEFAULT NULL,
  `configure` varchar(64) DEFAULT NULL,
  `fitting_complete` varchar(64) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `return_dates` varchar(64) DEFAULT NULL,
  `return_complete` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_lend_configure` (`configure`),
  KEY `ix_lend_expect_return_dates` (`expect_return_dates`),
  KEY `ix_lend_fitting_complete` (`fitting_complete`),
  KEY `ix_lend_lend_dates` (`lend_dates`),
  KEY `ix_lend_model` (`model`),
  KEY `ix_lend_name` (`name`),
  KEY `ix_lend_nums` (`nums`),
  KEY `ix_lend_remarks` (`remarks`),
  KEY `ix_lend_return_complete` (`return_complete`),
  KEY `ix_lend_return_dates` (`return_dates`),
  KEY `ix_lend_saler` (`saler`),
  KEY `ix_lend_tracking_number` (`tracking_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lend`
--

LOCK TABLES `lend` WRITE;
/*!40000 ALTER TABLE `lend` DISABLE KEYS */;
/*!40000 ALTER TABLE `lend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(64) DEFAULT NULL,
  `order_number` varchar(64) DEFAULT NULL,
  `tax_type` varchar(64) DEFAULT NULL,
  `adress` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `saler_tel` varchar(64) DEFAULT NULL,
  `apartment` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'中山志捷（越南）','Z-01G1200157','不含税','越南宁平省安谟县安林社','-','-','吴中平','13532686033','系统集成部'),(2,'STAR TIGER LIMITED(弘邦)','Y-HG1203647','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(3,'中山市志捷鞋业技术服务有限公司','B-R6H010001','不含税','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-88287027-522','吴中平','13532686033','系统集成部'),(4,'中山市志捷鞋业技术服务有限公司','B-M1G120059','不含税','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-88287027-522','吴中平','13532686033','系统集成部'),(5,'毕马杰橡胶科技（常熟）有限公司','PMG-20161122-1','增值税','江苏省常熟经济开发区高新技术产业园阳光大道55号','王翊晖','15850816460','梁嘉惠','13316669080','云终端'),(6,'中山市志捷鞋业技术服务有限公司','B-D5G120031','不含税','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','系统集成部'),(7,'CASTLE SKY LIMITED(宏美)','T-21H0100049','不含税','越南清化省宏化县黄英乡黄龙工业区（宏美二厂）','-','-','吴中平','13532686033','系统集成部'),(8,'REDFIRE GLOBAL LIMITED','N-01H0100131','不含税','越南海阳省平江县平宣社平提村（汎达）','-','-','吴中平','13532686033','系统集成部'),(9,'中山市志捷鞋业技术服务有限公司','B-D5G120002','不含税','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','系统集成部'),(10,'中山市志捷鞋业技术服务有限公司','B-R3G120002','不含税','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','系统集成部'),(11,'弘邦（越南）鞋业有限公司','Y-11H0100244','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(12,'WEALTH EMPEROR LIMITED','6-01H0100052','不含税','越南海防市水源县天香社（正川）','-','-','吴中平','13532686033','系统集成部'),(13,'弘邦（越南）鞋业有限公司','Y-11G1203881','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(14,'弘邦（越南）鞋业有限公司','Y-11H0100022','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(15,'弘邦（越南）鞋业有限公司','Y-11H0100140','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(16,'越南弘邦','Y-11H0100136','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(17,'越南亚欣','G-01G1200301','不含税','越南南定省直宁县古礼镇（亚欣）','-','-','吴中平','13532686033','系统集成部'),(18,'广东智城信息技术有限公司','2017011901','不含税','东莞市莞城区东城大道188号新华大夏13楼2号','-','-','腾伟','18676917151','系统集成部'),(19,'越南永正','U-01H0100094','不含税','越南清化省安定县定莲乡','-','-','吴中平','13532686033','系统集成部'),(20,'越南上杰','8-11H0101444','不含税','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','系统集成部'),(21,'越南宏美一厂','T-11H0100711','不含税','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','系统集成部'),(22,'越南弘邦','Y-11H0102033','不含税','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','系统集成部'),(23,'越南弘邦','Y-11H0103031','不含税','越南清化省静家县春林乡尼山经济区（弘邦)','-','-','吴中平','13532686033','系统集成部'),(24,'越南弘邦','Y-11H0102187','不含税','越南清化省静家县春林乡尼山经济区(弘邦)','-','-','吴中平','13532686033','系统集成部'),(26,'南京铠硕信息技术有限公司','RN-ZXP-2017021301','增值税','南京市建邺区庐山路158号嘉业国际3号楼2309','张晓亮','13952097034','朱晓平','13416674830','电力部'),(27,'中山志捷鞋业技术服务有限公司','B-R6H020003','不含税','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(28,'重庆道谷科技有限公司','2017021401','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','13922542822','云终端'),(29,'越南亚欣','G-01H0100181','不含税','越南南定省直宁县古李镇','-','-','吴中平','13532686033','系统集成部'),(30,'越南弘邦','Y-11H0200061','不含税','越南清化省静家县春林乡尼山经济区（弘邦)','-','-','吴中平','13532686033','系统集成部'),(31,'越南宏美二厂','T-21H0200413','不含税','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','系统集成部'),(32,'网神信息技术（北京）股份有限公司','80000506','增值税','北京市朝阳区来广营创远路36号院朝来高科技产业园7号楼','韦艳吉','18510252055','梁嘉惠','13316669080','云终端'),(33,'中山志捷鞋业技术服务有限公司','B-R3H010005','不含税','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(34,'海南汉普科技有限公司','RN-TW-20170209001','不含税','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾伟','18676917151','系统集成部'),(35,'东莞市东城大友电脑经营部','RN-ZXP-20170207001','增值税','东莞市东城区岗贝赛格电子市场','朱双艳','13038832660','朱晓平','13416674830','电力部'),(36,'东莞市捷诚计算机科技有限公司','RN-LJH-2017021301','增值税','东莞市南城天安数码城A1栋521室','陈小姐','13829261816','梁嘉惠','13316669080','云终端'),(37,'厦门吉宏包装科技股份有公司黄冈分公司','RN-WB-2017021701','增值税','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','孙忠','13367260097','梁嘉惠','13316669080','云终端'),(38,'毕马杰橡胶科技（常熟）有限公司','2017022101','增值税','江苏省常熟经济开发区高新技术产业园阳光大道55号','王翊晖','15850816460','梁嘉惠','13316669080','云终端'),(39,'深圳凯特电气有限公司','RN-WZP-2016022301','增值税','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121133','朱晓平','13416674830','电力部'),(40,'东莞市壹华电子科技有限公司','RN-TW-2017021501','不含税','东莞市管城区东城大道188号新华大厦13楼2号','文林','0769-22482278','腾伟','18676917151','系统集成部'),(41,'广东联迪信息科技有限公司','RN-WB-2017022301','增值税','广东省珠海市香洲区兴华路212号能源大厦2楼','周卫华','0756-2139373','汪斌','13922542822','云终端'),(42,'东莞好景','2017022201','增值税','东莞市长安镇','-','-','梁嘉惠','13316669080','云终端'),(43,'越南跃升','K-01H0200035','不含税','越南海阳省锦江县莱格镇5号国道43公里','-','-','吴中平','13532686033','系统集成部'),(44,'越南正川','6-01H0200071','不含税','越南海防市水源县天香社','-','-','吴中平','13532686033','系统集成部'),(45,'越南永正','U-01H0200114','不含税','越南清化省安定县定莲乡','-','-','吴中平','13532686033','系统集成部'),(46,'越南立川','D-11H0200588','不含税','越南宁平省三叠市三叠工业区','-','-','吴中平','13532686033','系统集成部'),(47,'福建威霖实业有限公司','3-11H020076','不含税','福建省福清市阳下镇东田村','-','-','吴中平','13532686033','系统集成部'),(48,'中山志捷鞋业技术服务有限公司','B-R1H020019','不含税','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(49,'越南上杰','8-01H0200068','不含税','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','系统集成部'),(50,'中山志捷鞋业技术服务有限公司','B-R1H020026','不含税','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(51,'中山志捷鞋业技术服务有限公司','B-M1H020047','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(52,'海南汉普科技有限公司','RN-TW-20170302001','不含税','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾伟','18676917151','系统集成部'),(53,'中山志捷鞋业技术服务有限公司','B-D7H020002','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(54,'中山志捷鞋业技术服务有限公司','B-D8H020003','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(55,'中山志捷鞋业技术服务有限公司','B-R6H020008','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(56,'中山志捷鞋业技术服务有限公司','B-M1H020035','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(57,'越南永正','U-01H0200146','不含税','越南清化省安定县定莲乡','-','-','吴中平','13532686033','系统集成部'),(58,'越南百倢','M-61H0200060','不含税','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','系统集成部'),(59,'越南百倢','M-61H0200120','不含税','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','系统集成部'),(60,'越南永川','Z-11H0200167','不含税','越南宁平省安谟县安林社','-','-','吴中平','13532686033','系统集成部'),(61,'越南宏美二厂','T-01H0200147','不含税','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','系统集成部'),(62,'越南宏美二厂','T-21H0202439','不含税','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','系统集成部'),(63,'越南邦威','X-11G1100521','不含税','越南海防市样京郡兴道坊','-','-','吴中平','13532686033','系统集成部'),(64,'越南永弘','R-11H0202059','不含税','越南清化省河中县河平乡郎艺工业区','-','-','吴中平','13532686033','系统集成部'),(65,'越南亚欣','G-01H0200240','不含税','越南南定升直宁县古礼镇','-','-','吴中平','13532686033','系统集成部'),(66,'越南弘邦','Y-11H0200826','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(67,'越南弘邦','Y-08H0200001','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(68,'越南弘邦','Y-11H0202849','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(69,'越南弘邦','Y-01H0200071','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(70,'越南弘邦','Y-11H0202022','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(71,'越南弘邦','Y-11H0201975','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(72,'越南弘邦','Y-11H0202263','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(73,'越南弘邦','Y-11H0203657','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(74,'越南弘邦','Y-11H0203667','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(75,'越南弘邦','Y-11H0204120','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(76,'东莞市东城大友电脑经营部','RN-ZXP-20170303001','增值税','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','电力部'),(77,'东莞绿洲鞋业有限公司','RN-WCR-20170306001','增值税','东莞市厚街镇赤岭','陈工','18998002188','梁嘉惠','13316669080','云终端'),(78,'东莞雅利箱包有限公司','RN-WCR-20160928001','增值税','东莞市厚街镇溪头社区溪中路1号','吴生','13694989556','梁嘉惠','13316669080','云终端'),(79,'北京佰高讯通科技有限公司','RN-WB-2017030601','增值税','北京市朝阳区建国路93号院万达广场12号楼709室','徐绍华','13910610092','梁嘉惠','13316669080','云终端'),(80,'越南弘邦','Y-08H0200022','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(81,'越南弘邦','Y-11H0204765','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(82,'越南弘福','H-01H0300024','不含税','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','系统集成部'),(83,'中山志捷鞋业技术服务有限公司','B-R6H030002','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(84,'中山志捷鞋业技术服务有限公司','B-R6H030003','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(85,'越南宏美一厂','T-11H0204427','不含税','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','系统集成部'),(86,'中山精美鞋业有限公司','S-CQH020037','不含税','广东省中山市火炬开发区世纪一路2号','-','-','吴中平','13532686033','系统集成部'),(87,'越南亚欣','G-01H0300072','不含税','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','系统集成部'),(88,'越南宏美二厂','T-21H0301825','不含税','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','系统集成部'),(89,'越南宏美二厂','T-21H0302383','不含税','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','系统集成部'),(90,'广州明景信息科技有限公司','PO1-2017031401TW','不含税','广州市天河区王园路43号3A05','章亮','18620100215','腾玮','18676917151','系统集成部'),(91,'东莞怡合达自动化科技有限公司','GDRE-WCF-20170118087','不含税','东莞市虎门镇北栅东坊工业区','李启军','18938271776','吴成福','13560898520','商务部'),(93,'越南上杰','8-11H0300882','不含税','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','系统集成部'),(94,'深圳凯特电气有限公司','RN-WZP-2016022301-1','增值税','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121229','朱晓平','13416674830','电力部'),(95,'港芝（东莞）电子制造厂有限公司','CHPO-16-1115','增值税','广东东莞塘厦平山188工业区','崔娜杰','0769-87720639','汪斌','13922542822','云终端'),(96,'港芝（东莞）电子制造厂有限公司','CHPO-16-1117','增值税','广东东莞塘厦平山188工业区','崔娜杰','0769-87720639','汪斌','13922542822','云终端'),(97,'越南永弘','R-11H0300793','不含税','越南清化省河中县河平乡郎艺工业区','-','-','吴中平','13532686033','系统集成部'),(98,'深圳凯特电气有限公司','RN-WZP-20170320001','增值税','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121229','朱晓平','13416674830','电力部'),(99,'越南弘邦','Y-11H0301016','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(100,'广州明景信息科技有限公司','PO1-2017032001TW','不含税','广州市天河区王园路43号3A05','章亮','18620100215','腾玮','18676917151','系统集成部'),(101,'中山志捷鞋业技术服务有限公司','B-D8H030001','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(102,'中山志捷鞋业技术服务有限公司','B-D8H030002','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(103,'厦门吉宏包装科技股份有公司黄冈分公司','RN-LJH-2017032201','增值税','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','孙忠','13367260097','梁嘉惠','13316669080','云终端'),(104,'中山志捷鞋业技术服务有限公司','B-D2H030016','不含税','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','系统集成部'),(105,'越南正川','6-01H0300198','不含税','越南海防市水源县天香社','-','-','吴中平','13532686033','系统集成部'),(106,'越南上杰','8-11H0302262','不含税','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','系统集成部'),(107,'越南宏美一厂','T-11H0302873','不含税','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','系统集成部'),(108,'东莞市厚街盛创电脑配件经营部','RN-LJH-20170327002','增值税','广东省东莞市厚街镇厚街村公园新村13巷6号','温婉笑','13650292935','梁嘉惠','13316669080','云终端'),(109,'东莞市业勤电脑网络有限公司','RN-LJH-2017032701','增值税','东莞市莞城东城大道75号金城大厦601室','陈小姐','0769-22336890','梁嘉和','13790639813','云终端'),(110,'东莞思快电脑','RN-LJH-20170331001','增值税','东莞南城天安数码城','陈生','18688695165','梁嘉惠','13316669080','云终端'),(112,'东莞厚街盛创电脑配件经营部','RN-LJH-20170405001','增值税','广东省东莞市厚街镇厚街村公园新村13巷6号','温婉笑','13650292935','梁嘉和','13790639813','云终端'),(113,'越南亚欣','G-01H0300207','不含税','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','系统集成部'),(114,'东莞怡合达自动化科技有限公司','GDRE-WCF-20170328087','不含税','东莞市虎门镇北栅东坊工业区','李启军','18938271776','吴成福','13560898520','商务部'),(115,'越南永川','Z-01H0300158','不含税','越南宁平省安谟县安林社','-','-','吴中平','13532686033','系统集成部'),(116,'越南弘福','H-01H0300217','不含税','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','系统集成部'),(117,'重庆道谷科技有限公司','20170406','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','13922542822','云终端'),(118,'深圳市神州动力数码有限公司','RN-ZXP-2017033101','增值税','深圳市南山区侨香路香年广场B座702','颜许芳','0755-83988885','朱晓平','13416674830','电力部'),(119,'越南弘邦','Y-01H0300159','不含税','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','系统集成部'),(120,'越南亚欣','G-01H0300280','不含税','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','系统集成部'),(121,'越南永川','Z-01H0400035','不含税','越南宁平省安谟县安林社','-','-','吴中平','13532686033','系统集成部'),(122,'中山精美鞋业有限公司','S-S1H030024','不含税','广东省中山市火炬开发区世纪一路2号（精美）','-','-','吴中平','13532686033','系统集成部'),(123,'越南百倢','M-01H0300054','不含税','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','系统集成部'),(124,'广东众生药业股份有限公司','RN-XQL-20170401118','不含税','广东省莞市石龙镇西湖工业区信息产业园','陈志华','0769-86100111-1271','谢秋丽','0769-22823986','系统集成部'),(127,'中山志捷鞋业技术服务有限公司','B-D1H030007','不含税','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','系统集成部'),(128,'中山志捷鞋业技术服务有限公司','B-V8H030002','不含税','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','系统集成部'),(129,'荆州市云鹏计算机科技有限公司','PO1-2017040601TW','不含税','荆州市荆州区凤凰路72号','韩鹏','15629562867','腾玮','18676917151','系统集成部'),(130,'网神信息技术（北京）股份有限公司','80000613','增值税','贵州省遵义市汇川区香港路盛邦帝标B栋29-5联邦软件公司','韦艳吉','18510252055','梁嘉惠','13316669080','云终端'),(132,'东莞厚街盛创电脑配件经营部','RN-WCR-20170410001','增值税','广东省东莞市厚街镇厚街村公园新村13巷6号','刘术桂','13686121639','梁嘉和','13790639813','云终端'),(133,'宁德市蕉城区思快电脑有限公司','RN-LJH-2017022001','增值税','宁德市蕉城区闽东西路2号信达豪庭A号1106室','陈仲惠','18688695165','梁嘉惠','13316669080','云终端'),(136,'深圳市东鹏程科技发展有限公司','RN-WCR-20170411002','增值税','深圳市南山区高新南六道6号迈科龙大厦3A06','王总','13924620175','梁嘉惠','13316669080','云终端'),(137,'梁富荣','3194537601067646','增值税','广东省广州市南沙区大岗镇康裕路一街七巷六号','梁富荣','13570288299','梁嘉惠','13316669080','云终端'),(138,'东莞思快电脑','RN-LJH-20170412001','增值税','东莞南城天安数码城','陈生','18688695165','梁嘉惠','13316669080','云终端'),(139,'东莞市东城大友电脑经营部','RN-ZXP-20170412001','增值税','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','电力部'),(140,'重庆道谷科技有限公司','20170417','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','0769-21680186','云终端'),(141,'杭州蓝代斯克数字技术有限公司','RN-LJH-20170419001','不含税','杭州市西湖区翠柏路7号杭州电子商务产业园303室','邓晓宇','18158191992','梁嘉惠','13316669080','云终端'),(142,'远东制杯（深圳）有限公司','PO1-2017032701TW','不含税','深圳市龙岗区坂田街道五和大道（南）43号','杨武龙','13691898949','腾玮','18676917151','系统集成部'),(143,'嘉兴市钜翔信息科技有限公司','RN-LJH-20170421001','增值税','浙江省桐乡市梧桐街道振东新区利民路108号','俞柏华','15868348386','梁嘉惠','13316669080','云终端'),(144,'四川金网通电子科技有限公司','JWT1704200371','增值税','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','云终端'),(145,'四川金网通电子科技有限公司','JWT1704200386','增值税','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','云终端'),(146,'东莞市冠中信息技术有限公司','PO1-2017041301TW','不含税','东莞市东城区光明管理区百分百科技园','甘红军','13712838500','腾玮','18676917151','系统集成部'),(147,'东莞绿洲鞋业有限公司','RN-LJH-20170414001','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(148,'东莞绿洲鞋业有限公司','RN-LJH-20170414002','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(149,'中山志捷鞋业技术服务有限公司','20170410','不含税','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','系统集成部'),(150,'四川金网通电子科技有限公司','JWT1704270543','增值税','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','云终端'),(151,'网神信息技术（北京）股份有限公司','80000667','增值税','北京市朝阳区来广营创远路36号院朝来高科技产业园7号楼','韦艳吉','18510252055','梁嘉惠','13316669080','云终端'),(153,'四川新环佳科技发展有限公司','PO1-2017042501TW','不含税','成都市人民南路4段北成科西路3号B座301','何艳茹','028-86216671','腾玮','18676917151','系统集成部'),(154,'株洲高科火炬信息服务有限公司','RN-WZP-2016072001','不含税','湖南省株洲市天元区仙月环路中国动力谷研发中心B区D栋众创空间','石小林','-','腾玮','0769-22823986','系统集成部'),(155,'东莞绿洲鞋业有限公司','RN-LJH-20170426003','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(156,'东莞思快电脑','RN-LJH-20170502002','增值税','东莞南城天安数码城','陈生','18688695165','梁嘉惠','13316669080','云终端'),(157,'重庆道谷科技有限公司','20170502','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','云终端'),(158,'重庆道谷科技有限公司','20170508','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','云终端'),(159,'重庆道谷科技有限公司','20170510','增值税','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','云终端'),(160,'四川金星压缩机制造有限公司','17727068023645980','增值税','四川省成都市郫县红光镇现代工业港港北区港通北三路670号','马玲','18200229828','梁嘉惠','13316669080','云终端'),(161,'深圳市汉智星科技有限公司','RN-LJH-20170502001','增值税','深圳龙华新区大浪街道国乐科技园3栋8楼','杨总','13602635737','梁嘉和','13790639813','云终端'),(162,'东莞绿洲鞋业有限公司','RN-LJH-20170505002','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(163,'东莞绿洲鞋业有限公司','RN-LJH-20170509001','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(164,'东莞绿洲鞋业有限公司','RN-LJH-20170509002','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(165,'东莞绿洲鞋业有限公司','RN-LJH-20170510001','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(166,' 李经钢','20170516171653','增值税','江苏省南京市浦口区沿江街道威尼斯水城11街区8-1710','李经钢','13382795958','梁嘉惠','13316669080','云终端'),(167,'东莞市嘉仑信息技术有限公司','RN-LJH-2017050902','增值税','东莞市南城街道周溪隆溪路5号','段小姐','0769-22788766','梁嘉惠','13316669080','云终端'),(168,'东莞市东城大友电脑经营部','RN-ZXP-20170515001','增值税','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','电力部'),(169,'中山志捷鞋业技术服务有限公司','20170516','不含税','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','系统集成部'),(170,'重庆高正云睿科技有限公司','RN-LJH-2017051801','增值税','重庆市九龙坡区石桥铺一城精英国际26-17','何云武','18996009895','梁嘉惠','13316669080','云终端'),(171,'深圳市神州动力数码有限公司','RN-ZXP-2017050301','增值税','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','钟雪梅','0755-25920360','朱晓平','13416674830','电力部'),(172,'东莞市思快电脑有限公司','RN-LJH-2017052302','增值税','东莞市南城区黄金路1号东莞天安数码城A区A1栋1006','陈仲惠','0769-22305656','梁嘉惠','13316669080','云终端'),(173,'宁德市蕉城区思快电脑有限公司','RN-LJH-2017052301','增值税','宁德市蕉城区闽东西路2号信达豪庭A号1106室','陈捷','15959305010','梁嘉惠','13316669080','云终端'),(174,'广州星晟信息科技有限公司','RN-TW-2017053101','不含税','广州市天河区中山大道西238号勤天大厦1604','韦莉','13878990937','腾玮','18676917151','系统集成部'),(175,'珠海顺培源商贸有限公司','RN-LJH-2017052701','增值税','广州市广州大道中东兴南路93号12B','刁宇平','13380039900','梁嘉惠','13316669080','云终端'),(176,'佛山市圣堡罗门业有限公司','20170602135656','增值税','广东省佛山市顺德区勒流西华圣堡罗门业有限公司','郭海强','13823472858','梁嘉和','13790639813','云终端'),(177,'历俊（广州）珠宝有限公司','20170602','增值税','广州市南沙区豪岗大道28号历俊公司','冯小姐','34936600-141','梁嘉惠','13316669080','云终端'),(178,'派龙国际有限公司','2017042001','不含税','黄江','张琪','13316610891','张祖颖','13316610891','系统集成部'),(179,'MG Plastic &Hardware Company Limited','20170522-001','增值税','UNIT 04,7/F BRIGHT WAY TOWER NO.33 MONG KOK RD KL HK','-','11014486304801','梁嘉惠','13316669080','云终端'),(180,'嘉兴市欧文商贸有限公司','RN-LJH-20170605001','增值税','浙江省嘉兴市南湖区东升东路1753号三楼3EB03','郝亮','15857300925','梁嘉惠','13316669080','云终端'),(181,'深圳市神州动力数码有限公司','RN-ZXP-2017060501','增值税','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','钟雪梅','0755-25920360','朱晓平','13416674830','电力部'),(182,'东莞廷鑫贸易有限公司','RN-LJH-20170505001','增值税','东莞市南城区三元里万凯商务大厦506号','陈文慧','85818791-1026','梁嘉惠','13316669080','云终端'),(183,'东莞市盛腾进出口有限公司','RN-LJH-20170505002-1','增值税','东莞市 厚街镇 赤岭村一横北路5号','王小姐','85818791-1026','梁嘉惠','13316669080','云终端'),(184,'重庆道谷科技有限公司','20170613','增值税','江苏南京市玄武区珠江路333号百脑汇3楼3A26','郑宝冲','18651893818','欧婕','0769-21680186','云终端'),(185,'北京同方微电子有限公司','RN-LJH-2017053101','增值税','北京市海淀区王庄路1号院4号楼18层','王飞','18614043005','梁嘉和','13790639813','云终端'),(186,'成都绘景志成软件科技有限公司','RN-LJH-20170602001','增值税','四川省成都市青羊区石人南路34号','杨濒','13683435820','梁嘉惠','13316669080','云终端'),(187,'东莞市东城大友电脑经营部','RN-ZXP-20170620001','增值税','东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','电力部'),(188,'海南汉普科技有限公司','RN-TW-2017062101','不含税','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾玮','18676917151','系统集成部'),(189,'东莞绿洲鞋业有限公司','RN-LJH-20170616001','增值税','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','云终端'),(190,'云宏信息科技股份有限公司','YXGPH17060134','增值税','广州市天河区元岗横路33号天河慧通产业广场B2栋',' 陈湛 ','13560046979','梁嘉和','13790639813','云终端'),(191,'云宏信息科技股份有限公司','YXGPH17060133','增值税','广州市天河区元岗横路33号天河慧通产业广场B2栋',' 陈湛 ','13560046979','梁嘉和','13790639813','云终端');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `no` varchar(64) DEFAULT NULL,
  `purchase_order` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `payment` varchar(64) DEFAULT NULL,
  `received_payment` varchar(64) DEFAULT NULL,
  `commission` varchar(64) DEFAULT NULL,
  `cost` varchar(64) DEFAULT NULL,
  `iftax` varchar(64) DEFAULT NULL,
  `profit` varchar(64) DEFAULT NULL,
  `tax` varchar(64) DEFAULT NULL,
  `status` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  KEY `ix_payment_client_name` (`client_name`),
  KEY `ix_payment_commission` (`commission`),
  KEY `ix_payment_cost` (`cost`),
  KEY `ix_payment_iftax` (`iftax`),
  KEY `ix_payment_payment` (`payment`),
  KEY `ix_payment_profit` (`profit`),
  KEY `ix_payment_purchase_order` (`purchase_order`),
  KEY `ix_payment_received_payment` (`received_payment`),
  KEY `ix_payment_saler` (`saler`),
  KEY `ix_payment_tax` (`tax`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2017000001','Z-01G1200157','中山志捷（越南）','吴中平','23450.00','0.00','0.0','23450','否','0','0','已收款'),(2,'2017000002','Y-HG1203647','STAR TIGER LIMITED(弘邦)','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(3,'2017000003','B-R6H010001','中山市志捷鞋业技术服务有限公司','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(4,'2017000004','B-M1G120059','中山市志捷鞋业技术服务有限公司','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(5,'2017000005','PMG-20161122-1','毕马杰橡胶科技（常熟）有限公司','梁嘉惠','7150.00','0.00','0.00','5740','是','695','715','未收款'),(6,'2017000006','B-D5G120031','中山市志捷鞋业技术服务有限公司','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(7,'2017000007','T-21H0100049','CASTLE SKY LIMITED(宏美)','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(8,'2017000008','N-01H0100131','REDFIRE GLOBAL LIMITED','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(9,'2017000009','B-D5G120002','中山市志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(10,'2017000010','B-R3G120002','中山市志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(11,'2017000011','6-01H0100052','WEALTH EMPEROR LIMITED','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(12,'2017000012','Y-11H0100244','弘邦（越南）鞋业有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(13,'2017000013','Y-11G1203881','弘邦（越南）鞋业有限公司','吴中平','2100.00','0.00','0.00','2100','否','0','0','已收款'),(14,'2017000014','Y-11H0100022','弘邦（越南）鞋业有限公司','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(15,'2017000015','Y-11H0100140','弘邦（越南）鞋业有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(16,'2017000016','Y-11H0100136','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(17,'2017000018','U-01H0100094','越南永正','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(18,'2017000017','G-01G1200301','越南亚欣','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(19,'2017000019','8-11H0101444','越南上杰','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(20,'2017000020','T-11H0100711','越南宏美一厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(21,'2017000021','Y-11H0102033','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(22,'2017000024','Y-11H0102187','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(24,'2017000042','Y-11H0103031','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(25,'2017000027','B-R6H020003','中山志捷鞋业技术服务有限公司','吴中平','2100.00','0.00','0.00','2100','否','0','0','已收款'),(26,'2017000028','2017021401','重庆道谷科技有限公司','汪斌','480.00','0.00','0.00','350','是','82','48','已收款'),(27,'2017000029','G-01H0100181','越南亚欣','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(28,'2017000030','Y-11H0200061','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(29,'2017000031','T-21H0200413','越南宏美二厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(30,'2017000033','B-R3H010005','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(31,'2017000034','RN-TW-20170209001','海南汉普科技有限公司','腾伟','1400.00','0.00','0.00','1400','否','0','0','已收款'),(32,'2017000035','RN-ZXP-20170207001','东莞市东城大友电脑经营部','朱晓平','10200.00','0.00','0.00','5950','是','3230','1020','未收款'),(33,'2017000036','RN-LJH-2017021301','东莞市捷诚计算机科技有限公司','梁嘉惠','9500.00','0.00','0.00','6240','是','2310','950','已收款'),(34,'2017000038','2017022101','毕马杰橡胶科技（常熟）有限公司','梁嘉惠','3575.00','0.00','0.00','2870','是','347.5','357.5','未收款'),(35,'2017000032','80000506','网神信息技术（北京）股份有限公司','梁嘉惠','222000.00','0.00','0.00','122520','是','77280','22200','未收款'),(36,'2017000040','RN-WZP-2017022301','深圳凯特电气有限公司','朱晓平','2800.00','0.00','0.00','700','是','1820','280','未收款'),(37,'2017000041','RN-WB2017022301','广东联迪信息科技有限公司','汪斌','1320.00','0.00','0.00','731','是','457','132','未收款'),(38,'2017000095','8-11H0300882','越南上杰','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(39,'2017000022','2017011901','广东智城信息技术有限公司','腾伟','600.00','0.00','0.00','659','否','-59','0','已收款'),(40,'2017000043','K-01H0200035','越南跃升','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(41,'2017000044','6-01H0200071','越南正川','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(42,'2017000045','U-01H0200114','越南永正','吴中平','1400.00','0.00','0.00','1400','否','0','0','已收款'),(43,'2017000046','D-11H0200588','越南立川','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(44,'2017000047','3-11H020076','福建威霖实业有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(45,'2017000048','B-R1H020019','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(46,'2017000049','8-01H0200068','越南上杰','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(47,'2017000050','B-R1H020026','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(48,'2017000051','B-D7H020002','中山志捷鞋业技术服务有限公司','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(49,'2017000052','B-M1H020047','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(50,'2017000053','RN-TW-20170302001','海南汉普科技有限公司','腾伟','3500.00','0.00','0.00','3500','否','0','0','已收款'),(52,'2017000055','B-D8H020003','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(53,'2017000056','B-R6H020008','中山志捷鞋业技术服务有限公司','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(54,'2017000057','B-M1H020035','中山志捷鞋业技术服务有限公司','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(55,'2017000058','U-01H0200146','越南永正','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(56,'2017000059','M-61H0200060','越南百倢','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(57,'2017000060','M-61H0200120','越南百倢','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(58,'2017000061','Z-11H0200167','越南永川','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(59,'2017000062','T-01H0200147','越南宏美二厂','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(60,'2017000064','X-11G1100521','越南邦威','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(61,'2017000065','R-11H0202059','越南永弘','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(62,'2017000066','G-01H0200240','越南亚欣','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(63,'2017000067','Y-11H0200826','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(64,'2017000068','Y-08H0200001','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(65,'2017000069','Y-11H0202849','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(66,'2017000070','Y-01H0200071','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(67,'2017000071','Y-11H0202022','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(68,'2017000072','Y-11H0201975','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(69,'2017000074','Y-11H0203657','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(70,'2017000075','Y-11H0203667','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(71,'2017000076','Y-11H0204120','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(72,'2017000077','Y-11H0202263','越南弘邦','吴中平','1400.00','0.00','0.00','1400','否','0','0','已收款'),(73,'2017000078','T-21H0202439','越南宏美二厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(74,'2017000079','RN-ZXP-20170303001','东莞市东城大友电脑经营部','朱晓平','6000.00','0.00','0.00','3500','是','1900','600','未收款'),(75,'2017000081','RN-WCR-20170306001','东莞绿洲鞋业有限公司','梁嘉惠','1300.00','0.00','0.00','800','是','370','130','已收款'),(76,'2017000082','RN-WCR-20160928001','东莞雅利箱包有限公司','梁嘉惠','3280.00','0.00','0.00','1400','是','1552','328','未收款'),(77,'2017000083','RN-WB-2017030601','北京佰高讯通科技有限公司','梁嘉惠','4050.00','0.00','0.00','3275','是','370','405','未收款'),(78,'2017000084','Y-08H0200022','越南弘邦','吴中平','2450.00','0.00','0.00','2450','否','0','0','已收款'),(79,'2017000085','Y-11H0204765','越南弘邦','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(80,'2017000086','H-01H0300024','越南弘福','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(81,'2017000087','B-R6H030002','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(82,'2017000088','B-R6H030003','中山志捷鞋业技术服务有限公司','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(83,'2017000089','T-11H0204427','越南宏美一厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(84,'2017000090','S-CQH020037','中山精美鞋业有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(85,'2017000091','G-01H0300072','越南亚欣','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(86,'2017000092','T-21H0301825','越南宏美二厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(87,'2017000093','T-21H0302383','越南宏美二厂','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(88,'2017000094','GDRE-WCF-20170118087','东莞怡合达自动化科技有限公司','吴成福','20000.00','0.00','0.00','20000','否','0','0','已收款'),(89,'2017000096','PO1-2017031401TW','广州明景信息科技有限公司','腾玮','0.00','0.00','0.00','0','否','0','0','未收款'),(90,'2017000097','RN-WZP-2016022301-1','深圳凯特电气有限公司','朱晓平','1400.00','0.00','0.00','350','是','910','140','未收款'),(91,'2017000098','R-11H0300793','越南永弘','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(92,'2017000099','CHPO-16-1115','港芝（东莞）电子制造厂有限公司','汪斌','18750.00','0.00','0.00','10500','是','6375','1875','已收款'),(93,'2017000100','CHPO-16-1117','港芝（东莞）电子制造厂有限公司','汪斌','12500.00','0.00','0.00','7000','是','4250','1250','已收款'),(94,'2017000101','RN-WZP-20170320001','深圳凯特电气有限公司','朱晓平','700.00','0.00','0.00','700','是','-70','70','未收款'),(95,'2017000103','RN-LJH-2017032701','东莞市业勤电脑网络有限公司','梁嘉和','22000.00','0.00','0.00','14000','是','5800','2200','已收款'),(96,'2017000104','Y-11H0301016','越南弘邦','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(97,'2017000105','B-D8H030001','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(98,'2017000106','B-D8H030002','中山志捷鞋业技术服务有限公司','吴中平','1050.00','0.00','0.00','350','否','700','0','已收款'),(99,'2017000107','B-D2H030016','中山志捷鞋业技术服务有限公司','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(100,'2017000108','6-01H0300198','越南正川','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(101,'2017000109','8-11H0302262','越南上杰','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(102,'2017000110','T-11H0302873','越南宏美一厂','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(103,'2017000111','G-01H0300207','越南亚欣','吴中平','700.00','0.00','0.00','700','否','0','0','已收款'),(104,'2017000113','H-01H0300217','越南弘福','吴中平','1050.00','0.00','0.00','1050','否','0','0','已收款'),(105,'2017000114','Z-01H0300158','越南永川','吴中平','10150.00','0.00','0.00','10150','否','0','0','已收款'),(107,'2017000116','RN-LJH-2017032201','厦门吉宏包装科技股份有公司黄冈分公司','梁嘉惠','2700.00','0.00','0.00','2100','是','330','270','已收款'),(108,'2017000117','20170406','重庆道谷科技有限公司','汪斌','480.00','0.00','0.00','350','是','82','48','已收款'),(109,'2017000115','RN-LJH-20170405001','东莞厚街盛创电脑配件经营部','梁嘉和','3600.00','0.00','0.00','2800','是','440','360','已收款'),(110,'2017000118','Y-01H0300159','越南弘邦','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(111,'2017000119','G-01H0300280','越南亚欣','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(112,'2017000037','RN-WB-2017021701','厦门吉宏包装科技股份有公司黄冈分公司','梁嘉惠','4500.00','0.00','0.00','3500','是','550','450','未收款'),(113,'2017000120','RN-LJH-20170327002','东莞市厚街盛创电脑配件经营部','梁嘉惠','1920.00','0.00','0.00','1400','是','328','192','已收款'),(114,'2017000122','M-01H0300054','越南百倢','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(115,'2017000123','Z-01H0400035','越南永川','吴中平','2100.00','0.00','0.00','2100','否','0','0','已收款'),(116,'2017000124','S-S1H030024','中山精美鞋业有限公司','吴中平','1750.00','0.00','0.00','1750','否','0','0','已收款'),(117,'2017000125','RN-WCR-20170410001','东莞厚街盛创电脑配件经营部','梁嘉和','3600.00','0.00','0.00','2800','是','440','360','已收款'),(118,'2017000126','20170417','重庆道谷科技有限公司','汪斌','480.00','0.00','0.00','350','是','82','48','已收款'),(119,'2017000127','PO1-2017032701TW','远东制杯（深圳）有限公司','腾玮','800.00','0.00','0.00','800','否','0','0','已收款'),(120,'2017000131','RN-LJH-20170421001','嘉兴市钜翔信息科技有限公司','梁嘉惠','11500.00','0.00','0.00','6450','是','3900','1150','已收款'),(121,'2017000136','RN-WZP-2016072001','株洲高科火炬信息服务有限公司','腾玮','6800.00','0.00','0.00','6670','否','130','0','已收款'),(122,'2017000139','B-D1H030007','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(123,'2017000140','B-V8H030002','中山志捷鞋业技术服务有限公司','吴中平','350.00','0.00','0.00','350','否','0','0','已收款'),(124,'2017000141','20170410','中山志捷鞋业技术服务有限公司','吴中平','35000.00','0.00','0.00','35000','否','0','0','已收款'),(125,'2017000142','PO1-2017041301TW','东莞市冠中信息技术有限公司','腾玮','650.00','0.00','0.00','0','否','650','0','已收款'),(126,'2017000149','20170502','重庆道谷科技有限公司','edit','4320.00','0.00','0.00','3150','是','738','432','已收款'),(127,'2017000150','20170508','重庆道谷科技有限公司','edit','480.00','0.00','0.00','350','是','82','48','已收款'),(128,'2017000151','20170510','重庆道谷科技有限公司','edit','480.00','0.00','0.00','350','是','82','48','已收款'),(129,'2017000155','17727068023645980','四川金星压缩机制造有限公司','梁嘉惠','570.00','0.00','0.00','350','是','163','57','已收款'),(130,'2017000156','RN-LJH-2017051801','重庆高正云睿科技有限公司','梁嘉惠','3150.00','0.00','0.00','1750','是','1085','315','已收款'),(131,'2017000159','20170602135656','佛山市圣堡罗门业有限公司','梁嘉和','2640.00','0.00','0.00','0','是','2376','264','已收款'),(132,'2017000154','20170516','中山志捷鞋业技术服务有限公司','吴中平','35000.00','0.00','0.00','35000','否','0','0','已收款'),(133,'2017000163','20170522-001','MG Plastic &Hardware Company Limited','梁嘉惠','0.00','0.00','0.00','0','是','0','0','已收款'),(134,'2017000161','2017042001','派龙国际有限公司','张祖颖','1750.00','0.00','0.00','0','否','1750','0','已收款'),(135,'2017000162','RN-TW-2017053101','广州星晟信息科技有限公司','腾玮','1750.00','0.00','0.00','0','否','1750','0','已收款'),(136,'2017000164','PO1-2017040601TW','荆州市云鹏计算机科技有限公司','腾玮','4300.00','0.00','0.00','3500','否','800','0','已收款'),(137,'2017000165','RN-LJH-20170605001','嘉兴市欧文商贸有限公司','梁嘉惠','0.00','0.00','0.00','0','是','0','0','已收款'),(138,'2017000174','RN-LJH-20170602001','成都绘景志成软件科技有限公司','梁嘉惠','0.00','0.00','0.00','11840','是','-11840','0','已收款'),(139,'2017000173','RN-LJH-2017053101','北京同方微电子有限公司','梁嘉和','0.00','0.00','0.00','350','是','-350','0','未收款'),(140,'2017000171','20170613','重庆道谷科技有限公司','欧婕','0.00','0.00','0.00','400','是','-400','0','未收款'),(141,'2017000176','RN-LJH-20170616001','东莞绿洲鞋业有限公司','梁嘉惠','0.00','0.00','0.00','0','是','0','0','未收款'),(142,'2017000177','RN-TW-2017062101','海南汉普科技有限公司','腾玮','0.00','0.00','0.00','0','否','0','0','已收款');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_related`
--

DROP TABLE IF EXISTS `performance_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance_related` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `place` varchar(64) DEFAULT NULL,
  `content` mediumtext,
  `complete` mediumtext,
  `integration` varchar(64) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_related`
--

LOCK TABLES `performance_related` WRITE;
/*!40000 ALTER TABLE `performance_related` DISABLE KEYS */;
INSERT INTO `performance_related` VALUES (5,'2017-03-30','梁嘉和','公司','写40块A9主板系统 ','完成','',2017,'03',''),(6,'2017-03-30','梁嘉和','公司','远程处理佛山圣保罗VMware、USB重定向','跟进','',2017,'03','了解客户情况，是安装Agent时没有安装USB重定向的服务。'),(7,'2017-03-30','梁嘉和','厚街','厚街送3台C100','完成','',2017,'03','由于工作细节问题，使一部分C100没有使用最新的内核'),(8,'2017-03-30','梁嘉和','业勤','送发票','完成','',2017,'03',''),(9,'2017-03-30','梁嘉和','公司','徐州市鼎恒电子20用户报价','完成','',2017,'03',''),(10,'2017-03-30','梁嘉和','公司','广州飞瑞敖电子51用户报价','完成','',2017,'03',''),(11,'2017-03-31','梁嘉和','公司','写40块A9主板系统 ','完成','',2017,'03','有两块板有问题'),(13,'2017-03-31','梁嘉和','公司','电话跟进佛山圣保罗USB重定向问题','跟进','',2017,'03','客户重新安装agent 测试'),(14,'2017-03-31','梁嘉和','思快电脑','送货100台A9','完成','',2017,'03','已签送货单'),(15,'2017-03-31','梁嘉和','公司','跟进汉智星的VDI测试情况','跟进','',2017,'03','今天早上已发两个企业版系统的8G.SSD'),(17,'2017-04-01','黄德欣','公司','远程广东建厦虚拟机的USB不能用情况','刘总说下午他们放假了,节后再帮他们看看','',2017,'04',''),(18,'2017-04-05','黄德欣','公司','安装三台服务器的系统','系统已装好','',2017,'04',''),(22,'2017-04-01','黄德欣','','','','',2017,'01',''),(23,'2017-04-01','梁嘉和','公司','写40块A9主板系统','完成','',2017,'04',''),(24,'2017-04-01','梁嘉和','东城','好云——送借测机到东城','完成','',2017,'04',''),(25,'2017-04-05','梁嘉和','公司','写80块A9主板系统','完成','',2017,'04','有一块不能写入系统 '),(26,'2017-04-05','梁嘉和','公司','汉智星——跟进汉智星的测试使用情况','骆工请假两天。没有同事跟进。','',2017,'04','两天后再联系'),(27,'2017-04-05','梁嘉和','公司','圣保罗——跟进圣保罗USB重定向测试情况','电话跟进','',2017,'04','客户自己未能测试成功,已发回测试机'),(28,'2017-04-05','梁嘉和','公司','跟进朱可借用的8G+128G归还情况','有一台机要发回来不知是什么配置','',2017,'04',''),(29,'2017-04-05','梁嘉和','公司','厚街盛创——报价','完成','',2017,'04',''),(30,'2017-04-05','梁嘉和','公司','飞瑞敖——跟进广州飞瑞敖','跟进','',2017,'04','报价'),(31,'2017-04-01','杨木娇','公司仓库','测试激活、备思快订单','已测试OK部分','',2017,'04',''),(34,'2017-04-01','黄德欣','','','','',2017,'01',''),(35,'2017-04-05','杨木娇','公司仓库','升级打包发货怡合达订单（30PCS)','已完成','',2017,'04',''),(36,'2017-04-05','杨木娇','公司仓库','升级打包发货越南永川、宏福订单（32PCS）','已完成','',2017,'04',''),(37,'2017-04-06','梁嘉和','公司','写60块A9主板系统','完成','',2017,'04',''),(38,'2017-04-06','梁嘉和','公司','汉智星——跟进汉智星的测试使用情况','增加一台VDI测试','',2017,'04',''),(39,'2017-04-06','梁嘉和','公司','安装企业版测试平台','完成','',2017,'04','带到广州演示'),(40,'2017-04-06','黄德欣','公司','远程广东建厦虚拟机的USB不能用情况','!!!!!','',2017,'04',''),(41,'2017-04-06','黄德欣','公司','维修一体机','已完成两台','',2017,'04',''),(42,'2017-04-05','杨木娇','公司仓库','升级打包发货厦门吉宏（6PCS）','已完成','',2017,'04',''),(44,'2017-04-06','梁智轩','','','-','',2017,'01',''),(45,'2017-04-06','杨木娇','公司仓库','生产厚街盛创电脑、越南订单（14PCS）','已完成','',2017,'04',''),(46,'2017-04-06','杨木娇','公司仓库','检测剩余部分5V/2A电源','已完成','',2017,'04',''),(47,'2017-04-06','梁嘉和','公司','飞瑞敖——跟进广州飞瑞敖','联系人请了病假，明天再发报价','',2017,'04',''),(48,'2017-04-06','梁嘉和','公司','写5个企业版客户系统，给广州好云','完成','',2017,'04','发了6个SSD，有一个8G的是坏的'),(49,'2017-04-07','梁嘉和','公司','写120块A9主板系统','完成','',2017,'04',''),(50,'2017-04-07','杨木娇','公司仓库','生产测试科达借测单（3PCS AX700）)','已完成','',2017,'04',''),(51,'2017-04-07','杨木娇','公司仓库','生产重庆道谷、深圳神州动力订单（18PCS）','已完成待打包发货','',2017,'04',''),(52,'2017-04-07','梁嘉和','公司','飞瑞敖——跟进广州飞瑞敖','','',2017,'04','已发报价'),(53,'2017-04-07','梁嘉和','公司','汉智星——跟进汉智星的测试使用情况','跟进中','',2017,'04','客户还没有安装好第三台客户机，所以目前只有两台VDI测试中'),(54,'2017-04-07','梁嘉和','公司','科达——远程处理科达客户端连接问题','跟进','',2017,'04','修好的客户端发回给客户，由于系统是重写过的，与3.4平台可能不兼容。需测试！'),(55,'2017-04-07','梁嘉和','公司','佰高科技——安装佰高科技的平台测试','跟进','',2017,'04','没有license 有许可接着测试'),(56,'2017-04-08','梁嘉和','公司','蓝代斯克——维修3台T300NW一体机','跟进','',2017,'04','有一台屏幕有问题！电话联系了客户，确认屏幕是有问题！'),(57,'2017-04-07','黄德欣','保罗科技','按客户莫生的要求把服务器装上THINVIRT3.5.6,然后建20台虚拟机并加域','已完成','',2017,'04',''),(58,'2017-04-08','黄德欣','公司','公司测试两台从保罗拿回来的SSD硬盘,打包处理蓝带克斯的服务器和一体机','已完成','',2017,'04',''),(59,'2017-04-06','梁嘉惠','','','','',2017,'01',''),(60,'2017-04-08','梁嘉和','公司','飞瑞敖——跟进广州飞瑞敖报价后情况','','',2017,'04','客户开会，下周给结果'),(61,'2017-04-08','杨木娇','公司仓库','检测维修一体机、打包发货（4台）','已完成','',2017,'04',''),(62,'2017-04-08','杨木娇','公司仓库','生产云鹏订单（10PCS A9）、检测X86机器','A9订单已完成','',2017,'04','下午加班'),(63,'2017-04-08','杨木娇','公司仓库','打包发货深圳数码订单（17PCS）','已完成','',2017,'04',''),(64,'2017-04-08','梁嘉和','公司','汉智星——跟进汉智星测试情况','','',2017,'04','客户没有时间安装好第三个客户端！所以还没有测试！'),(65,'2017-04-10','梁嘉和','公司','写40块A9主板系统','完成','',2017,'04','有一快要维修一下MsUSB接口'),(66,'2017-04-10','杨木娇','公司仓库','生产越南、中山订单（14台）','已完成','',2017,'04',''),(67,'2017-04-10','杨木娇','公司仓库','测试网神360剩余部分机器、打包发货（35台）','已完成','',2017,'04',''),(68,'2017-04-11','梁嘉和','公司','日立化成——USB-KEY重定向，不稳定。','完成','',2017,'04','删除了杀毒软件卡巴就可以解决问题 '),(69,'2017-04-11','梁嘉和','公司','写20块A9主板系统','完成','',2017,'04',''),(70,'2017-04-11','杨木娇','公司仓库','备思快订单（100PCS)、厚街盛创订单（8PCS）','已测试ok，待组装','',2017,'04',''),(71,'2017-04-11','杨木娇','公司仓库','备安徽伟迈借测单（2PCS）','已完成','',2017,'04',''),(72,'2017-04-10','黄德欣','怡合达','怡合达换服务器硬盘,解决客户的问题','已完成','',2017,'04',''),(73,'2017-04-11','黄德欣','公司','做报价给方中吴生','已报价给他,让他参考','',2017,'04',''),(74,'2017-04-11','黄德欣','公司','处理安徽维迈的终端问题','沟通和协助了解应该是客户的思杰服务器问题','',2017,'04',''),(75,'2017-04-11','黄德欣','公司','远程处理广西南职的服务器情况','因为他们要给学生试用,所以要明天早上再跟进','',2017,'04',''),(76,'2017-04-11','梁嘉和','公司','宇生广告——远程处理3.4平台问题','跟进','',2017,'04','由于服务器的RAID卡坏了。更换RAID卡后可以进入到平台系统。但内网有设备占用了服务器的IP。客户又找不出设备。'),(77,'2017-04-12','梁嘉和','公司','科达——安装3.4桌面虚拟化平台，测试新的客户端系统能否连接。','完成','',2017,'04','可以正常连接到VDI，并登录到桌面系统。'),(78,'2017-04-12','梁嘉和','公司','日立化成——安装3.5.6桌面虚拟化平台，测试安装win10 32位/64位','完成','',2017,'04','建立win10 VDI时，平台提示CPU架构不支持！使用的是E5520的CPU'),(79,'2017-04-12','杨木娇','公司仓库','升级打包发货盛创订单（8PCS）备淘宝订单（4台）','已完成','',2017,'04',''),(80,'2017-04-12','杨木娇','公司仓库','备思快订单100(PCS)','已完成待发货','',2017,'04',''),(81,'2017-04-01','李秀荣','仓库','备思快订单','已完完成部分','',2017,'04',''),(82,'2017-04-10','李秀荣','仓库','测试网神360机器打包出货','已完成','',2017,'04',''),(84,'2017-04-13','梁嘉和','公司','科达——跟进维修好的客户连接不上3.4平台问题','跟进','',2017,'04','客户学校在考试，没法作测试！'),(85,'2017-04-13','梁嘉和','公司','日立化成——3.6.7桌面虚拟化平台，测试安装win10 32位/64位	','完成','',2017,'04','CPU使用Xeon L5520 安装了3.6.7平台，建立win10VDI，同样提示CPU不支持'),(86,'2017-04-14','梁嘉和','公司','汉智星——40用户虚拟化服务器与文件服务器报价','完成','',2017,'04',''),(87,'2017-04-13','杨木娇','公司仓库','备广州蓝爵、广州亦云借测机器（4台）','已完成','',2017,'04',''),(88,'2017-04-13','杨木娇','公司仓库','备众生药业订单（25PCS X86）','已完成部分','',2017,'04','晚上加班检查（云鹏）订单'),(89,'2017-04-14','杨木娇','公司仓库','备众生药业订单（25PCS X86）','已完成','',2017,'04',''),(90,'2017-04-14','杨木娇','公司仓库','备云南驰宏光电借测（1台 AX700)、山东中换机2台A9','已完成','',2017,'04',''),(91,'2017-04-14','梁嘉和','公司','下午整理打包仓库材料','待跟进','',2017,'04',''),(92,'2017-04-15','杨木娇','公司仓库','搬新办公室','','',2017,'04',''),(93,'2017-04-16','杨木娇','公司仓库','搬新办公室','','',2017,'04',''),(94,'2017-04-17','杨木娇','道滘办公室','整理物料','','',2017,'04',''),(95,'2017-04-18','杨木娇','原公司仓库','备荆州云鹏订单','已完成','',2017,'04',''),(96,'2017-04-19','杨木娇','道滘办公室','新办公室开业','','',2017,'04',''),(97,'2017-04-20','杨木娇','道滘办公室','备大友订单、系统集成部订单','已完成部分','',2017,'04',''),(98,'2017-04-15','梁嘉和','公司','打包及拆货物搬迁到新办公室','跟进','',2017,'04',''),(99,'2017-04-16','梁嘉和','公司','搬迁货物及办公用品到新办公室','完成','',2017,'04',''),(100,'2017-04-17','梁嘉和','公司','在新办公室整理办公环境','跟进','',2017,'04',''),(101,'2017-04-18','梁嘉和','','','','',2017,'04',''),(102,'2017-04-19','梁嘉和','深圳汉智星','调试虚拟化平台','完成','',2017,'04',''),(103,'2017-04-20','梁嘉和','','调休','调休','',2017,'04',''),(104,'2017-04-21','梁嘉和','公司','在新办公室整理办公环境','跟进','',2017,'04',''),(105,'2017-04-22','梁嘉和','公司','在新办公室整理办公环境','跟进','',2017,'04',''),(106,'2017-04-24','梁嘉和','公司','测试3.6.7模板更新有VDI用户受权','跟进','',2017,'04','安装好平台！安装VDI系统！'),(107,'2017-04-21','杨木娇','道滘办公室','备大友订单（14台）集成部订单（100台）','大友订单已完成','',2017,'04',''),(108,'2017-04-22','杨木娇','道滘办公室','备集成部订单（100台）','已经完成部分','',2017,'04',''),(109,'2017-04-24','杨木娇','道滘办公室','备钜翔订单（10台x86)','已完成','',2017,'04',''),(110,'2017-04-25','杨木娇','道滘办公室','备金网通订单（10台）','已完成','',2017,'04',''),(111,'2017-04-25','杨木娇','道滘办公室','备集成部订单、思快订单（各100台）','已完成激活，待组装','',2017,'04',''),(112,'2017-04-12','黄德欣','公司','在公司测试系统还原程序','','',2017,'04',''),(113,'2017-04-13','黄德欣','公司','在公司测试系统还原程序','测试过影子系统,可以运行的','',2017,'04',''),(114,'2017-04-14','黄德欣','公司','公司测试终端机,打包整理货物,准备第二天转办公室','','',2017,'04',''),(115,'2017-04-15','黄德欣','公司','搬公司','','',2017,'04',''),(116,'2017-04-25','梁嘉和','公司','测试3.6.7平台手动池与自动池功能','跟进','',2017,'04','简单测试自动池与手动池！需跟进！'),(117,'2017-04-16','黄德欣','公司','搬公司','','',2017,'04',''),(118,'2017-04-17','黄德欣','公司','搬公司','','',2017,'04',''),(119,'2017-04-25','梁嘉和','公司','用二手IBMx3650M2安装压力测试服务器','跟进','',2017,'04','安装系统！但服务器的网卡有问题。需更换服务器重新安装！'),(120,'2017-04-26','梁嘉和','公司','测试3.6.7平台手动池与自动池功能','跟进','',2017,'04','测试了自动池'),(121,'2017-04-26','杨木娇','道滘办公室','备系统集成、思快订单（各100台）','已完成组装，带升级','',2017,'04',''),(122,'2017-04-26','杨木娇','道滘办公室','备云宏借测机器（AX700、C100各一台）','已完成','',2017,'04',''),(123,'2017-04-11','李秀荣','仓库','备思快 厚街盛创订单','待组装','',2017,'04',''),(124,'2017-04-26','梁嘉和','公司','安装RDS服务器及声音测试服务器','跟进','',2017,'04','系统安装好！还需要安装软件及备份系统'),(125,'2017-04-11','李秀荣','仓库','备安徽伟迈订单','已完成','',2017,'04',''),(126,'2017-04-12','李秀荣','仓库','升级打包盛创订单  备淘宝订单','已完成','',2017,'04',''),(127,'2017-04-12','李秀荣','仓库','备思快订单','待发货','',2017,'04',''),(128,'2017-04-13','李秀荣','仓库','备众生药业订单','已测试完成部分','',2017,'04',''),(129,'2017-04-14','李秀荣','仓库','备众生药业订单','已完成','',2017,'04',''),(130,'2017-04-15','李秀荣','仓库','搬新办公室','','',2017,'04',''),(131,'2017-04-16','李秀荣','仓库','搬新办公室','','',2017,'04',''),(132,'2017-04-17','李秀荣','道滘','整理新办公室','','',2017,'04',''),(133,'2017-04-18','李秀荣','仓库','备荆州云鹏订单','已完成','',2017,'04',''),(134,'2017-04-19','李秀荣','道滘','新办公室开业','','',2017,'04',''),(135,'2017-04-20','李秀荣','道滘','备东城大友 系统集成部订单','已完成部分','',2017,'04',''),(136,'2017-04-21','李秀荣','道滘','备东城大友订单','已完成','',2017,'04',''),(137,'2017-04-22','李秀荣','道滘','备系统集成部订单','已完成部分','',2017,'04',''),(138,'2017-04-24','李秀荣','道滘','备矩翔订单','已完成','',2017,'04',''),(139,'2017-04-25','李秀荣','道滘','备经金网通订单','已完成','',2017,'04',''),(140,'2017-04-26','李秀荣','道滘','备思快  系统集成部订单','系统集成部订单已完成','',2017,'04',''),(141,'2017-04-27','李秀荣','道滘','备思快订单 ','待升级打包','',2017,'04',''),(143,'2017-04-26','李秀荣','道滘','备系统集成部  思快订单','已完成部分','',2017,'04',''),(144,'2017-04-28','李秀荣','道滘','四川金网通 系统集成部8台C1006台AX700','已完成  ','',2017,'04',''),(145,'2017-04-27','梁嘉和','中山','与东鹏程刘总拜访客户中山佳柯达色','跟进','',2017,'04','了解客户需求，再报价。'),(146,'2017-04-28','梁嘉和','公司','中山佳柯达色报价','跟进','',2017,'04',''),(147,'2017-05-02','梁嘉和','公司','测试3.6.7平台手动池与自动池功能','跟进','',2017,'05','手动池不会使用最新模板，需跟进测试！'),(148,'2017-04-27','杨木娇','道滘办公室','调休','','',2017,'04',''),(149,'2017-04-28','杨木娇','道滘办公室','调休','','',2017,'04',''),(150,'2017-05-02','杨木娇','道滘办公室','备思快、系统集成订单（各100台）','已完成','',2017,'05','升级、打包'),(151,'2017-05-02','李秀荣','道滘','升级打包系统集成部订单','已完成发货','',2017,'05',''),(153,'2017-05-02','梁嘉和','公司','用二手IBMx3650M2安装压力测试服务器','完成','',2017,'05','win2008压力测试服务器已上线。'),(154,'2017-05-02','李秀荣','道滘','升级打包思快订单','已完成','',2017,'05',''),(155,'2017-05-03','李秀荣','道滘','测试升级打包重庆道谷订单','已完成出货','',2017,'05',''),(156,'2017-05-03','李秀荣','道滘','激活测试剩余板 测试返修机器','已完成','',2017,'05',''),(157,'2017-05-03','梁嘉和','公司','维修两台AX700客户干益梅','跟进','',2017,'05','一台无法开机，一台开机无显示！发回原厂维修！'),(158,'2017-05-03','梁嘉和','公司','维修一台ax700，客户广东联','完成，跟进SSD维修！','',2017,'05','16GSSD故障，已更换SSD盘。故障盘发回供应商保修！'),(159,'2017-05-03','梁嘉和','公司','维修机中有一个SSD有问题.客户中国电子','跟进SSD维修','',2017,'05','故障盘发回供应商保修！'),(160,'2017-05-03','杨木娇','道滘办公室','备道谷订单（9台A9）、绿洲订单（3台E300）','已完成','',2017,'05',''),(161,'2017-05-03','杨木娇','道滘办公室','激活测试PCB板','已完成','',2017,'05',''),(162,'2017-05-04','李秀荣','道滘','剪底壳','','',2017,'05',''),(163,'2017-05-04','梁嘉和','公司','整理机房','跟进','',2017,'05',''),(164,'2017-05-05','梁嘉和','公司','写10块A9主板系统','完成','',2017,'05','有一块写不入系统。需维修。'),(165,'2017-05-05','梁嘉和','公司','测试客户的思杰外网发布VDI','跟进','',2017,'05','WEB可以连接，但客户端不能连接！用PC机导入证书，可以使用WEB与客户端连接！'),(166,'2017-05-04','李秀荣','道滘','升级打包东莞绿洲鞋业订单','已完成','',2017,'05',''),(167,'2017-05-05','李秀荣','道滘','升级打包系统集成部订单','已完成出货','',2017,'05',''),(168,'2017-05-04','杨木娇','道滘办公室','组装C100（36台）','已完成','',2017,'05','备货'),(169,'2017-05-04','杨木娇','道滘办公室','备料（C100底壳、装开关按钮）','','',2017,'05',''),(170,'2017-05-05','杨木娇','道滘办公室','备四川新环佳订单升级、打包（110台）','已完成','',2017,'05','原思快订单存货'),(171,'2017-05-05','杨木娇','道滘办公室','检测群英维修机器（7台X86）','已完成','',2017,'05','待处理声音输入问题'),(172,'2017-05-06','梁嘉和','公司','安装机柜','完成','',2017,'05',''),(173,'2017-05-08','梁嘉和','公司','维修科达三台AX300','跟进','',2017,'05','三台机客户自己拆过，故障情况，2台开机无显示、1台点不亮。发到炬为维修'),(174,'2017-05-08','梁嘉和','公司','客户：广东欣薇尔、故障：ax700，连接view6.0 VDI卡。重启客户机黑屏。','完成','',2017,'05','故障：UPdate硬件Bios。测试8小时VDI使用未出现卡机！'),(175,'2017-05-08','梁嘉和','公司','跟进汉智星两台维修机与标点一台维修机情况。','跟进','',2017,'05','标点：回复周2、3发给我们！汉智星：没有修好！'),(176,'2017-05-06','杨木娇','道滘办公室','组装测试C100机器（6台）','已完成','',2017,'05',''),(177,'2017-05-08','杨木娇','道滘办公室','整理仓库、备料（A9物料）','已完成','',2017,'05',''),(178,'2017-05-08','杨木娇','道滘办公室','生产道谷订单（一台A9）、备广州知慧云借测（1台X86)','已完成','',2017,'05',''),(179,'2017-05-08','梁嘉和','公司','深圳市力合微电子13076902163 钟生，要求上门演示。','跟进','',2017,'05','计划下周上门演示'),(180,'2017-05-08','梁嘉和','公司','深圳云海麒麟15820793533祝诚借ax700','跟进','',2017,'05','由于没有借测机，我让客户下载我们公开的客户端系统，ghost到客户自己的客户机上测试!'),(181,'2017-05-09','梁嘉和','绿洲','客户：绿洲鞋厂。送3台液晶显示、2台C100、增值税发票','完成','',2017,'05',''),(182,'2017-05-09','杨木娇','道滘办公室','备C100底壳（A9物料）100套','已完成','',2017,'05',''),(183,'2017-05-09','杨木娇','道滘办公室','整理2016年借测未归还机器资料发销售助理','已完成','',2017,'05',''),(184,'2017-05-09','梁嘉和','公司','测试3.6.7平台手动池与自动池功能','跟进','',2017,'05','重新安装一台VDI测试'),(185,'2017-05-10','梁嘉和','公司','制作ax700运行远程桌面（RDP）双屏异步显视频示','完成','',2017,'05',''),(186,'2017-05-10','梁嘉和','公司','制作4个企业版、4个标准版客户端系统U盘','完成','',2017,'05',''),(187,'2017-05-10','梁嘉和','公司','客户：干益梅、检测1台厂家维修AX700是否修好！','还有1台维修机需跟进','',2017,'05','还有一台ax700没有修改好！内部先换机给客户。'),(188,'2017-05-10','梁嘉和','公司','客户：蓝代斯克、一台x86一体机开屏清理灰尘','完成','',2017,'05',''),(189,'2017-05-10','杨木娇','道滘办公室','备重庆道谷订单（A91台）、深圳借测单（A91台）','已完成','',2017,'05',''),(190,'2017-05-10','杨木娇','道滘办公室','备梁生订单（AX700 80台）','已完成部分','',2017,'05',''),(191,'2017-05-10','梁嘉和','公司','安装百高IDV测试平台','跟进','',2017,'05','未激活平台'),(192,'2017-05-11','梁嘉和','公司','客户：日立化成、处理VDI安装卡巴斯机无法操作问题！','完成','',2017,'05','处理办法：在卡巴斯机的设置、高级设置、禁用自我保护功能！止功能不禁用VNC也是无法操作卡巴斯机！'),(193,'2017-05-11','梁嘉和','公司','整理好机柜网线与调整服务器位置','完成','',2017,'05',''),(194,'2017-05-08','李秀荣','道滘','出货重庆道谷','已完成','',2017,'05',''),(195,'2017-05-10','李秀荣','道滘','组装测试AX700机器','已完成部分','',2017,'05',''),(196,'2017-05-10','李秀荣','道滘','出重庆道谷订单','已完成','',2017,'05',''),(197,'2017-05-11','杨木娇','道滘办公室','检测360退还机器（35台I3)、','已完成','',2017,'05',''),(198,'2017-05-11','杨木娇','道滘办公室','备出货四川机器（2台I3带无线 ）、备淘宝订单（1台A9）','已完成','',2017,'05',''),(199,'2017-05-12','杨木娇','道滘办公室','检测玖龙纸业维修机器、备货AX700','已完成','',2017,'05',''),(200,'2017-05-11','李秀荣','道滘','开机拆硬盘内存打包机器寄回厂家','已完成 ','',2017,'05',''),(201,'2017-05-12','梁嘉和','公司','安装FreeNAS测试','跟进','',2017,'05','安装好系统。需进一步设置调试！'),(202,'2017-05-12','梁嘉和','公司','测试机VDI显卡驱动','完成','',2017,'05','更新了VDI驱动包。打开系统游戏还是会提示显卡驱动未安装！'),(203,'2017-05-12','梁嘉和','公司','7台IDV客户端开机试用','完成','',2017,'05','有一台汉智星的客户端不能正常显示'),(204,'2017-05-04','杨木娇','道滘办公室','备C100底壳（A9物料）','已完成部分','',2017,'05',''),(205,'2017-05-13','杨木娇','道滘办公室','检测港芝维修机器(2台)','已完成','',2017,'05',''),(206,'2017-05-13','梁嘉和','公司','服务器加网卡、及设置服务器管理网卡','完成','',2017,'05',''),(207,'2017-05-13','梁嘉和','公司','测试港芝的x86维修机','完成','',2017,'05',''),(208,'2017-05-13','杨木娇','道滘办公室','硬盘\\内存贴易碎标签(40套0','已完成','',2017,'05',''),(209,'2017-05-11','李秀荣','道滘','组装测试AX700机器','已完成部分','',2017,'05',''),(210,'2017-05-12','李秀荣','道滘','组装测试AX700机器','已完成部分','',2017,'05',''),(211,'2017-05-15','杨木娇','道滘办公室','备货AX700','已完成测试','',2017,'05',''),(212,'2017-05-15','杨木娇','道滘办公室','检测海南汉普维修机器（10台A9））','已完成','',2017,'05',''),(213,'2017-05-15','梁嘉和','公司','客户：海南汉普、重写10台C300客户端','完成','',2017,'05',''),(214,'2017-05-15','梁嘉和','公司','把内部VDI用户转到服务器使用','跟进','',2017,'05','还有一台没有转移。原因是无QQ的密码。'),(215,'2017-05-16','梁嘉和','南城办公室','送7套IDV到南城办公室、安装调试好','完成','',2017,'05',''),(216,'2017-05-16','梁嘉和','绿洲鞋厂','客户：绿洲鞋厂、送9台主机6台液晶显示。','完成','',2017,'05',''),(217,'2017-05-16','杨木娇','道滘办公室','备AX700、','已完成','',2017,'05','备外包装'),(218,'2017-05-16','杨木娇','道滘办公室','备淘宝订单（1台A9）、下午绿洲送货','已完成','',2017,'05',''),(219,'2017-05-17','杨木娇','道滘办公室','备东城大友订单（6台A9）','已完成','',2017,'05',''),(220,'2017-05-17','杨木娇','道滘办公室 ','备C100底壳（A9物料）','已完成','',2017,'05',''),(221,'2017-05-17','杨木娇','道滘办公室','备成都绘景志成借测（1台X86））','已完成','',2017,'05',''),(222,'2017-05-17','梁嘉和','公司','整理测试服务器机柜','完成','',2017,'05',''),(223,'2017-05-17','梁嘉和','公司','测试freenas iSCSI win7使用','完成','',2017,'05',''),(224,'2017-05-18','梁嘉和','公司','安装thinvirt3.6.7,测试iSCSI使用','完成','',2017,'05',''),(225,'2017-05-18','杨木娇','道滘办公室','检测刘统华归还机器（4台）、盘点库存','已完成','',2017,'05',''),(226,'2017-05-18','杨木娇','道滘办公室','备重庆订单（5台A9））','已完成','',2017,'05',''),(227,'2017-05-19','梁嘉和','公司','测试x86标准版系统Update、view 客户端使用Blast协议','跟进','',2017,'05','连接后自动断开，VDI桌面也未看到！'),(228,'2017-05-19','梁嘉和','公司','客户：东莞宝辉灯饰、30用户套餐报价','完成','',2017,'05',''),(229,'2017-05-19','杨木娇','道滘办公室','检测借测归还机器（7台X86））','已完成','',2017,'05','深圳东鹏程、汪金鹏'),(230,'2017-05-19','杨木娇','道滘办公室','检测港芝维修机器','已完成','',2017,'05',''),(231,'2017-05-19','梁嘉和','公司','安装thinvirt3.6.7,测试FreeNAS共享NFS使用','完成','',2017,'05',''),(232,'2017-05-20','梁嘉和','公司','客户：宝辉灯饰，电话了解客户需求。','完成','',2017,'05',''),(233,'2017-05-20','杨木娇','道滘办公室','检测壹华电子退货机器（6台X86、4台A9）','已完成','',2017,'05',''),(234,'2017-05-22','梁嘉和','公司','客户：宝辉灯饰，报价','完成','',2017,'05',''),(235,'2017-05-22','杨木娇','道滘办公室','备北京/刘元辉借测机器（1台X86））','已完成','',2017,'05',''),(236,'2017-05-13','李秀荣','道滘','剪底壳','','',2017,'05',''),(237,'2017-05-14','李秀荣','道滘','无','','',2017,'05',''),(238,'2017-05-15','李秀荣','道滘','无','','',2017,'05',''),(239,'2017-05-16','李秀荣','道滘','测试李经钢订单','已完成','',2017,'05',''),(240,'2017-05-17','李秀荣','道滘','测试升级打包东城大友订单','已完成','',2017,'05',''),(241,'2017-05-18','李秀荣','道滘','测试升级重庆高正订单','已完成','',2017,'05',''),(242,'2017-05-19','李秀荣','道滘','测试越南宏美一厂订单','已完成','',2017,'05',''),(243,'2017-05-22','李秀荣','道滘','无','','',2017,'05',''),(244,'2017-05-23','李秀荣','道滘','无','','',2017,'05',''),(245,'2017-05-23','梁嘉和','公司','面试求职人员','完成','',2017,'05','求职人员要求工资过高！'),(246,'2017-05-23','梁嘉和','公司','电话联系宝辉灯饰','跟进','',2017,'05','客户说公司打算使用国外的品牌。'),(247,'2017-05-23','梁嘉和','公司','使用者：邦群、使用一台范联 i 5-4G-64GSSDI','完成','',2017,'05','吴成福的7台 i5 x86黑色'),(248,'2017-05-23','杨木娇','道滘办公室','备系统集成部出货机器3台C100','已完成','',2017,'05','订单100台'),(249,'2017-05-23','杨木娇','道滘办公室','检测广州知慧云、东莞云媒借测归还机器（2台）','已完成','',2017,'05',''),(250,'2017-05-23','杨木娇','道滘办公室','检测仓库维修机器（10台OK、29台无法维修）','已完成','',2017,'05','梁生物料货架'),(251,'2017-05-23','杨木娇','道滘办公室','备腾玮-创盛计算机借测机器（1台A9）','已完成','',2017,'05',''),(252,'2017-05-24','李秀荣','道滘','剪底壳装开关','','',2017,'05',''),(254,'2017-05-24','杨木娇','道滘办公室','备C100底壳（A9物料准备）','已完成','',2017,'05',''),(255,'2017-05-24','杨木娇','道滘办公室','备系统集成出货机器2台、捷诚借测机器1台','已完成','',2017,'05','订单100台'),(256,'2017-05-24','梁嘉和','深圳汉智星','客户：深圳汉智星、安装thinvirt企业版及VDI系统。','跟进','',2017,'05','安装好平台与VDI系统。等客户安装常用软件！'),(257,'2017-05-25','梁嘉和','公司','写112块A9主板系统','完成','',2017,'05',''),(258,'2017-05-25','梁嘉和','公司','客户：汉智星、远程处理VDI安装软件问题','跟进','',2017,'05',''),(259,'2017-05-25','梁嘉和','公司','客户：广州云宏、回复投标参数','跟进','',2017,'05',''),(260,'2017-05-26','梁嘉和','公司','写84块A9主板系统','完成','',2017,'05',''),(261,'2017-05-25','杨木娇','道滘办公室','备思快订单（350台）激活测试','完成部分','',2017,'05','加班2小时'),(262,'2017-05-26','杨木娇','道滘办公室','备深圳神州动力订单（64台））','已完成测试','',2017,'05',''),(263,'2017-05-26','杨木娇','道滘办公室','备荆州云鹏借测机器（1台X86）','已完成','',2017,'05',''),(264,'2017-05-27','杨木娇','道滘办公室','备深圳神州动力订单（64台A9）','已完成','',2017,'05',''),(265,'2017-05-27','杨木娇','道滘办公室','备系统集成部出货机器（24台C100）','已完成','',2017,'05','订单100台'),(266,'2017-05-27','杨木娇','道滘办公室','备思快订单（350台）激活测试','已完成部分','',2017,'05',''),(267,'2017-05-25','李秀荣','道滘','测试思快、系统集成部订单 ','已完成部分','',2017,'05',''),(268,'2017-05-25','李秀荣','道滘','测试电源','已完成','',2017,'05','200个'),(269,'2017-05-26','李秀荣','道滘','升级打包思快订单','已完成部分','',2017,'05','60台'),(270,'2017-05-26','李秀荣','道滘','激活测试深圳神州动力订单','已完成部分','',2017,'05',''),(271,'2017-05-26','李秀荣','道滘','激活测试东莞嘉伦订单','已完成部分','',2017,'05',''),(272,'2017-05-27','李秀荣','道滘','测试东莞嘉伦订单','已完成部分','',2017,'05',''),(273,'2017-05-27','李秀荣','道滘','升级打包深圳神州动力订单','已完成','',2017,'05',''),(274,'2017-05-27','李秀荣','道滘','升级打包系统集成部订单','已完成','',2017,'05','24台'),(275,'2017-05-27','梁嘉和','公司','写40块A9主板系统','完成','',2017,'05',''),(276,'2017-05-27','梁嘉和','公司','电话处理重庆正睿的技术问题','跟进','',2017,'05','节后客户到用户现场测试看能否解决'),(277,'2017-05-27','李秀荣','道滘','备思快订单','已完成部分','',2017,'05',''),(278,'2017-05-27','杨木娇','道滘办公室','备刁宇平出货机器（2台X86）','已完成','',2017,'05',''),(279,'2017-05-31','梁嘉和','公司','写44块A9主板系统','完成','',2017,'05','有一块版短路，电阻发热。'),(280,'2017-05-31','梁嘉和','公司','客户：北京同方微电子、了解N100云终端','跟进','',2017,'05',''),(281,'2017-05-31','梁嘉和','公司','客户：圣堡罗门业、跟进客户购买瘦客户机，付款及开收据','跟进','',2017,'05',''),(282,'2017-05-31','李秀荣','道滘','备思快订单','已完成部分','',2017,'05',''),(283,'2017-05-31','梁嘉和','公司','客户：日立化成、故障：一台E300 VGA显示有干扰。','跟进','',2017,'05',''),(284,'2017-05-31','杨木娇','道滘办公室','备思快订单（激活测试）','完成部分','',2017,'05','订单量350台'),(285,'2017-05-31','杨木娇','道滘办公室','检测京信通信归还机器（5台X86）','已完成','',2017,'05',''),(286,'2017-06-01','李秀荣','道滘','备思快、系统集成部订单','已完成部分','',2017,'06',''),(288,'2017-06-01','梁嘉和','公司','写84块A9主板系统','完成','',2017,'06',''),(289,'2017-06-01','梁嘉和','公司','测试一台X86一体机，使用我们的客户端系统。','跟进','',2017,'06','声卡没有声音输入输出。'),(290,'2017-06-01','梁嘉和','公司','客户：广州云宏、700台显示与键鼠套装报价。','完成','',2017,'06',''),(291,'2017-06-02','李秀荣','道滘','备思快、广州星晟、派龙国际订单','已完成部分','',2017,'06',''),(292,'2017-06-01','杨木娇','道滘办公室','备思快订单（激活测试）','已完成部分','',2017,'06','订单量350台'),(293,'2017-06-01','杨木娇','道滘办公室','检测东鹏程借测归还机器（9台X86）','已完成','',2017,'06',''),(294,'2017-06-02','杨木娇','道滘办公室','备思快订单、集成部订单（压力测试、组装）','完成部分','',2017,'06',''),(295,'2017-05-15','杨木娇','道滘办公室','备圣堡罗订单（3台AX700）','已完成','',2017,'06',''),(296,'2017-06-02','梁嘉和','公司','客户：汉智星、远程开通VDI用户及VDI名称。VDI用户受权。','跟进','',2017,'06','客户还没有客户端系统！'),(297,'2017-06-02','梁嘉和','公司','客户：中国电子、录制测试一体机连接到vmware view7.0，在线看视频，USB设备重定向。','完成','',2017,'06',''),(298,'2017-06-02','梁嘉和','公司','客户：汉智星、写x86客户端系统','跟进','',2017,'06',''),(299,'2017-06-02','梁嘉和','公司','客户：东鹏程、测试480GSSD。','完成','',2017,'06','不能写入数据'),(300,'2017-06-02','李秀荣','道滘','升级打包系统集成部订单','已完成','',2017,'06','10'),(301,'2017-06-03','李秀荣','道滘','升级思快订单','已完成部分','',2017,'06','思快140台'),(302,'2017-06-03','梁嘉和','公司','客户：汉智星、写26个x86客户端系统','跟进','',2017,'06','共有50个'),(303,'2017-06-03','杨木娇','道滘办公室','备思快订单（系统升级）','已完成','',2017,'06',''),(304,'2017-06-05','梁嘉和','公司','客户：汉智星、写24个x86客户端系统','完成','',2017,'06',''),(305,'2017-06-05','梁嘉和','公司','客户：吴生、做两台服务器报价','跟进','',2017,'06','价格太高。重新报价。'),(306,'2017-06-03','李秀荣','道滘','升级打包派龙国际订单','已完成','',2017,'06',''),(307,'2017-06-05','李秀荣','道滘','升级打包思快订单','已完成','',2017,'06','140'),(308,'2017-06-05','李秀荣','道滘','组装升级打包东莞嘉伦订单','已完成','',2017,'06',''),(309,'2017-06-05','李秀荣','道滘','升级打包广州星晟订单','已完成','',2017,'06',''),(310,'2017-06-05','杨木娇','道滘办公室','备思快订单（打包140台）','已完成','',2017,'06',''),(311,'2017-06-05','杨木娇','道滘办公室','备东莞嘉仑订单（18台E300）','已完成','',2017,'06',''),(312,'2017-06-05','杨木娇','道滘办公室','检测送修群英维修机器（6台X86）','已完成','',2017,'06','送厂家维修'),(313,'2017-06-05','梁嘉和','公司','客户：思快电脑、焊接50个a9开关','完成','',2017,'06',''),(314,'2017-06-05','梁嘉和','公司','客户：海南、重新写5台客户机系统。1台a9换板。','完成','',2017,'06','换板a9电源IC发热。'),(315,'2017-06-06','李秀荣','道滘','测试电源、思快订单','完成部分','',2017,'06','电源200'),(316,'2017-06-06','李秀荣','道滘','组装测试AX700','已完成','',2017,'06','10台'),(317,'2017-06-06','梁嘉和','公司','焊接一台I5的客户机测试IDV是还兼容。','完成','',2017,'06',''),(318,'2017-06-06','梁嘉和','公司','客户：汉智星、开机测试定好的系统盘。','完成','',2017,'06','50个SSD有一个盘是认不到！已发回给客户！（客户提供的SSD盘）'),(319,'2017-06-06','梁嘉和','公司','客户：同方微电子、跟进合同回传！','完成','',2017,'06',''),(320,'2017-06-06','梁嘉和','公司','写84块A9主板系统','完成','',2017,'06','有3块是MSUSB接口有问题，1块是写系统时断电。'),(321,'2017-06-06','杨木娇','道滘办公室','备嘉兴欧文订单（10台X86）','已完成','',2017,'06',''),(322,'2017-06-06','杨木娇','道滘办公室','备系统集成订单','完成部分','',2017,'06','订单量100台A9'),(323,'2017-06-06','杨木娇','道滘办公室','检测海南汉普维修机器（6台）','已完成','',2017,'06',''),(324,'2017-06-07','李秀荣','道滘','激活测试思快订单','已完成部分','',2017,'06','50台待升级'),(325,'2017-06-07','梁嘉和','公司','写84块A9主板系统','完成','',2017,'06','3块写不进数据'),(326,'2017-06-07','杨木娇','道滘办公室','备思快订单','完成部分','',2017,'06','订单量350台'),(327,'2017-06-08','李秀荣','道滘','备思快订单','已完成部分','',2017,'06','出货50台'),(328,'2017-06-08','杨木娇','道滘办公室','备思快订单（激活测试、升级打包）','完成部分','',2017,'06','50台自动开机OK'),(329,'2017-06-08','杨木娇','道滘办公室','备吴凯借测机器（2台E300）','已完成','',2017,'06',''),(330,'2017-06-08','杨木娇','道滘办公室','备广州历俊订单（3台X86）','已完成','',2017,'06',''),(331,'2017-06-09','李秀荣','道滘','升级打包思快订单','已完成','',2017,'06','100台'),(332,'2017-06-09','李秀荣','道滘','组装测试泰国订单','已完成部分','',2017,'06',''),(333,'2017-06-10','李秀荣','道滘','测试打包泰国订单','已完成','',2017,'06','10台X86'),(334,'2017-06-09','杨木娇','道滘办公室','备思快订单（订单量350台）','已完成','',2017,'06',''),(335,'2017-06-09','杨木娇','道滘办公室','备泰国订单（10台X86）','已完成','',2017,'06',''),(336,'2017-06-10','杨木娇','道滘办公室','测试一体机（19台）','完成部分','',2017,'06',''),(337,'2017-06-10','李秀荣','道滘','测试一体机','已完成','',2017,'06',''),(338,'2017-06-12','李秀荣','道滘','备深圳神州动力、电力部订单','已完成','',2017,'06','8台E3009台C100'),(339,'2017-06-08','梁嘉和','公司','客户：东鹏程、培训客户关于thinvirt平台的安装与硬件服务器的知识。','完成','',2017,'06',''),(340,'2017-06-09','梁嘉和','公司','客户：中国电子、处理19台一体机的客户端系统安装。','跟进','',2017,'06','没有声音输出输入！'),(341,'2017-06-10','梁嘉和','公司','客户：广州飞瑞敖、重新做报价','跟进','',2017,'06','服务器涨价格！所以要重新报价。'),(342,'2017-06-10','梁嘉和','公司','客户：深圳汉智星、远程处理客户的VDI问题。','跟进','',2017,'06',''),(343,'2017-06-12','梁嘉和','公司','写84块A9主板系统','完成','',2017,'06','有1块写不了系统'),(344,'2017-06-12','李秀荣','道滘','激活测试系统集成部订单','已完成部分','',2017,'06','50台C100'),(345,'2017-06-12','杨木娇','道滘办公室','备神州动力订单（9台C100）','已完成','',2017,'06',''),(346,'2017-06-12','杨木娇','道滘办公室','备南京凯硕出货机器（8台E300）','已完成','',2017,'06',''),(347,'2017-06-12','杨木娇','道滘办公室','备东莞颖宝吃货机器（1台AX700）','已完成','',2017,'06',''),(348,'2017-06-12','杨木娇','道滘办公室','备集成部订单（激活测试）','完成测试','',2017,'06','订单量100台'),(349,'2017-06-13','杨木娇','道滘办公室','备系统集成订单（100台C100）','已完成','',2017,'06',''),(350,'2017-06-13','杨木娇','道滘办公室','备重庆道谷订单（1台E300）','已完成','',2017,'06',''),(351,'2017-06-13','杨木娇','道滘办公室','A9备货（激活测试）','完成部分','',2017,'06',''),(352,'2017-06-13','梁嘉和','公司','写84块A9主板系统','完成','',2017,'06','有4块板是找不到设备'),(353,'2017-06-13','梁嘉和','公司','客户：深圳汉智星、远程处理客户的VDI问题。','完成','',2017,'06',''),(354,'2017-06-13','李秀荣','道滘','组装升级打包系统集成部订单','已完成','',2017,'06','50台C100'),(355,'2017-06-13','李秀荣','道滘','激活测试剩余板','已完成部分','',2017,'06',''),(356,'2017-06-14','李秀荣','道滘','激活测试剩余板','已完成部分','',2017,'06',''),(357,'2017-06-14','杨木娇','道滘办公室','A9备货（激活测试）','已完成','',2017,'06',''),(358,'2017-06-14','杨木娇','道滘办公室','备北京同方订单（1台C100）','已完成','',2017,'06',''),(359,'2017-06-14','梁嘉和','深圳','客户：深圳汉智星、PC机更换成VDI','跟进','',2017,'06','先更换22台VDI。等使用稳定后再全部更换。'),(360,'2017-06-15','李秀荣','道滘','激活测试组装剩余板','已完成部分','',2017,'06',''),(361,'2017-06-16','李秀荣','道滘','激活测试剩余板','已完成部分','',2017,'06',''),(362,'2017-06-15','梁嘉和','公司','写100块A9主板系统','完成','',2017,'06','有4块写不进数据！'),(363,'2017-06-15','梁嘉和','厚街','客户：绿洲鞋厂、关18台HP主机与18台LCD','完成','',2017,'06','HP主机外箱写的是8G内存，主机上实际是4G、订单是4G。客户担心产品不是原厂的！'),(364,'2017-06-15','梁嘉和','公司','客户：深圳星能计算机、接待客户讲解公司产品','完成','',2017,'06',''),(365,'2017-06-16','梁嘉和','公司','写150块A9主板系统','完成','',2017,'06',''),(366,'2017-06-15','杨木娇','道滘办公室','A9备货（激活测试）','完成部分','',2017,'06',''),(367,'2017-06-15','杨木娇','道滘办公室','备成都绘景订单（16台AX700）','已完成','',2017,'06',''),(368,'2017-06-16','杨木娇','道滘办公室','A9备货（激活测试）','完成部分','',2017,'06',''),(369,'2017-06-16','梁嘉和','公司','客户：日立化成、远程协助客户安装3.6.7平台','跟进','',2017,'06','win10的硬盘驱动不能用！'),(370,'2017-06-17','李秀荣','道滘','激活测试剩余板','已完成部分','',2017,'06',''),(371,'2017-06-19','李秀荣','道滘','激活测试剩余板','已完成部分','',2017,'06',''),(372,'2017-06-16','李秀荣','道滘','组装测试成都绘景志成软件订单','已完成出货','',2017,'06','16台AX700'),(373,'2017-06-17','杨木娇','道滘办公室','A9备货（激活测试）','完成部分','',2017,'06',''),(374,'2017-06-19','杨木娇','道滘办公室','A9备货（激活测试）','完成部分','',2017,'06',''),(375,'2017-06-19','杨木娇','道滘办公室','检测群英维修机器(6台X86)','已完成','',2017,'06','需重新刷系统'),(376,'2017-06-20','李秀荣','道滘','激活测试剩余板','已完成','',2017,'06',''),(377,'2017-06-20','杨木娇','道滘办公室','备深圳中银借测（5T台 ax700）','已完成','',2017,'06',''),(378,'2017-06-20','杨木娇','道滘办公室','A9备货（激活测试）','完成测试','',2017,'06',''),(379,'2017-06-21','李秀荣','道滘','压测剩余板、测试电源’','已完成','',2017,'06','电源400'),(380,'2017-06-21','杨木娇','道滘办公室','备广州云宏借测（2台X86、3台C100）','已完成','',2017,'06',''),(381,'2017-06-21','杨木娇','道滘办公室','A9物料备货（备纸盒）','已完成','',2017,'06',''),(382,'2017-06-22','李秀荣','道滘','备系统集成部订单','已完成部分','',2017,'06',''),(383,'2017-06-22','杨木娇','道滘办公室','备海南汉普订单（30台AX700）','测试完成','',2017,'06',''),(384,'2017-06-22','杨木娇','道滘办公室','备深圳云海麒麟借测机器','已完成','',2017,'06',''),(385,'2017-06-23','杨木娇','道滘办公室','备海南汉普订单（30台AX700）','已完成','',2017,'06',''),(386,'2017-06-23','杨木娇','道滘办公室','备广州云宏订单','完成部分','',2017,'06',''),(387,'2017-06-23','李秀荣','道滘','剪底壳装开关','完成部分','',2017,'06',''),(388,'2017-06-19','梁嘉和','深圳','客户：深圳汉智星、处理客户的VDI问题。','跟进','',2017,'06','用户反应使用过程卡'),(389,'2017-06-20','梁嘉和','深圳','客户：深圳中银、带VDI、IDV平台到客户公司测试','跟进','',2017,'06','先安装平台与安装好客户端，先给客户使用测试'),(390,'2017-06-21','梁嘉和','深圳','客户：深圳汉智星、处理客户的VDI问题。','跟进','',2017,'06','发现用户使用比较多占用内存的程序，先调大用户VDI的内存，使用测试一段时间'),(391,'2017-06-22','梁嘉和','广州','客户：广州云宏信息、培训云宏新产品销售与技术','跟进','',2017,'06','今天是销售培训'),(392,'2017-06-23','梁嘉和','广州','客户：广州云宏信息、培训云宏新产品销售与技术','完成','',2017,'06','技术培训'),(394,'2017-06-24','梁嘉和','公司','客户：深圳汉智星、处理客户的VDI问题。','完成','',2017,'06','有一个用户系统有病毒。远程协助指导网管更换新VDI系统操作。'),(395,'2017-06-24','李秀荣','道滘','备云宏订单','已完成部分','',2017,'06',''),(396,'2017-06-26','李秀荣','道滘','组装升级云宏订单','已完成部分','',2017,'06','加班1H'),(397,'2017-06-27','李秀荣','道滘','升级云宏订单','已 完成','',2017,'06','A9  200台'),(398,'2017-06-27','李秀荣','道滘','组装测试云宏订单','已完成部分','',2017,'06','AX700  加班2.5H'),(399,'2017-06-24','杨木娇','道滘办公室','备广州云宏订单（组装A9）','完成部分','',2017,'06','订单量200'),(400,'2017-06-26','杨木娇','','休假','','',2017,'06',''),(401,'2017-06-27','杨木娇','道滘办公室','备广州云宏订单（测试AX700）','完成部分','',2017,'06','加班2.5小时'),(402,'2017-06-28','李秀荣','道滘','测试云宏订单','已完成 部分','',2017,'06','AX700加班3H'),(404,'2017-06-28','杨木娇','道滘办公室','备广州云宏订单（订单量200台A9、258台X86）','完成部分','',2017,'06','加班3小时'),(405,'2017-06-29','李秀荣','道滘','升级打包云宏订单','已完成','',2017,'06','AX700 268台  A9 200台'),(406,'2017-06-26','梁嘉和','公司','客户：云宏、安装、测试客户端','跟进','',2017,'06',''),(407,'2017-06-27','梁嘉和','公司','客户：云宏、安装、测试客户端','跟进','',2017,'06',''),(408,'2017-06-28','梁嘉和','公司','客户：云宏、安装、测试客户端','跟进','',2017,'06',''),(409,'2017-06-29','梁嘉和','公司','客户：云宏、安装、测试客户端','跟进','',2017,'06',''),(410,'2017-06-29','杨木娇','道滘办公室','备广州云宏订单（200台A9、258台AX700）','已完成','',2017,'06',''),(411,'2017-06-30','李秀荣','道滘','组装升级打包系统集成部订单','已完成','',2017,'06','C100  30台'),(412,'2017-06-30','梁嘉和','广州','客户：广州云宏信息、送货200台C100、258台AX700','完成','',2017,'06','');
/*!40000 ALTER TABLE `performance_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_storage`
--

DROP TABLE IF EXISTS `price_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_storage` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `requisition_number` varchar(64) DEFAULT NULL,
  `price_C100` varchar(64) DEFAULT NULL,
  `price_AX700` varchar(64) DEFAULT NULL,
  `price_E300` varchar(64) DEFAULT NULL,
  `price_T300` varchar(64) DEFAULT NULL,
  `price_1GB` varchar(64) DEFAULT NULL,
  `price_2GB` varchar(64) DEFAULT NULL,
  `price_4GB` varchar(64) DEFAULT NULL,
  `price_8GB` varchar(64) DEFAULT NULL,
  `price_4GBFLASH` varchar(64) DEFAULT NULL,
  `price_8GBFLASH` varchar(64) DEFAULT NULL,
  `price_8GBHD` varchar(64) DEFAULT NULL,
  `price_16GBHD` varchar(64) DEFAULT NULL,
  `price_32GBHD` varchar(64) DEFAULT NULL,
  `price_64GBHD` varchar(64) DEFAULT NULL,
  `price_128GBHD` varchar(64) DEFAULT NULL,
  `price_256GBHD` varchar(64) DEFAULT NULL,
  `price_512GBHD` varchar(64) DEFAULT NULL,
  `price_ARMRTL8188` varchar(64) DEFAULT NULL,
  `price_X86Intel` varchar(64) DEFAULT NULL,
  `price_drivercd` varchar(64) DEFAULT NULL,
  `price_ThinVirt` varchar(64) DEFAULT NULL,
  `price_T600` varchar(64) DEFAULT NULL,
  `price_AX800` varchar(64) DEFAULT NULL,
  `price_AX730` varchar(64) DEFAULT NULL,
  `price_AX700_multi` varchar(64) NOT NULL,
  `price_AX500` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_price_storage_price_128GBHD` (`price_128GBHD`),
  KEY `ix_price_storage_price_16GBHD` (`price_16GBHD`),
  KEY `ix_price_storage_price_1GB` (`price_1GB`),
  KEY `ix_price_storage_price_256GBHD` (`price_256GBHD`),
  KEY `ix_price_storage_price_2GB` (`price_2GB`),
  KEY `ix_price_storage_price_32GBHD` (`price_32GBHD`),
  KEY `ix_price_storage_price_4GB` (`price_4GB`),
  KEY `ix_price_storage_price_4GBFLASH` (`price_4GBFLASH`),
  KEY `ix_price_storage_price_512GBHD` (`price_512GBHD`),
  KEY `ix_price_storage_price_64GBHD` (`price_64GBHD`),
  KEY `ix_price_storage_price_8GB` (`price_8GB`),
  KEY `ix_price_storage_price_8GBFLASH` (`price_8GBFLASH`),
  KEY `ix_price_storage_price_8GBHD` (`price_8GBHD`),
  KEY `ix_price_storage_price_ARMRTL8188` (`price_ARMRTL8188`),
  KEY `ix_price_storage_price_AX700` (`price_AX700`),
  KEY `ix_price_storage_price_C100` (`price_C100`),
  KEY `ix_price_storage_price_E300` (`price_E300`),
  KEY `ix_price_storage_price_T300` (`price_T300`),
  KEY `ix_price_storage_price_ThinVirt` (`price_ThinVirt`),
  KEY `ix_price_storage_price_X86Intel` (`price_X86Intel`),
  KEY `ix_price_storage_price_drivercd` (`price_drivercd`),
  KEY `ix_price_storage_requisition_number` (`requisition_number`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_storage`
--

LOCK TABLES `price_storage` WRITE;
/*!40000 ALTER TABLE `price_storage` DISABLE KEYS */;
INSERT INTO `price_storage` VALUES (1,'2017000001','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(2,'2017000002','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(3,'2017000003','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(4,'2017000004','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(5,'2017000005','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(6,'2017000006','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(7,'2017000007','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(8,'2017000008','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(9,'2017000009','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(10,'2017000010','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(11,'2017000011','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(12,'2017000012','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(13,'2017000013','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(14,'2017000014','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(15,'2017000015','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(16,'2017000016','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(17,'2017000017','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(18,'2017000018','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(19,'2017000019','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(20,'2017000020','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(21,'2017000022','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(22,'2017000024','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','0.0','45','0','15','0.0','460.0','0.0','0.0','0.0'),(23,'2017000026','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(24,'2017000027','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(25,'2017000028','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(26,'2017000029','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(27,'2017000030','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(28,'2017000031','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(29,'2017000032','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(30,'2017000033','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','405','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(31,'2017000034','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(32,'2017000035','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(33,'2017000036','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(34,'2017000037','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(35,'2017000038','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(36,'2017000039','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(37,'2017000040','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(38,'2017000041','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(39,'2017000042','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(40,'2017000043','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(41,'2017000044','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(42,'2017000045','350.00','510.00','350.0','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.0','0.0','0.0','0.0'),(43,'2017000046','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(44,'2017000047','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(45,'2017000048','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(46,'2017000049','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(47,'2017000079','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(48,'2017000078','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(49,'2017000077','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(50,'2017000080','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(51,'2017000075','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(52,'2017000074','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(53,'2017000073','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(54,'2017000072','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(55,'2017000071','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(56,'2017000070','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(57,'2017000069','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(58,'2017000068','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(59,'2017000067','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(60,'2017000081','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(61,'2017000065','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(62,'2017000064','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(63,'2017000063','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(64,'2017000062','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(65,'2017000061','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(66,'2017000060','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(67,'2017000059','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(68,'2017000058','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(69,'2017000057','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(70,'2017000056','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(71,'2017000055','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(72,'2017000054','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(73,'2017000051','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(74,'2017000050','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(75,'2017000052','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(76,'2017000053','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(77,'2017000082','350.00','510.00','350.00','0.0','0.0','64','156','0','0.0','0.0','50','65','85','155','245','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(78,'2017000083','350.00','510.00','400.00','0.0','0.0','65','156','0','0.0','0.0','70','88','85','155','450','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(79,'2017000084','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(80,'2017000085','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(81,'2017000086','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(82,'2017000087','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(83,'2017000088','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(84,'2017000089','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(85,'2017000090','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','70','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(86,'2017000091','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(87,'2017000093','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(88,'2017000094','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(89,'2017000095','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(92,'2017000104','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(93,'2017000101','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(94,'2017000102','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(96,'2017000105','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(97,'2017000106','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(98,'2017000107','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(99,'2017000109','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(100,'2017000108','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(101,'2017000110','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(102,'2017000097','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(105,'2017000111','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(106,'2017000112','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(107,'2017000114','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(108,'2017000113','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(109,'2017000115','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(110,'2017000117','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(111,'2017000116','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(112,'2017000119','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(113,'2017000120','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(114,'2017000121','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(115,'2017000122','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(116,'2017000123','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(117,'2017000124','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(118,'2017000125','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(119,'2017000126','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(120,'2017000127','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(121,'2017000131','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(122,'2017000129','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(123,'2017000132','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(124,'2017000133','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(126,'2017000128','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(128,'2017000142','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(129,'2017000143','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(130,'2017000145','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(131,'2017000134','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(132,'2017000136','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(133,'2017000140','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(134,'2017000141','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(135,'2017000144','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(138,'2017000151','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(139,'2017000153','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(140,'2017000146','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(141,'2017000137','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(142,'2017000154','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(144,'2017000156','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(145,'2017000152','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','0.0','0.0','0','15','0.0','460.00','590.00','0.0','0.0'),(146,'2017000160','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(147,'2017000159','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(148,'2017000158','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(149,'2017000157','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(150,'2017000155','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(152,'2017000165','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(153,'2017000166','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(154,'2017000164','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(155,'2017000167','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(156,'2017000169','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(158,'2017000171','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(159,'2017000168','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(160,'2017000163','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(161,'2017000172','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(162,'2017000173','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(163,'2017000174','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','590.00','0.0','0.0'),(166,'2017000178','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(167,'2017000179','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','155','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(168,'2017000180','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(169,'2017000181','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(170,'2017000177','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(171,'2017000182','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(172,'2017000183','350.00','0.0','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','0.0','0.0','0.0'),(173,'2017000188','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(177,'2017000190','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(179,'2017000184','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(183,'2017000193','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','0.0','0.0'),(184,'2017000186','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','0.0','0.0'),(185,'2017000194','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(187,'2017000206','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(189,'2017000207','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(190,'2017000205','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(191,'2017000204','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(192,'2017000199','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(193,'2017000208','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','0.0'),(195,'2017000210','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(196,'2017000212','350.00','510.00','400.00','0.0','0.0','75','170','0','0.0','0.0','60','75','85','205','350','0.0','0.0','25','45','0','15','0.0','460.00','540.00','570.00','440'),(197,'2017000211','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0','0.0');
/*!40000 ALTER TABLE `price_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_orders`
--

DROP TABLE IF EXISTS `production_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_orders` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(64) DEFAULT NULL,
  `order_number` varchar(64) DEFAULT NULL,
  `requisition_number` varchar(64) DEFAULT NULL,
  `adress` varchar(64) DEFAULT NULL,
  `client_name` varchar(64) DEFAULT NULL,
  `client_tel` varchar(64) DEFAULT NULL,
  `saler_name` varchar(64) DEFAULT NULL,
  `saler_tel` varchar(64) DEFAULT NULL,
  `delivery_way` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `cpu` varchar(64) DEFAULT NULL,
  `cpu_other` varchar(64) DEFAULT NULL,
  `memory` varchar(64) DEFAULT NULL,
  `memory_other` varchar(64) DEFAULT NULL,
  `harddisk` varchar(64) DEFAULT NULL,
  `harddisk_other` varchar(64) DEFAULT NULL,
  `usb` varchar(64) DEFAULT NULL,
  `usb_other` varchar(64) DEFAULT NULL,
  `com` varchar(64) DEFAULT NULL,
  `com_other` varchar(64) DEFAULT NULL,
  `network` varchar(64) DEFAULT NULL,
  `wireless` varchar(64) DEFAULT NULL,
  `wireless_other` varchar(64) DEFAULT NULL,
  `test1` varchar(64) DEFAULT NULL,
  `test2` varchar(64) DEFAULT NULL,
  `test3` varchar(64) DEFAULT NULL,
  `test4` varchar(64) DEFAULT NULL,
  `os` varchar(64) DEFAULT NULL,
  `os_version` varchar(64) DEFAULT NULL,
  `trademark` varchar(64) DEFAULT NULL,
  `logo` varchar(64) DEFAULT NULL,
  `instructions` varchar(64) DEFAULT NULL,
  `certificate` varchar(64) DEFAULT NULL,
  `warrantycard` varchar(64) DEFAULT NULL,
  `discs` varchar(64) DEFAULT NULL,
  `package` varchar(64) DEFAULT NULL,
  `label` varchar(64) DEFAULT NULL,
  `label_content` varchar(64) DEFAULT NULL,
  `install` varchar(64) DEFAULT NULL,
  `lend` varchar(64) DEFAULT NULL,
  `return_data` varchar(64) DEFAULT NULL,
  `series_number` varchar(64) DEFAULT NULL,
  `nums` varchar(64) DEFAULT NULL,
  `delivery_data` varchar(64) DEFAULT NULL,
  `tester` varchar(64) DEFAULT NULL,
  `test_data` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `auditor` varchar(64) DEFAULT NULL,
  `product_price` varchar(64) DEFAULT NULL,
  `memory_price` varchar(64) DEFAULT NULL,
  `harddisk_price` varchar(64) DEFAULT NULL,
  `install_price` varchar(64) DEFAULT NULL,
  `wireless_price` varchar(64) DEFAULT NULL,
  `discs_price` varchar(64) DEFAULT NULL,
  `all_const` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_production_orders_adress` (`adress`),
  KEY `ix_production_orders_all_const` (`all_const`),
  KEY `ix_production_orders_auditor` (`auditor`),
  KEY `ix_production_orders_certificate` (`certificate`),
  KEY `ix_production_orders_client_name` (`client_name`),
  KEY `ix_production_orders_client_tel` (`client_tel`),
  KEY `ix_production_orders_com` (`com`),
  KEY `ix_production_orders_com_other` (`com_other`),
  KEY `ix_production_orders_company_name` (`company_name`),
  KEY `ix_production_orders_cpu` (`cpu`),
  KEY `ix_production_orders_cpu_other` (`cpu_other`),
  KEY `ix_production_orders_delivery_data` (`delivery_data`),
  KEY `ix_production_orders_delivery_way` (`delivery_way`),
  KEY `ix_production_orders_discs` (`discs`),
  KEY `ix_production_orders_discs_price` (`discs_price`),
  KEY `ix_production_orders_harddisk` (`harddisk`),
  KEY `ix_production_orders_harddisk_other` (`harddisk_other`),
  KEY `ix_production_orders_harddisk_price` (`harddisk_price`),
  KEY `ix_production_orders_install` (`install`),
  KEY `ix_production_orders_install_price` (`install_price`),
  KEY `ix_production_orders_instructions` (`instructions`),
  KEY `ix_production_orders_label` (`label`),
  KEY `ix_production_orders_label_content` (`label_content`),
  KEY `ix_production_orders_lend` (`lend`),
  KEY `ix_production_orders_logo` (`logo`),
  KEY `ix_production_orders_memory` (`memory`),
  KEY `ix_production_orders_memory_other` (`memory_other`),
  KEY `ix_production_orders_memory_price` (`memory_price`),
  KEY `ix_production_orders_model` (`model`),
  KEY `ix_production_orders_network` (`network`),
  KEY `ix_production_orders_nums` (`nums`),
  KEY `ix_production_orders_os` (`os`),
  KEY `ix_production_orders_os_version` (`os_version`),
  KEY `ix_production_orders_package` (`package`),
  KEY `ix_production_orders_product_price` (`product_price`),
  KEY `ix_production_orders_remarks` (`remarks`),
  KEY `ix_production_orders_return_data` (`return_data`),
  KEY `ix_production_orders_saler_name` (`saler_name`),
  KEY `ix_production_orders_saler_tel` (`saler_tel`),
  KEY `ix_production_orders_series_number` (`series_number`),
  KEY `ix_production_orders_test1` (`test1`),
  KEY `ix_production_orders_test2` (`test2`),
  KEY `ix_production_orders_test3` (`test3`),
  KEY `ix_production_orders_test4` (`test4`),
  KEY `ix_production_orders_test_data` (`test_data`),
  KEY `ix_production_orders_tester` (`tester`),
  KEY `ix_production_orders_trademark` (`trademark`),
  KEY `ix_production_orders_usb` (`usb`),
  KEY `ix_production_orders_usb_other` (`usb_other`),
  KEY `ix_production_orders_warrantycard` (`warrantycard`),
  KEY `ix_production_orders_wireless` (`wireless`),
  KEY `ix_production_orders_wireless_other` (`wireless_other`),
  KEY `ix_production_orders_wireless_price` (`wireless_price`),
  KEY `ix_production_orders_order_number` (`order_number`),
  KEY `ix_production_orders_requisition_number` (`requisition_number`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_orders`
--

LOCK TABLES `production_orders` WRITE;
/*!40000 ALTER TABLE `production_orders` DISABLE KEYS */;
INSERT INTO `production_orders` VALUES (1,'中山志捷（越南）','Z-01G1200157','2017000001','越南宁平省安谟县安林社','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','67','2017.1.9','杨木娇 李秀荣','2017.1.5','快递单号：670854485967 电源：5V 2A','','350.00','0','0.0','0.0','0','0','23450'),(2,'STAR TIGER LIMITED(弘邦)','Y-HG1203647','2017000002','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','1个串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.4','杨木娇 李秀荣','2017.1.4','  电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(3,'中山市志捷鞋业技术服务有限公司','B-R6H010001','2017000003','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-88287027-522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','cT170106071-cT170106076','3','2017.1.11','杨木娇 李秀荣','2017.1.5','快递单号：   电源：5V 2A','','350.00','0','0.0','0.0','0','0','1050'),(4,'中山市志捷鞋业技术服务有限公司','B-M1G120059','2017000004','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-88287027-522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','3','2017.1.11','杨木娇 李秀荣','2017.1.5',' 电源：5V 2A','','350.00','0','0.0','0.0','0','0','1050'),(5,'中山市志捷鞋业技术服务有限公司','B-D5G120031','2017000005','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','驱动光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017.1.11','杨木娇 李秀荣','2017.1.8','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','1750'),(6,'CASTLE SKY LIMITED(宏美)','T-21H0100049','2017000006','越南清化省宏化县黄英乡黄龙工业区（宏美二厂）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.13','杨木娇','2017.1.12','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(7,'REDFIRE GLOBAL LIMITED','N-01H0100131','2017000007','越南海阳省平江县平宣社平提村（汎达）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.13','李秀荣','2017.1.12','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(8,'中山市志捷鞋业技术服务有限公司','B-D5G120002','2017000008','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.13','杨木娇 李秀荣','2017.1.13','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(9,'中山市志捷鞋业技术服务有限公司','B-R3G120002','2017000009','广东省中山市张家边沙边工业区敬业路1号（志捷）','魏庆红','0760-882807027-522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.13','杨木娇 李秀荣','2017.1.13','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(10,'弘邦（越南）鞋业有限公司','Y-11H0100244','2017000010','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.19','杨木娇','2017.1.19','   电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(11,'WEALTH EMPEROR LIMITED','6-01H0100052','2017000011','越南海防市水源县天香社（正川）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','','否','','','5','2017.1.13','杨木娇 李秀荣','2017.1.12','快递单号：   电源：5V 2A','','350.00','0','0.0','0.0','0','0','1750'),(12,'弘邦（越南）鞋业有限公司','Y-11G1203881','2017000012','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰空运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','6','2017.1.19','杨木娇','2017.1.19','  电源：5V 2A','','350.00','0','0.0','0.0','0','0','2100'),(13,'弘邦（越南）鞋业有限公司','Y-11H0100022','2017000013','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017.1.19','杨木娇 李秀荣','2017.1.19','  电源：5V 2A','','350.00','0','0.0','0.0','0','0','700'),(14,'弘邦（越南）鞋业有限公司','Y-11H0100140','2017000014','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017.1.19','杨木娇 李秀荣','2017.1.19','   电源：5V2A','','350.00','0','0.0','0.0','0','0','350'),(15,'越南弘邦','Y-11H0100136','2017000015','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','远程协助安装','否','','','1','2017.1.19','杨木娇','2017.1.19',' 电源：5V 2A','','350.00','0','0.0','0.0','0','0','350'),(16,'毕马杰橡胶科技（常熟）有限公司','PMG-20161122-1','2017000016','江苏省常熟经济开发区高新技术产业园阳光大道55号','王翊晖','15850816460','梁嘉惠','13316669080','顺丰陆运','AX800','其它','N2805','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N330NW','无需安装','否','','*AX170106001-AX170106010*','10','2017.1.6','杨木娇  李秀荣','2017.1.6','快递单号：504779719603   电源：12V 3A','','460.0','64','50','0.0','0','0','5740'),(17,'越南亚欣','G-01G1200301','2017000017','越南南定省直宁县古李镇','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/19','杨木娇','2017/1/19','','','350.00','0','0.0','0.0','0','0','350'),(18,'越南永正','U-01H0100094','2017000018','越南清化省安定县定莲乡','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017/2/7','杨木娇、李秀荣','2017/2/7','','','350.00','0','0.0','0.0','0','0','700'),(19,'越南上杰','8-11H0101444','2017000019','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017/2/7','杨木娇、李秀荣','2017/2/7','','','350.00','0','0.0','0.0','0','0','700'),(20,'越南宏美一厂','T-11H0100711','2017000020','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/7','杨木娇、李秀荣','2017/2/7',' 电源：5V2A','','350.00','0','0.0','0.0','0','0','350'),(21,'越南弘邦','Y-11H0102033','2017000022','越南清化省静家县春林乡尼山经济区（弘邦）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017/2/7','杨木娇、李秀荣','2017/2/7','','','350.00','0','0.0','0.0','0','0','700'),(23,'越南弘邦','Y-11H0102187','2017000024','越南清化省静家县春林乡尼山经济区(弘邦)','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/7','杨木娇、李秀荣','2017/2/7','','','350.00','0','0.0','0.0','0','0','350'),(25,'南京铠硕信息技术有限公司','RN-ZXP-2017021301','2017000026','南京市建邺区庐山路158号嘉业国际3号楼2309','张晓亮','13952097034','朱晓平','13416674830','顺丰陆运','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','E300ARM','无需安装','否','','','8','2017-06-13','杨木娇  李秀荣','2017-06-12','2017/2/15发货15PCS，','','350.00','0','0.0','0.0','0','0','2800'),(26,'中山志捷鞋业技术服务有限公司','B-R6H020003','2017000027','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','6','2017/2/15','杨木娇  李秀荣','2017/2/15','','','350.00','0','0.0','0.0','0','0','2100'),(27,'广东智城信息技术有限公司','2017011901','2017000028','东莞市莞城区东城大道188号新华大夏13楼2号','-','-','腾伟','18676917151','送货上门','AX700','J1900 四核2.0G','','2G','','其它','32GB固态硬盘','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Windos','','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','AX700NW','无需安装','否','','','1','2017/1/19','杨木娇','2017/1/19','','','510.00','64','85','0.0','0','0','659'),(28,'重庆道谷科技有限公司','2017021401','2017000029','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','13922542822','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','迷你仔   T300NW','无需安装','否','','','1','2017/2/14','杨木娇  李秀荣','2017/2/14','快单号：506 081 810 026','','350.00','0','0.0','0.0','0','0','350'),(29,'越南亚欣','G-01H0100181','2017000030','越南南定省直宁县古李镇','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/14','杨木娇  李秀荣','2017/2/14','快递单号：401 867 523 424','','350.00','0','0.0','0.0','0','0','350'),(30,'越南弘邦','Y-11H0200061','2017000031','越南清化省静家县春林乡尼山经济区（弘邦)','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/14','杨木娇  李秀荣','2017/2/14','快递单号：401 867 523 382','','350.00','0','0.0','0.0','0','0','350'),(31,'越南宏美二厂','T-21H0200413','2017000032','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/14','杨木娇  李秀荣','2017/2/14','快单号：506 018 081 415','','350.00','0','0.0','0.0','0','0','350'),(32,'网神信息技术（北京）股份有限公司','80000506','2017000033','北京市朝阳区来广营创远路36号院朝来高科技产业园7号楼','韦艳吉','18510252055','梁嘉惠','13316669080','顺丰陆运','AX800','其它','I3 4005U','4G','','其它','256GB固态硬盘','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Windos','','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','N830','无需安装','否','','','120','2017-02-13','杨木娇  李秀荣','2017年1月份','','','460.00','156','405','0.0','0','0','122520'),(33,'中山志捷鞋业技术服务有限公司','B-R3H010005','2017000034','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/10','杨木娇  李秀荣','2017/2/10','快递单号：401 867 523 373','','350.00','0','0.0','0.0','0','0','350'),(35,'海南汉普科技有限公司','RN-TW-20170209001','2017000035','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾伟','18676917151','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','4','2017/2/9','杨木娇  李秀荣','2017/2/9','快递单号：504 779 719 815','','350.00','0','0.0','0.0','0','0','1400'),(36,'东莞市东城大友电脑经营部','RN-ZXP-20170207001','2017000036','东莞市东城区岗贝赛格电子市场','朱双艳','13038832660','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','白牌工包','定制标签','DX86','无需安装','否','','','17','2017/2/8','杨木娇  李秀荣','2017/2/8','快递单号：504 779 719 781','','350.00','0','0.0','0.0','0','0','5950'),(37,'东莞市捷诚计算机科技有限公司','RN-LJH-2017021301','2017000037','东莞市南城天安数码城A1栋521室','陈小姐','13829261816','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N600NW','无需安装','否','','','10','2017-02-16','杨木娇  李秀荣','2017-02-16','快单号：506 081 810 123','','510.00','64','50','0.0','0','0','6240'),(38,'厦门吉宏包装科技股份有公司黄冈分公司','RN-WB-2017021701','2017000038','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','孙忠','13367260097','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','N100NW','无需安装','否','','','10','2017-02-22','杨木娇  李秀荣','2017/2/22','2月28号发货5PCS、2017年3月4日发货5PCS','','350.00','0','0.0','0.0','0','0','3500'),(39,'毕马杰橡胶科技（常熟）有限公司','2017022101','2017000039','江苏省常熟经济开发区高新技术产业园阳光大道55号','王翊晖','15850816460','梁嘉惠','13316669080','顺丰陆运','AX800','其它','N2805','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N330NW','无需安装','否','','','5','2017-02-24','杨木娇  李秀荣','2017/2/23','快递单号：506 081 810 248','','460.0','64','50','0.0','0','0','2870'),(40,'深圳凯特电气有限公司','RN-WZP-2016022301','2017000040','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121133','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','中性画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','ARM  C310NW','无需安装','否','','','2','2017/2/24','杨木娇  李秀荣','2017/2/24','快递单号：506 018 081 3239（旧C300主板）','','350.00','0','0.0','0.0','0','0','700'),(41,'东莞市壹华电子科技有限公司','RN-TW-2017021501','2017000041','东莞市管城区东城大道188号新华大厦13楼2号','文林','0769-22482278','腾伟','18676917151','送货上门','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','AX707NW','上门安装','否','','','6','2017/2/25','杨木娇  李秀荣','2017/2/24','','','510.00','64','50','0.0','0','0','3744'),(42,'东莞市壹华电子科技有限公司','RN-TW-2017021501','2017000042','东莞市管城区东城大道188号新华大厦13楼2号','文林','0769-22482278','腾伟','18676917151','送货上门','AX700','J1900 四核2.0G','','2G','','16GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','','压力测试','','','Windos','','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','AX707NW','上门安装','否','','','4','2017/2/25','杨木娇  李秀荣','2017/2/24','','','510.00','64','65','0.0','0','0','2556'),(43,'越南亚欣','G-01G120031','2017000043','越南南定省直宁县古李镇','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/8','杨木娇  李秀荣','2017/2/8','','','350.00','0','0.0','0.0','0','0','350'),(44,'广东联迪信息科技有限公司','RN-WB-2017022301','2017000044','广东省珠海市香洲区兴华路212号能源大厦2楼','周卫华','0756-2139373','汪斌','13922542822','顺丰陆运','AX700','J1900 四核2.0G','','4G','','16GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','','压力测试','','','Windos','','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','白牌工包','定制标签','AX552-LD','无需安装','否','','','1','2017/2/25','杨木娇','2017/2/25','快递单号：506 081 810 257，电源：12V 5A','','510.00','156','65','0.0','0','0','731'),(46,'越南弘邦','Y-11H0103031','2017000045','越南清化省静家县春林乡尼山经济区（弘邦)','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/2/8','杨木娇  李秀荣','2017/2/8','','','350.00','0','0.0','0.0','0','0','350'),(47,'东莞好景','2017022201','2017000046','东莞市长安镇','-','-','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','AX700NW','无需安装','否','','','4','2017/2/22','杨木娇  李秀荣','2017/2/22','快递单号：506 081 810 211','','510.00','64','50','0.0','0','0','2496'),(53,'越南跃升','K-01H0200035','2017000047','越南海阳省锦江县莱格镇5号国道43公里','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇、李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(54,'越南正川','6-01H0200071','2017000048','越南海防市水源县天香社','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','1750'),(55,'越南永正','U-01H0200114','2017000049','越南清化省安定县定莲乡','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','4','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','1400'),(56,'越南立川','D-11H0200588','2017000050','越南宁平省三叠市三叠工业区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(57,'福建威霖实业有限公司','3-11H020076','2017000051','福建省福清市阳下镇东田村','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017/3/6','杨木娇、李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(58,'中山志捷鞋业技术服务有限公司','B-R1H020019','2017000052','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(59,'越南上杰','8-01H0200068','2017000053','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(60,'中山志捷鞋业技术服务有限公司','B-R1H020026','2017000054','广东中山张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(62,'中山志捷鞋业技术服务有限公司','B-M1H020047','2017000055','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(63,'海南汉普科技有限公司','RN-TW-20170302001','2017000056','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾伟','18676917151','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','10','2017-03-06','杨木娇  李秀荣','2017/3/6','快递单号：957 550 372 183','','350.00','0','0.0','0.0','0','0','3500'),(64,'中山志捷鞋业技术服务有限公司','B-D7H020002','2017000057','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','3','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','1050'),(65,'中山志捷鞋业技术服务有限公司','B-D8H020003','2017000058','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(66,'中山志捷鞋业技术服务有限公司','B-R6H020008','2017000059','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','700'),(67,'中山志捷鞋业技术服务有限公司','B-M1H020035','2017000060','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','700'),(68,'越南永正','U-01H0200146','2017000061','越南清化省安定县定莲乡','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(69,'越南百倢','M-61H0200060','2017000062','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(70,'越南百倢','M-61H0200120','2017000063','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(71,'越南永川','Z-11H0200167','2017000064','越南宁平省安谟县安林社','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(72,'越南宏美二厂','T-01H0200147','2017000065','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','3','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','1050'),(74,'越南邦威','X-11G1100521','2017000067','越南海防市样京郡兴道坊','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','700'),(75,'越南永弘','R-11H0202059','2017000068','越南清化省河中县河平乡郎艺工业区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇  李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(76,'越南亚欣','G-01H0200240','2017000069','越南南定升直宁县古礼镇','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','1750'),(77,'越南弘邦','Y-11H0200826','2017000070','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','700'),(78,'越南弘邦','Y-08H0200001','2017000071','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(79,'越南弘邦','Y-11H0202849','2017000072','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(80,'越南弘邦','Y-01H0200071','2017000073','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','700'),(81,'越南弘邦','Y-11H0202022','2017000074','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(82,'越南弘邦','Y-11H0201975','2017000075','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','700'),(84,'越南弘邦','Y-11H0203657','2017000077','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','700'),(85,'越南弘邦','Y-11H0203667','2017000078','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-06','杨木娇  李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','350'),(86,'越南弘邦','Y-11H0204120','2017000079','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','edit','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-06','杨木娇 李秀荣','2017-03-06','','','350.00','0','0.0','0.0','0','0','700'),(87,'越南弘邦','Y-11H0202263','2017000080','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','4','2017-03-06','杨木娇、李秀荣','2017/3/6','','','350.00','0','0.0','0.0','0','0','1400'),(88,'越南宏美二厂','T-21H0202439','2017000081','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-07','杨木娇、李秀荣','2017/3/7','','','350.00','0','0.0','0.0','0','0','350'),(89,'东莞市东城大友电脑经营部','RN-ZXP-20170303001','2017000082','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','中性画面','不含说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','VDI  瘦客户机  DX86','无需安装','否','','','10','2017-03-08','杨木娇  李秀荣','2017/3/8','','','350.00','0','0.0','0.0','0','0','3500'),(90,'东莞绿洲鞋业有限公司','RN-WCR-20170306001','2017000083','东莞市厚街镇赤岭','陈工','18998002188','梁嘉惠','13316669080','顺丰陆运','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N200NW','无需安装','否','','','2','2017-03-07','杨木娇  李秀荣','2017/3/7','','','400.00','0','0.0','0.0','0','0','800'),(91,'东莞雅利箱包有限公司','RN-WCR-20160928001','2017000084','东莞市厚街镇溪头社区溪中路1号','吴生','13694989556','梁嘉惠','13316669080','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N100NW','上门安装','否','','','4','2017-03-04','杨木娇  李秀荣','2017/3/4','','','350.00','0','0.0','0.0','0','0','1400'),(92,'北京佰高讯通科技有限公司','RN-WB-2017030601','2017000085','北京市朝阳区建国路93号院万达广场12号楼709室','徐绍华','13910610092','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','2G','','16GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1571','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','AX700NW','无需安装','否','','','5','2017-03-08','杨木娇  李秀荣','2017/3/8','','','510.00','75','70','0.0','0','0','3275'),(93,'越南弘邦','Y-08H0200022','2017000086','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','7','2017-03-09','杨木娇  李秀荣','2017/3/9','','','350.00','0','0.0','0.0','0','0','2450'),(94,'越南弘邦','Y-11H0204765','2017000087','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-09','杨木娇  李秀荣','2017/3/9','','','350.00','0','0.0','0.0','0','0','700'),(95,'越南弘福','H-01H0300024','2017000088','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','3','2017-03-09','杨木娇  李秀荣','2017/3/9','','','350.00','0','0.0','0.0','0','0','1050'),(96,'中山志捷鞋业技术服务有限公司','B-R6H030002','2017000089','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-09','杨木娇  李秀荣','2017/3/9','','','350.00','0','0.0','0.0','0','0','350'),(97,'中山志捷鞋业技术服务有限公司','B-R6H030003','2017000090','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-09','杨木娇  李秀荣','2017/3/9','','','350.00','0','0.0','0.0','0','0','700'),(98,'越南宏美一厂','T-11H0204427','2017000091','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-13','杨木娇  李秀荣','2017/3/13','','','350.00','0','0.0','0.0','0','0','350'),(100,'中山精美鞋业有限公司','S-CQH020037','2017000093','广东省中山市火炬开发区世纪一路2号','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-13','杨木娇  李秀荣','2017-03-13','','','350.00','0','0.0','0.0','0','0','350'),(101,'越南亚欣','G-01H0300072','2017000094','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-13','杨木娇  李秀荣','2017-03-13','','','350.00','0','0.0','0.0','0','0','350'),(102,'越南宏美二厂','T-21H0301825','2017000095','越南清化省宏化县黄英乡黄龙工业区(宏美二厂）','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-13','杨木娇  李秀荣','2017-03-13','','','350.00','0','0.0','0.0','0','0','350'),(106,'广州明景信息科技有限公司','PO1-2017031401TW','2017000097','广州市天河区王园路43号3A05','章亮','18620100215','腾玮','18676917151','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(111,'港芝（东莞）电子制造厂有限公司','CHPO-16-1115','2017000101','广东东莞塘厦平山188工业区','崔娜杰','0769-87720639','汪斌','13922542822','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C310NW','无需安装','否','','','30','2017-03-24','杨木娇 李秀荣','2017/3/20','','','350.00','0','0.0','0.0','0','0','10500'),(112,'港芝（东莞）电子制造厂有限公司','CHPO-16-1117','2017000102','广东东莞塘厦平山188工业区','崔娜杰','0769-87720639','汪斌','13922542822','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C310NW','无需安装','否','','','20','2017-03-24','杨木娇 李秀荣','2017/3/20','','','350.00','0','0.0','0.0','0','0','7000'),(115,'东莞怡合达自动化科技有限公司','GDRE-WCF-20170118087','2017000104','东莞市虎门镇北栅东坊工业区','李启军','18938271776','吴成福','13560898520','送货上门','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','E398','上门安装','否','','','50','2017-03-17','杨木娇 李秀荣','2017/3/17','','','400.00','0','0.0','0.0','0','0','20000'),(116,'越南上杰','8-11H0300882','2017000105','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-17','杨木娇 李秀荣','2017/3/17','','','350.00','0','0.0','0.0','0','0','700'),(117,'越南永弘','R-11H0300793','2017000106','越南清化省河中县河平乡郎艺工业区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-15','杨木娇、李秀荣','2017/3/15','','','350.00','0','0.0','0.0','0','0','700'),(118,'深圳凯特电气有限公司','RN-WZP-20170320001','2017000107','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121229','朱晓平','13416674830','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','中性画面','标准说明书','不含合格证','不含保修卡','','定制包装','定制标签','ARM C310 ','','否','','','2','2017-03-21','杨木娇 李秀荣','2017/3/21','','','350.00','0','0.0','0.0','0','0','700'),(119,'越南弘邦','Y-11H0301016','2017000108','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-22','杨木娇、李秀荣','2017/3/21','','','350.00','0','0.0','0.0','0','0','350'),(120,'广州明景信息科技有限公司','PO1-2017032001TW','2017000109','广州市天河区王园路43号3A05','章亮','18620100215','腾玮','18676917151','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(121,'中山志捷鞋业技术服务有限公司','B-D8H030001','2017000110','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-22','杨木娇、李秀荣','2017/3/22','','','350.00','0','0.0','0.0','0','0','350'),(122,'中山志捷鞋业技术服务有限公司','B-D8H030002','2017000111','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-22','杨木娇、李秀荣','2017/3/22','','','350.00','0','0.0','0.0','0','0','350'),(123,'厦门吉宏包装科技股份有公司黄冈分公司','RN-LJH-2017032201','2017000112','湖北省黄冈市南湖工业园南湖5路6号湖北冷源冷莲公司院内','孙忠','13367260097','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','6','2017-03-23','杨木娇、李秀荣','2017/3/22','','','350.00','0','0.0','0.0','0','0','2100'),(127,'中山志捷鞋业技术服务有限公司','B-D2H030016','2017000113','广东中山市张家边沙边工业区敬业路1号','魏庆红','0760-88287027转522','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017-03-27','杨木娇、李秀荣','2017/3/25','','','350.00','0','0.0','0.0','0','0','1750'),(128,'越南上杰','8-11H0302262','2017000114','越南清化省清化市礼门工业区B区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','edit','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','白牌工包','定制标签','C100NW','无需安装','否','','','2','2017-03-27','杨木娇、李秀荣','2017/3/27','','','350.00','0','0.0','0.0','0','0','700'),(129,'越南正川','6-01H0300198','2017000115','越南海防市水源县天香社','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017-03-27','杨木娇、李秀荣','2017/3/27','','','350.00','0','0.0','0.0','0','0','1750'),(130,'越南宏美一厂','T-11H0302873','2017000116','越南清化省宏化县黄英乡黄龙工业区（宏美一厂）','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1596','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-28','杨木娇、李秀荣','2017/3/28','','','350.00','0','0.0','0.0','0','0','700'),(131,'东莞市厚街盛创电脑配件经营部','RN-LJH-20170327002','2017000117','广东省东莞市厚街镇厚街村公园新村13巷6号','温婉笑','13650292935','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1596','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','4','2017-03-28','杨木娇、李秀荣','2017/3/28','','','350.00','0','0.0','0.0','0','0','1400'),(133,'东莞市业勤电脑网络有限公司','RN-LJH-2017032701','2017000119','东莞市莞城东城大道75号金城大厦601室','陈小姐','0769-22336890','梁嘉和','13790639813','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1596','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','40','2017-03-29','杨木娇、李秀荣','2017/3/29','','','350.00','0','0.0','0.0','0','0','14000'),(134,'越南亚欣','G-01H0300207','2017000120','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1596','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','2','2017-03-30','杨木娇、李秀荣','2017/3/29','','','350.00','0','0.0','0.0','0','0','700'),(135,'东莞怡合达自动化科技有限公司','GDRE-WCF-20170328087','2017000121','东莞市虎门镇北栅东坊工业区','李启军','18938271776','吴成福','13560898520','送货上门','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','E398','上门安装','否','','','30','2017-04-05','杨木娇、李秀荣','2017-03-29','','','400.00','0','0.0','0.0','0','0','12000'),(136,'越南永川','Z-01H0300158','2017000122','越南宁平省安谟县安林社','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','29','2017-04-05','杨木娇、李秀荣','2017-03-30','','','350.00','0','0.0','0.0','0','0','10150'),(138,'越南弘福','H-01H0300217','2017000123','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','3','2017-04-05','杨木娇、李秀荣','2017-03-29','','','350.00','0','0.0','0.0','0','0','1050'),(140,'越南宏美二厂','T-21H0302383','2017000124','越南清化省宏化县黄英乡黄龙工业区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1595','标准商标','标准画面','不含说明书','不含合格证','不含保修卡','驱动光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-03-17','杨木娇、李秀荣','2017/3/16','','','350.00','0','0.0','0.0','0','0','350'),(141,'深圳凯特电气有限公司','RN-WZP-2016022301-1','2017000125','深圳市宝安福永怀德村翠冈第三工业区12幢四楼','李鹏武','0755-23121229','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1585','不含商标','中性画面','标准说明书','不含合格证','不含保修卡','不含光盘','白牌工包','定制标签','ARM C310NW','','否','','','1','2017-03-09','杨木娇、李秀荣','2017-03-09','','','350.00','0','0.0','0.0','0','0','350'),(142,'东莞思快电脑','RN-LJH-20170331001','2017000126','东莞南城天安数码城','陈生','18688695165','梁嘉惠','13316669080','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1550','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','C310NW','无需安装','否','','','100','2017-03-31','杨木娇、李秀荣','2017-03-28','','','350.00','0','0.0','0.0','0','0','35000'),(143,'东莞厚街盛创电脑配件经营部','RN-LJH-20170405001','2017000127','广东省东莞市厚街镇厚街村公园新村13巷6号','温婉笑','13650292935','梁嘉和','13790639813','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100CW','无需安装','否','','','8','2017-04-05','杨木娇','2017-04-05','','','350.00','0','0.0','0.0','0','0','2800'),(144,'深圳市神州动力数码有限公司','RN-ZXP-2017033101','2017000128','深圳市南山区侨香路香年广场B座702','颜许芳','0755-83988885','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C110NW','无需安装','否','','','7','2017-04-08','杨木娇','2017-04-07','','','350.00','0','0.0','0.0','0','0','2450'),(145,'越南亚欣','G-01H0300280','2017000129','越南南定省直宁县古礼镇','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-04-05','杨木娇','2017-04-05','','','350.00','0','0.0','0.0','0','0','350'),(147,'越南弘邦','Y-01H0300159','2017000131','越南清化省静家县春林乡尼山经济区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100CW','无需安装','否','','','5','2017-04-05','杨木娇','2017-04-05','','','350.00','0','0.0','0.0','0','0','1750'),(149,'重庆道谷科技有限公司','20170406','2017000132','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','13922542822','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','定制商标','标准画面','定制说明书','定制合格证','标准保修卡','不含光盘','定制包装','定制标签','T300NW','无需安装','否','','','1','2017-04-07','杨木娇','2017-04-07','','','350.00','0','0.0','0.0','0','0','350'),(150,'越南永川','Z-01H0400035','2017000133','越南宁平省安谟县安林社','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','6','2017-04-10','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','2100'),(151,'中山精美鞋业有限公司','S-S1H030024','2017000134','广东省中山市火炬开发区世纪一路2号（精美）','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','5','2017-04-10','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','1750'),(153,'越南百倢','M-01H0300054','2017000136','越南清化省清化市礼门工业区','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-04-10','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','350'),(155,'广东众生药业股份有限公司','RN-XQL-20170401118','2017000137','广东省莞市石龙镇西湖工业区信息产业园','陈志华','0769-86100111-1271','谢秋丽','0769-22823986','','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1571','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','AX700NW','无需安装','否','','','25','2017-04-14','杨木娇、李秀荣','2017-04-13','','','510.00','75','60','0.0','0','0','16125'),(158,'中山志捷鞋业技术服务有限公司','B-D1H030007','2017000140','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-04-10','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','350'),(159,'中山志捷鞋业技术服务有限公司','B-V8H030002','2017000141','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','1','2017-04-10','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','350'),(160,'网神信息技术（北京）股份有限公司','80000613','2017000142','贵州省遵义市汇川区香港路盛邦帝标B栋29-5联邦软件公司','韦艳吉','18510252055','梁嘉惠','13316669080','顺丰陆运','AX800','其它','I3  4005U','4G','','其它','128GB固态硬盘','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Windos','','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','N800','无需安装','否','','','35','2017-04-10','杨木娇、李秀荣','2017-04-10','','','460.00','170','350','0.0','0','0','34300'),(162,'荆州市云鹏计算机科技有限公司','PO1-2017040601TW','2017000143','荆州市荆州区凤凰路72号','韩鹏','15629562867','腾玮','18676917151','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C300','无需安装','否','','','10','2017-04-08','杨木娇','2017-04-08','','','350.00','0','0.0','0.0','0','0','3500'),(163,'东莞厚街盛创电脑配件经营部','RN-WCR-20170410001','2017000144','广东省东莞市厚街镇厚街村公园新村13巷6号','刘术桂','13686121639','梁嘉和','13790639813','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','8','2017-04-12','杨木娇、李秀荣','2017-04-11','','','350.00','0','0.0','0.0','0','0','2800'),(164,'深圳市神州动力数码有限公司','RN-ZXP-2017033101','2017000145','深圳市南山区侨香路香年广场B座702','颜许芳','0755-83988885','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','ARM RTL8188网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100WF','无需安装','否','','','10','2017-04-08','杨木娇','2017-04-07','','','350.00','0','0.0','0.0','0.0','0','3500'),(165,'宁德市蕉城区思快电脑有限公司','RN-LJH-2017022001','2017000146','宁德市蕉城区闽东西路2号信达豪庭A号1106室','陈仲惠','18688695165','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(170,'梁富荣','3194537601067646','2017000151','广东省广州市南沙区大岗镇康裕路一街七巷六号','梁富荣','13570288299','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','','不含保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','4','2017-04-12','杨木娇、李秀荣','2017-04-12','','','350.00','0','0.0','0.0','0','0','1400'),(172,'东莞市东城大友电脑经营部','RN-ZXP-20170412001','2017000152','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','','定制标签','DX86','无需安装','否','','','14','2017-04-22','杨木娇、李秀荣','2017-04-21','','','350.00','0','0.0','0.0','0','0','4900'),(173,'东莞思快电脑','RN-LJH-20170412001','2017000153','东莞南城天安数码城','陈生','18688695165','梁嘉惠','13316669080','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1550','不含商标','定制画面','不含说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','C310NW','无需安装','否','','','100','2017-04-14','杨木娇、李秀荣','2017-04-10','','','350.00','0','0.0','0.0','0','0','35000'),(174,'重庆道谷科技有限公司','20170417','2017000154','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','汪斌','0769-21680186','顺丰空运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','定制包装','定制标签','迷你仔   T300NW','无需安装','否','','','1','2017-04--18','杨木娇  李秀荣','2017-04-18','快递单号：957550373382','','350.00','0','0.0','0.0','0','0','350'),(175,'杭州蓝代斯克数字技术有限公司','RN-LJH-20170419001','2017000155','杭州市西湖区翠柏路7号杭州电子商务产业园303室','邓晓宇','18158191992','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(176,'远东制杯（深圳）有限公司','PO1-2017032701TW','2017000156','深圳市龙岗区坂田街道五和大道（南）43号','杨武龙','13691898949','腾玮','18676917151','德邦陆运','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','E300NW','无需安装','否','','','2','2017-04-20','杨木娇、李秀荣','2017-04-20','','','400.00','0','0.0','0.0','0','0','800'),(177,'嘉兴市钜翔信息科技有限公司','RN-LJH-20170421001','2017000157','浙江省桐乡市梧桐街道振东新区利民路108号','俞柏华','15868348386','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N600NW','无需安装','否','','','10','2017-04-25','杨木娇、李秀荣','2017-04-24','企业版','','510.00','75','60','0.0','0','0','6450'),(178,'东莞市冠中信息技术有限公司','PO1-2017041301TW','2017000158','东莞市东城区光明管理区百分百科技园','甘红军','13712838500','腾玮','18676917151','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(179,'四川金网通电子科技有限公司','JWT1704200371','2017000159','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','3','2017-04-25','杨木娇、李秀荣','2017-04-25','','','350.00','0','0.0','0.0','0','0','1050'),(180,'四川金网通电子科技有限公司','JWT1704200386','2017000160','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','','不含标签','','无需安装','否','','','6','2017-04-25','杨木娇、李秀荣','2017-04-24','','','350.00','0','0.0','0.0','0','0','2100'),(182,'四川金网通电子科技有限公司','JWT1704270543','2017000162','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(183,'网神信息技术（北京）股份有限公司','80000667','2017000163','北京市朝阳区来广营创远路36号院朝来高科技产业园7号楼','韦艳吉','18510252055','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(184,'四川新环佳科技发展有限公司','PO1-2017042501TW','2017000164','成都市人民南路4段北成科西路3号B座301','何艳茹','028-86216671','腾玮','18676917151','德邦陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C398W','无需安装','否','','','110','2017-05-05','杨木娇、李秀荣','2017-04-21至2017-05-05','','','350.00','0','0.0','0.0','0','0','38500'),(185,'四川金网通电子科技有限公司','JWT1704200371','2017000165','成都高新西区西部园区新创路28号','易勇衡','18782985903','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','不含说明书','不含合格证','不含保修卡','不含光盘','公司彩包','公司标签','','无需安装','否','','','7','2017.04.28','李秀荣','2017.04.28','其中一台维修换新','','350.00','0','0.0','0.0','0','0','2450'),(186,'株洲高科火炬信息服务有限公司','RN-WZP-2016072001','2017000166','湖南省株洲市天元区仙月环路中国动力谷研发中心B区D栋众创空间','石小林','-','腾玮','0769-22823986','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C100','无需安装','否','','','8','2017.04.28','李秀荣','2017.04.28','','','350.00','0','0.0','0.0','0','0','2800'),(187,'株洲高科火炬信息服务有限公司','RN-WZP-2016072001','2017000167','湖南省株洲市天元区仙月环路中国动力谷研发中心B区D栋众创空间','石小林','-','腾玮','0769-22823986','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','','','基本测试','压力测试','','','Linux 版本号:','1571','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','','中性包装','定制标签','AX700','无需安装','否','','','6','2017-04-28','李秀荣','2017-04-28','','','510.00','75','60','0.0','0','0','3870'),(188,'东莞绿洲鞋业有限公司','RN-LJH-20170426003','2017000168','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','送货上门','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N200NW','无需安装','否','','','3','2017-05-04','杨木娇、李秀荣','2017-05-03','','','400.00','0','0.0','0.0','0','0','1200'),(189,'中山志捷鞋业技术服务有限公司','20170410','2017000169','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','100','2017-05-02','杨木娇、李秀荣','2017-04-21至2017-05-02','','','350.00','0','0.0','0.0','0','0','35000'),(191,'重庆道谷科技有限公司','20170502','2017000171','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','定制商标','标准画面','定制说明书','定制合格证','标准保修卡','不含光盘','中性包装','定制标签','T300NW','无需安装','否','','','9','2017-05-03','杨木娇、李秀荣','2017-05-03','','','350.00','0','0.0','0.0','0','0','3150'),(193,'重庆道谷科技有限公司','20170508','2017000172','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','定制商标','标准画面','定制说明书','定制合格证','标准保修卡','不含光盘','中性包装','定制标签','T300NW','无需安装','否','','','1','2017-05-08','杨木娇、李秀荣','2017-05-08','迷你仔','','350.00','0','0.0','0.0','0','0','350'),(194,'重庆道谷科技有限公司','20170510','2017000173','重庆市沙坪坝区金沙时代北苑15号附1号2-8','朱勇斌','18523038713','edit','-','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','定制商标','标准画面','定制说明书','定制合格证','标准保修卡','不含光盘','中性包装','定制标签','T300NW','无需安装','否','','','1','2017-05-10','杨木娇、李秀荣','2017-05-10','定制迷你仔','','350.00','0','0.0','0.0','0','0','350'),(195,'四川金星压缩机制造有限公司','17727068023645980','2017000174','四川省成都市郫县红光镇现代工业港港北区港通北三路670号','马玲','18200229828','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','1','2017-05-11','杨木娇','2017-05-11','出售淘宝','','350.00','0','0.0','0.0','0','0','350'),(198,'东莞市嘉仑信息技术有限公司','RN-LJH-20170509001-1','2017000177','东莞市南城街道周溪隆溪路5号','段小姐','0769-22788766','梁嘉惠','13316669080','顺丰陆运','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1598','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N230NW','无需安装','否','','','18','2017-06-06','杨木娇、李秀荣','2017-06-02','','','400.00','0','0.0','0.0','0','0','7200'),(199,' 李经钢','20170516171653','2017000178','江苏省南京市浦口区沿江街道威尼斯水城11街区8-1710','李经钢','13382795958','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','1','2017-05-16','杨木娇、李秀荣','2017-05-16','出售淘宝','','350.00','0','0.0','0.0','0','0','350'),(200,'东莞市东城大友电脑经营部','RN-ZXP-20170515001','2017000179','东莞市东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','中性画面','不含说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签',' 瘦客户机   DX86','无需安装','否','','','6','2017-05-17','杨木娇、李秀荣','2017-05-17','','','350.00','0','0.0','0.0','0','0','2100'),(201,'中山志捷鞋业技术服务有限公司','20170516','2017000180','广东中山市张家边沙边工业区敬业路1号','-','-','吴中平','13532686033','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','100','2017-06-13','杨木娇、李秀荣','2017-06-10','','','350.00','0','0.0','0.0','0','0','35000'),(202,'重庆高正云睿科技有限公司','RN-LJH-2017051801','2017000181','重庆市九龙坡区石桥铺一城精英国际26-17','何云武','18996009895','梁嘉惠','13316669080','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','中性画面','标准说明书','不含合格证','标准保修卡','不含光盘','中性包装','定制标签','N100NW','','否','','','5','2017-05-18','杨木娇、李秀荣','2017-05-18','','','350.00','0','0.0','0.0','0','0','1750'),(203,'深圳市东鹏程科技发展有限公司','RN-WCR-20170411002','2017000182','深圳市南山区高新南六道6号迈科龙大厦3A06','王总','13924620175','梁嘉惠','13316669080','送货上门','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','N600NW','无需安装','否','','','5','2017-05-18','杨木娇、李秀荣','2017-04-30','企业版系统','','0.0','75','60','0.0','0','0','675'),(204,'深圳市神州动力数码有限公司','RN-ZXP-2017050301','2017000183','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','钟雪梅','0755-25920360','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C100NW','无需安装','否','','','64','2017-05-27','杨木娇、李秀荣','2017-05-26','','','350.00','0','0.0','0.0','0','0','22400'),(205,'东莞市思快电脑有限公司','RN-LJH-2017052302','2017000184','东莞市南城区黄金路1号东莞天安数码城A区A1栋1006','陈仲惠','0769-22305656','梁嘉惠','13316669080','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1550','不含商标','定制画面','不含说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','C310PW','无需安装','否','','','100','2017-06-10','杨木娇、李秀荣','2017-06-08','接电自动开机','','350.00','0','0.0','0.0','0','0','35000'),(207,'广州星晟信息科技有限公司','RN-TW-2017053101','2017000186','广州市天河区中山大道西238号勤天大厦1604','韦莉','13878990937','腾玮','18676917151','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C331NW','无需安装','否','','','5','2017-06-10','杨木娇、李秀荣','2017-06-02','','','350.00','0','0.0','0.0','0','0','1750'),(209,'深圳市汉智星科技有限公司','RN-LJH-20170502001','2017000188','深圳龙华新区大浪街道国乐科技园3栋8楼','杨总','13602635737','梁嘉和','13790639813','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(213,'历俊（广州）珠宝有限公司','20170602','2017000190','广州市南沙区豪岗大道28号历俊公司','冯小姐','34936600-141','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(218,'派龙国际有限公司','2017042001','2017000193','黄江','张琪','13316610891','张祖颖','13316610891','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1597','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C100NW','','否','','','5','2017-06-03','杨木娇、李秀荣','2017-06-02','','','350.00','0','0.0','0.0','0','0','1750'),(219,'MG Plastic &Hardware Company Limited','20170522-001','2017000194','UNIT 04,7/F BRIGHT WAY TOWER NO.33 MONG KOK RD KL HK','-','11014486304801','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(227,'嘉兴市欧文商贸有限公司','RN-LJH-20170605001','2017000199','浙江省嘉兴市南湖区东升东路1753号三楼3EB03','郝亮','15857300925','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1571','不含商标','中性画面','标准说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','N5805','','否','','','10','2017-06-06','杨木娇、李秀荣','2017-06-06','','','0.0','0.0','0.0','0.0','0','0','0'),(228,'佛山市圣堡罗门业有限公司','20170602135656','2017000200','广东省佛山市顺德区勒流西华圣堡罗门业有限公司','郭海强','13823472858','梁嘉和','13790639813','顺丰陆运','AX700双网口','J1900 四核2.0G','','2G','','8GB 固态硬盘','','4个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','公司彩包','定制标签','AX700NW','无需安装','否','','','3','2017-06-02','杨木娇','2017-06-02','','','0','0.0','0.0','0.0','0','0','0'),(231,'珠海顺培源商贸有限公司','RN-LJH-2017052701','2017000202','广州市广州大道中东兴南路93号12B','刁宇平','13380039900','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','4G','','其它','128GB固态硬盘','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Windos','','不含商标','标准画面','标准说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','AX700NW','无需安装','否','','','1','2017-05-27','杨木娇','2017-05-27','','','0','0.0','0.0','0.0','0','0','0'),(234,'重庆道谷科技有限公司','20170613','2017000204','江苏南京市玄武区珠江路333号百脑汇3楼3A26','郑宝冲','18651893818','欧婕','0769-21680186','顺丰陆运','E300','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1598','定制商标','标准画面','定制说明书','定制合格证','标准保修卡','','中性包装','定制标签','T330EW','无需安装','否','','','1','2017-06-12','杨木娇','2017-06-12','','','400.00','0','0.0','0.0','0','0','400'),(235,'北京同方微电子有限公司','RN-LJH-2017053101','2017000205','北京市海淀区王庄路1号院4号楼18层','王飞','18614043005','梁嘉和','13790639813','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1598','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N100NW','无需安装','否','','','1','2017-06-14','杨木娇','2017-06-14','','','350.00','0','0.0','0.0','0','0','350'),(239,'成都绘景志成软件科技有限公司','RN-LJH-20170602001','2017000206','四川省成都市青羊区石人南路34号','杨濒','13683435820','梁嘉惠','13316669080','顺丰陆运','AX700','J1900 四核2.0G','','4G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1570','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','中性包装','定制标签','N628NW','无需安装','否','','','16','2017-06-16','杨木娇、李秀荣','2017-06-15','企业版','','510.00','170','60','0.0','0','0','11840'),(240,'宁德市蕉城区思快电脑有限公司','RN-LJH-2017052301','2017000207','宁德市蕉城区闽东西路2号信达豪庭A号1106室','陈捷','15959305010','梁嘉惠','13316669080','送货上门','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1550','不含商标','定制画面','不含说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','C310NW、(C310PW）','无需安装','否','','','250','2017-06-10','杨木娇、李秀荣','2017-05-25至2017-06-10','50台为接电自动开机','','350.00','0','0.0','0.0','0','0','87500'),(241,'深圳市神州动力数码有限公司','RN-ZXP-2017060501','2017000208','深圳市南山区侨香路东方科技园华科大厦1号厂房A2','钟雪梅','0755-25920360','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1598','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','C110NW','无需安装','否','','','9','2017-06-12','杨木娇、李秀荣','2017-06-12','','','350.00','0','0.0','0.0','0','0','3150'),(242,'东莞市东城大友电脑经营部','RN-ZXP-20170620001','2017000209','东城世博天源电脑城D2-A53','朱双艳','13038832660','朱晓平','13416674830','顺丰陆运','C100','ARM 四核1.6G','','1G','','8GB FLASH','','4个usb接口','','不含串口','','1个10/100Mbps','','','基本测试','压力测试','','','Linux 版本号:','1598','不含商标','中性画面','不含说明书','不含合格证','不含保修卡','不含光盘','中性包装','定制标签','DX86','无需安装','否','','','9','2017-06-21','杨木娇、李秀荣','2017-06-21','','','350.00','0','0.0','0.0','0','0','3150'),(244,'海南汉普科技有限公司','RN-TW-2017062101','2017000210','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾玮','18676917151','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(245,'东莞绿洲鞋业有限公司','RN-LJH-20170616001','2017000211','东莞市厚街镇赤岭','陈生','18998002188','梁嘉惠','13316669080','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(246,'海南汉普科技有限公司','RN-TW-2017062101','2017000212','海南省海口市龙华区玉沙路20号国贸经典大厦818室','王昌燕','18789694561','腾玮','18676917151','顺丰陆运','AX700','J1900 四核2.0G','','2G','','8GB 固态硬盘','','6个usb接口','','不含串口','','1个100/1000Mbps','不含无线网卡','','基本测试','压力测试','','','Linux 版本号:','1572','不含商标','标准画面','标准说明书','标准合格证','标准保修卡','不含光盘','公司彩包','定制标签','N6919 SJ','无需安装','否','','','30','2017-06-24','杨木娇、李秀荣','2017-06-23、24','','','510.00','75','60','0.0','0','0','19350'),(247,'云宏信息科技股份有限公司','YXGPH17060133','2017000213','广州市天河区元岗横路33号天河慧通产业广场B2栋',' 陈湛 ','13560046979','梁嘉和','13790639813','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0'),(248,'云宏信息科技股份有限公司','YXGPH17060134','2017000214','广州市天河区元岗横路33号天河慧通产业广场B2栋',' 陈湛 ','13560046979','梁嘉和','13790639813','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','edit','','','','','0','','','','','','0.0','0.0','0.0','0.0','0.0','0.0','0.0');
/*!40000 ALTER TABLE `production_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_which_in`
--

DROP TABLE IF EXISTS `production_which_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_which_in` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `production_order` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_which_in`
--

LOCK TABLES `production_which_in` WRITE;
/*!40000 ALTER TABLE `production_which_in` DISABLE KEYS */;
INSERT INTO `production_which_in` VALUES (1,'2017000001');
/*!40000 ALTER TABLE `production_which_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_list`
--

DROP TABLE IF EXISTS `purchase_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_list` (
  `name` varchar(64) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `min_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_list`
--

LOCK TABLES `purchase_list` WRITE;
/*!40000 ALTER TABLE `purchase_list` DISABLE KEYS */;
INSERT INTO `purchase_list` VALUES ('A9上壳黑',194,500),('A9下壳黑',29,500),('A9包装彩盒',292,500),('A9说明书',455,500),('AX700 瘦客户机 (J192G8G)',50,50),('包装彩盒（中性）',162,500);
/*!40000 ALTER TABLE `purchase_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `upload_date` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (1,'2017000001.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000001.pdf','2017000001'),(2,'2017000002.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000002.pdf','2017000002'),(3,'2017000003.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000003.pdf','2017000003'),(4,'2017000004.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000004.pdf','2017000004'),(5,'2017000006.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000006.pdf','2017000006'),(6,'2017000007.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000007.pdf','2017000007'),(7,'2017000008.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000008.pdf','2017000008'),(8,'2017000009.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000009.pdf','2017000009'),(9,'2017000010.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000010.pdf','2017000010'),(10,'2017000011.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000011.pdf','2017000011'),(11,'2017000012.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000012.pdf','2017000012'),(12,'2017000013.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000013.pdf','2017000013'),(13,'2017000014.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000014.pdf','2017000014'),(14,'2017000015.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000015.pdf','2017000015'),(15,'2017000016.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000016.pdf','2017000016'),(16,'2017000017.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000017.pdf','2017000017'),(17,'2017000018.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000018.pdf','2017000018'),(18,'2017000019.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000019.pdf','2017000019'),(19,'2017000020.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000020.pdf','2017000020'),(20,'2017000021.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000021.pdf','2017000021'),(21,'2017000022.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000022.pdf','2017000022'),(22,'2017000024.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000024.pdf','2017000024'),(23,'2017000027.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000027.pdf','2017000027'),(24,'2017000029.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000029.pdf','2017000029'),(25,'2017000030.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000030.pdf','2017000030'),(26,'2017000031.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000031.pdf','2017000031'),(27,'2017000033.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000033.pdf','2017000033'),(28,'2017000034.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000034.pdf','2017000034'),(29,'2017000042.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000042.pdf','2017000042'),(30,'2017000043.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000043.pdf','2017000043'),(31,'2017000044.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000044.pdf','2017000044'),(32,'2017000045.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000045.pdf','2017000045'),(33,'2017000046.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000046.pdf','2017000046'),(34,'2017000047.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000047.pdf','2017000047'),(35,'2017000048.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000048.pdf','2017000048'),(36,'2017000049.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000049.pdf','2017000049'),(37,'2017000050.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000050.pdf','2017000050'),(38,'2017000051.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000051.pdf','2017000051'),(39,'2017000052.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000052.pdf','2017000052'),(40,'2017000053.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000053.pdf','2017000053'),(41,'2017000055.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000055.pdf','2017000055'),(42,'2017000056.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000056.pdf','2017000056'),(43,'2017000057.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000057.pdf','2017000057'),(44,'2017000058.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000058.pdf','2017000058'),(45,'2017000059.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000059.pdf','2017000059'),(46,'2017000060.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000060.pdf','2017000060'),(47,'2017000061.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000061.pdf','2017000061'),(48,'2017000062.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000062.pdf','2017000062'),(49,'2017000064.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000064.pdf','2017000064'),(50,'2017000065.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000065.pdf','2017000065'),(51,'2017000066.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000066.pdf','2017000066'),(52,'2017000067.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000067.pdf','2017000067'),(53,'2017000068.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000068.pdf','2017000068'),(54,'2017000069.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000069.pdf','2017000069'),(55,'2017000070.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000070.pdf','2017000070'),(56,'2017000071.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000071.pdf','2017000071'),(57,'2017000072.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000072.pdf','2017000072'),(58,'2017000074.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000074.pdf','2017000074'),(59,'2017000075.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000075.pdf','2017000075'),(60,'2017000076.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000076.pdf','2017000076'),(61,'2017000077.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000077.pdf','2017000077'),(62,'2017000078.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000078.pdf','2017000078'),(63,'2017000084.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000084.pdf','2017000084'),(64,'2017000085.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000085.pdf','2017000085'),(65,'2017000086.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000086.pdf','2017000086'),(66,'2017000087.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000087.pdf','2017000087'),(67,'2017000088.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000088.pdf','2017000088'),(68,'2017000089.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000089.pdf','2017000089'),(69,'2017000090.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000090.pdf','2017000090'),(70,'2017000091.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000091.pdf','2017000091'),(71,'2017000092.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000092.pdf','2017000092'),(72,'2017000093.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000093.pdf','2017000093'),(73,'2017000094.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000094.pdf','2017000094'),(74,'2017000095.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000095.pdf','2017000095'),(75,'2017000098.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000098.pdf','2017000098'),(76,'2017000103.jpg','2017-04-01','/var/www/Erp/data/receipts/2017000103.jpg','2017000103'),(77,'2017000104.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000104.pdf','2017000104'),(78,'2017000105.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000105.pdf','2017000105'),(79,'2017000106.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000106.pdf','2017000106'),(80,'2017000107.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000107.pdf','2017000107'),(81,'2017000108.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000108.pdf','2017000108'),(82,'2017000109.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000109.pdf','2017000109'),(83,'2017000110.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000110.pdf','2017000110'),(84,'2017000111.pdf','2017-04-01','/var/www/Erp/data/receipts/2017000111.pdf','2017000111'),(86,'2017000036.png','2017-04-01','/var/www/Erp/data/receipts/2017000036.png','2017000036'),(87,'2017000113.pdf','2017-04-05','/var/www/Erp/data/receipts/2017000113.pdf','2017000113'),(88,'2017000114.pdf','2017-04-05','/var/www/Erp/data/receipts/2017000114.pdf','2017000114'),(89,'2017000116.jpg','2017-04-06','/var/www/Erp/data/receipts/2017000116.jpg','2017000116'),(90,'2017000118.pdf','2017-04-08','/var/www/Erp/data/receipts/2017000118.pdf','2017000118'),(91,'2017000119.pdf','2017-04-08','/var/www/Erp/data/receipts/2017000119.pdf','2017000119'),(92,'2017000120.png','2017-04-08','/var/www/Erp/data/receipts/2017000120.png','2017000120'),(93,'2017000115.png','2017-04-08','/var/www/Erp/data/receipts/2017000115.png','2017000115'),(94,'2017000122.pdf','2017-04-11','/var/www/Erp/data/receipts/2017000122.pdf','2017000122'),(95,'2017000123.pdf','2017-04-11','/var/www/Erp/data/receipts/2017000123.pdf','2017000123'),(96,'2017000124.pdf','2017-04-11','/var/www/Erp/data/receipts/2017000124.pdf','2017000124'),(97,'2017000125.png','2017-04-13','/var/www/Erp/data/receipts/2017000125.png','2017000125'),(98,'2017000028.png','2017-04-20','/var/www/Erp/data/receipts/2017000028.png','2017000028'),(101,'2017000131.png','2017-04-27','/var/www/Erp/data/receipts/2017000131.png','2017000131'),(103,'2017000139.pdf','2017-05-08','/var/www/Erp/data/receipts/2017000139.pdf','2017000139'),(104,'2017000140.pdf','2017-05-08','/var/www/Erp/data/receipts/2017000140.pdf','2017000140'),(105,'2017000141.pdf','2017-05-08','/var/www/Erp/data/receipts/2017000141.pdf','2017000141'),(107,'2017000142.pdf','2017-05-08','/var/www/Erp/data/receipts/2017000142.pdf','2017000142'),(108,'2017000155.png','2017-05-17','/var/www/Erp/data/receipts/2017000155.png','2017000155'),(109,'2017000156.png','2017-05-19','/var/www/Erp/data/receipts/2017000156.png','2017000156'),(110,'2017000099.jpg','2017-05-23','/var/www/Erp/data/receipts/2017000099.jpg','2017000099'),(111,'2017000100.jpg','2017-05-23','/var/www/Erp/data/receipts/2017000100.jpg','2017000100'),(112,'2017000117.png','2017-05-25','/var/www/Erp/data/receipts/2017000117.png','2017000117'),(113,'2017000126.png','2017-05-25','/var/www/Erp/data/receipts/2017000126.png','2017000126'),(114,'2017000081.png','2017-05-25','/var/www/Erp/data/receipts/2017000081.png','2017000081'),(115,'2017000159.png','2017-06-02','/var/www/Erp/data/receipts/2017000159.png','2017000159'),(116,'2017000154.jpg','2017-06-05','/var/www/Erp/data/receipts/2017000154.jpg','2017000154'),(117,'2017000163.jpg','2017-06-05','/var/www/Erp/data/receipts/2017000163.jpg','2017000163'),(118,'2017000161.pdf','2017-06-05','/var/www/Erp/data/receipts/2017000161.pdf','2017000161'),(119,'2017000162.pdf','2017-06-05','/var/www/Erp/data/receipts/2017000162.pdf','2017000162'),(120,'2017000164.pdf','2017-06-05','/var/www/Erp/data/receipts/2017000164.pdf','2017000164'),(121,'2017000127.pdf','2017-06-05','/var/www/Erp/data/receipts/2017000127.pdf','2017000127'),(122,'2017000136.pdf','2017-06-05','/var/www/Erp/data/receipts/2017000136.pdf','2017000136'),(123,'2017000165.jpg','2017-06-05','/var/www/Erp/data/receipts/2017000165.jpg','2017000165'),(124,'2017000174.jpg','2017-06-21','/var/www/Erp/data/receipts/2017000174.jpg','2017000174'),(125,'2017000177.pdf','2017-06-26','/var/www/Erp/data/receipts/2017000177.pdf','2017000177');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recovery_storage`
--

DROP TABLE IF EXISTS `recovery_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recovery_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `nums` varchar(64) DEFAULT NULL,
  `pattern` varchar(64) DEFAULT NULL,
  `suppliers` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_recovery_storage_dates` (`dates`),
  KEY `ix_recovery_storage_model` (`model`),
  KEY `ix_recovery_storage_name` (`name`),
  KEY `ix_recovery_storage_nums` (`nums`),
  KEY `ix_recovery_storage_pattern` (`pattern`),
  KEY `ix_recovery_storage_remarks` (`remarks`),
  KEY `ix_recovery_storage_result` (`result`),
  KEY `ix_recovery_storage_suppliers` (`suppliers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recovery_storage`
--

LOCK TABLES `recovery_storage` WRITE;
/*!40000 ALTER TABLE `recovery_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `recovery_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `users_id` int(11) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  KEY `roles_id` (`roles_id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (21,4);
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair`
--

DROP TABLE IF EXISTS `repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrive_dates` varchar(64) DEFAULT NULL,
  `repair_dates` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `configure` varchar(64) DEFAULT NULL,
  `problem` varchar(64) DEFAULT NULL,
  `get_it_done` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_repair_arrive_dates` (`arrive_dates`),
  KEY `ix_repair_configure` (`configure`),
  KEY `ix_repair_get_it_done` (`get_it_done`),
  KEY `ix_repair_model` (`model`),
  KEY `ix_repair_name` (`name`),
  KEY `ix_repair_problem` (`problem`),
  KEY `ix_repair_remarks` (`remarks`),
  KEY `ix_repair_repair_dates` (`repair_dates`),
  KEY `ix_repair_saler` (`saler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair`
--

LOCK TABLES `repair` WRITE;
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_roles_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'defalut',0,NULL),(4,'admin',0,NULL),(5,'moderator',0,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished`
--

DROP TABLE IF EXISTS `semi_finished`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished`
--

LOCK TABLES `semi_finished` WRITE;
/*!40000 ALTER TABLE `semi_finished` DISABLE KEYS */;
INSERT INTO `semi_finished` VALUES (1,'AX700 瘦客户机 (J1900)',279,'510.00',''),(2,'AX300借测机',5,'0.00',''),(3,'AX600借测机',5,'0.00',''),(4,'AX500借测机',1,'0.00',''),(6,'AX630（旧）',23,'0.00',NULL),(11,'AX800 迷你电脑 ',3,'460.00',''),(12,'AX500（N3050）',2,'0.00',''),(13,'AX730 瘦客户机(J1900)',0,'540.00',''),(16,'AX600',0,'0.00',''),(17,'AX700借测机',2,'0.00',''),(18,'AX710瘦客户机（J1800）',0,'500',''),(19,'AX500瘦客户机（N2805）',29,'440',''),(20,'S300智能终端（3855U)）',0,'616',''),(21,'S900智能终端（I5-5200U）',0,'1250',''),(22,'AX700 瘦客户机双网口 (J1900)',0,'570.00','');
/*!40000 ALTER TABLE `semi_finished` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input1`
--

DROP TABLE IF EXISTS `semi_finished_input1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input1` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input1`
--

LOCK TABLES `semi_finished_input1` WRITE;
/*!40000 ALTER TABLE `semi_finished_input1` DISABLE KEYS */;
INSERT INTO `semi_finished_input1` VALUES (1,'2017-02-16',10,'510.00','杨木娇','汉智星'),(2,'2017-02-20',30,'0.00','杨木娇','借测归还（360）'),(3,'2017-02-25',1,'0.00','杨木娇','汉智星'),(4,'2017-03-02',1,'0.00','杨木娇','借测归还（思维动力）'),(5,'2017-03-09',5,'0.00','杨木娇','汉智星 J1900'),(6,'2017-03-10',45,'0.00','杨木娇','汉智星（J1900)'),(7,'2017-03-10',1,'0.00','杨木娇','借测归还（云媒）'),(8,'2017-03-14',1,'0.00','杨木娇','借测归还（步步升）'),(9,'2017-03-21',1,'0.00','杨木娇','借测归还（飞鸟科技）'),(10,'2017-04-06',1,'0.00','杨木娇','借测归还（圣堡罗）'),(11,'2017-04-11',1,'0.00','杨木娇','借测归还（桂林辰星办公设备）'),(12,'2017-04-11',1,'0.00','杨木娇','借测归还（日立化成）'),(13,'2017-04-11',2,'0.00','杨木娇','借用归还（朱可）'),(14,'2017-04-12',1,'0.00','杨木娇','借测归还（北京方物）'),(15,'2017-04-14',2,'0.00','杨木娇','借测归还（广州蓝爵）'),(16,'2017-04-14',30,'0.00','杨木娇','汉智星'),(17,'2017-04-14',1,'0.00','杨木娇','借测归还（东莞捷诚）'),(18,'2017-04-24',1,'0.00','杨木娇','借用归还（梁生）'),(19,'2017-05-05',50,'0.00','杨木娇','汉智星（J1900）'),(20,'2017-05-15',24,'0.00','杨木娇','汉智星（J1900）'),(21,'2017-06-01',9,'0.00','杨木娇','借测归还（东鹏程）少挂件、螺丝'),(22,'2017-06-06',16,'0.00','杨木娇','汉智星（J1900）'),(23,'2017-06-27',240,'0.00','杨木娇','汉智星（J1900）');
/*!40000 ALTER TABLE `semi_finished_input1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input11`
--

DROP TABLE IF EXISTS `semi_finished_input11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input11` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input11`
--

LOCK TABLES `semi_finished_input11` WRITE;
/*!40000 ALTER TABLE `semi_finished_input11` DISABLE KEYS */;
INSERT INTO `semi_finished_input11` VALUES (1,'2017-01-06',10,'460.00','杨木娇','汉智星（CPU：N2805)'),(2,'2017-02-23',5,'0.00','','汉智星 （CPU:N2805)'),(3,'2017-02-09',120,'0.00','','汉智星 （CPU：I3 4005U）'),(4,'2017-02-16',4,'0.00','','汉智星 （CPU：I3 4005U)'),(5,'2017-03-18',30,'0.00','','汉智星（CPU：I3 4005U）'),(6,'2017-03-22',5,'0.00','','汉智星（CPU:I3 4005U)'),(7,'2017-05-11',35,'0.00','','360网神信息科技退还');
/*!40000 ALTER TABLE `semi_finished_input11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input12`
--

DROP TABLE IF EXISTS `semi_finished_input12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input12`
--

LOCK TABLES `semi_finished_input12` WRITE;
/*!40000 ALTER TABLE `semi_finished_input12` DISABLE KEYS */;
INSERT INTO `semi_finished_input12` VALUES (1,'2017-03-01',2,'0.00','杨木娇','CPU:N3050');
/*!40000 ALTER TABLE `semi_finished_input12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input13`
--

DROP TABLE IF EXISTS `semi_finished_input13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input13` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input13`
--

LOCK TABLES `semi_finished_input13` WRITE;
/*!40000 ALTER TABLE `semi_finished_input13` DISABLE KEYS */;
/*!40000 ALTER TABLE `semi_finished_input13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input16`
--

DROP TABLE IF EXISTS `semi_finished_input16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input16` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input16`
--

LOCK TABLES `semi_finished_input16` WRITE;
/*!40000 ALTER TABLE `semi_finished_input16` DISABLE KEYS */;
/*!40000 ALTER TABLE `semi_finished_input16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input17`
--

DROP TABLE IF EXISTS `semi_finished_input17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input17` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input17`
--

LOCK TABLES `semi_finished_input17` WRITE;
/*!40000 ALTER TABLE `semi_finished_input17` DISABLE KEYS */;
INSERT INTO `semi_finished_input17` VALUES (1,'2017-04-22',1,'0.00','杨木娇','海存志合借测归还'),(2,'2017-05-10',1,'0.00','','借测归还（驰宏光电）'),(3,'2017-05-10',1,'0.00','','借测归还（朱可）'),(4,'2017-05-18',1,'0.00','','借测归还（刘统华）'),(5,'2017-05-19',2,'0.00','','借测归还（汪金鹏））'),(6,'2017-05-19',5,'0.00','','借测归还（深圳东鹏程））'),(7,'2017-05-31',5,'0.00','','借测归还（京信通信）'),(8,'2017-06-16',1,'0.00','','借测归还（广州明景）'),(9,'2017-06-22',2,'0.00','','厂家维修返还');
/*!40000 ALTER TABLE `semi_finished_input17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input18`
--

DROP TABLE IF EXISTS `semi_finished_input18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input18`
--

LOCK TABLES `semi_finished_input18` WRITE;
/*!40000 ALTER TABLE `semi_finished_input18` DISABLE KEYS */;
INSERT INTO `semi_finished_input18` VALUES (1,'2017-05-09',0,'0.00','edit','');
/*!40000 ALTER TABLE `semi_finished_input18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input19`
--

DROP TABLE IF EXISTS `semi_finished_input19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input19` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input19`
--

LOCK TABLES `semi_finished_input19` WRITE;
/*!40000 ALTER TABLE `semi_finished_input19` DISABLE KEYS */;
INSERT INTO `semi_finished_input19` VALUES (1,'2017-06-08',30,'0.00','杨木娇','汉智星');
/*!40000 ALTER TABLE `semi_finished_input19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input2`
--

DROP TABLE IF EXISTS `semi_finished_input2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input2`
--

LOCK TABLES `semi_finished_input2` WRITE;
/*!40000 ALTER TABLE `semi_finished_input2` DISABLE KEYS */;
INSERT INTO `semi_finished_input2` VALUES (1,'2017-02-09',7,'0.00','杨木娇','盘点');
/*!40000 ALTER TABLE `semi_finished_input2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input20`
--

DROP TABLE IF EXISTS `semi_finished_input20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input20`
--

LOCK TABLES `semi_finished_input20` WRITE;
/*!40000 ALTER TABLE `semi_finished_input20` DISABLE KEYS */;
INSERT INTO `semi_finished_input20` VALUES (1,'2017-05-12',0,'0.00','edit','');
/*!40000 ALTER TABLE `semi_finished_input20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input21`
--

DROP TABLE IF EXISTS `semi_finished_input21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input21`
--

LOCK TABLES `semi_finished_input21` WRITE;
/*!40000 ALTER TABLE `semi_finished_input21` DISABLE KEYS */;
INSERT INTO `semi_finished_input21` VALUES (1,'2017-05-12',0,'0.00','edit','');
/*!40000 ALTER TABLE `semi_finished_input21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input22`
--

DROP TABLE IF EXISTS `semi_finished_input22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input22`
--

LOCK TABLES `semi_finished_input22` WRITE;
/*!40000 ALTER TABLE `semi_finished_input22` DISABLE KEYS */;
INSERT INTO `semi_finished_input22` VALUES (1,'2017-06-02',3,'570.00','杨木娇','汉智星');
/*!40000 ALTER TABLE `semi_finished_input22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input3`
--

DROP TABLE IF EXISTS `semi_finished_input3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input3` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input3`
--

LOCK TABLES `semi_finished_input3` WRITE;
/*!40000 ALTER TABLE `semi_finished_input3` DISABLE KEYS */;
INSERT INTO `semi_finished_input3` VALUES (1,'2017-02-09',3,'0.00','杨木娇','盘点'),(2,'2017-02-20',1,'0.00','杨木娇','公司内部回收'),(3,'2017-02-23',1,'0.00','','借用归还（广州办事处）'),(4,'2017-04-12',1,'0.00','','借测归还（广州办事处）'),(5,'2017-05-05',1,'0.00','','借测归还（盛元中天）'),(6,'2017-05-18',2,'0.00','','借测归还（刘统华）');
/*!40000 ALTER TABLE `semi_finished_input3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input4`
--

DROP TABLE IF EXISTS `semi_finished_input4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input4`
--

LOCK TABLES `semi_finished_input4` WRITE;
/*!40000 ALTER TABLE `semi_finished_input4` DISABLE KEYS */;
INSERT INTO `semi_finished_input4` VALUES (1,'2017-02-09',2,'0.00','杨木娇','盘点'),(2,'2017-04-11',1,'0.00','','借测归还（日立化成）'),(3,'2017-05-09',1,'0.00','','梁生归还'),(4,'2017-05-23',1,'0.00','','借测归还（广州知慧云）CPU:N2930');
/*!40000 ALTER TABLE `semi_finished_input4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input6`
--

DROP TABLE IF EXISTS `semi_finished_input6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input6`
--

LOCK TABLES `semi_finished_input6` WRITE;
/*!40000 ALTER TABLE `semi_finished_input6` DISABLE KEYS */;
INSERT INTO `semi_finished_input6` VALUES (1,'2017-02-09',22,'0.00','杨木娇','盘点（日本电产回收机器）'),(2,'2017-05-23',1,'0.00','','内部回收（梁生）');
/*!40000 ALTER TABLE `semi_finished_input6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_input9`
--

DROP TABLE IF EXISTS `semi_finished_input9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_input9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_input9`
--

LOCK TABLES `semi_finished_input9` WRITE;
/*!40000 ALTER TABLE `semi_finished_input9` DISABLE KEYS */;
INSERT INTO `semi_finished_input9` VALUES (1,'2017-02-16',10,'460.00','杨木娇','');
/*!40000 ALTER TABLE `semi_finished_input9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output1`
--

DROP TABLE IF EXISTS `semi_finished_output1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output1` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output1`
--

LOCK TABLES `semi_finished_output1` WRITE;
/*!40000 ALTER TABLE `semi_finished_output1` DISABLE KEYS */;
INSERT INTO `semi_finished_output1` VALUES (1,'2017-02-16',10,'0.00','出货东莞捷诚','杨木娇','梁生'),(2,'2017-02-20',10,'0.00','借测深圳东鹏程','杨木娇','梁生'),(3,'2017-02-22',4,'0.00','出货东莞好景','杨木娇','梁生'),(4,'2017-02-23',1,'0.00','借测东莞云媒智能','杨木娇','腾玮'),(5,'2017-02-25',10,'0.00','出货东莞壹华电子','杨木娇','腾玮'),(6,'2017-02-25',1,'0.00','出货广东联迪','杨木娇','汪斌'),(7,'2017-03-04',1,'0.00','借测东莞捷诚','杨木娇','梁生'),(8,'2017-03-07',2,'0.00','出货东莞颖宝玩具','杨木娇','梁生'),(9,'2017-03-08',1,'0.00','借测广州明景','杨木娇','腾玮'),(10,'2017-03-08',1,'0.00','借测广东圣堡罗门业','杨木娇','汪斌'),(11,'2017-03-09',5,'0.00','出货北京佰高讯通','杨木娇','梁生'),(12,'2017-03-10',2,'0.00','总经办（赠送客户）','杨木娇','吴总'),(13,'2017-03-16',1,'0.00','出货江苏','杨木娇','梁生客户'),(14,'2017-03-22',1,'0.00','借测飞鸟科技','杨木娇','吴中平'),(15,'2017-03-22',20,'0.00','借测海南汉普','杨木娇','腾玮'),(16,'2017-03-23',1,'0.00','借测北京海存志合','杨木娇','汪斌'),(17,'2017-03-29',1,'0.00','借测（日立化成）','杨木娇','梁生'),(18,'2017-03-29',1,'0.00','借测桂林辰星办公设备','杨木娇','梁生'),(19,'2017-04-07',3,'0.00','出货集成部','杨木娇','科达借测单'),(20,'2017-04-14',2,'0.00','借测广州蓝爵','杨木娇','4月13日借出'),(21,'2017-04-14',1,'0.00','借测广州亦云','杨木娇','4月13日寄出'),(22,'2017-04-14',1,'0.00','借测云南驰宏光电','杨木娇','梁生'),(23,'2017-04-14',2,'0.00','公司展示厅使用','杨木娇','伍彩佟'),(24,'2017-04-14',25,'0.00','出货广东众生药业','杨木娇','谢秋丽'),(25,'2017-04-20',5,'0.00','借测广州京信通信','杨木娇','4月17日寄出（梁生）'),(26,'2017-04-20',1,'0.00','借测安徽伟迈','杨木娇t','4月18日寄出（梁生）'),(27,'2017-04-25',10,'0.00','出货浙江钜翔信息科技','杨木娇','梁生'),(28,'2017-05-02',1,'0.00','借测厦门楷睿','杨木娇','4月26日寄出'),(29,'2017-05-02',6,'0.00','出货湖南株洲高科火钜','杨木娇','4月28日已发货'),(30,'2017-05-17',5,'0.00','出货深圳东鹏程','杨木娇','5月18日送货'),(31,'2017-06-02',1,'0.00','出货珠海顺培源商贸','杨木娇','5月27日寄出'),(32,'2017-06-06',10,'0.00','出货嘉兴欧文商贸','edit',''),(33,'2017-06-12',1,'0.00','出货东莞颖宝玩具','edit',''),(34,'2017-06-15',16,'0.00','出货成都绘景志成','edit',''),(35,'2017-06-22',2,'0.00','颖宝玩具维修换新','edit',''),(36,'2017-06-28',30,'0.00','出货海南汉普科技','edit','');
/*!40000 ALTER TABLE `semi_finished_output1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output11`
--

DROP TABLE IF EXISTS `semi_finished_output11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output11`
--

LOCK TABLES `semi_finished_output11` WRITE;
/*!40000 ALTER TABLE `semi_finished_output11` DISABLE KEYS */;
INSERT INTO `semi_finished_output11` VALUES (1,'2017-01-06',10,'460.00','出货毕马杰橡胶科技公司','杨木娇','N2805'),(2,'2017-02-24',5,'0.00','出货毕马杰橡胶科技公司','杨木娇','N2805'),(3,'2017-02-13',120,'0.00','出货北京网神公司','杨木娇','4005U'),(4,'2017-02-16',3,'0.00','借测（360公司）','杨木娇','4005U'),(5,'2017-02-19',1,'0.00','出货四川成都','杨木娇','4005U'),(6,'2017-04-10',35,'0.00','出货网神信息科技','杨木娇','I34005U'),(7,'2017-05-11',30,'0.00','退还汉智星','杨木娇','网神退货'),(8,'2017-05-11',2,'0.00','出货四川成都/李晓东','杨木娇','梁生');
/*!40000 ALTER TABLE `semi_finished_output11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output12`
--

DROP TABLE IF EXISTS `semi_finished_output12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output12`
--

LOCK TABLES `semi_finished_output12` WRITE;
/*!40000 ALTER TABLE `semi_finished_output12` DISABLE KEYS */;
INSERT INTO `semi_finished_output12` VALUES (1,'2017-02-24',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output13`
--

DROP TABLE IF EXISTS `semi_finished_output13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output13`
--

LOCK TABLES `semi_finished_output13` WRITE;
/*!40000 ALTER TABLE `semi_finished_output13` DISABLE KEYS */;
INSERT INTO `semi_finished_output13` VALUES (1,'2017-03-07',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output16`
--

DROP TABLE IF EXISTS `semi_finished_output16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output16`
--

LOCK TABLES `semi_finished_output16` WRITE;
/*!40000 ALTER TABLE `semi_finished_output16` DISABLE KEYS */;
INSERT INTO `semi_finished_output16` VALUES (1,'2017-03-18',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output17`
--

DROP TABLE IF EXISTS `semi_finished_output17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output17` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output17`
--

LOCK TABLES `semi_finished_output17` WRITE;
/*!40000 ALTER TABLE `semi_finished_output17` DISABLE KEYS */;
INSERT INTO `semi_finished_output17` VALUES (1,'2017-04-26',1,'0.00','借测云宏','杨木娇','梁生'),(2,'2017-05-17',1,'0.00','借测成都绘景志成','杨木娇','梁生'),(3,'2017-05-22',1,'0.00','借测北京/刘元辉','杨木娇','梁生'),(4,'2017-05-26',1,'0.00','借测荆州云鹏','杨木娇','腾玮'),(5,'2017-06-02',1,'0.00','公司内部使用（储存数据）','杨木娇','梁生'),(6,'2017-06-05',1,'0.00','广州云宏借测','杨木娇','梁生'),(7,'2017-06-13',1,'0.00','借测深圳云海麒麟','edit','腾玮'),(8,'2017-06-13',1,'0.00','不良发汉智星维修','edit',''),(9,'2017-06-16',1,'0.00','借测东莞捷诚','edit',''),(10,'2017-06-20',5,'0.00','借测深圳中银','edit',''),(11,'2017-06-22',2,'0.00','借测广州云宏','edit',''),(12,'2017-06-28',1,'0.00','借测广州云宏','edit','');
/*!40000 ALTER TABLE `semi_finished_output17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output18`
--

DROP TABLE IF EXISTS `semi_finished_output18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output18`
--

LOCK TABLES `semi_finished_output18` WRITE;
/*!40000 ALTER TABLE `semi_finished_output18` DISABLE KEYS */;
INSERT INTO `semi_finished_output18` VALUES (1,'2017-05-09',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output19`
--

DROP TABLE IF EXISTS `semi_finished_output19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output19` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output19`
--

LOCK TABLES `semi_finished_output19` WRITE;
/*!40000 ALTER TABLE `semi_finished_output19` DISABLE KEYS */;
INSERT INTO `semi_finished_output19` VALUES (1,'2017-06-28',1,'0.00','借测重庆道谷科技','edit','');
/*!40000 ALTER TABLE `semi_finished_output19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output2`
--

DROP TABLE IF EXISTS `semi_finished_output2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output2` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output2`
--

LOCK TABLES `semi_finished_output2` WRITE;
/*!40000 ALTER TABLE `semi_finished_output2` DISABLE KEYS */;
INSERT INTO `semi_finished_output2` VALUES (1,'2017-03-01',1,'0.00','无法维修机器更换主板','杨木娇','客户：方中'),(2,'2017-03-01',1,'0.00','无法维修机器更换主板','杨木娇','客户：福建科达');
/*!40000 ALTER TABLE `semi_finished_output2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output20`
--

DROP TABLE IF EXISTS `semi_finished_output20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output20`
--

LOCK TABLES `semi_finished_output20` WRITE;
/*!40000 ALTER TABLE `semi_finished_output20` DISABLE KEYS */;
INSERT INTO `semi_finished_output20` VALUES (1,'2017-05-12',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output21`
--

DROP TABLE IF EXISTS `semi_finished_output21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output21`
--

LOCK TABLES `semi_finished_output21` WRITE;
/*!40000 ALTER TABLE `semi_finished_output21` DISABLE KEYS */;
INSERT INTO `semi_finished_output21` VALUES (1,'2017-05-12',0,'0.00','edit','','');
/*!40000 ALTER TABLE `semi_finished_output21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output22`
--

DROP TABLE IF EXISTS `semi_finished_output22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output22`
--

LOCK TABLES `semi_finished_output22` WRITE;
/*!40000 ALTER TABLE `semi_finished_output22` DISABLE KEYS */;
INSERT INTO `semi_finished_output22` VALUES (1,'2017-06-02',3,'0.00','出货佛山圣堡罗门业','杨木娇','');
/*!40000 ALTER TABLE `semi_finished_output22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output3`
--

DROP TABLE IF EXISTS `semi_finished_output3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output3`
--

LOCK TABLES `semi_finished_output3` WRITE;
/*!40000 ALTER TABLE `semi_finished_output3` DISABLE KEYS */;
INSERT INTO `semi_finished_output3` VALUES (1,'2017-03-20',1,'0.00','借测盛天中元','杨木娇',''),(2,'2017-04-12',2,'0.00','借测（广州好云）','杨木娇',''),(3,'2017-04-14',1,'0.00','公司展示厅使用','杨木娇','');
/*!40000 ALTER TABLE `semi_finished_output3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output4`
--

DROP TABLE IF EXISTS `semi_finished_output4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output4`
--

LOCK TABLES `semi_finished_output4` WRITE;
/*!40000 ALTER TABLE `semi_finished_output4` DISABLE KEYS */;
INSERT INTO `semi_finished_output4` VALUES (1,'2017-02-13',1,'0.00','广州好云借测','杨木娇','梁生'),(2,'2017-02-22',1,'0.00','借测河北菱美','edit','汪斌'),(3,'2017-04-12',1,'0.00','借测（安徽伟迈）','edit','朱晓平'),(4,'2017-05-09',1,'0.00','借测广州知慧云','edit','梁生');
/*!40000 ALTER TABLE `semi_finished_output4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output6`
--

DROP TABLE IF EXISTS `semi_finished_output6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output6` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output6`
--

LOCK TABLES `semi_finished_output6` WRITE;
/*!40000 ALTER TABLE `semi_finished_output6` DISABLE KEYS */;
/*!40000 ALTER TABLE `semi_finished_output6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_output9`
--

DROP TABLE IF EXISTS `semi_finished_output9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_output9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `response` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_output9`
--

LOCK TABLES `semi_finished_output9` WRITE;
/*!40000 ALTER TABLE `semi_finished_output9` DISABLE KEYS */;
INSERT INTO `semi_finished_output9` VALUES (1,'2017-02-16',10,'460.00','出货毕马杰','杨木娇','');
/*!40000 ALTER TABLE `semi_finished_output9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_which_in`
--

DROP TABLE IF EXISTS `semi_finished_which_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_which_in` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `which` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_which_in`
--

LOCK TABLES `semi_finished_which_in` WRITE;
/*!40000 ALTER TABLE `semi_finished_which_in` DISABLE KEYS */;
INSERT INTO `semi_finished_which_in` VALUES (1,'1');
/*!40000 ALTER TABLE `semi_finished_which_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semi_finished_which_out`
--

DROP TABLE IF EXISTS `semi_finished_which_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semi_finished_which_out` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `which` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semi_finished_which_out`
--

LOCK TABLES `semi_finished_which_out` WRITE;
/*!40000 ALTER TABLE `semi_finished_which_out` DISABLE KEYS */;
INSERT INTO `semi_finished_which_out` VALUES (1,'1');
/*!40000 ALTER TABLE `semi_finished_which_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `saler` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `configure` varchar(64) DEFAULT NULL,
  `nums` varchar(64) DEFAULT NULL,
  `tagContent` varchar(64) DEFAULT NULL,
  `fitting_complete` varchar(64) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_shipments_configure` (`configure`),
  KEY `ix_shipments_dates` (`dates`),
  KEY `ix_shipments_fitting_complete` (`fitting_complete`),
  KEY `ix_shipments_model` (`model`),
  KEY `ix_shipments_name` (`name`),
  KEY `ix_shipments_nums` (`nums`),
  KEY `ix_shipments_remarks` (`remarks`),
  KEY `ix_shipments_saler` (`saler`),
  KEY `ix_shipments_tagContent` (`tagContent`),
  KEY `ix_shipments_tracking_number` (`tracking_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_users_username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'854196286@qq.com','liangzhixuan','pbkdf2:sha1:1000$BfVupeXC$6202e754bc2f02e7f7caed9b50304254f96b13e6',NULL),(9,'805122496@qq.com','wangbin','pbkdf2:sha1:1000$3burdUJr$2b5fbeab4e16719737c9d71f86ec3cf8cb7ce494',NULL),(11,'318314878@qq.com','tommy','pbkdf2:sha1:1000$iFcWSJUi$46077d071f3de2fe59d27df01fdd49d79d2b6f4b',NULL),(12,'','oujie','pbkdf2:sha1:1000$aFTt0Ywi$1beef3dfb98084fd9bc582066078da7ea2afc66f',NULL),(14,'663867001@qq.com','jerry','pbkdf2:sha1:1000$2QYpaARE$8b9f8f7df503d3f3b170cfda630326742b7e85a9',NULL),(15,'262677813@qq.com','yangmujiao','pbkdf2:sha1:1000$hP3TT3gg$8b42e51bb8d4537c02b251b9cb9c0c3fad7d74da',NULL),(16,NULL,'zhuxiaoping','pbkdf2:sha1:1000$rNKTUw1M$a93bbab1b3860dec0dd8b7245b604202845e8123',NULL),(17,'172297046@qq.com','mark','pbkdf2:sha1:1000$nvHQfRyI$97f7cf21a604083d691e0f5e98ac9497cb6f50a8',NULL),(21,'172297046@qq.com','admin','pbkdf2:sha1:1000$uupAFrP9$a31487fdd2e34c62299077ab12e788dea5e44760',NULL),(22,'936711703@qq.com','lixiurong','pbkdf2:sha1:1000$VbPGeqLC$0728cbaecea8307968022e57d57218049c6a5d51',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-30 17:54:52