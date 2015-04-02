-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tweet
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Current Database: `tweet`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tweet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tweet`;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add tweet',7,'add_tweet'),(20,'Can change tweet',7,'change_tweet'),(21,'Can delete tweet',7,'delete_tweet'),(22,'Can add queue',8,'add_queue'),(23,'Can change queue',8,'change_queue'),(24,'Can delete queue',8,'delete_queue'),(25,'Can add message',9,'add_message'),(26,'Can change message',9,'change_message'),(27,'Can delete message',9,'delete_message'),(28,'Can add task state',10,'add_taskmeta'),(29,'Can change task state',10,'change_taskmeta'),(30,'Can delete task state',10,'delete_taskmeta'),(31,'Can add saved group result',11,'add_tasksetmeta'),(32,'Can change saved group result',11,'change_tasksetmeta'),(33,'Can delete saved group result',11,'delete_tasksetmeta'),(34,'Can add interval',12,'add_intervalschedule'),(35,'Can change interval',12,'change_intervalschedule'),(36,'Can delete interval',12,'delete_intervalschedule'),(37,'Can add crontab',13,'add_crontabschedule'),(38,'Can change crontab',13,'change_crontabschedule'),(39,'Can delete crontab',13,'delete_crontabschedule'),(40,'Can add periodic tasks',14,'add_periodictasks'),(41,'Can change periodic tasks',14,'change_periodictasks'),(42,'Can delete periodic tasks',14,'delete_periodictasks'),(43,'Can add periodic task',15,'add_periodictask'),(44,'Can change periodic task',15,'change_periodictask'),(45,'Can delete periodic task',15,'delete_periodictask'),(46,'Can add worker',16,'add_workerstate'),(47,'Can change worker',16,'change_workerstate'),(48,'Can delete worker',16,'delete_workerstate'),(49,'Can add task',17,'add_taskstate'),(50,'Can change task',17,'change_taskstate'),(51,'Can delete task',17,'delete_taskstate');
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
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$XljWUiKuGzbm$F2uCpnzXhlenuijcMNS7pFF0SjcclrSizaZxJy7NA9s=','2015-03-31 10:04:37',1,'lavish','','','lucky.lavish@gmail.com',1,1,'2015-03-31 10:03:01');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_taskmeta`
--

DROP TABLE IF EXISTS `celery_taskmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_2ff6b945` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_taskmeta`
--

LOCK TABLES `celery_taskmeta` WRITE;
/*!40000 ALTER TABLE `celery_taskmeta` DISABLE KEYS */;
INSERT INTO `celery_taskmeta` VALUES (1,'64ea08b0-27c9-40b8-bad7-5ab993b88f24','SUCCESS',NULL,'2015-03-31 11:47:20',NULL,0,'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA'),(2,'dee8bb91-db4e-4d48-aeda-d8bfef162f64','SUCCESS',NULL,'2015-03-31 11:59:52',NULL,0,'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA'),(3,'dd3c3c5c-a877-45bc-9285-f07df9cbf9c8','SUCCESS',NULL,'2015-03-31 13:35:33',NULL,0,'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA'),(4,'29018abb-e13c-43d7-b545-9df56e3a9c27','FAILURE','gAJjZXhjZXB0aW9ucwpOYW1lRXJyb3IKcQFVKWdsb2JhbCBuYW1lICdDT05TVU1FUl9LRVknIGlzIG5vdCBkZWZpbmVkcQKFcQNScQQu','2015-03-31 14:02:23','Traceback (most recent call last):\n  File \"/home/lavish/virt/local/lib/python2.7/site-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/home/lavish/virt/local/lib/python2.7/site-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/lavish/Desktop/zapyle/tweet_analysis/tweet/tasks.py\", line 10, in get_tweet\n    api = TwitterAPI(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN_KEY, ACCESS_TOKEN_SECRET)\nNameError: global name \'CONSUMER_KEY\' is not defined\n',0,'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
/*!40000 ALTER TABLE `celery_taskmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_tasksetmeta`
--

DROP TABLE IF EXISTS `celery_tasksetmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_2ff6b945` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_tasksetmeta`
--

LOCK TABLES `celery_tasksetmeta` WRITE;
/*!40000 ALTER TABLE `celery_tasksetmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_tasksetmeta` ENABLE KEYS */;
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
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'tweet','tweet','tweet'),(8,'queue','kombu_transport_django','queue'),(9,'message','kombu_transport_django','message'),(10,'task state','djcelery','taskmeta'),(11,'saved group result','djcelery','tasksetmeta'),(12,'interval','djcelery','intervalschedule'),(13,'crontab','djcelery','crontabschedule'),(14,'periodic tasks','djcelery','periodictasks'),(15,'periodic task','djcelery','periodictask'),(16,'worker','djcelery','workerstate'),(17,'task','djcelery','taskstate');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'tweet','0001_initial','2015-03-31 08:50:53'),(2,'contenttypes','0001_initial','2015-03-31 10:02:07'),(3,'auth','0001_initial','2015-03-31 10:02:18'),(4,'admin','0001_initial','2015-03-31 10:02:21'),(5,'sessions','0001_initial','2015-03-31 10:02:21'),(6,'tweet','0002_auto_20150331_1147','2015-03-31 11:49:19');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('inls16z6x850tdny7oana5hzu1d8pzd7','MjkwYTE5NmM3NzlhOGIzOTNmZGZmZTU5MWIxODgyNzU5MjY3YWJmMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIwNWUyZGUwZjVjYWMyM2I4YjkyZDZjYTVhNjJhMzgyYWJjZGUxN2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-14 10:04:38');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_crontabschedule`
--

DROP TABLE IF EXISTS `djcelery_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_crontabschedule`
--

LOCK TABLES `djcelery_crontabschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_intervalschedule`
--

DROP TABLE IF EXISTS `djcelery_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_intervalschedule`
--

LOCK TABLES `djcelery_intervalschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictask`
--

DROP TABLE IF EXISTS `djcelery_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_8905f60d` (`interval_id`),
  KEY `djcelery_periodictask_7280124f` (`crontab_id`),
  CONSTRAINT `crontab_id_refs_id_286da0d1` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  CONSTRAINT `interval_id_refs_id_1829f358` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictask`
--

LOCK TABLES `djcelery_periodictask` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictasks`
--

DROP TABLE IF EXISTS `djcelery_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictasks`
--

LOCK TABLES `djcelery_periodictasks` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_taskstate`
--

DROP TABLE IF EXISTS `djcelery_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_5654bf12` (`state`),
  KEY `djcelery_taskstate_4da47e07` (`name`),
  KEY `djcelery_taskstate_abaacd02` (`tstamp`),
  KEY `djcelery_taskstate_cac6a03d` (`worker_id`),
  KEY `djcelery_taskstate_2ff6b945` (`hidden`),
  CONSTRAINT `worker_id_refs_id_6fd8ce95` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_taskstate`
--

LOCK TABLES `djcelery_taskstate` WRITE;
/*!40000 ALTER TABLE `djcelery_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_workerstate`
--

DROP TABLE IF EXISTS `djcelery_workerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_11e400ef` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_workerstate`
--

