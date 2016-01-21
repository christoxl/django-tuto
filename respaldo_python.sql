-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: christoxl.mysql.pythonanywhere-services.com    Database: christoxl$mysite
-- ------------------------------------------------------
-- Server version	5.5.42-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add question',7,'add_question'),(20,'Can change question',7,'change_question'),(21,'Can delete question',7,'delete_question'),(22,'Can add choice',8,'add_choice'),(23,'Can change choice',8,'change_choice'),(24,'Can delete choice',8,'delete_choice'),(25,'Can add municipio',9,'add_municipio'),(26,'Can change municipio',9,'change_municipio'),(27,'Can delete municipio',9,'delete_municipio'),(28,'Can add obra',10,'add_obra'),(29,'Can change obra',10,'change_obra'),(30,'Can delete obra',10,'delete_obra'),(31,'Can add dependencia',11,'add_dependencia'),(32,'Can change dependencia',11,'change_dependencia'),(33,'Can delete dependencia',11,'delete_dependencia');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$qyjWu9acBkqX$sgDBwfIpMvGE5UsSPMPq7+D9WgIj/1RbH9Dm3UN1XbA=','2016-01-19 23:55:24',1,'christoxl','','','christoxl@gmail.com',1,1,'2015-12-27 18:13:03');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-12-27 18:58:54','1','What\'s up?',2,'Modifica pub_date.',7,1),(2,'2015-12-27 19:10:17','2','Cómo estás?',1,'Added.',7,1),(3,'2016-01-06 00:03:42','3','Who is your favorite Beatle?',2,'Se agregó choice \"Ringo\".',7,1),(4,'2016-01-06 00:03:48','3','Who is your favorite Beatle?',2,'Se eliminó choice \"Ringo\".',7,1),(5,'2016-01-12 19:19:56','1','Municipio object',1,'Added.',9,1),(6,'2016-01-12 19:20:05','2','Municipio object',1,'Added.',9,1),(7,'2016-01-12 19:20:09','3','Municipio object',1,'Added.',9,1),(8,'2016-01-12 19:20:18','4','Municipio object',1,'Added.',9,1),(9,'2016-01-12 19:28:25','5','Calera',1,'Added.',9,1),(10,'2016-01-12 19:28:32','6','Cañitas de Felipe Pescador',1,'Added.',9,1),(11,'2016-01-12 19:28:36','7','Concepción del Oro',1,'Added.',9,1),(12,'2016-01-12 19:28:40','8','Cuauhtémoc',1,'Added.',9,1),(13,'2016-01-12 19:28:45','9','Chalchihuites',1,'Added.',9,1),(14,'2016-01-12 19:28:49','10','Fresnillo',1,'Added.',9,1),(15,'2016-01-12 19:28:53','11','Trinidad García de la Cadena',1,'Added.',9,1),(16,'2016-01-12 19:28:56','12','Genaro Codina',1,'Added.',9,1),(17,'2016-01-12 19:29:02','13','General Enrique Estrada',1,'Added.',9,1),(18,'2016-01-12 19:29:06','14','General Francisco R. Murguía',1,'Added.',9,1),(19,'2016-01-12 19:29:15','15','El Plateado de Joaquín Amaro',1,'Added.',9,1),(20,'2016-01-12 19:29:19','16','General Pánfilo Natera',1,'Added.',9,1),(21,'2016-01-12 19:29:23','17','Guadalupe',1,'Added.',9,1),(22,'2016-01-12 19:29:27','18','Huanusco',1,'Added.',9,1),(23,'2016-01-12 19:29:32','19','Jalpa',1,'Added.',9,1),(24,'2016-01-12 19:29:35','20','Jerez',1,'Added.',9,1),(25,'2016-01-12 19:29:38','21','Jiménez del Teul',1,'Added.',9,1),(26,'2016-01-12 19:29:42','22','Juan Aldama',1,'Added.',9,1),(27,'2016-01-12 19:29:45','23','Juchipila',1,'Added.',9,1),(28,'2016-01-12 19:29:50','24','Loreto',1,'Added.',9,1),(29,'2016-01-12 19:29:55','25','Luis Moya',1,'Added.',9,1),(30,'2016-01-12 19:29:58','26','Mazapil',1,'Added.',9,1),(31,'2016-01-12 19:30:04','27','Melchor Ocampo',1,'Added.',9,1),(32,'2016-01-12 19:30:08','28','Mezquital del Oro',1,'Added.',9,1),(33,'2016-01-12 19:30:14','29','Miguel Auza',1,'Added.',9,1),(34,'2016-01-12 19:30:19','30','Momax',1,'Added.',9,1),(35,'2016-01-12 19:30:26','31','Monte Escobedo',1,'Added.',9,1),(36,'2016-01-12 19:30:30','32','Morelos',1,'Added.',9,1),(37,'2016-01-12 19:30:33','33','Moyahua de Estrada',1,'Added.',9,1),(38,'2016-01-12 19:30:37','34','Nochistlán de Mejía',1,'Added.',9,1),(39,'2016-01-12 19:30:44','35','Noria de Ángeles',1,'Added.',9,1),(40,'2016-01-12 19:30:47','36','Ojocaliente',1,'Added.',9,1),(41,'2016-01-12 19:30:51','37','Pánuco',1,'Added.',9,1),(42,'2016-01-12 19:30:54','38','Pinos',1,'Added.',9,1),(43,'2016-01-12 19:30:58','39','Río Grande',1,'Added.',9,1),(44,'2016-01-12 19:31:01','40','Sain Alto',1,'Added.',9,1),(45,'2016-01-12 19:31:04','41','El Salvador',1,'Added.',9,1),(46,'2016-01-12 19:31:08','42','Sombrerete',1,'Added.',9,1),(47,'2016-01-12 19:31:13','43','Susticacán',1,'Added.',9,1),(48,'2016-01-12 19:31:16','44','Tabasco',1,'Added.',9,1),(49,'2016-01-12 19:31:20','45','Tepechitlán',1,'Added.',9,1),(50,'2016-01-12 19:31:24','46','Tepetongo',1,'Added.',9,1),(51,'2016-01-12 19:31:28','47','Teúl de González Ortega',1,'Added.',9,1),(52,'2016-01-12 19:31:33','48','Tlaltenango de Sánchez Román',1,'Added.',9,1),(53,'2016-01-12 19:31:38','49','Valparaíso',1,'Added.',9,1),(54,'2016-01-12 19:31:41','50','Vetagrande',1,'Added.',9,1),(55,'2016-01-12 19:31:45','51','Villa de Cos',1,'Added.',9,1),(56,'2016-01-12 19:31:48','52','Villa García',1,'Added.',9,1),(57,'2016-01-12 19:31:53','53','Villa González Ortega',1,'Added.',9,1),(58,'2016-01-12 19:31:57','54','Villa Hidalgo',1,'Added.',9,1),(59,'2016-01-12 19:32:03','55','Villanueva',1,'Added.',9,1),(60,'2016-01-12 19:32:09','56','Zacatecas',1,'Added.',9,1),(61,'2016-01-12 19:32:15','57','Trancoso',1,'Added.',9,1),(62,'2016-01-12 19:32:19','58','Santa María de la Paz',1,'Added.',9,1),(63,'2016-01-12 19:46:13','2','ññññóóóóííí',1,'Added.',10,1),(64,'2016-01-12 20:01:40','2','ññññóóóóííí',3,'',10,1),(65,'2016-01-20 00:04:10','1','Apozol',2,'Modifica region.',9,1),(66,'2016-01-20 00:05:03','2','Apulco',2,'Modifica region.',9,1),(67,'2016-01-20 00:05:24','3','Atolinga',2,'Modifica region.',9,1),(68,'2016-01-20 00:06:13','4','Benito Juárez',2,'Modifica region.',9,1),(69,'2016-01-20 00:06:46','5','Calera',2,'Modifica region.',9,1),(70,'2016-01-20 00:07:09','6','Cañitas de Felipe Pescador',2,'Modifica region.',9,1),(71,'2016-01-20 00:07:51','6','Cañitas de Felipe Pescador',2,'No ha modificado ningún campo.',9,1),(72,'2016-01-20 00:08:20','7','Concepción del Oro',2,'Modifica region.',9,1),(73,'2016-01-20 00:08:45','8','Cuauhtémoc',2,'Modifica region.',9,1),(74,'2016-01-20 00:09:04','9','Chalchihuites',2,'Modifica region.',9,1),(75,'2016-01-20 00:10:22','10','Fresnillo',2,'Modifica region.',9,1),(76,'2016-01-20 00:10:27','10','Fresnillo',2,'No ha modificado ningún campo.',9,1),(77,'2016-01-20 00:11:16','11','Trinidad García de la Cadena',2,'Modifica region.',9,1),(78,'2016-01-20 00:11:38','12','Genaro Codina',2,'Modifica region.',9,1),(79,'2016-01-20 00:12:04','13','General Enrique Estrada',2,'Modifica region.',9,1),(80,'2016-01-20 00:14:00','13','General Enrique Estrada',2,'No ha modificado ningún campo.',9,1),(81,'2016-01-20 00:14:12','14','General Francisco R. Murguía',2,'Modifica region.',9,1),(82,'2016-01-20 00:14:34','14','General Francisco R. Murguía',2,'No ha modificado ningún campo.',9,1),(83,'2016-01-20 00:14:43','15','El Plateado de Joaquín Amaro',2,'Modifica region.',9,1),(84,'2016-01-20 00:15:04','16','General Pánfilo Natera',2,'Modifica region.',9,1),(85,'2016-01-20 00:15:46','17','Guadalupe',2,'Modifica region.',9,1),(86,'2016-01-20 00:16:47','18','Huanusco',2,'Modifica region.',9,1),(87,'2016-01-20 00:17:06','19','Jalpa',2,'Modifica region.',9,1),(88,'2016-01-20 00:17:35','20','Jerez',2,'Modifica region.',9,1),(89,'2016-01-20 00:18:02','21','Jiménez del Teul',2,'Modifica region.',9,1),(90,'2016-01-20 00:18:05','21','Jiménez del Teul',2,'No ha modificado ningún campo.',9,1),(91,'2016-01-20 00:18:32','22','Juan Aldama',2,'Modifica region.',9,1),(92,'2016-01-20 00:19:22','23','Juchipila',2,'Modifica region.',9,1),(93,'2016-01-20 00:19:43','24','Loreto',2,'Modifica region.',9,1),(94,'2016-01-20 00:20:10','25','Luis Moya',2,'Modifica region.',9,1),(95,'2016-01-20 00:21:03','25','Luis Moya',2,'No ha modificado ningún campo.',9,1),(96,'2016-01-20 00:21:36','26','Mazapil',2,'Modifica region.',9,1),(97,'2016-01-20 00:22:01','27','Melchor Ocampo',2,'Modifica region.',9,1),(98,'2016-01-20 00:23:07','28','Mezquital del Oro',2,'Modifica region.',9,1),(99,'2016-01-20 00:23:27','29','Miguel Auza',2,'Modifica region.',9,1),(100,'2016-01-20 00:24:09','30','Momax',2,'Modifica region.',9,1),(101,'2016-01-20 00:25:36','31','Monte Escobedo',2,'Modifica region.',9,1),(102,'2016-01-20 00:26:06','32','Morelos',2,'Modifica region.',9,1),(103,'2016-01-20 00:26:31','33','Moyahua de Estrada',2,'Modifica region.',9,1),(104,'2016-01-20 00:27:00','34','Nochistlán de Mejía',2,'Modifica region.',9,1),(105,'2016-01-20 00:27:34','35','Noria de Ángeles',2,'Modifica region.',9,1),(106,'2016-01-20 00:28:48','36','Ojocaliente',2,'Modifica region.',9,1),(107,'2016-01-20 00:28:51','36','Ojocaliente',2,'No ha modificado ningún campo.',9,1),(108,'2016-01-20 00:29:32','37','Pánuco',2,'Modifica region.',9,1),(109,'2016-01-20 00:29:53','38','Pinos',2,'Modifica region.',9,1),(110,'2016-01-20 00:30:56','39','Río Grande',2,'Modifica region.',9,1),(111,'2016-01-20 00:31:35','40','Sain Alto',2,'Modifica region.',9,1),(112,'2016-01-20 00:32:29','41','El Salvador',2,'Modifica region.',9,1),(113,'2016-01-20 00:33:04','42','Sombrerete',2,'Modifica region.',9,1),(114,'2016-01-20 00:33:28','43','Susticacán',2,'Modifica region.',9,1),(115,'2016-01-20 00:33:51','44','Tabasco',2,'Modifica region.',9,1),(116,'2016-01-20 00:34:18','45','Tepechitlán',2,'Modifica region.',9,1),(117,'2016-01-20 00:34:46','46','Tepetongo',2,'Modifica region.',9,1),(118,'2016-01-20 00:35:21','47','Teúl de González Ortega',2,'Modifica region.',9,1),(119,'2016-01-20 00:36:03','48','Tlaltenango de Sánchez Román',2,'Modifica region.',9,1),(120,'2016-01-20 00:36:52','49','Valparaíso',2,'Modifica region.',9,1),(121,'2016-01-20 00:37:17','50','Vetagrande',2,'Modifica region.',9,1),(122,'2016-01-20 00:37:49','58','Santa María de la Paz',2,'Modifica region.',9,1),(123,'2016-01-20 18:13:39','51','Villa de Cos',2,'Modifica region.',9,1),(124,'2016-01-20 18:14:26','52','Villa García',2,'Modifica region.',9,1),(125,'2016-01-20 18:14:53','53','Villa González Ortega',2,'Modifica region.',9,1),(126,'2016-01-20 18:15:38','54','Villa Hidalgo',2,'Modifica region.',9,1),(127,'2016-01-20 18:16:12','55','Villanueva',2,'Modifica region.',9,1),(128,'2016-01-20 18:17:58','56','Zacatecas',2,'Modifica region.',9,1),(129,'2016-01-20 18:18:42','57','Trancoso',2,'Modifica region.',9,1),(130,'2016-01-20 20:21:41','1','INCUFIDEZ',1,'Added.',11,1),(131,'2016-01-20 20:21:41','2','INCUFIDEZ',1,'Added.',11,1),(132,'2016-01-20 20:21:49','3','SAMA',1,'Added.',11,1),(133,'2016-01-20 20:22:09','4','SEDIF',1,'Added.',11,1),(134,'2016-01-20 20:22:16','5','SECAMPO',1,'Added.',11,1),(135,'2016-01-20 20:22:25','6','SECTURZ',1,'Added.',11,1),(136,'2016-01-20 20:22:33','7','SEDESOL',1,'Added.',11,1),(137,'2016-01-20 20:22:43','8','SEGOB',1,'Added.',11,1),(138,'2016-01-20 20:22:51','9','SEZAC',1,'Added.',11,1),(139,'2016-01-20 20:23:01','10','SINFRA',1,'Added.',11,1),(140,'2016-01-20 20:23:38','1','INCUFIDEZ',3,'',11,1),(141,'2016-01-20 20:42:39','1','Construcción de Planta de Tratamiento de Aguas Residuales  (Incluye Infraestructura de Respaldo)',1,'Added.',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'obras','dependencia'),(9,'obras','municipio'),(10,'obras','obra'),(8,'polls','choice'),(7,'polls','question'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-12-26 22:44:03'),(2,'auth','0001_initial','2015-12-26 22:47:22'),(3,'admin','0001_initial','2015-12-26 22:47:55'),(4,'admin','0002_logentry_remove_auto_add','2015-12-26 22:47:55'),(5,'contenttypes','0002_remove_content_type_name','2015-12-26 22:47:55'),(6,'auth','0002_alter_permission_name_max_length','2015-12-26 22:47:55'),(7,'auth','0003_alter_user_email_max_length','2015-12-26 22:47:56'),(8,'auth','0004_alter_user_username_opts','2015-12-26 22:47:56'),(9,'auth','0005_alter_user_last_login_null','2015-12-26 22:47:56'),(10,'auth','0006_require_contenttypes_0002','2015-12-26 22:47:56'),(11,'auth','0007_alter_validators_add_error_messages','2015-12-26 22:47:56'),(12,'sessions','0001_initial','2015-12-26 22:48:29'),(13,'polls','0001_initial','2015-12-26 22:55:03'),(14,'obras','0001_initial','2016-01-12 19:07:18'),(15,'obras','0002_auto_20160112_1342','2016-01-12 19:42:27'),(16,'obras','0003_auto_20160112_1432','2016-01-12 20:33:14'),(17,'obras','0004_auto_20160112_1434','2016-01-12 20:34:41'),(18,'obras','0005_auto_20160112_1501','2016-01-12 21:01:17'),(19,'obras','0006_auto_20160119_1754','2016-01-19 23:54:32'),(20,'obras','0007_auto_20160120_1340','2016-01-20 19:41:28'),(21,'obras','0008_auto_20160120_1416','2016-01-20 20:17:32'),(22,'obras','0009_auto_20160120_1435','2016-01-20 20:35:20'),(23,'obras','0010_auto_20160120_1438','2016-01-20 20:39:01'),(24,'obras','0011_auto_20160120_1441','2016-01-20 20:41:14');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3j1cazg9dqd5ntgeei447yde33b4i1z8','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-01-10 18:20:15'),('9ab53b7b4vu6lmbeooupwdgq3xwd33ql','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-01-26 21:21:50'),('awtfw8xp00c0lf64zuzqoac946kv8rwq','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-01-26 21:22:13'),('dq8z01eit6ldlvkpay3foc1vne8ub9w2','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-01-19 23:12:10'),('n9ho50heg3qf66hzzvukmifft55mtme9','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-02-02 23:55:24'),('xuifwrqdj6igg0ddb8b4sag4a2bfqry4','NWNiZTQ4YjgwNzM2YTgxOGVhMzU5NTE3NGQ1OTBiNjJiNzFlYmY1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZThlOWQxZDk5YWU3YTZkNjUyMmI1OTExZjI0NzQ2N2ViYTRkNmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-01-27 17:59:04');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras_dependencia`
--

DROP TABLE IF EXISTS `obras_dependencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras_dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras_dependencia`
--

LOCK TABLES `obras_dependencia` WRITE;
/*!40000 ALTER TABLE `obras_dependencia` DISABLE KEYS */;
INSERT INTO `obras_dependencia` VALUES (2,'INCUFIDEZ'),(3,'SAMA'),(4,'SEDIF'),(5,'SECAMPO'),(6,'SECTURZ'),(7,'SEDESOL'),(8,'SEGOB'),(9,'SEZAC'),(10,'SINFRA');
/*!40000 ALTER TABLE `obras_dependencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras_municipio`
--

DROP TABLE IF EXISTS `obras_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras_municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `region` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras_municipio`
--

LOCK TABLES `obras_municipio` WRITE;
/*!40000 ALTER TABLE `obras_municipio` DISABLE KEYS */;
INSERT INTO `obras_municipio` VALUES (1,'Apozol','168,697,190,700,198,701,207,704,216,707,220,697,222,687,223,679,198,679,168,679'),(2,'Apulco','278,666,271,676,271,691,283,707,291,684,291,671,277,668'),(3,'Atolinga','163,605,158,605,136,631,136,633,141,638,140,656,138,659,138,668,146,669,146,664,144,660,144,649,154,639,163,621'),(4,'Benito Juárez','145,695,143,688,141,678,141,675,144,672,131,670,121,681,111,691,109,695,108,702,108,708,108,711,116,709,121,709,126,709,128,709'),(5,'Calera','274,412,296,410,297,395,259,399,259,434,265,434'),(6,'Cañitas de Felipe Pescador','242,309,311,313,312,296,300,276,292,262,261,263,260,272,257,274,256,292,243,303'),(7,'Concepción del Oro','504,65,500,67,513,147,563,149,562,132,559,129,559,115,564,108,546,93,530,65'),(8,'Cuauhtémoc','365,497,359,498,357,503,365,521,373,517,377,527,384,528,394,512'),(9,'Chalchihuites','99,322,85,312,85,294,76,281,72,283,70,295,42,317,40,336,96,341,98,331'),(10,'Fresnillo','314,395,315,337,310,330,311,315,242,311,236,319,215,319,210,321,182,322,172,332,161,353,173,391,182,419,207,420,219,408,234,395,235,383,250,376,252,361,272,359,278,364,293,364,294,377,301,382,300,393,309,394'),(11,'Trinidad García de la Cadena','144,713,137,722,137,730,142,741,151,743,154,734,158,732,158,716,154,713'),(12,'Genaro Codina','281,480,282,503,309,508,311,531,319,531,334,517,335,488,314,485'),(13,'General Enrique Estrada','298,393,299,383,292,377,292,367,277,366,271,361,253,363,251,378,236,384,236,394,259,397'),(14,'General Francisco R. Murguía','366,218,346,183,333,165,320,148,262,140,194,134,193,157,190,170,189,179,188,184,195,187,198,192,199,197,227,213,237,215,242,212,250,216,262,210,278,224,281,238,292,246,321,244'),(15,'El Plateado de Joaquín Amaro','218,576,208,579,207,587,201,594,199,610,205,611,210,613,214,608,228,607,228,592,233,588,232,580'),(16,'General Pánfilo Natera','380,446,366,461,379,467,384,471,390,477,394,481,410,472,395,458'),(17,'Guadalupe','334,400,334,416,339,425,338,430,336,437,311,437,310,457,306,462,306,482,325,485,325,476,337,468,338,448,347,440,362,435,374,443,374,448,379,445,356,407,356,402,345,400'),(18,'Huanusco','254,609,223,610,222,614,219,624,219,637,236,637,249,627,255,627,256,618'),(19,'Jalpa','212,639,207,650,206,655,210,658,209,665,193,665,191,670,193,676,206,677,224,677,223,668,226,666,226,650,230,648,230,639'),(20,'Jerez','234,397,222,407,207,421,199,480,206,478,218,484,228,483,234,484,243,474,248,474,254,467,257,442,258,425,258,398'),(21,'Jiménez del Teul','39,338,38,364,28,374,27,393,56,387,72,383,84,381,96,378,96,369,110,356,115,349,116,347,113,345,110,343,83,342'),(22,'Juan Aldama','192,134,191,157,186,184,166,192,165,180,157,170,154,157,154,154,160,145,160,137,166,135,173,133,180,133'),(23,'Juchipila','168,699,168,706,166,711,178,712,190,717,199,715,217,719,217,709,200,703'),(24,'Loreto','395,514,386,529,392,535,406,539,406,551,409,553,434,553,439,549,439,542,437,538,432,536,425,534,420,533,417,533,404,520'),(25,'Luis Moya','337,488,337,513,350,502,356,502,357,497,361,496,363,496,363,485,358,480,347,484'),(26,'Mazapil','499,69,491,75,462,72,464,60,432,65,415,54,401,51,371,28,365,2,290,9,290,22,321,76,321,147,336,166,348,182,354,193,363,209,383,245,439,250,464,252,479,258,506,237,509,222,528,210,563,151,512,149'),(27,'Melchor Ocampo','367,2,404,16,427,24,444,54,464,55,463,58,433,64,421,56,412,52,402,51,392,42,372,28,367,5'),(28,'Mezquital del Oro','165,713,161,716,161,732,156,736,153,744,160,745,166,747,175,753,184,760,184,740,189,732,190,720,178,714'),(29,'Miguel Auza','164,193,164,181,156,172,152,157,144,162,134,162,124,180,113,190,113,193,127,212,136,213,141,207,150,208'),(30,'Momax','183,589,171,600,172,607,180,607,187,610,198,611,198,608,199,604,199,599,200,595'),(31,'Monte Escobedo','123,470,113,478,128,491,120,504,117,517,114,526,115,543,117,554,117,564,126,571,135,564,143,564,149,547,158,540,158,530,166,526,166,520,157,515,157,504,162,498,165,492,170,489,168,483,168,478,158,484,139,484,132,478'),(32,'Morelos','275,414,267,435,296,435,299,424,299,419,297,417,297,412'),(33,'Moyahua de Estrada','199,717,191,720,190,732,186,740,185,761,192,760,199,762,207,764,215,767,220,765,220,734,217,728,218,721'),(34,'Nochistlán de Mejía','254,629,249,629,236,639,231,640,231,649,227,652,227,667,223,671,225,675,223,684,222,689,220,699,218,707,217,718,219,727,228,724,246,725,261,714,264,719,268,718,270,715,271,710,277,704,270,695,268,689,268,677,275,667,270,663,269,657,266,652,270,639,264,633'),(35,'Noria de Ángeles','402,498,396,511,400,515,410,524,417,531,432,534,433,526,437,517,438,506,419,500'),(36,'Ojocaliente','363,461,349,465,340,469,328,477,327,485,336,486,357,477,365,483,366,496,394,510,400,497,394,483,381,470'),(37,'Pánuco','298,395,298,410,300,418,300,424,318,424,331,415,333,400,312,399,308,395'),(38,'Pinos','484,477,485,487,475,516,464,543,464,550,458,560,455,579,454,585,452,589,456,596,463,596,485,618,520,568,508,514,525,500,513,477'),(39,'Río Grande','292,260,292,248,280,240,277,226,261,212,250,218,242,214,237,217,231,216,225,214,199,199,195,190,191,187,187,186,183,188,179,190,173,191,166,194,152,209,159,217,159,225,174,241,185,241,190,237,196,242,195,269,228,295,233,302,241,302,254,291,255,273,259,269,259,261'),(40,'Sain Alto','241,304,232,304,226,295,194,270,193,244,190,240,186,244,174,243,167,237,160,279,157,284,157,296,171,306,182,320,209,320,214,317,235,317,240,310'),(41,'El Salvador','564,110,561,116,561,129,564,132,565,147,574,139,592,131,603,110,598,108,592,108,588,106,580,110,576,112'),(42,'Sombrerete','165,235,158,227,157,218,151,210,142,209,136,215,128,214,111,193,107,201,93,212,92,221,78,226,85,239,82,252,82,255,95,272,91,284,83,278,78,281,87,293,86,311,102,322,98,341,111,341,119,346,159,352,171,330,179,321,169,307,160,301,155,298,155,284,158,277'),(43,'Susticacán','182,421,170,477,197,479,205,422'),(44,'Tabasco','235,581,235,589,230,593,230,607,255,608,255,600,264,588'),(45,'Tepechitlán','156,640,146,650,145,659,148,663,148,669,167,677,191,677,190,671,192,664,181,663,168,647'),(46,'Tepetongo','171,478,172,489,169,493,175,502,186,509,194,515,200,519,201,526,206,525,211,527,227,485,220,487,204,481,195,480'),(47,'Teúl de González Ortega','109,713,100,724,103,733,113,727,121,727,121,733,125,740,141,740,136,731,136,721,145,711,155,711,159,714,165,707,167,700,152,699,144,697,128,711'),(48,'Tlaltenango de Sánchez Román','211,615,199,612,191,612,186,612,179,610,171,608,169,605,166,605,164,608,165,621,161,629,157,639,164,642,171,646,181,659,190,661,201,663,207,663,208,660,204,656,206,648,210,638,217,637,217,624,221,611,215,610'),(49,'Valparaíso','27,395,25,467,3,537,34,524,47,521,62,521,70,494,62,488,64,452,64,444,81,447,98,450,94,476,84,483,88,492,80,503,83,511,79,522,81,545,101,479,112,476,124,468,141,481,156,482,168,476,180,420,160,354,119,348,117,353,98,370,96,380'),(50,'Vetagrande','333,417,320,425,302,426,299,431,297,436,334,435,338,426'),(51,'Villa de Cos','476,259,463,254,382,247,367,220,321,245,294,247,294,261,314,296,314,296,313,314,312,331,317,338,315,397,358,399,361,390,358,366,355,364,350,360,352,353,359,353,366,331,367,327,378,327,381,337,389,337,408,317,425,298,438,286,448,284,454,276,457,268'),(52,'Villa García','441,544,441,550,435,555,412,555,407,553,403,557,409,569,422,576,436,591,450,597,454,596,450,591,454,580,455,573,456,560,460,553,462,550,462,543'),(53,'Villa González Ortega','412,474,397,482,402,497,413,497,419,497,432,501,429,497'),(54,'Villa Hidalgo','476,478,466,498,453,498,449,506,440,506,439,518,435,525,434,535,439,536,441,542,462,542,482,490,482,479'),(55,'Villanueva','256,468,250,475,244,475,236,485,229,486,214,527,224,535,225,544,209,561,219,568,219,574,234,579,246,582,265,586,289,553,286,541,293,532,310,531,308,510,281,504,279,480'),(56,'Zacatecas','259,436,257,466,281,478,304,481,304,462,309,456,309,438'),(57,'Trancoso','363,438,349,442,340,450,340,455,339,466,357,459,363,460,372,450,372,444,369,442'),(58,'Santa María de la Paz','147,671,143,675,147,695,166,698,167,679');
/*!40000 ALTER TABLE `obras_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras_obra`
--

DROP TABLE IF EXISTS `obras_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras_obra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `inversion_ejercida` decimal(20,2) NOT NULL,
  `avance` decimal(5,2) NOT NULL,
  `beneficiarios_hombres` int(11) NOT NULL,
  `beneficiarios_mujeres` int(11) NOT NULL,
  `dependencia_id` int(11) NOT NULL,
  `estatus` varchar(50),
  PRIMARY KEY (`id`),
  KEY `obras_obra_dependencia_id_05d4324b_uniq` (`dependencia_id`),
  CONSTRAINT `obras_obra_dependencia_id_05d4324b_fk_obras_dependencia_id` FOREIGN KEY (`dependencia_id`) REFERENCES `obras_dependencia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras_obra`
--

LOCK TABLES `obras_obra` WRITE;
/*!40000 ALTER TABLE `obras_obra` DISABLE KEYS */;
INSERT INTO `obras_obra` VALUES (1,'Construcción de Planta de Tratamiento de Aguas Residuales  (Incluye Infraestructura de Respaldo)',23376011.00,100.00,16150,16571,10,'');
/*!40000 ALTER TABLE `obras_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras_obra_municipios`
--

DROP TABLE IF EXISTS `obras_obra_municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras_obra_municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obra_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obras_obra_municipios_obra_id_7714259e_uniq` (`obra_id`,`municipio_id`),
  KEY `obras_obra_municipio_municipio_id_f069abb7_fk_obras_municipio_id` (`municipio_id`),
  CONSTRAINT `obras_obra_municipio_municipio_id_f069abb7_fk_obras_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `obras_municipio` (`id`),
  CONSTRAINT `obras_obra_municipios_obra_id_c1e73331_fk_obras_obra_id` FOREIGN KEY (`obra_id`) REFERENCES `obras_obra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras_obra_municipios`
--

LOCK TABLES `obras_obra_municipios` WRITE;
/*!40000 ALTER TABLE `obras_obra_municipios` DISABLE KEYS */;
INSERT INTO `obras_obra_municipios` VALUES (1,1,5);
/*!40000 ALTER TABLE `obras_obra_municipios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_7aa0f6ee` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,'Not much',3,1),(2,'The sky',0,1);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'What\'s up?','2015-12-27 18:58:39'),(2,'Cómo estás?','2015-12-27 19:10:15'),(3,'Who is your favorite Beatle?','2015-12-28 20:00:09');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-20 20:43:48