LOCK TABLES `djcelery_workerstate` WRITE;
/*!40000 ALTER TABLE `djcelery_workerstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_workerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djkombu_message`
--

DROP TABLE IF EXISTS `djkombu_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djkombu_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `payload` longtext NOT NULL,
  `queue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djkombu_message_5907bb86` (`visible`),
  KEY `djkombu_message_bc4c5ddc` (`sent_at`),
  KEY `djkombu_message_c80a9385` (`queue_id`),
  CONSTRAINT `queue_id_refs_id_88980102` FOREIGN KEY (`queue_id`) REFERENCES `djkombu_queue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djkombu_message`
--

LOCK TABLES `djkombu_message` WRITE;
/*!40000 ALTER TABLE `djkombu_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `djkombu_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djkombu_queue`
--

DROP TABLE IF EXISTS `djkombu_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djkombu_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djkombu_queue`
--

LOCK TABLES `djkombu_queue` WRITE;
/*!40000 ALTER TABLE `djkombu_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `djkombu_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet_tweet`
--

DROP TABLE IF EXISTS `tweet_tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweet_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweets` varchar(140) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tweet_tweet_tweets_1a8d986e45a1226f_uniq` (`tweets`)
) ENGINE=InnoDB AUTO_INCREMENT=1433 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_tweet`
--

LOCK TABLES `tweet_tweet` WRITE;
/*!40000 ALTER TABLE `tweet_tweet` DISABLE KEYS */;
INSERT INTO `tweet_tweet` VALUES (1306,'      &lt;3 #grandmother #haircut # https://t.co/nWAJkGCWfD'),(131,'   0  haircut '),(1138,' @siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100'),(1042,' @YouTube : http://t.co/9sJdJnWRVl Haircut 100 - Favourite Shirts (Boy Meets Girl)'),(1202,' okay ke \"@King_Gobodo: @_MileyR_ @SiweMagadla lmao hayi maan Miley...he doesn\'t look like Sturridge its just a haircut\"'),(1220,' RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/OBlYbkLYfX http://t.co/cNOZdRhjyD'),(1123,' ure contributing towards rent \"@siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100\"'),(683,'\"@.Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/5fH4Ka6sqo http://t.co/Ey2VAIqtUH\"\n\n'),(167,'\"@AwesomityFun: The four stages of haircut:\n\n-hatred\n-regret\n-sadness\n-acceptance\"'),(532,'\"@eymibeybi: haircut bc nasaktan... iniwan.... char hahahahaha omg\" '),(387,'\"@Flyer_thanu2: Rihanna\'s outfit was ugly af\" agreed &amp; i hate that Beatle\'s looking haircut '),(1010,'\"@HashtagCuteness: Eyebrows on fleek http://t.co/erX2a0o6cF\"\n\nLol i wanna do this when Bella gets her haircut.'),(762,'\"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/fWuDVNY70h http://t.co/p7StCzvePY\" OPPAAAAA'),(664,'\"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/O1He0gnDpM http://t.co/su2BgSmAq3\" '),(638,'\"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/Z6SPz1ouQd http://t.co/zwPGhLcJOA\" '),(696,'\"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment http://t.co/0kyb552f2D http://t.co/0rk2C5qIIG\"\n\n@teukieabs!'),(24,'\"@lanGaIIagher: @svetlanasdildo http://t.co/RfDpuXT0gm\" my fav Ian haircut of them all'),(95,'\"@shakelikeswift: got a haircut together with my best friend haha\n\nI vote for #TaylorSwift @taylorswift13 #Cool @radiodisney'),(204,'\"@StuuFromTHC: Gotta go get my haircut today\" !'),(323,'\"@_chelseahhilary: Haircut tuhdayy pls\" di na day .. HAHA .. gabi nah ..'),(856,'\"Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment\" nIEEE'),(315,'\"justin bieber has a voice of an angel and has the haircut and tattoos of a lesbian butcher\" IM SO DONE JDJFKFKDKSKS '),(907,'\"Justin Bieber has the haircut and tattoos of a lesbian butcher.\" - @KevinHart4real \n\n#BieberRoast'),(885,'\"One of the most important things about looking youthful is to have a modern haircut\" -Evelyn https://t.co/Lt0vYbI4yr'),(242,'\"the four stages of haircut:- hatred- regret- sadness- acceptance\"'),(150,'#antesedepois #beleza #brasil #brazil #corte #cabelo #confiana #elisferrinho #f #hair #haircut #job https://t.co/0pEcz5URES'),(40,'#CelebrityShortHairForBlackWomen\nPlease RT: http://t.co/0Sqn8QezOT http://t.co/hNCmN8OcoO'),(1393,'#cheeky little #selfie feeling #fresh #haircut #beard #eyeBrows #olive #sunshine #goodDay heading to https://t.co/XWRMQ4fsUy'),(573,'#gay #gay4gay #gaybeard #gayartist #gayfollow #gayselfie #haircut #dark #energie #model #handsome https://t.co/cqitRWE6i7'),(1232,'#gentlemen #hairstyle #hairstyle #haircut #hair #art #mensfashion #men#style #boys #fashion #barber https://t.co/D1lyBHWZFX'),(1176,'#Hair #Haircut #Salo Popular Yosemite National Park lookout opens early in season: This year\'s March 28 openin... http://t.co/axPBjH0nzS'),(781,'#hair #hairlover #haircut #haircutforwomen #bob #likeforlike #toronto #montreal #torontofashion https://t.co/OvFimYqFt7'),(782,'#hair #hairlover #ombre #Cooperhair #haircut #hairlayers #prettyincooper #likeforlike #toronto https://t.co/5umyA4u4UF'),(354,'#haircut #hairfashion #hair # # # https://t.co/3oZMwURaGR'),(804,'#haircut #shorthair #shorthaircut #women \nRead More:http://t.co/fCFqVIszaH http://t.co/yhVTPDbh3L'),(792,'#hairlover #hair #haircut #haircutforwomen #funkystyle #funkyness  #toronto #montreal #torontofashion https://t.co/krvFkdbPjD'),(909,'#hello #beautiful #people \n#bad #hair #day #badhairday\n#haircut #hairstyle #menstyle\n#menswear https://t.co/QYTgV7jzKU'),(1425,'#instashot #haircut https://t.co/LjMBeTJjU0'),(1407,'#instashot #haircut https://t.co/QOMtcvXysg'),(1361,'#KCA #VoteJKT48ID VCUPav: Wish I had time to get a haircut and bears trim. Honey deserves better than unkempt teenwolf Pav.'),(690,'#lanzalove #lanza #lang #hair #haircut #haircolor #blond #flow #haar #kapper #rijssen https://t.co/j3mj2Fd0nr'),(768,'#naturalgrey #greyhair #funkystyle #shorthairforwomen #hairlover #hair #haircut #likeforlike #toronto https://t.co/aM1dLmY3Fg'),(1094,'#New #haircut &amp; #jumpsuit. Yeeeha!!! https://t.co/a5i36yHFNB'),(670,'#NowPlaying  Devils Haircut  Beck http://t.co/k9byQ2bSOD'),(803,'#NowPlaying Fantastic Day - Haircut 100'),(676,'#pic of the #day - #shaun \'s #new #haircut  Ich bin echt ein groer Shaun #fan - aber auch ich https://t.co/IjgifwlpUC'),(1332,'#stolenshot #muscles #arms #haircut #newlook #hotness #myfiance  @ Serenitea Resorts World, https://t.co/U541fcYivv'),(364,'#topmakeover #Madrid #Espaa #Haircut #fashion #style #Peluqueriaday #lorealprofessional @ https://t.co/BObn2RZDJp'),(210,'#WWE #RAW guess who\'s back? Lookin better than ever? With a new badass haircut? Deliverin #broguekick? @WWESheamus! #europe takin over!!!'),(1215,'#youtube Cristiano Ronaldo Impressive Shot Shows how beautiful his New Haircut is http://t.co/ENJ5cHxVeG'),(217,'\'Wicked Wednesday\' \n\n35 trim/blowdry (usually 55) http://t.co/NjdsnyFn7F\n\n#haircut #skint #discount #london #hair http://t.co/i6bv583AOM'),(365,'.@LiamHemsworths new #haircut is the most 90s thing youll see today http://t.co/Q3Kvz2TaFF via @buzzfeed #KidsChoiceAwards #LiamHemsworth'),(516,'20 #Best Short Curly ... \nhttp://t.co/TIfSU3V7xC \nPlease RT #women #haircut #shorthair #fashion #summer http://t.co/Bo16S7eISr'),(257,'2015 30 Best Hairstyles Ideas: Straight Long Bob Haircut...x http://t.co/pAZ7VgmknG'),(854,'400 page report complete. I am scruffy and exhausted. Good day for a haircut.'),(253,'9-8 today at sport clips  come get your haircut and keep me busy so they day goes by faster '),(819,': Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment   http://t.co/Sf9t6lHdLx) http://t.co/3m23hUp9Xd'),(1179,':\'\'\'D so it begins. RT @siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100'),(12,'@1079isHot @justinbieber. @hannibalburess killed it, and it looked like Bieber was iniated into the Balwin Family with that haircut!'),(266,'@6News I\'m not trusting any talks where some old dude with a goofy haircut\'s involved'),(860,'@950828q bruh :( http://t.co/DWBwLJ0Yjw'),(267,'@alexxx9612 get fine haircut in the @rafaelbarbers'),(887,'@Alipat11 I\'m liking for the Mr Pickles comment. I fear I may not approve of your haircut location!'),(443,'@Am2Si Wouldn\'t that have been a more accurate ED commercial? \"I have this haircut, this stupid car, and this 19yo GF because I have ED\"'),(378,'@anabelish Oh you\'ve changed your face again....are you the Doctor?  I like it.\n\nYes, it\'s now &amp; yes, haircut tomorrow :-)'),(283,'@antonieeette what is your haircut?'),(466,'@arianonymouss hindi naman kita kakalbuhin eh.Yung pang bading na haircut lang haha'),(625,'@arjunk26 new haircut his saviour from summer heat \nhttp://t.co/VHxzCVjIdB\n#TheLiveMirror'),(289,'@asiann_chinkk new haircut it`s pleasant always'),(814,'@AvantGarcia that\'s a pickled egg! it is my friend &amp; companion. also, thank you - perhaps this haircut will grow on me (HO HO HO)'),(1020,'@AVReece Please get his haircut'),(493,'@ayelici @ArcTrey_ @FaZe_Caarl *haircut'),(209,'@ayman_riz ger cool haircut in our salon'),(531,'@BarberPosts: This the international fuckboy haircut   http://t.co/GkeRDENyt1 @timwolf7 I think it\'s nationally known '),(55,'@ben_pignone I got a god damn haircut the other day and you have yet to notice/compliment me!'),(112,'@blissells how would you like your haircut?'),(1311,'@BrothaaBrooks I\'m supposed to get my haircut in 3mins and this boys phone is off'),(627,'@callmeve_ Maybe its more common than I realize. But going to the vet for pet grooming seems like going to the doctor for a haircut. O_o'),(148,'@CapriciousDemon I don\'t know, you\'ll probably laugh at Mikey\'s haircut or something..'),(463,'@CARTbreaker @DanielCarinoo cool yan haha cool din haircut nyan eh'),(517,'@casctus but with this haircut! http://t.co/G6qllNBDpM'),(1351,'@cjohnston1196 don\'s scalp hasn\'t seared off has it? Great dude, terrible haircut!'),(510,'@clydesee best new haircut award  #SeizeTheSummer #TeamDLSUBMS @Vaselineph'),(1390,'@CodyMcmanus1 ill come but no money for haircut today'),(111,'@CristianaYingi @ronaldogirl07 That haircut is the definition of AIDS ;)'),(1097,'@cuffzilla: Grown ass men got water in their eyes from the alcohol after a haircut LOL alcohol on a bald head http://t.co/meyjGwsDl3'),(1053,'@cuffzilla: Grown ass men got water in their eyes from the alcohol after a haircut LOL lol shit gets real'),(20,'@Dave1037TheGame well @Chet_Yoder has that fresh new haircut. Super prep.'),(996,'@Destro7000 They gave me a good haircut, but took off way more than we\'d agreed so its short and practical.'),(1394,'@DibsOnCas New tatoo? Why not new haircut? Nervous, go \"part\" way? Try attention getting style B4 big cut. (View fr yer Dads generation) :-)'),(582,'@DibsOnCas orrrrr u could ask a random person with a cool haircut on the street. s\'how i get best recs xD'),(1362,'@divinemadness only one had the bad haircut. The other one had to copy it for the swap.'),(1368,'@DKnight___ actually i just got my haircut that day you tried it tho '),(431,'@Dockroach I think he would enjoy that actually! The other guinea pigs would be too scared. I just had a quality haircut! ;)'),(939,'@Duskitty It\'s at the top of my head, sticks out, and usually when I get a haircut, they bump into it. -.-'),(770,'@eyengieel aww miss you too, magpapa haircut na rin ako '),(313,'@Fernandez_jon22 come to @rafaelbarbers and get fine haircut'),(1266,'@FittaTom @platelegs GURNEY HAIRCUT LAD'),(660,'@forestnymphmfc \nIts a big event your haircut only repeat every 4 years.\nCongratulations.\n the day finally coming '),(207,'@ForterMark I shaved just the side. I love punk rock and this haircut is what I have always wanted to get done '),(1316,'@framboise_anna Haircut looks good.'),(330,'@FukOutMy_FASE you need a haircut'),(372,'@Ganesh_Bieber oops! I just got a short haircut though. :p'),(600,'@GovPenceIN Wow. What a piece of bigoted work you are. Archie Bunker with a better haircut.'),(467,'@grxyin k grey porket bagong haircut ka lang hmf '),(18,'@haidaNaa whay os your haircut?'),(1112,'@heyFlex haircut can\'t be that bad honestly. You may not like it. But other people might'),(725,'@HeyItsMePiolo That\'s haircut is waaaaay different from your regular style.'),(1198,'@heyitsniky and she was really rising in my rankings lately. but not with that haircut'),(332,'@Hogiebear86 u got a haircut..?'),(612,'@hsderuiter this is a change of subject bug can you imagine getting that haircut'),(801,'@iampaolalandig Haha download mo na viber pls. Mas madali dun eh. Ako hahanap ng haircut for you. Wait san ka papahaircolor?'),(1152,'@ImMariiyam @gobii123 I need a haircut anyway :)'),(489,'@Inky_ink I\'m getting it after I get my haircut'),(33,'@intuitveyes how would you like your haircut?'),(285,'@Itsvals LOL!!! Always welcome buddy!! No superstition here pal. Have you had your haircut yet?'),(62,'@jaisonxsweat come to @LittleTonyBGood and get cool haircut'),(817,'@JamieLM13 first of all, who the fuck are you , second , watch your mouth faggot ass prick w your gay ass haircut'),(456,'@jazellington love your haircut;) very nice videoclip...i wish i could hear you more on french radios'),(507,'@jennaemoran @nholland13wham @evandawson Similar to male/female politicians, elected officials with inane fashion/haircut analyses.'),(327,'@jereenmagno ano ba Sister Cathy haircut yan :((((( hello robi!!!'),(748,'@JmodsCustomCons the artwork for your http://t.co/vReJhKQuxy order has been set-up for print by a Diginater with a Mac and a haircut.'),(280,'@Joe_Epilone what\'s good player that haircut tho fresh cut ? U look good http://t.co/FZ5Nm2ovLJ'),(878,'@Johepworth I use clippers(elec\'razor)so I don\'t have to worry about a) barber screwing up and b) money! What kinda haircut did you receive?'),(1391,'@Johepworth oh I thought you were annoyed you\'d been given a bad haircut, but I guess not so much!'),(1397,'@johndavidapas gasabot baya ta ha na dapat kanang haircut na mubati imo nawng'),(384,'@justinbieber with that haircut clearly copying the Hemsworths'),(461,'@justintaiii @loveyaashae I should make her laugh so I can get discount for my haircut.'),(501,'@Katrina76And I bet your haircut looks amazing.'),(385,'@Kerry4NY you look great the haircut makes you lock more beautiful miss you here in Philly'),(1289,'@Kevo0125: Time to get a haircut x2'),(452,'@kitlane I clip mine. 1 isn\'t too bad - the other is like trying to give the Tasmanian Devil a haircut. Maybe still better than fallout tho.'),(774,'@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/b6Qn4UDFAu http://t.co/hT86Y03hmk '),(706,'@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment http://t.co/5F1u9L0Fok http://t.co/CQ6TFEKxUg oh no no no'),(52,'@kpopwtf what is your haircut?'),(446,'@Krazyfreak7 data!!! fuck da haircut.'),(265,'@Krisshpy_kreme nagpa haircut ka uli?'),(1414,'@kryskacruz Can\'t and won\'t get a haircut til after my sister\'s wedding in 2016. Huhuhu'),(1363,'@kyleajakob and I\'m starting to think your a nazi with that haircut'),(951,'@lambaTHIN @maryjoieguancia wala kna ya ginalibre lambs! pwede kpa libre haircut sinyo? hahahaha'),(197,'@lanrui @lindenemueller I LOVE THEM. The shape really suits you / your haircut'),(524,'@LaurenceWHolmes @120Sports Still a better idea than \"Robin Lopez Haircut Night\"'),(31,'@lewiskelly_ get fine haircut in the @LittleTonyBGood'),(785,'@lion_pride99 Can\'t wait to see you here in CStat. Drop by http://t.co/u94tCD4Ftx at CStat, we are offering #haircut, #spa &amp; more.'),(522,'@LuckyStubbs thank you dina! I need a haircut but today was lucky imo'),(144,'@maieslmr_ i\'m also thinking of a haircut '),(212,'@MANMANLURKIN getting a train to Sheffield is quicker, easier and cheaper than a haircut'),(200,'@McScarhop stylish haircut'),(830,'@minefornothing Brazilian bond holders may be preparing for a haircut. Or a waxing? They don\'t call it a Brazilian for nothing :)'),(832,'@MinnyMausGG @Nightris_ She looks great, but tbh, if you are conscious about your haircut, you shouldn\'t put it on twitter lol'),(89,'@MireeEvarita gani. Pa haircut nko. Hahahaha'),(1099,'@Moggybuts @ATCreativee @Itz_Eggy that haircut'),(777,'@moonlitskins or like how shahid Kapoor\'s haircut reminds me of zayn http://t.co/R22cG9mzG3'),(80,'@MrRepzion He even has the same damn haircut, just in blue. Still love the sith out of Rebels.'),(1271,'@MrsOsh_yoru short haircut make u looks so younger than ur age ^ ^'),(657,'@MsJennGood Its only on my intial haircut after a day or 2 I mellowz out.Im great as soon as I get out da chair tho..Nigga cant tell me shyt'),(552,'@MuttFett I could use a haircut.'),(906,'@NieynaHere phewitttttt new haircut kewww '),(874,'@ninaavalle btw im back to my old haircut.hahahaha #semikalbo #fresh #presko #coolhead'),(592,'@osteffler got my haircut ;)'),(773,'@parksideprep  with my boys having a net. They are not impressed with their dads funny haircut #cricket#1992#old http://t.co/Wi2cBSbcPI'),(276,'@paulpnglnn new haircut?'),(311,'@pep_vilamala @JenaC2 - And to all of you not ashamed?! So now called \"fashion haircut\"?! Why mustache \"trim\" ?!'),(479,'@PETEANDPATRlCK IM GONNA CRY DID UVSEE #2\'S NEW HAIRCUT'),(314,'@PFBarberAndShop Perfect. Thanks a lot.  Have only been looking forward to this haircut since Christmas!'),(377,'@PictorialGirL waaaaaaaah new haircut!! Cool '),(306,'@PoornaCW new haircut?'),(1341,'@potatomonthly i think my aunt has also had that haircut, but it was her party bouffant look'),(471,'@ptrccrnl may meaning behind the haircut '),(553,'@ReemPrudencio new haircut, new life? '),(891,'@ReNon_tare__ haircut'),(1096,'@rivergodesss see your rep ... Swagging Haircut '),(100,'@rnurphamy new haircut it1s pleasant always'),(39,'@rosavelleramiro Kita ko nga. Why you nagpa haircut? Hahaha.'),(176,'@Ruthe_2nd Yo what time niggas hitting the movies Friday me and tyler trying get the haircut'),(32,'@S2daG plus! With your daily hairstyle/ yout haircut a beanie actually looks great.. you just gotta be brave and carry around hairspray XD'),(130,'@Sabir_215 get nice haircut in the @Dejavubarbers'),(322,'@ShaneCaldwell15 get cool haircut in the @rafaelbarbers you`ll like us'),(184,'@ShaneCasey1 nice haircut in the @lerevehairsalon'),(1303,'@ShanmanXC  plus I got that OG Mohawk, what a beautiful haircut that was. I remember that like it was 2 years ago yesterday!'),(955,'@SharainTheFirst Then just tell them \"Sorry im too smart for this haircut that my brain is rejecting your stupidity\" XD'),(383,'@shemlovesfood (//_.) &lt;-lol your old haircut.'),(447,'@shxmz_: @neymarjr ur haircut is so ugly im crying'),(669,'@si_ncaabb @SInowLIVE @SI_PhilTaylor No! He still has the same haircut he had when he played so that tells you he hasn\'t learned anything.'),(106,'@spaceteenlrh get fine haircut in our barbershop'),(222,'@SteveByrnes12 Got my haircut in support of @SteveByrnes12 #sutc http://t.co/7oYnnEjRCX'),(1049,'@stevecan45_can wassup with Ya haircut '),(1055,'@StrangeB0twin am getting my haircut by a Peeta lookalike Are you jealous? THATS NIGHTLOCK PEETA ;)'),(672,'@T0MnGERRY bawal ba mag haircut'),(223,'@tae__scott spring break start and I get my haircut lol'),(136,'@thanhphamous is getting his first Marine haircut todai '),(416,'@TheFeeN_ Wanna swap hair? Cba with a haircut'),(369,'@tinaunicorn LOL! Like my mum would let me dye it!! She left to vn this morning and got a haircut straight away! So Rebs! She doesn\'t know '),(879,'@TJacobs_3: Yeah I got a haircut today....  what is life'),(143,'@TommeyJT @MEGAEminence @Lordsome @BeastnJB I reckon you\'ve got a nice haircut, chuck us a follow dad'),(491,'@Tommy_EFC eeeeeeeeeee dno whats worse the top or the haircut hahaha'),(1018,'@TyFizockt @Mii_Chan__ dat scksy haircut.'),(166,'@ughbeegail a haircut and I\'m gonna have my nails done '),(587,'@vforvelvetta The day I was asked to write a story on Dhoni\'s haircut,  I knew journalism was dead.'),(648,'@VforVintageVera @kaljeung RT @/Koreaboo: Choi Jin Hyuk reveals his new shaved haircut  http://t.co/LNynFKyTEM http://t.co/TsvFDRccqU'),(345,'@VidyutJammwal Hey #SuperHero aapne kabhi bataya nahi phir bhi hum jaan hi gaye aapke haircut ka #raaz Louuuve U http://t.co/KCZfpGGpaR'),(437,'@VirginWines 2015 Virtual wine should be a corker! PS: liking Jay\'s new haircut!'),(503,'@vxctorxv too late, my mechanic lied about working today so I have to go find one to fix my car then get my haircut at 12 and pack.'),(1000,'@waynejr999 I need a haircut :/ lol'),(279,'@WbkBanDz nice haircut for you in our barbershop'),(218,'@westernBC: By @paulbustrin #sidepart #art #hair #haircut by #PAuLBuSTRIN #BaRbEr at #ROYALAVENUE #BARBERSHOP http://t.co/M73uVu6NW1'),(1337,'@Wild_Man_Matt getting a haircut'),(1358,'@WWE Lets #crowlikeachicken every time @WWESheamus comes to the ring with that silly haircut.'),(374,'@WWEDanielBryan SORRY I BROGUED KICK YOU MATE! BUT IT\'S YOUR OWN FAULT FOR NOT GETTING A STUPID HAIRCUT LIKE ME! WE HAD A DEAL FELLA! #RAW'),(1092,'@xBlzzrd I don\'t, I got a haircut yesterday and today is my first day at my new school and my hair looks so bad'),(175,'@ynnahpatrizia__ Sabay tayo bh3! hehe matching haircut'),(358,'@zaya_123: Haircut right after school today '),(401,'@_Andrew44__ Andrew, you got a haircut'),(1171,'@_MileyR_ @SiweMagadla lmao hayi maan Miley...he doesn\'t look like Sturridge its just a haircut'),(186,'@_SawTence how would you like your haircut?'),(41,'@_supertrish new haircut it`s pleasant always'),(328,'A bit ginger... #copper #loreal tint and a sharp #haircut by lmcherrystar #leicester #salon https://t.co/KHHqgYBFzN'),(132,'A guy stuck his head into a barber\'s shop\nand asked, \"How long before I can get a\nhaircut?\" The barber looked... http://t.co/4n9mp4ixtQ'),(78,'A haircut so bad Bono gets involved to raise awareness.'),(1244,'A Scrapbook Page To Celebrate Your Child\'s First Haircut - http://t.co/ogPMVhTPFM'),(926,'A. A florist went to a barber for a haircut. He asked about his bill, the barber replied, \'I can\'t accept money I\'m doing community service'),(1038,'About to get my haircut the same place where I got my FIRST haircut as a little kid'),(1282,'Actually its just the pants shoes and jacket. Shirt cancelled. Haircut cancelled. Him in general CANCELLED.'),(179,'Ada Debuts New Look With Punk Inspired Haircut In Recent Photos!! [Features] | @AdaEhi | @F http://t.co/ma41VnOrhH  #features #IGTunes'),(343,'Advice on killing a bad hairdresser? Just in case... #Bbloggers #fbloggers #haircut #hairproblems'),(239,'After a year.. Finally a haircut and a little bit of color  http://t.co/4w0uM8d1BB'),(1395,'After haircut. https://t.co/4jC9fbkiHD'),(162,'Ahh, yes. Good use of a seat on the green line, man with bad haircut. #MBTA http://t.co/lxOc6Ejbev'),(787,'Ahhh! Got my haircut today by alexmurray2012 at Flint. Getting the fringe sharpened up always brings https://t.co/PSg5rXdAm4'),(202,'All I wanted was ah haircut https://t.co/phi9SRZEIR'),(863,'All these boys in this school got the same haircut '),(752,'Almost fully booked for the weekend only a couple of spaces left 07479550629 let me know if your in need for a haircut '),(534,'Already miss that fresh cut feeling - only been 11 days!\n#gotmyhairdid #haircut #freshcut  http://t.co/VPlWJH8JXg http://t.co/SgDGM7RY0x'),(1050,'Also a designer who dresses normally \"@MawetuMatyila: Never trust a barber with a dope haircut.\"'),(397,'am i the only one here who wants Justin to get a haircut?'),(844,'am sure \nDonald is in denial that his haircut luks like eskom got switched off on him lol'),(1048,'and a tan and a haircut'),(756,'And cute pimple as bonus?  RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/9gCdVjKfFA'),(826,'and I forgot my wallet, and I have my haircut done today '),(997,'ang lakas maka badboy ng buhok ko ngayon.  new haircut nigga\'  http://t.co/b5hYDKNlLJ'),(110,'Another top haircut from @BarbertownWorcs'),(64,'Anybody have recommendations on where to get a haircut in GH area?'),(1060,'Anyone want a free haircut? It has to be a bob!'),(1058,'Anything I do is hot now lol, I feel like I can\'t miss RT @Smush55st: @stevecan45_can wassup with Ya haircut '),(61,'armed with a haircut i can conquer the world'),(382,'Asia Haircut Look Bomb '),(1079,'Ate just got a haircut. Hindi siya mapakali kung pa\'no aayusin. Ganun ba talaga after magpagupit? Nagsisisi? '),(1128,'Away downtown for a haircut cya x'),(570,'Back to my old haircut, made some moves that would turn my life around. I can feel my life coming back to me! So happy!'),(170,'Badly need a haircut'),(429,'badly needing a haircut!!'),(1305,'Bae at work got a haircut lookin too fine #If Youre30Im30'),(1054,'Be hittin that haircut http://t.co/KPERThefRQ'),(564,'Beauty Daily Deals : http://t.co/eH3MuJ6imc #931 for left-handed beauty and haircut scissors 2 pcs set with case  http://t.co/HLxDYEag9u'),(763,'Because new haircut  ha ha https://t.co/E13EbBmWxl'),(459,'Before and after Brazilian Blowout split end treatment only takes a few extra minutes to apply to any haircut or... http://t.co/bKag9u3uyh'),(1383,'Before haircut. https://t.co/WR1q2bWM6v'),(1293,'Before/After #Haircut #Beard https://t.co/y2Q8YhWdoi'),(360,'Body massage &amp; haircut '),(1119,'Book your next appointment for your haircut. Serving Richmond Va and surrounding areas. Located at https://t.co/OBVdLyHL0A'),(1064,'Book your next haircut.  3223 Skipwith Rd. Suite 8. Text/Call 8042930524 (New Number) or @ http://t.co/JLcTWbpk9x http://t.co/FMUq5cmwwo'),(161,'Boom! Plan in place for today  Haircut in town in @BoxcutterBarber and then off to see the Drama Soc\'s play '),(252,'bot (a photo tweetbot for the short haircut lovers.) http://t.co/4MpLHwXaQw'),(754,'bot (a photo tweetbot for the short haircut lovers.) http://t.co/MXnKlM20QE'),(1052,'bot (a photo tweetbot for the short haircut lovers.) http://t.co/wxGy4QL8tW'),(215,'Bout to go get haircut '),(816,'Boy I cant wait till I get a haircut '),(840,'boy u need a haircut http://t.co/SxnhuhX9W5'),(758,'Bro who was giving someone a haircut during class '),(1230,'But I think she misheard and thought I said fuck the next month and a half of my life up with a shit haircut, thank love'),(1239,'But I think she misheard and thought I said fuck the next month of my life up with a shit haircut, sound love'),(363,'but um why would someone not like a band bc they got their haircut tf http://t.co/xhkW6IjTrC'),(181,'By @paulbustrin \"#sidepart #art #hair #haircut by #PAuLBuSTRIN #BaRbEr at #ROYALAVENUE #BARBERSHOP https://t.co/akk7ZQxu8I'),(928,'C. A grocer comes in 4 a haircut, he tried to pay his bill, the barber replied, \'I can\'t accept money from you, I\'m doing community service.'),(684,'Caleb\'s getting his first haircut today'),(1084,'Calle Schlettwein needs to get a haircut!! #NamBudget2015'),(36,'Can you tell this updo is with a Bob haircut? We think not! This updo proves you don\'t need long hair to sport a... http://t.co/viODIlRy7r'),(759,'Can\'t even get my haircut until after class smh'),(191,'Cancellation/resched. fee of $20 AND a haircut? What do they think....that I\'m made of money? SOS broke college student here.'),(948,'Cannot wait to get my haircut this week, long overdue '),(637,'Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/aWJkn6FdsP http://t.co/GXf0z2SynQ'),(1280,'Choi Jin Hyuk shows off his new short haircut as he bids goodbye before his enlis... http://t.co/nIfWhDf8Jp via @allkpop'),(88,'Choi Jin Hyuk shows off his new short haircut as he bids goodbye before his enlistment... http://t.co/wVtPjQBAow'),(1028,'Collect a stamp on each visit to Jacks and get 10 off every 5th haircut. #BarbersUK #barberlife #mensgrooming http://t.co/Bb6P4zEpMB'),(633,'consider getting a haircut Amos,  you got like a used up mop'),(685,'CRIES RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/1UtGiGYA7F http://t.co/G3dxvZaQL3'),(274,'Cristiano Ronaldo Impressive Shot Shows how beautiful his New Haircut is http://t.co/VNJ0Tb54SG'),(1200,'Crying RT @GivethNoFucketh: RT @MafiosoRo: Fellas show me the cleanest haircut youve ever gotten. http://t.co/FcoAEQCOfD'),(284,'DAILY SPECIALS\nTuesday, March 31st\n\n25% OFF Services\n\nSalon\nWomens haircut, full highlight, &amp; base color with... http://t.co/nzcnwc3Qsw'),(1103,'damn i hate my haircut'),(869,'Damn i need a ducking haircut'),(1225,'Damn!!!! I need a haircut'),(1265,'Dany got a haircut  #got #season5 #hbo #khaleesi #bowdown #ironthrone #gameofthrones @ Westeros https://t.co/jXzt6e7nYp'),(307,'Death taxes and haircut disasters'),(254,'Def need a haircut'),(450,'Definitely getting my haircut shorter and i ain\'t gonna regret it. Hopefully. '),(743,'Definitely time for a haircut'),(333,'Dez Doing My Haircut Today '),(511,'dis the first time my teacher seein me wit my haircut'),(153,'Disconnected haircut.'),(318,'Don\'t be hesitating to change your haircut...Thanks @andikaar02 #timeispriceless #cooliohairmake https://t.co/wQiPWpu7F0'),(319,'Don\'t be hesitating to change your haircut...Thanks @its4ndik #timeispriceless #cooliohairmake #salonsby... http://t.co/GG8BjMLhH0'),(11,'Don\'t enjoy a haircut when its this windy'),(599,'done w/ the haircut next stop hair color naman.'),(300,'Dreyon taking him get his haircut after school'),(764,'Dunno why i decided to get a haircut. \nBut it turned out nice i like it lol'),(697,'E! News: Actor John Dumelo Spent 30,000 On his Haircut . | PHOTOS http://t.co/YfMseMaPec'),(1173,'E. A politician came in 4 a haircut, went to pay his bill, the barber replied, \'I can\'t accept money from you. I\'m doing community service.'),(509,'Early morning haircut appt '),(712,'Elijah\'s haircut is looking fly. @etw67'),(656,'Every haircut David Beckham has had still makes him the best looking male on the planet #fact #mancrush'),(624,'Everybody telling me how they happy Corin got a haircut.'),(430,'excited to have my haircut later bc i rlly wanna see my new look  hoho'),(398,'Exhausted but relieved... (I need a haircut tho)  #GPOY #Me #Teacher #ExhaustedButHoldingTight https://t.co/aTHUA3L5cq'),(1177,'F. The next morning, when the barber went to open up, \nthere were a dozen politicians lined up waiting for a free haircut.'),(799,'Favourite Shirts (Boy Meets Girl) - Haircut 100'),(353,'Feel ko never na ulit ako matatalo sa Monopoly after nung haircut dare.. Haha. https://t.co/6vDpBCN9vX'),(1389,'feel much better after a haircut! cheers @SionMichael95 '),(287,'Feeling excited to wear my No.4 tomorrow now that I\'ve got myself a military haircut.'),(1199,'Feeling regret for my haircut '),(1209,'Fellas, if you have a haircut that you liked a lot but your woman doesn\'t will you cut it/change it for her?'),(1182,'Female Haircuts In Bootcamp, And How To Avoid A Hair Butchering - http://t.co/t4JLNwDEqQ'),(571,'Fighting the urge of getting another haircut..'),(1353,'Finally getting a haircut '),(338,'Finally getting a haircut after 3 months!!'),(898,'FINALLY GETTING A HAIRCUT AFTER A WHOLE MONTH '),(494,'Finally got my haircut\rThe hairdresser didn\'t understand when I said \"a giant shave\"\rNever knew my https://t.co/J0a8aKEjUJ'),(406,'Finally got my haircut. '),(1409,'Find out what happened when I visited a beauty school for a haircut! http://t.co/nteGQzD4IL via @getwherewithal http://t.co/taj9gRGqPt'),(1317,'Finna go get my haircut right now !!!'),(651,'First haircut in 8 months today #rip'),(393,'Fresh haircut for the Easter hols. http://t.co/waFOFHMGWB'),(855,'Fresh haircut http://t.co/xqZ3gu9hST'),(1073,'Fresh haircut.'),(699,'Friday I get a haircut, and Saturday I do my taxes, but MOST importantly I have a date w @DinaFraioli Thursday after work. #BeJelly'),(668,'Fuck all the bs, I\'m getting my haircut today'),(1259,'Fuck I need a haircut'),(594,'Fuck it next haircut I\'m getting the Gallagher like snoyl #backwards RS x'),(138,'Full Grooming Services, Pawdicure Nail Trim, Baths without Haircut, Day And Night Boarding, Boarding with Daycare, Boarding without Daycare'),(310,'gagong gupit haha! Init eh!\n #haircut #tabas https://t.co/wlNr7evTv0'),(506,'Gatta get my haircut today'),(305,'Gave up in my quest to be part of the Italian mafia you need more than the haircut. What you think of my new cut? http://t.co/gqIZ1TPFmi'),(1155,'Get a Haircut and Support The Autism Society of Iowa - http://t.co/8ZzljAtyo0 #desmoines'),(708,'Gettin\' a haircut tomorrow.'),(745,'Getting a bad haircut&lt;&lt; '),(1207,'Getting a haircut  this afternoon'),(1001,'Getting a haircut from a woman who spoke only French wasn\'t my finest idea'),(953,'Getting a haircut makes everything feel better!'),(542,'Getting a haircut today '),(886,'Getting complimented on a haircut you got a while ago because they haven\'t seen you in class since #goodstudent'),(496,'Getting haircut in abit'),(408,'Getting my haircut is always a day I dread, but it always works out well in the end '),(877,'getting my haircut nice'),(246,'getting my haircut right now im sitting here waiting lmao'),(419,'Gf after her haircut http://t.co/1YoNbU9dm3'),(414,'Gf before her haircut http://t.co/MQ2UB50iEi'),(1324,'GO SHOP FRIDAY &amp; TAZ GET A HAIRCUT...'),(535,'God Bless This Haircut!\nPansinin si Jesus na ginagabyan ang barberyang ito...Totoong totoo naman https://t.co/ImbEoAYRI3'),(899,'Going to get a haircut and then I have tutoring  \nBye bye.'),(342,'Going to get my haircut :)'),(1387,'Gonna have a new haircut i guess'),(1034,'Good to get my haircut! Finally!'),(77,'got a haircut\n\nI vote for #TaylorSwift @taylorswift13 #Cool @radiodisney'),(90,'got a haircut together with my best friend haha\n\nI vote for #TaylorSwift @taylorswift13 #Cool @radiodisney'),(1248,'Got a haircut yesterday. Now I look a bit like a conehead in this pic http://t.co/PlaGQ5HgCQ'),(147,'Got a new haircut feels so short even though they only took off a little bit!! Loving it thoughxx'),(375,'Got that @C_Sanders3 haircut bruhhh '),(237,'Got that haircut... Feeling good!'),(402,'Got to be at work at 12 and I woke up at 7  just so i can get a haircut before work'),(555,'Gots a haircut &amp; we\'re feeling good  #businessdog #PeddyThePoodle @IWLondon'),(171,'Gotta go get my haircut today'),(1029,'Grown ass men got water in their eyes from the alcohol after a haircut LOL'),(1374,'Guess Who (is in dire need of #a haircut) http://t.co/PS9NMlIle6'),(681,'Gumanda lalo si tita (yung mum ni charles miguel)!! Bagay sa kanya lalo new haircut nya :)))'),(1030,'Guy at gym, to his trainer: \"If I don\'t have the perfect haircut, I can\'t sell.\"'),(1285,'guys I just got a haircut :))'),(480,'Guys!\nGUYSGUYSGUYS!\nClear your lunch schedules. Chicken Little is going to get a haircut and THE WORLD NEEDS TO KNOW!'),(19,'Had a #haircut woohoo https://t.co/BZulHB5qkg'),(28,'Had a haircut'),(1373,'Had my haircut and I can\'t decide if to lock myself inside till it grows back or not '),(1222,'Had my haircut. I look tiredly handsome. Or handsomely tired. Mainly tired. Now in Starbucks having a flat white'),(1102,'Hahaha \"@siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100\"'),(261,'Hair feels so light after this haircut'),(366,'Haircut \n#muchshorter #medium #redhead #lighter #newdo #stillironing #soft #noproducts #nofilter https://t.co/hWjm92liAn'),(255,'Haircut '),(610,'Haircut  (at Chief Barbershop)  https://t.co/RRCSkuzfOy'),(881,'Haircut  http://t.co/tjg3xnZuFS'),(137,'Haircut (at Christopher Salon)  https://t.co/xPHY9hDkSj'),(348,'Haircut (at Metro Cut)  https://t.co/n6Jx0CS3rO'),(1343,'Haircut - Lee Jong Suk\'s HairStyle '),(581,'Haircut after school .'),(413,'Haircut again '),(371,'Haircut and beard trimmed, it may have lost me cool points but at least I\'m not a scruffy bastard anymore.'),(1288,'Haircut and T-Section Highlights : Neon Hair Boutique in Brighton: 27 instead of 95 http://t.co/fs7dZGp6uK http://t.co/84zGxlX8dt'),(1272,'Haircut and T-Section Highlights : Neon Hair Boutique in Brighton: 27 instead of 95 http://t.co/fs7dZGp6uK http://t.co/EH8P9MzjKU'),(1254,'Haircut and T-Section Highlights : Neon Hair Boutique in Brighton: 27 instead of 95 http://t.co/fs7dZGp6uK http://t.co/IikpfoNjJs'),(347,'Haircut and then back to bed for me.. struggling!!!'),(946,'haircut at 3 yayayayayayay I get to see the best barber in the world'),(436,'haircut bc nasaktan... iniwan.... char hahahahaha omg'),(543,'Haircut by @Ibnumalekk at Barberobarbershop.  http://t.co/hXUXITPfpt'),(357,'Haircut by me \n#haircutting #hairstyles #layer #today #me https://t.co/6LkpPLOSS9'),(611,'Haircut day for K'),(230,'Haircut done  Now I just have my face to help me look ridiculous '),(1125,'Haircut done, now all thats ledt to do is pack n board the plane'),(1417,'Haircut Fails http://t.co/0e3GntNjwy http://t.co/eWSeMx8CNG'),(54,'Haircut Fails http://t.co/kbaM1c3SZ9 http://t.co/EnjEA8CA3h'),(1377,'Haircut for bad-ass!  https://t.co/TtJOMhM1Ud'),(488,'Haircut for the jawns ? Nah .... Only for job interviews #Zeetism'),(722,'HAIRCUT FT NEW GLASSES http://t.co/MEJvq5TdHo'),(422,'Haircut Happy Hour Special: from Today-Thursday from 4pm-7pm- $10 Wash &amp; Haircut. Appointment https://t.co/BeuhVvQcee'),(65,'Haircut http://t.co/vpVdLMrTa6'),(647,'haircut is needed'),(852,'Haircut later '),(155,'Haircut needed'),(295,'haircut of Japan       No.33 http://t.co/TmJcPBqzf1 \n\n -YouTube -(   )'),(341,'Haircut on my birthday. Huehue.'),(417,'haircut or nah?'),(352,'Haircut right after school today '),(1072,'Haircut Saturday '),(349,'Haircut services toward total compensation: IKq'),(1344,'Haircut soon'),(796,'Haircut soon. '),(5,'Haircut soon...'),(10,'Haircut soon... http://t.co/rsZK9eXXZg'),(415,'HairCut Tea\'s  http://t.co/NBdTy1cZ7z'),(883,'Haircut this weekend '),(893,'Haircut time at @FlauntSalonHfx  http://t.co/81EOL9aV0z'),(1158,'Haircut time...'),(350,'haircut today '),(992,'haircut today PLS'),(1365,'Haircut today. 2 weeks over due because of this crazy work schedule of late. Gym and haircut... feeling like a BOSS!'),(1238,'Haircut Today.. '),(643,'Haircut tomorrow '),(560,'Haircut Tuesday'),(249,'Haircut!   #thatbloodydog http://t.co/QGiQCYEgxg'),(1221,'haircut! pakulay na rin kaya ko? hhmmm'),(195,'Haircut, dinner, football manager! Plan'),(1302,'Haircut?'),(178,'Haircutting Tools For That Perfect Haircut - http://t.co/z1xuWJ4KOD'),(339,'Happy Tuesday. Milkshakes are going down a treat with GM\'s Junior Guests. #local #crystalpalace #eastdulwich #haircut http://t.co/b6LVclVXYd'),(455,'Hard decisions this week like should I get a haircut or buy matching Buffs for myself and my pal doing a kayak trip. I\'m cheap. So there.'),(227,'Haven\'t had a haircut in two weeks time for me to find a new barber today looks like mine why betting out of jail anytime soon '),(742,'He decided 2015 Januzaj haircut was a bit severe!'),(214,'He got a haircut http://t.co/cHyBMe3G3V'),(536,'He had the same haircut I used to get when I was little with his gold chain with his name and gold bracelet...man I miss does days'),(238,'He literally had this haircut http://t.co/e8zDD6mrP3'),(321,'He need a haircut by like Thursday bc I\'m not dealing with nobody easter crowd!'),(1211,'He\'s getting a haircut tomorrow so everyone chill.'),(1224,'Heading down South Street to get a haircut '),(1144,'Here\'s the daily tweet about how much I hate my haircut '),(598,'Hey love. Don\'t smile on me like that. U know dat i love you and all. But please, get a haircut. Thank you. Ilysm. http://t.co/NiJTwZKhGi'),(234,'Hey, it\'s my fault we\'re late! I had an appointment for a haircut, but when I looked in the mirror, I realized my hair was perfect!'),(710,'Hi kumusta:)\nLong Hair x Mainit = Haircut :b\n.\n.\n#SummerFeels #me #selfie https://t.co/LkgX6XdvBh'),(127,'High and Tight Haircut - http://t.co/XXhhmWw77L'),(1214,'Holy Week haircut today.'),(211,'Homeless people piss me off. You really cant use youre time any better? Get a haircut and go help someone for the money. Dont just expect it'),(729,'Hopefully get a haircut today'),(780,'How am I gonna get my haircut if the cunt doesn\'t understand what I fucking say #Swerve'),(67,'How hard is it to get a hair cut #haircut'),(163,'How to Give a \"Fade\" Haircut to Males. http://t.co/n0CIwLoyRn . http://t.co/vdXKwgH7zq'),(771,'How to Give a Flat Top Haircut - http://t.co/pyj2Z86hUi'),(523,'How you like my new haircut?'),(851,'http://t.co/6wVTDEcTw6 #F4F #Dusithani#abudhabi#hotel#5star#Gents #salon#haircut#shavingbeard#hairstyle#hair... http://t.co/zHGAdDAkHZ'),(871,'http://t.co/EaqMPqPuXL - razor cut hairstyles - A razored haircut can thin your hair. It can also layer it. Razor hairstyles are ...'),(1186,'http://t.co/EaqMPqxU6d - razor cut hairstyles - A razored haircut can thin your hair. It can also layer it. Razor hairstyles are ...'),(800,'http://t.co/XJ0nVZNe4k another handsome person is going to enlist. huhu. Ingat kayo ni Jaejoong ha. See you in 2016.'),(749,'HYPED FOR A HAIRCUT... I\'m very tempted to be naughty and pull some from the savings to get one today instead of waiting two days...wehh'),(1369,'I already had my haircut. I don\'t know how they will react but for me I kinda like it . '),(831,'I am regretting my haircut 2 hours after I got it '),(1268,'I be skipping class just to get a haircut '),(1174,'I came back to Kenji\'s blog to see what he\'s up too and he got a fucking haircut...don\'t know how I should feel about his....'),(795,'I can\'t believe Sadie getting a haircut without me, but I\'m sure get daddy gonna make sure she good'),(1352,'I could look at Kim next to this photo all day!  http://t.co/4dWs4iZ5nd http://t.co/4JITHD5HQs http://t.co/j263VHZ364'),(1338,'I could look at Kim next to this photo all day!  http://t.co/G6jzjN4NXR http://t.co/vsmW2vKTMO'),(636,'I could look at Kim next to this photo all day!  http://t.co/iCXLyhsAlo http://t.co/KbwBr4jazu'),(1167,'I could look at Kim next to this photo all day!  http://t.co/rGciwi2wQI http://t.co/HOl5TsnGm5'),(1007,'I feel you. \"@MawetuMatyila: Never trust a barber with a dope haircut.\"'),(945,'i found someone o ntumblr who has kakyoins haircut'),(718,'I gave myself a haircut yesterday because great clip always screws it up so'),(185,'i got a haircut lmao'),(714,'I hate going for a haircut'),(1089,'I hate not getting a haircut'),(316,'I hate waiting for a haircut. I don\'t like going to the barber shop. But I have to! And here I am! https://t.co/yQFUpjeIkS'),(686,'I have a new haircut and new glasses and I\'m still not getting laid\n\nKarma, this shit isn\'t funny anymore\n\nKnock. It. Off. Bitch.'),(1135,'I have a new haircut. *_* http://t.co/f3VkvsLU4g'),(302,'i hope everyone keeps their mean comments about my haircut to themselves today'),(932,'I just gave myself a haircut. I hope it doesn\'t look weird.'),(513,'I just want to be pampered..like mani-pedi, massage, haircut, etc.'),(1161,'I know I\'ve said this a thousand times about me wanting to go for a haircut, but its not happening. Lol'),(864,'I leaked my face (and horrible haircut) on Instagram again, but apparently just gave it back.'),(934,'I look like caillou with this haircut'),(1145,'I love having a short haircut'),(628,'I love my Rylee...i need a haircut https://t.co/G36OpANqqP'),(605,'I need a fucking haircut'),(485,'I need a god haircut and a badass hair color.'),(309,'I need a haircut '),(916,'I need a haircut  I\'m ugly af rn'),(1315,'I need a haircut ..like today !'),(92,'I need a haircut already wtf'),(1420,'i need a haircut and also someone to fix my brows'),(165,'I need a haircut asap'),(995,'I need a haircut bad '),(1032,'I need a haircut before I start getting those dreadful tan lines across my forehead. I can\'t be dealing with that'),(1243,'I need a haircut but i dont know what way i want itttt'),(1307,'I need a haircut but I\'m scared to get one'),(619,'I need a haircut like shit'),(1423,'I need a haircut man'),(244,'I need a haircut so badly.'),(386,'I need a haircut SOON'),(834,'I need a haircut this week '),(1284,'I need a haircut, so I can stop looking Amish.'),(270,'I need a haircut.'),(575,'I need a haircut.... it\'s getting too long'),(1033,'I need a serious haircut. Like a life changing one.'),(425,'I need another haircut http://t.co/UcUdwtxlRC'),(206,'I need my haircut for prom asap'),(1404,'I NEED NEW HAIRCUT .'),(156,'I need prom to end already cause I need a haircut asap'),(1347,'I need to get a haircut'),(954,'I NOTICED JIMIN AND HOSEOK HAS THE SAME HAIRCUT/ ? ?? ? IDK IMAE WHRUNIJEWA'),(193,'I real live aint had a haircut in 3 months'),(1366,'I really need a haircut'),(515,'I really need a haircut, I just never have time to go and do it'),(520,'I really need to get my haircut'),(1082,'I regret this haircut. :('),(142,'I still haven\'t recovered from the haircut I got a few months ago'),(1320,'I tell my mum I don\'t want to get a haircut.. What does she do? Books me an appointment.'),(331,'I think I might get a haircut'),(806,'I think I\'m gonna get a haircut before college. Hehe'),(892,'I think, I badly need a haircut. Di ko na kasi kamukha si Dingdong. Lol! That was a joke.  https://t.co/D9We26DbE2'),(793,'I thought J. Cole was Drake at first  I just though he needed a haircut  '),(566,'I tried to take a new haircut photo but it was filled with bees'),(362,'I want a haircut'),(914,'i want a haircut so bad but i still cant find the time ughhhhh'),(477,'I want a new haircut with the shaved side. Kinda nervous about it. Plus need a new hairdresser bcos mine is on a maternity leave. Should I?'),(444,'I want my haircut'),(1291,'I was convinced I needed to marry Jason Schwartzman\'s new haircut until I found out he was a vegan.'),(410,'i was thinking about haircuts earlier and i realised that the worst haircut i\'ve ever had actually wasn\'t when i cut it myself'),(69,'I weigh 200 lbs and I told myself I wouldn\'t get a haircut until I got down to 190. Ima fuck around and be looking like shaquille sunflower'),(539,'I went 3-for-3 yesterday with my boy. Haircut? Check. New sneakers? Check. Saigon Cafe? Check. http://t.co/oRpUWMKd3H'),(1370,'I will judge your taste in men based on your boyfriends haircut.'),(1003,'I will miss this guy too.. \"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/HIXJUaTIn6\"'),(1227,'I wonder what I\'m doing today  maybe get a haircut '),(790,'I\'ll get my haircut'),(901,'I\'ll have haircut this week or next week yay new style '),(1269,'I\'m a get a haircut this afternoon'),(1027,'I\'m about to get my haircut and it\'s started raining. Nice. #pointlesstweet'),(1321,'I\'m embarrassed to even have the same haircut as someone that visibly horrible'),(738,'I\'m getting a haircut and idk if I should just cut the ends or actually do someth with it'),(1240,'I\'m getting a haircut tonight. It\'s a bit long in the back. #AskEphraim'),(559,'I\'m going to miss #nuswomen15. Keep in touch, gals. I\'ll give a #jazzhands salute every time I put on a flannel shirt or get a haircut.'),(272,'I\'m in need of a haircut!!'),(438,'I\'m just a haircut away from looking Chinese to looking japanese'),(247,'I\'m looking for a sophisticated haircut one that says \"I\'m hip, I\'m young but my wild days are in the past; Hire Me!\" If u knw a dresser LMK'),(1346,'I\'m so glad I\'m getting a haircut today because it looks horrible at the moment'),(1218,'I\'ma get that Ronaldo haircut'),(949,'I\'ve procrastinated a whole 2 hours away in bed ffs could have got my haircut by now'),(359,'Ideal weather when I\'ve just had a haircut'),(1021,'If all the cast members at Disney World say, \"good morning  Princess\" to your son, he might need a haircut. #parentfailure101 @dlane257'),(947,'If any students need a haircut on-the-cheap, I\'m officially open for business #pennstate #hair yeah, I cut my own hair'),(821,'If you are 30 and want to get a haircut that really makes you look your age. Then go and get the one I just got.'),(141,'If Yuri and Seohyun were to have a short haircut, they would definitely look like this. adorable af  http://t.co/9jsJhXv5vx'),(1044,'Ill just get a haircut tomorrow'),(1273,'Im gonna cut my hair bald tbh so I wont worry about a haircut for about 2 weeks... '),(1380,'Im longg overdue for a haircut'),(747,'Im not hurt bcuz of beta\'s haircut.. im hurt kasi mamimiss ko sya  ang sakit pala.. feeling ko kulang na ang bahagi ng puso ko :\'('),(4,'im suing wwe for the damage sheamus and his haircut inflicted upon my eyes'),(1257,'Im tew excited to get my haircut tm '),(902,'im too lazy for haircut'),(544,'Imagine I sacrificing my sleep to give you a haircut.. Big up yuhself'),(405,'in absolute dire need of a haircut holy jesus'),(1432,'In defiant need of a haircut! Need a new style but have no idea what would suite me... What do you guys think would suite me? Let me know! '),(1334,'In desperate need for a haircut'),(361,'In desperate need of a haircut'),(390,'in heavy need of haircut what do'),(259,'in need of a haircut man '),(388,'in need of a new haircut'),(337,'Inflation is when you pay fifteen dollars for the ten-dollar haircut you used to get for five dollars when you had hair. - Sam Ewing'),(602,'Inflation is when you pay fifteen dollars for the ten-dollar haircut you used to get for five dollars when you had hair. -Sam Ewing'),(83,'is Bench/ Fix salon a best place to get a haircut for guys t... — wherever makes you feel good and comfortable haha http://t.co/zvdURxJdS1'),(617,'is jessi had a new haircut with that red hair omg'),(807,'It really is about time I got a haircut'),(1151,'It\'s a MUST I grab a haircut today'),(1206,'It\'s about time we tweeted this ... What is your favorite dinosaur/haircut combo?'),(919,'it\'s amazing what a bad haircut can do to someone'),(312,'It\'s been almost 5 months... Time for a haircut'),(351,'It\'s finally time for some haircut ;) #haircut #thursday'),(188,'It\'s here! Haircut and  50% off! Now only 25.00! http://t.co/DUAnL4oHev   #topfinds http://t.co/536434IWEV'),(220,'Its time for a haircut'),(232,'Jessica\'s new hair color! Wooot! And Haircut? Dyosa as usual &lt;3 http://t.co/W0E8mOsR90'),(299,'Job interview and haircut today '),(692,'Joey after his haircut yesterday! #posh #dog https://t.co/cVgu1EXHNk'),(936,'John Cho as Teddy the seafood guy?! With the Bruce Lee haircut?! Man, WHAT?! He was SO perfect! #KitchenConfidential'),(412,'Johnny betta gimme my haircut today.'),(1419,'Jungkook need a haircut'),(744,'Just bc you got a new haircut doesn\'t mean you got new hair... It means you got a haircut.'),(1024,'Just before my hair cut the barber says to me \"a zero on the sides? this is going to be my worst haircut in 40 years!\" #BadHairDay'),(1008,'Just booked my haircut appointment, this may be just the biggest mistake of my life'),(1331,'Just got a new haircut...'),(1063,'just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100'),(320,'Just realized I have a slightly longer but similar haircut to my 6th grade core teacher Mrs. Allegrotti. FUCK that\'s it time to go bald'),(930,'Kinda happy that I can still tie my hair with this haircut'),(733,'Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/SjrviDR2lK http://t.co/gT6kfSRLoO @zealotiie'),(1360,'Kuya: Miss pagupit ko \nBabae: Wala mi gupit sir haircut lng \nHahahahahaha.shet'),(563,'La le haircut est plus soign!!! @CJSimonin http://t.co/dItdlQHIS9'),(472,'Last night I realised you only get one chance to notice a new haircut.'),(1427,'Last selfie pre haircut http://t.co/6NIPTuU3WA'),(897,'Latest haircut for adamsmith959 \rn.3/n.2 back and sides with a squared and slightly tapered neckline, https://t.co/OABR5MJVo1'),(367,'Latest Layered Short Haircut With Side Swept Bangs For Women - http://t.co/lEkSHyufxp http://t.co/44MEGateq2'),(226,'Levi looks like you need a haircut! -shaves his hair off- Oops! RUN!! #KevinsermanBot'),(837,'Liam Hemsworth is rockin\' a 90\'s Boyband haircut right now and I love it, I love it. '),(1406,'Liam Hemsworth Stole Your 90s Haircut https://t.co/QhPAhDfTU0 #itsaMansWorld #GQ | https://t.co/xPjbCViqS6 http://t.co/AxiVwUc5hu'),(233,'Lmao - its a good look for the champ jonnybones\nJon Jones had an interesting haircut the other https://t.co/4w7vEmNk4y'),(1095,'Lol RT @siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is R100'),(1189,'Lol, welcome \"@siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100\"'),(201,'Look at this new deal!  56% off! Now only 14.00! http://t.co/yRXvZGabuk  #topfinds http://t.co/6iIiTrbEIB'),(950,'Look at this new deal! H 50% off! Now only 25.00! http://t.co/DUAnL4oHev  #topfinds http://t.co/ajYhzpkoJj'),(205,'Love my new haircut'),(1012,'Love the haircut so much! #CR7 #CristianoRonaldo #RealMadrid #Portugal #HalaMadrid #foraportugal #Madridista by o http://t.co/pJihFhGqWM'),(1136,'Lovin\' my new haircut. Thanks @bangstnj '),(1117,'Lucy was showing off her #spring #haircut yesterday. Bring on the warm weather! #DogWalking #Springtime http://t.co/i3OREtvsku'),(933,'Man i look so rough without an haircut '),(896,'march = haircut month '),(13,'marines haircut  &lt;3 :D — feeling excited'),(355,'Maybe I\'ll get a haircut today, chop off all my hair '),(687,'maybe it\'s time to get a haircut! maybe a mohawk!'),(540,'Me ha gustado un vdeo de @YouTube de @cornamente (http://t.co/Ehy4n2qrcN - Corte de Cabello para hombre Primavera 2014 // Haircut'),(1163,'Me looking at old pictures: \"Why?\"\n\nMe looking at old haircut: \"Why?\n\nMe looking at old clothes: \"Why?\n\nMe looking at old crush: \"Why?'),(475,'Me looking at old pictures: \"Why?\" Me looking at old haircut: \"Why?\" Me looking at old clothes: \"Why?\" Me looking at old crush: \"Why?\"'),(487,'me when oomf get a haircut  @_Redheadjas http://t.co/ssIcNKIFAB'),(822,'Men\'s cutting! Guys if you need a haircut let me know! #fades #aveda #menscut @mcsavedasalon  @ https://t.co/FaKSGig9jY'),(565,'mfw no haircut yet'),(1328,'Might get a haircut'),(125,'Mio gets a photobook with her new haircut. Interesting..'),(558,'Mom is going to cut my hair!!! I dont think i can do it... But i want a new haircut... I dont. I want... No, i dont feeling confused. '),(546,'Mom is going to cut my hair!!! I dont think i can do it... But i want i new haircut... I dont. I want... No, i dont feeling confused. '),(1075,'Mullet Haircuts For Men - http://t.co/hMGJzcLkRp'),(476,'My baby boy getting a haircut.  http://t.co/CjPkQIgUFw'),(1426,'My big girl sat in the hair dressing chair all by herself today #haircut #toddlerstyle https://t.co/tFWAYvSQO6'),(1159,'My dad asked me if its almost time to get a haircut again. I GET THE HINT DAD :(!?'),(66,'My dog needs a haircut'),(1298,'My Gemma right before I dropped her off for grooming! #JapaneseChin #haircut #tongue http://t.co/mGDp3k3Dmr'),(1297,'My Gemma right before I dropped her off for grooming! #JapaneseChin #haircut #tongue https://t.co/DfysaFEBOd'),(1002,'My granny say I\'m still handsome RT @brownskindevil: nappy head ass nigga RT @SheHatesJacoby: FINALLY GETTING A HAIRCUT AFTER A WHOLE MONTH'),(1295,'My hair be everywhere since I haven\'t got a haircut in a minute lmaoo'),(613,'My hair grows way too fast .. always need a haircut #CECALifestyle'),(853,'my hair is getting long. i need a haircut'),(1357,'My hair is wayyyyyyy too long I need a haircut asap'),(376,'my hair looks like a curly version of kenma\'s i need to get an haircut and dye it again'),(833,'My haircut looks like the one people have in The Matrix when they\'re not in the matrix'),(634,'My latest haircut for adamsmith959 \rn.3/n.2 fade on the side with with a squared and slightly tapered https://t.co/QwVZPhflVI'),(1137,'My son after his first haircut http://t.co/sFKzHf73J8'),(990,'nappy head ass nigga RT @SheHatesJacoby: FINALLY GETTING A HAIRCUT AFTER A WHOLE MONTH '),(596,'Need a hair cut#tatty #hair #haircut #chopchop https://t.co/AMfQqMAOTD'),(275,'need a haircut'),(1078,'Need A Haircut Already'),(547,'need a haircut asap'),(403,'Need a haircut ASAP rocky'),(486,'Need a haircut bad '),(219,'Need a haircut but I always look like a  after'),(464,'Need a haircut seriously'),(86,'need a haircut so bad'),(231,'need a haircut so bad but then again have you ever felt a memory foam mattress?? ??'),(518,'Need a new haircut cuz\' mah hair is going crazeh! '),(1116,'need a serious haircut '),(606,'need an haircut'),(776,'Need my haircut '),(835,'Need my haircut I feel like a cave man '),(74,'Need some haircut .'),(1168,'need to have a new haircut '),(460,'Needa haircut bad'),(1319,'Never been this satisfied with a haircut hahahahaha '),(993,'Never trust a barber with a dope haircut.'),(938,'New #haircut http://t.co/bX5yuoPBLq'),(180,'New #haircut vol 2 for #NYC https://t.co/i6lysgwrPq'),(135,'New #haircut, ready for #NYC https://t.co/7DziL4MDjH'),(1017,'New hair don\'t care #haircut #sexy still trying to #style it right  https://t.co/cmDN76AqFv'),(236,'New haircut '),(381,'New haircut  http://t.co/clXWQNHPl5'),(1326,'new haircut  http://t.co/t5iLbpbmmE'),(554,'New Haircut  http://t.co/vloBvlQrH2'),(1113,'New haircut  http://t.co/wIrvc2SPGL'),(1195,'New Haircut !!! '),(433,'New Haircut :)\n\n#Selfie #cute https://t.co/CAGtDEx0w3'),(915,'New Haircut :)'),(177,'New haircut always makes me feel better. Eventhough my face looks sad...! https://t.co/dfrWvYHiV2'),(556,'New haircut before a shooting tomorrow... Hate it  #LifeIsHard http://t.co/M3juzWjTys'),(791,'New haircut for the summer  http://t.co/jN8woY33X0'),(324,'New haircut got the office tenders looking at me twice.  The 2nd look is always \"the look\", too.'),(639,'New haircut http://t.co/0Lr11KruVM'),(1190,'new haircut http://t.co/JdCG46qvkM'),(870,'New haircut tom.'),(1051,'New haircut will make you feel like a new person'),(1181,'New haircut with  http://t.co/CTVQsDZYZG'),(585,'new haircut Xx'),(1249,'New haircut, slicker than ever, ready to move these deals on faster. @bluestarleasing'),(43,'New Haircut.'),(498,'New Haircut.  Pasok pa more. Haha (@ Manulife North Building (Bldg K)) https://t.co/0h7M26EjXz'),(848,'New haircut. :)\nHey April, March has been a bummer for me. BE GOOD TO ME. \n\nP.S. MOM\'s coming home so suit up and... http://t.co/Qm1kzB2u9y'),(541,'New haircut. [pic]  https://t.co/v1bH0EHhFz'),(1184,'New haircut... Feeling great http://t.co/JSZOtI9uPO'),(1405,'New haircut... Marines style  #me #selfie #instapic #instaphoto #instaselfie #haircut https://t.co/o9uxwKe7yt'),(373,'New haircut?  Yaaaas bish http://t.co/695QQoeMCJ'),(1025,'new hairstyle and haircut '),(765,'Next haircut design GONNA look like.....'),(530,'Niall should get this haircut again http://t.co/QZxQLllsq8'),(1016,'Nice haircut Michael Ward'),(445,'No Carlos we are NOT shaving the dog! He\'s a pomeranian he\'s meant 2 have bloody fur you idiot! #PoorRollo #Pomeranian #HairCut #SpringStyle'),(1402,'Nothing like your yearly haircut to make you feel human again #TransformationTuesday #ChoppedOffMyHair'),(1205,'Off out on the weekend with my new haircut awooga #'),(695,'Often by The Weekend, probably in my head forever now just like the image of his \"seagull fighting a crab\" haircut'),(164,'OH MY GOD I\'M SORRY BUT THE LESBIAN HAIRCUT JOKE WAS AWESOME  #BieberRoast'),(616,'Oh yeah and I\'m getting my haircut this weekend..'),(1226,'ok time to go buy shoes and mebbe get a haircut or at least book one byeee'),(346,'On my flight back to CT, I sat next to a bowl haircut named Fanie. Poor thing.'),(326,'once i get a haircut i wont have to wear this fucking beanie 24/7  http://t.co/eU7z8haQ5k'),(1023,'Once in a while it\'s time to do something drastic. #haircut #me #whynot #filmmaker #filmdirector https://t.co/oTm5UFIshl'),(440,'One of life\'s greatest decisions: do you wash your hair before going for a haircut?!'),(794,'oppaaa... RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/kso9s9DKT8 http://t.co/x5FWmtpYyx'),(174,'Out for my last haircut in a while! #chemo #cancer #cancersucks'),(1148,'paduu, thanks datang. \"@mzulfadly: Haircut by @Ibnumalekk at Barberobarbershop.  http://t.co/B2cGR16sb1\"'),(607,'pap of ur hair  Isn\'t it too short? :p ;)\nI need a Haircut though  http://t.co/8VA32t0yZK'),(121,'Partner knows best! New haircut rocks!!'),(593,'Payday haircut'),(760,'Payy dayy today which means haircut today finally!!!'),(400,'Peanut needs a bath and a haircut (pic from yesterday) #dog #maltese https://t.co/3vWJOYTIab'),(924,'Photo: Ev dawg! @evanandb3 #hair #haircut #hairstyle #menscut #menshaircut #menshairstyle #mensshorthair... http://t.co/QxHNa8gnWo'),(1087,'Photo: That haircut tho http://t.co/gDsMxeASbo'),(308,'Planning to get a haircut this week '),(248,'Please fast forward me 20 days to a fresh haircut + colour and a few days down south  #yes'),(228,'Please fast forward me 20 days to a fresh haircut + colour and a few weeks down south  #yes'),(263,'Pre-haircut, non-spikey fluffy hair :-) http://t.co/m9BEAvCRok'),(1325,'Pre-race haircut ritual, done. South Downs Way 50, here I come! #run #running #race #ritual https://t.co/csH5OO5svt'),(235,'Promised this man a shoutout today because he gave me the best haircut I\'ve ever had. \nMarcus https://t.co/wN0PiPFGzQ'),(182,'Quick run to the LMA, haircut, check my mom, gym, crib, cook, sleep, back to the LMA...#ACG'),(504,'Quite worried about my haircut '),(1208,'Random :3 #Haircut #Summer #Rayban @ Home https://t.co/Iy8wQ9KmJw'),(784,'Ready Stock...!!!\nTs HAIRCUT - SMASH FASCISM\nsize: S,M, L,XL\nidr: 110 rb \nBabaung Merchandise \nRUKO NO.1 SAMPING... http://t.co/dhNIJr1NIl'),(769,'Ready to get this haircut friday. Ain\'t had on since November which is too long for me!'),(1256,'Really need a good haircut'),(1260,'Really need to get a haircut today'),(483,'Really not a fan of my haircut'),(379,'Regretting this haircut seriously '),(160,'Roll on Friday haircut is long overdue '),(1015,'RT @ Today\'s Facebook Offer (Tuesday, March 31): $10 off Womens Haircut. \n\nCall us at 312.372.9211 today to... http://t.co/dAXBMmBgGK'),(1014,'RT @ Today\'s Facebook Offer (Tuesday, March 31): $10 off Womens Haircut. \n\nCall us at 312.372.9211 today to... http://t.co/QFoULfmwWO'),(505,'RT @1vondee: A haircut cost 7, if you get a haircut every 3 weeks taking that there is 32 days in a month that\'s a lot of money'),(1241,'RT @Adacampbell: A. A florist went to a barber for a haircut. He asked about his bill, the barber replied, \'I can\'t accept money I\'m doing '),(1242,'RT @Adacampbell: C. A grocer comes in 4 a haircut, he tried to pay his bill, the barber replied, \'I can\'t accept money from you, I\'m doing '),(1246,'RT @Adacampbell: E. A politician came in 4 a haircut, went to pay his bill, the barber replied, \'I can\'t accept money from you. I\'m doing c'),(1247,'RT @Adacampbell: F. The next morning, when the barber went to open up, \nthere were a dozen politicians lined up waiting for a free haircut.'),(391,'RT @AdamBaldwin: \"Justin Bieber has the haircut and tattoos of a lesbian butcher.\" - @KevinHart4real \n\n#BieberRoast'),(1223,'RT @AlieFaliee: I need a serious haircut. Like a life changing one.'),(344,'RT @allkpop: Choi Jin Hyuk shows off his new short haircut as he bids goodbye before his enlistment http://t.co/NgvrJD0NOu http://t.co/da79'),(1,'RT @allkpop: Choi Jin Hyuk shows off his new short haircut as he bids goodbye before his enlistment http://t.co/NgvrJD0NOu http://t.co/da79…'),(27,'RT @anbrll00: Hitler is rolling in his grave right now because of all the bros getting his youth group\'s haircut.'),(329,'RT @angel_witta_o: RT @michaeluzowuru: armed with a haircut i can conquer the world'),(1169,'RT @AriesGayMan: Time for a much needed haircut.\nLet\'s see how it ends up this time... #Lottery #AleaIactaEst'),(944,'RT @artnologic: @BarBerBos_id promo 30% OFF haircut, hair tattoo dll. Visit jl suryasumantri no 4 bandung, info: 022-93393535'),(1026,'RT @attaway5jon: Need a haircut. Looking like a scrub'),(44,'RT @AwesomityFun: The four stages of haircut:\n\n-hatred\n-regret\n-sadness\n-acceptance'),(991,'RT @Ayeliltaee: Welcome to the DMV WHERE this is the only haircut you see  http://t.co/74SmP1mRFi'),(478,'RT @a_dolllaarr: I want a haircut'),(399,'RT @b4dderman: when you get a haircut but then change your mind. http://t.co/qhDnFaFk2W'),(71,'RT @BARBERPOP_MEDAN: Rt this you will get free haircut start from 14 march and 15 stlah itu disc 40% smpe tgl 20 menyambut 1 thn anniversar…'),(334,'RT @biebxrsrauhlin: \"justin bieber has a voice of an angel and has the haircut and tattoos of a lesbian butcher\" IM SO DONE JDJFKFKDKSKS '),(623,'RT @bigdug7: @LaurenceWHolmes @120Sports Still a better idea than \"Robin Lopez Haircut Night\"'),(721,'RT @Black_Pimpin: @Chelsey24Smith I Got This New Haircut, I Want'),(1124,'RT @BosNaud: LOOKED LIKE THEY ARRESTED HIM MID HAIRCUT RT @hot1079atl: Young Dro Arrested on Theft Charge http://t.co/PslYa4t2Yu http://t.c'),(1299,'RT @BringMeTheJohnn: Upcoming events I\'m looking forward to:\nSleeping\nRockville with bae\nSleeping\nGold Watch\nPhotography Portfolio\nDinner\nS'),(1204,'RT @bubusmith98: Stop saying,\"omg didn\'t recognize that was u Ricky \" it\'s just a damn haircut'),(1398,'RT @CalTurnerUK: Think I need a haircut http://t.co/TEbSZSaHAd'),(876,'RT @Chaaveezz_: Damn i need a ducking haircut'),(50,'RT @cleaningfreak: @FBarbershop Alfie having a haircut. http://t.co/xzBZVd6X4I'),(1367,'RT @CMCarly: @Kourtney_Shotz: {Henry\'s First Big Boy Haircut} http://t.co/FvdHwXpLd8 on @bloglovin #ourringbearer is the cutest!'),(824,'RT @Cr7Fran4ever: Cristiano Ronaldos new haircut. Nuevo corte de pelo de Cristiano Ronaldo. http://t.co/8Jq7nivCDT'),(6,'RT @Cr7Prince4ever: Do you love Cristiano Ronaldo\'s new haircut?\n\nRT: Yes\nFAV: No http://t.co/p9QrATaG3h'),(1424,'RT @CraigyFerg: On couch reading book. Wife walks by. \n\nWife: If you read Hemingway you\'ll get peevish. \n\nMe: How dare you. \n\n*shave-and-a-'),(17,'RT @CTiK_Lou: @Mr_iLLUSiONz Day 8, Phase 2, Awesomeness slowly returning!! #thebeardedviking (also need haircut) http://t.co/skan0LGPke'),(929,'RT @Cutie_jay13: I need a haircut'),(521,'RT @danisnotonfire: got a breezy summer haircut  http://t.co/xWykYUa2CV'),(303,'RT @dheayaa_: #haircut #color #nike https://t.co/BCDZ2s4SqQ'),(87,'RT @ElKnuckelhombre: A haircut so bad Bono gets involved to raise awareness.'),(75,'RT @ELLEmagazine: Liam Hemsworth Gets the Official Heartthrob Haircut http://t.co/1jE9JTYkrv http://t.co/8zg5nstTpj'),(84,'RT @eonline: Liam Hemsworth\'s new haircut is taking us back to the 90\'s! Don\'t worry, he\'s still super handsome: http://t.co/CVCLpssWfv'),(701,'RT @eunhaes_: CRIES RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/1UtGiGYA7F http://t.co'),(420,'RT @exosnsdd: I hope tomorrow is really bigbang\'s comeback  because I\'m dying to see which haircut taeyang will pull off this time'),(7,'RT @FamiIyGuyShow: When you try to get a free haircut http://t.co/JAMpMohXlW'),(838,'RT @funnyfacegh: This haircut makes me look like ronaldo .... #whatapity lool http://t.co/u8Qn5agoOE'),(999,'RT @Funny_1_Linerss: What Your Haircut Says About You http://t.co/7hD0SvFAu8'),(910,'RT @genjitao: im too lazy for haircut'),(1408,'RT @GinniferGoogles: Why does Jared Gilmore have the same haircut as me'),(46,'RT @glowypanda: You know when all these naturalists go in the jungle &amp; give a bird a haircut &amp; say \'oo I found a new species\'..'),(409,'RT @heeyitsmai: New haircut  http://t.co/clXWQNHPl5'),(736,'RT @HHBARBERS: #curls #waves #haircut #bestbarbers #barbergrind #barberconnect #britishbarber #hairuk #image #fashion hairdryer me http://'),(998,'RT @ItsFunnyDEVIL: What Your Haircut Says About You http://t.co/KFQWqsM7LU'),(1251,'RT @ItsNickBean: Yes I got a haircut  http://t.co/2uP0Ufd0E2'),(922,'RT @its_josee1: Need a haircut asap '),(538,'RT @JackFire: When your friends new haircut, uh, looks great!  #ItTakesJack #JackFire http://t.co/3EPWgZNpeo'),(1217,'RT @Jacksoflondonuk: Collect a stamp on each visit to Jacks and get 10 off every 5th haircut. #BarbersUK #barberlife #mensgrooming http://'),(921,'RT @JanelShaiann: Justin bieber has a voice of an angel .. but has tattoos and a haircut like a lesbian butcher  \n#BieberRoast'),(396,'RT @JayMoBeezy: \"@Flyer_thanu2: Rihanna\'s outfit was ugly af\" agreed &amp; i hate that Beatle\'s looking haircut '),(702,'RT @jdforshort: I have a new haircut and new glasses and I\'m still not getting laid\n\nKarma, this shit isn\'t funny anymore\n\nKnock. It. Off. '),(128,'RT @Jesseystevenss: I need a haircut asap'),(578,'RT @Jimmy_Caracheo: 20 Retweets and i\'ll get this haircut . http://t.co/pX8zxFholF'),(1333,'RT @jklarkins: and a tan and a haircut'),(434,'RT @JordanzAndJayz: HairCut Tea\'s  http://t.co/NBdTy1cZ7z'),(551,'RT @JoshEdm_: When grant asks me for a haircut http://t.co/50e0aYXnf7'),(1022,'RT @JrSalas98: desperate need of a haircut smh'),(911,'RT @jtimberlake: @JeanKKenny: A big boy haircut. Just like @jtimberlake \'s. #jt http://t.co/LKW4JsG6ph  LOVE IT.'),(614,'RT @JustinfKim: Team No Haircut '),(474,'RT @Jvice94: Roll on Friday haircut is long overdue '),(1081,'RT @jwills016: @AwesomityFun: The four stages of haircut:\n\n-hatred\n-regret\n-sadness\n-acceptance @_katie_rosee'),(767,'RT @KarlDoctor: Almost fully booked for the weekend only a couple of spaces left 07479550629 let me know if your in need for a haircut '),(154,'RT @khadijzah: I\'ve asked many people who find Lupita ugly why they feel she\'s ugly it was either between she was \"too dark\" or her \"boyish'),(1308,'RT @KID_TOMMI: My hair be everywhere since I haven\'t got a haircut in a minute lmaoo'),(260,'RT @KNSPRKSQZNCTY: The Best Picture eveeer . Hart Hart.I like @bernardokath \'s haircut here - http://t.co/KFIMM0I6AT'),(641,'RT @Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/aWJkn6FdsP http://t.co/GXf0z2SynQ'),(168,'RT @kylerogers1996: 3000 retweets and he gets this haircut http://t.co/nrcfJPHCrS'),(38,'RT @lizceddia: I NEED A HAIRCUT SO BAD BUT I AM TOO AFRAID TO CALL AND MAKE THE APPOINTMENT. LIFE IS AWFUL.'),(104,'RT @LRCsaac: Last day for the Cut-a-thon! Stop by the Ryan Room today for a fresh haircut for only $10! All proceeds benefit Special Olympi…'),(1392,'RT @Lucas_almighty: Haircut soon'),(1153,'RT @Lyssbartoo: Haircut ft tie dye from Hagrid http://t.co/mXSTPGR52b'),(173,'RT @MarnieTheDog: Getting a haircut 2day brb http://t.co/5mtOUIRzg2'),(1093,'RT @MawetuMatyila: Never trust a barber with a dope haircut. http://t.co/4zPd6vABz3'),(29,'RT @Mazloum: Good morning, and may this day bring you the same refreshment and confidence a great haircut brings.'),(454,'RT @Med24gr:  haircut   ;\nhttp://t.co/VkA6kOzqT7'),(1313,'RT @micatbh: I need a haircut '),(82,'RT @michaeluzowuru: armed with a haircut i can conquer the world'),(704,'RT @MYKINGISMICHAEL: Michael needs a new haircut and dark hair'),(1141,'RT @mzulfadly: Haircut by @Ibnumalekk at Barberobarbershop.  http://t.co/hXUXITPfpt'),(755,'RT @n1lsmohr: @PallMallBarbers thanks for the great haircut and tips! Superb Job Amanda'),(528,'RT @OJPena_Easy: need a haircut '),(1139,'RT @omgfuncomedy: *me after a haircut* me: i love it!me: it\'s differentme: it\'s not that badme: OMG WHY!me: WHERE IS MY HAIR??me: THEY CUT '),(45,'RT @PhandomStats: Dan has approximately 5 nightmares about his 2010 haircut every week.'),(568,'RT @positivepaige: Life is too short not to have the underwear, the coffee, and the haircut you want.'),(1104,'RT @prettybinladen: I need a haircut'),(608,'RT @RadianceTweets: Before and after Brazilian Blowout split end treatment only takes a few extra minutes to apply to any haircut or... htt'),(418,'RT @rafaelbarbers: @WbkBanDz nice haircut for you in our barbershop'),(53,'RT @RealRecklessMC: selfie every haircut??? http://t.co/Bkz0T7Xsaw'),(1429,'RT @RichardClive_: feel much better after a haircut! cheers @SionMichael95 '),(76,'RT @rockitjae: @koshinmurasaki Ikr? I totally want him to promote with that haircut when he gets out! Lol SO HOT!'),(604,'RT @rocksij: This haircut was absolutely the best.\nI wish Ian got it again :) http://t.co/wvCNMmHcdo'),(872,'RT @scorpiusryan21: The episode where Ross unleashes the dark lord Cthulhu. Phoebe gets a ridiculous new haircut.'),(705,'RT @Shaheer_S: Should I grow my hair or cut it short? Fav for haircut and retweet if u want me to grow my hair.. http://t.co/P4qfAVP1Wf'),(134,'RT @shakelikeswift: got a haircut\n\nI vote for #TaylorSwift @taylorswift13 #Cool @radiodisney'),(94,'RT @shakelikeswift: got a haircut together with my best friend haha\n\nI vote for #TaylorSwift @taylorswift13 #Cool @radiodisney'),(291,'RT @ShinsFriends: SHINDONG HAIRCUT SHOW #!!      !^^ !       .   ! !!! htt'),(290,'RT @ShinsFriends: SHINDONG HAIRCUT SHOW #!!      !^^ !       .  https://t.co/dpEQRssBwD'),(293,'RT @ShinsFriends: SHINDONG HAIRCUT SHOW: http://t.co/M0jOS3hx8S (@YouTube)'),(262,'RT @short_cut_girl: bot (a photo tweetbot for the short haircut lovers.) http://t.co/4MpLHwXaQw'),(1066,'RT @short_cut_girl: bot (a photo tweetbot for the short haircut lovers.) http://t.co/tUtOPemH2y'),(1056,'RT @short_cut_girl: bot (a photo tweetbot for the short haircut lovers.) http://t.co/wxGy4QL8tW'),(783,'RT @silentNAMpathy: \"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/fWuDVNY70h http://t.co/p'),(577,'RT @SpeakComedy: The \"can I speak to a manager\" haircut http://t.co/5Rr2esD820'),(900,'RT @Sports_Father: I don\'t mind a shaggy haircut - if you\'re all business on the field, you can be all party on your head.'),(151,'RT @Stefankauffman: Workout shoot with @achiabradley on Thursday in @muscleworks_gym Prep time...tan, clippers, haircut and...TRAINING! htt'),(497,'RT @Sup3rJunior: 150324 Shindong Twitter Update: SHINDONG HAIRCUT SHOW: http://t.co/oAlhhUdml0 http://t.co/GrLuqcAzTs'),(779,'RT @supremelyzayn: @moonlitskins or like how shahid Kapoor\'s haircut reminds me of zayn http://t.co/R22cG9mzG3'),(622,'RT @syabilzulkifli: Tq @AffyZypher for the haircut. Tq jugak kepada bodyguard saya @AkhmalGuetta @AkmaalBoo  http://t.co/wamo7X94r6'),(157,'RT @TeensProAdvice: Me looking at old pictures: \"Why?\"\n\nMe looking at old haircut: \"Why?\n\nMe looking at old clothes: \"Why?\n\nMe looking at o'),(927,'RT @thegreatsaira: Haircut soon. '),(250,'RT @TheLondonBarber: @zaynmalik new haircut by Creative Director @KieronWebb #zaynmalik #1D #thelondonbarber http://t.co/IYYCWaB8RT'),(734,'RT @ThePatriot143: Would it be Politically Correct for Bobby Ray Memorial Elementary To Find Micky Mouse Haircut Distracting http://t.c'),(545,'RT @TobyMcDonough: My hair grows way too fast .. always need a haircut'),(286,'RT @tommcdermottjr: My appearance on Ch7 News Chicago re: Gov Pence\'s RFRA passage--- I wish I had enough time to explain the bad haircut h'),(567,'RT @TooFunniest: *me after a haircut* \nme: i love it!\nme: it\'s different\nme: it\'s not that bad\nme: OMG WHY!\nme: WHERE IS MY HAIR??\nme: THEY'),(189,'RT @trainwreck1000: I gave 7 a haircut and am now being tortured by tiny hairs stuck in my clothes and poking the hell out of me.'),(527,'RT @T_Rich199: Gatta get my haircut today'),(439,'RT @UKBanter: I dont see how drugs are illegal but that haircut boys have with mini ponytails isn\'t'),(1149,'RT @ViciousDiction: @cuffzilla: Grown ass men got water in their eyes from the alcohol after a haircut LOL alcohol on a bald head http://'),(644,'RT @vishwaharannn21: consider getting a haircut Amos,  you got like a used up mop'),(129,'RT @WAY5Official: just getting a haircut from the boys  http://t.co/yWkD1bv1fk'),(221,'RT @Wheeling_dbag: If it was me roasting Justin Beiber, I would have closed by giving him his moms panties back and dumping my spitter on h'),(717,'RT @Whichitapp: Gots a haircut &amp; we\'re feeling good  #businessdog #PeddyThePoodle @IWLondon'),(1005,'RT @whipclip: Clipped by @KateLaronde: Can we admit that @realjeffreyross was insane tonight, loved this lesbian haircut joke. http://t.co/'),(70,'RT @whipclip: Clipped by @KateLaronde: Can we admit that @realjeffreyross was insane tonight, loved this lesbian haircut joke. http://t.co/…'),(724,'RT @WolfAlhenyami: haircut is needed'),(629,'RT @WORLDSTARVlNE: HOW NIGGAS TRY TO HOLLA BEFORE vs AFTER A HAIRCUT http://t.co/GhO08XqWAG'),(574,'RT @WoWFunniest: Me looking at old pictures: \"Why?\"\n\nMe looking at old haircut: \"Why?\n\nMe looking at old clothes: \"Why?\n\nMe looking at old '),(145,'RT @yourwajangnim: If Yuri and Seohyun were to have a short haircut, they would definitely look like this. adorable af  http://t.co/9jsJ'),(256,'RT @ZakzR: Getting your eyebrows done is the female equivalent of that fresh haircut.'),(677,'RT @zaynmalik: @KieronWebb @TheLondonBarber thanks for the sick haircut! It\'s been a year it was well needed '),(325,'RT @zoelouca: I still haven\'t recovered from the haircut I got a few months ago'),(1061,'RT @ZOESALON: We love love #love #transformations! #haircolor #haircare #haircut http://t.co/d9Tfu04sha'),(828,'RT @_acox14: I really need a haircut, I just never have time to go and do it'),(1040,'RT @_chelseahhilary: Haircut tuhdayy pls '),(404,'RT @_fanxing: even if yixing has an awful haircut rn we\'ll always have this mv to remind us of the time he fully rocked this blond http://t'),(16,'RT @_Lujxo: How to make your parents disown you 101: you don\'t need drugs, just a very short haircut.'),(1047,'RT @_SILVERWOOD_: @VirginWines 2015 Virtual wine should be a corker! PS: liking Jay\'s new haircut!'),(640,'RT @_tjvmes_: A haircut is needed rn'),(1349,'RT @__EVDJ: I need to get a haircut'),(458,'Scammer man ni si sir limbo uy, wala gicheck ang haircut'),(529,'Scandalous seeing David Beckham last night. Lovely haircut on him #cheeky'),(240,'Serious haircut is needed '),(537,'Seven woke up looked in the mirror nd said mommy I need a haircut'),(1185,'She wanted me to get a haircut so I got this bitchin Mohawk'),(1264,'Sheamus new haircut makes him look like a fucking prick'),(442,'Sheamus sein neuer haircut steht ihm irgendwie ^^'),(1290,'Sheamus\' new haircut  #ICTitle #RAW'),(588,'Shit, it\'s raining again. My haircut is ruined!'),(601,'short hairstyles 2015, short haircut - short spiky hair for women http://t.co/NRbNddL7dS'),(1359,'should I get my haircut tomorrow or Thursday ? '),(850,'Should I have a haircut? Yey or ney'),(586,'Sick haircut from wilsons'),(861,'Smh cramps and alcohol after haircut yeah  which is more painful I\'ll never know'),(1201,'So I got a haircut! https://t.co/FdnNMixlY9'),(1150,'So ready for this haircut tonight.'),(1013,'Somebody get this boy a haircut lol...Birthday tomorrow wait on it!!!  https://t.co/ppW7FHISMN'),(1309,'Someone needs a haircut https://t.co/QiMzgP2WmT'),(298,'Still got my haircut but and now to celebrate payday with some Ginbongo for lunch http://t.co/OsKBBeIluV'),(1101,'Stollman with the sick Adolf Hitler haircut. http://t.co/fwVejeUDI0'),(1140,'Stop saying,\"omg didn\'t recognize that was u Ricky \" it\'s just a damn haircut'),(1080,'Stromaer has the samw haircut like mejust the transition is a bit different. http://t.co/vR1vv2Kgwg'),(140,'Students wanted for FREE haircut. 4 More information http://t.co/JiU6bpItEk #model #kappersacademie #rotterdam #hairdresser #hairstyle #s'),(550,'Such a poor haircut '),(549,'Such haircut\nMuch short\nWow https://t.co/Mcomu7QbIn'),(1043,'Suggest og haircut please'),(268,'Summer haircut gone wrong'),(1278,'sweater, vans and a Macklemore haircut as I blast the front bottoms what have I become'),(1356,'Tanners getting nice and dirty before his haircut http://t.co/U1PFapl7hU'),(23,'Taylor\'s haircut looks sooooo good on him'),(579,'Team No Haircut '),(1384,'Thank gawd I get my haircut and brows did on Thursday'),(561,'That 10 2 hour haircut happened today, felt so good after waiting 8 months to afford it as a luxury. Something about a haircut gives oomph'),(1086,'That haircut tho https://t.co/ewCkCvrRRo'),(105,'That moment when you wash your hair after a haircut and realize how short it looks curly. #bobcity'),(282,'That new haircut...eww https://t.co/5NEAx6LvgL'),(1354,'That One Time I Went to a Beauty School for aHaircut http://t.co/QwaHDVKNBw'),(51,'That time again #Haircut excitements, let\'s see what followers I get from this post.'),(292,'The beard is growing very well.  Time for a trim and a haircut. https://t.co/n0F08a0sey'),(1219,'The boy\'s first haircut! http://t.co/qBQ4Fl06O1'),(1062,'The brightest side of my day is knowing that I\'m going to get a haircut later.'),(603,'The fact that a haircut would be nice, and a comb, doesn\'t matter to me. I\'m feeling good.'),(245,'The Fred Perry Shop. 5 staff, 1 haircut.'),(913,'The key to any great haircut is styling. If you want to keep your hair looking as good as it did when you left... http://t.co/Y0heQS9lvb'),(213,'The man fixing the car has that lizard haircut I\'m going to cry'),(1322,'the next time i say im getting a haircut pls stop me before its too late'),(904,'The question is. Do I get a haircut today or tomorrow? #shitithinlkaboutinenglish'),(1009,'The struggle between which haircut I want ! AHHH'),(1376,'There you go ladies &amp; gentlemen,first haircut FREE!  harleyhairstylist harleyhairstylist https://t.co/QiftEHjc9h'),(583,'They\'re pushing me to have a haircut.'),(1335,'Things Seyi actually wants on Apr 16th\n-Frisbee\n-Haircut\n-Hugs'),(1396,'Think I need a haircut http://t.co/TEbSZSaHAd'),(1258,'Thinking about giving myself a haircut'),(730,'Thinking of getting a haircut before I go home'),(42,'this coffee taste like shit, my outfit isnt on point, im sleepy af, i need a haircut, my eyebrows arent on fleek. This day is going to hell'),(1340,'This is the longest I\'ve been without getting a haircut. Yeah it\'s only 4 weeks but still!'),(711,'this month Im getting a massage, haircut/color, mani pedi, brow/bikini wax, car detailing, personal trainer &amp; hella good food '),(26,'Those were the days. I was 18, and i can\'t believe i had that Chelsea haircut.Haha!… https://t.co/gqybDrqI4G'),(1381,'Time for a haircut.'),(1126,'Time for a much needed haircut.\nLet\'s see how it ends up this time... #Lottery #AleaIactaEst'),(8,'Time for my annual haircut. Suggestions welcome.'),(1275,'Time to get a haircut'),(453,'time to grab a haircut'),(1301,'To get a haircut or to not?'),(1146,'Today\'s adventure: Mew gets a haircut &amp; I get my face ripped off'),(867,'Today\'s Facebook Offer (Tuesday, March 31): $10 off Womens Haircut. \n\nCall us at 312.372.9211 today to receive... http://t.co/x7Xgm4yQvv'),(1245,'Too #funny #comedy #drinking #beer #haircut http://t.co/MDygKeFd8E'),(336,'Took my son to @BobBarberShop for his first haircut. Great experience. https://t.co/NVN6YXCzjy'),(194,'Train whistle from the nearby railyard that toots \"Shave and a haircut\": Yes.'),(1083,'Transports of delight: head massage of the gods @Aska_micstyling plus a haircut that makes me look even more lovely than usual. Thank you.'),(1342,'trevor\'s haircut looks so gr8 go him'),(216,'Truffy\'s haircut :) before and after &lt;3 https://t.co/zg3d3GILej'),(548,'Trying to take pics with my dog while I drive her to her haircut  http://t.co/3tNSqO68ZZ'),(113,'Tweet the name of your haircut/hair style?  #DL_DjInstinctHello #Ozzybosco_LetPeaceReign'),(1100,'Ughh im scheduled to work the same day i was gonna get my haircut so im gonna have to reschedule UGHH'),(1292,'Upcoming events I\'m looking forward to:\nSleeping\nRockville with bae\nSleeping\nGold Watch\nPhotography Portfolio\nDinner\nSleeping\nHaircut\nsleep'),(888,'uwah~ TT http://t.co/6ig6V0Ipd4'),(1267,'Vido : Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment http://t.co/YAgPQGj3Op'),(810,'Waaaaa \"@Koreaboo: Choi Jin Hyuk reveals his new shaved haircut prior to his enlistment  http://t.co/9WyveZz3ae http://t.co/LI23hCbuWQ\"'),(1210,'Was gonna get my haircut but be arsed even moving'),(1296,'watch him get a haircut today lol'),(47,'We love love #love #transformations! #haircolor #haircare #haircut http://t.co/d9Tfu04sha'),(941,'We were fine before finals...  And he finally got his haircut! Yay for short hair  https://t.co/ZssTsTu6JG'),(1166,'Welcome to Johannesburg. RT @siyanyezi: just got to Sandton. I was so happy until I got to a salon and found out a haircut is r100'),(421,'What can $15 get you? A week\'s worth of @TimHortons, a bad haircut, or a night of fun supporting a great cause! https://t.co/xXTN53muMA'),(122,'What haircut lol'),(635,'What made me amazed was the fact that I had my worst haircut before, treated myself ugly and then u were there, seeing me so differently.'),(1067,'What sort of haircut should I go for? http://t.co/SFHnd7CD9y http://t.co/jXKMoYVd2R'),(407,'What Your Haircut Says About You   http://t.co/bqH6BFmuMl http://t.co/yGNivZOeS7'),(973,'What Your Haircut Says About You http://t.co/1RZxsmM1IB'),(965,'What Your Haircut Says About You http://t.co/5bbwCeBQ6y'),(963,'What Your Haircut Says About You http://t.co/5M73gkZUCL'),(977,'What Your Haircut Says About You http://t.co/7hD0SvFAu8'),(980,'What Your Haircut Says About You http://t.co/7ZPxeyDn0r'),(985,'What Your Haircut Says About You http://t.co/86IxfYE8N6'),(829,'What Your Haircut Says About You http://t.co/8UIYsiJC61 http://t.co/7qXVDJ5zx5'),(978,'What Your Haircut Says About You http://t.co/AEGJ9si4Oc'),(969,'What Your Haircut Says About You http://t.co/BsF4xxUezM'),(986,'What Your Haircut Says About You http://t.co/CV4F8192VN'),(975,'What Your Haircut Says About You http://t.co/CvFXJ9YM6K'),(962,'What Your Haircut Says About You http://t.co/Dj6w7P5cZD'),(960,'What Your Haircut Says About You http://t.co/emEn5exci6'),(987,'What Your Haircut Says About You http://t.co/f6p2JMUtKX'),(988,'What Your Haircut Says About You http://t.co/F8LRJLwgYB'),(982,'What Your Haircut Says About You http://t.co/fnVloFh1xY'),(989,'What Your Haircut Says About You http://t.co/Fss5e3nRsd'),(958,'What Your Haircut Says About You http://t.co/hNEK7NxLDJ'),(968,'What Your Haircut Says About You http://t.co/J0nM9qPdjh'),(971,'What Your Haircut Says About You http://t.co/KFQWqsM7LU'),(967,'What Your Haircut Says About You http://t.co/kiQI1nLN0e'),(959,'What Your Haircut Says About You http://t.co/KVE7CcVT2f'),(966,'What Your Haircut Says About You http://t.co/L1BsYS9C6D'),(972,'What Your Haircut Says About You http://t.co/LclCef7KqH'),(961,'What Your Haircut Says About You http://t.co/MUI4Eq5KBY'),(976,'What Your Haircut Says About You http://t.co/nau0UmH5r0'),(984,'What Your Haircut Says About You http://t.co/nyyi2qZL1O'),(979,'What Your Haircut Says About You http://t.co/oqA5dRomGl'),(974,'What Your Haircut Says About You http://t.co/pbxCcRHkIb'),(957,'What Your Haircut Says About You http://t.co/rzCvfpm5XL'),(970,'What Your Haircut Says About You http://t.co/SnCln7lgKr'),(964,'What Your Haircut Says About You http://t.co/t3jcRypAvf'),(983,'What Your Haircut Says About You http://t.co/XOkubJTmly'),(956,'What Your Haircut Says About You http://t.co/yVXZTXnt5r'),(93,'When I come to this place i wait minimum 1 hour before getting a haircut ffs'),(1196,'When is it really time for a haircut? http://t.co/cv3A8aOKLl'),(1197,'When is it really time for a haircut? http://t.co/WjRFIp5N0w'),(225,'When Is My Dog Too Old For That Haircut? - http://t.co/YtBz0cS0Vq'),(273,'When my boyfriend tells me that my haircut makes me look like less of a bitch lmfao  #loveyoutoodrew'),(658,'When should I get my haircut? Lord knows I need it'),(1121,'When you get a new haircut..... #style #hair #haircut #mirror https://t.co/lJgnwE5Kfj'),(139,'When you have a haircut and just want to slit your own throat'),(920,'Where should I get my haircut. I don\'t have personal barber anymore '),(1274,'Who had the haircut first? @Ludacris  or @BronsonK_24 ?'),(591,'Who wants a haircut? I do! http://t.co/KUweGRNCq8'),(1235,'Why did I take a nap yesterday thats why I didnt get a haircut lol'),(846,'Why is that every time I get a haircut I forget how chilly it actually is and am required to wear a hat'),(557,'Will get a haircut next week. https://t.co/ASNolFamnN'),(808,'Willow getting her first proper haircut xxx https://t.co/1EieAgDCmk'),(22,'Wish getting a haircut and shaving weren\'t the two most effort things ever'),(1348,'Wish I had time to get a haircut and bears trim. Honey deserves better than unkempt teenwolf Pav.'),(1156,'Wow do I need a haircut'),(728,'Wrong choice of haircut huhu. Sayang!'),(1261,'YES I knew that haircut couldn\'t belong to a face.\nHe\'s pretty dedicated making himself look stupid for a change in gimmick.\n#RAWAfterMania'),(526,'Yes we\'ve both got blue and purple ombre  #haircut #layers https://t.co/EDlOcsFO98'),(512,'Yesterday when I took my little brother to my barber in magnolia a little kid was finishing his haircut and reminded me when I was little'),(621,'yey afro haha haircut soon'),(584,'You know its time for an haircut when you get compared to sonic the pissing hedgehog #GetFucked'),(21,'“@stephghetti: his haircut is terrible no no” why you gotta go on my mans tho @_zuiren');
/*!40000 ALTER TABLE `tweet_tweet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-02 14:48:58
