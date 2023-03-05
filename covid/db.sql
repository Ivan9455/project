-- MySQL dump 10.13  Distrib 5.6.35, for Linux (x86_64)
--
-- Host: localhost    Database: doxsw_vologda
-- ------------------------------------------------------
-- Server version	5.7.21-20-beget-5.7.21-20-1-log

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('Admin',1,1590653334),('user',9,1590683226),('user',10,1590683290);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/base/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/base/captcha',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/base/error',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/db-explain',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/download-mail',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/toolbar',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/default/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/user/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/user/reset-identity',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/debug/user/set-identity',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/gii/*',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/*',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/action',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/diff',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/index',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/preview',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/gii/default/view',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/patientss/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/captcha',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/create',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/error',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/update',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/patientss/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/polyclinics/*',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/captcha',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/create',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/delete',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/error',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/index',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/update',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/polyclinics/view',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/*',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/about',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/captcha',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/contact',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/error',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/index',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/login',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/site/logout',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user-management/*',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/auth-item-group/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/bulk-activate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/bulk-deactivate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/bulk-delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/create',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/grid-page-size',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/grid-sort',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/toggle-attribute',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/update',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth-item-group/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/captcha',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/change-own-password',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/auth/confirm-email',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/confirm-email-receive',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/confirm-registration-email',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/login',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/logout',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/password-recovery',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/password-recovery-receive',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/auth/registration',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/bulk-activate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/bulk-deactivate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/bulk-delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/create',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/grid-page-size',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/grid-sort',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/refresh-routes',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/set-child-permissions',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/set-child-routes',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/toggle-attribute',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/update',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/permission/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/bulk-activate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/bulk-deactivate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/bulk-delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/create',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/grid-page-size',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/grid-sort',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/set-child-permissions',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/set-child-roles',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/toggle-attribute',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/update',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/role/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-permission/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-permission/set',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user-permission/set-roles',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user-visit-log/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/bulk-activate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/bulk-deactivate',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/bulk-delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/create',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/delete',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/grid-page-size',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/grid-sort',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/index',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/toggle-attribute',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/update',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user-visit-log/view',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user/*',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user/bulk-activate',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/bulk-deactivate',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/bulk-delete',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/change-password',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/create',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/delete',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/grid-page-size',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/grid-sort',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user/index',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/toggle-attribute',3,NULL,NULL,NULL,1590681644,1590681644,NULL),('/user-management/user/update',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user-management/user/view',3,NULL,NULL,NULL,1590500441,1590500441,NULL),('/user/*',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/bulk-activate',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/bulk-deactivate',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/bulk-delete',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/change-password',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/create',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/delete',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/grid-page-size',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/grid-sort',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/index',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/toggle-attribute',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/update',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('/user/view',3,NULL,NULL,NULL,1590681643,1590681643,NULL),('Admin',1,'Admin',NULL,NULL,1590500441,1590500441,NULL),('assignRolesToUsers',2,'Assign roles to users',NULL,NULL,1590500441,1590500441,'userManagement'),('bindUserToIp',2,'Bind user to IP',NULL,NULL,1590500441,1590500441,'userManagement'),('changeOwnPassword',2,'Change own password',NULL,NULL,1590500441,1590500441,'userCommonPermissions'),('changeUserPassword',2,'Change user password',NULL,NULL,1590500441,1590500441,'userManagement'),('commonPermission',2,'Common permission',NULL,NULL,1590500440,1590500440,NULL),('createUsers',2,'Create users',NULL,NULL,1590500441,1590500441,'userManagement'),('deleteUsers',2,'Delete users',NULL,NULL,1590500441,1590500441,'userManagement'),('editUserEmail',2,'Edit user email',NULL,NULL,1590500441,1590500441,'userManagement'),('editUsers',2,'Edit users',NULL,NULL,1590500441,1590500441,'userManagement'),('user',1,'user',NULL,NULL,1590681422,1590681422,NULL),('user2',2,'User',NULL,NULL,1590681615,1590681615,NULL),('viewRegistrationIp',2,'View registration IP',NULL,NULL,1590500441,1590500441,'userManagement'),('viewUserEmail',2,'View user email',NULL,NULL,1590500441,1590500441,'userManagement'),('viewUserRoles',2,'View user roles',NULL,NULL,1590500441,1590500441,'userManagement'),('viewUsers',2,'View users',NULL,NULL,1590500441,1590500441,'userManagement'),('viewVisitLog',2,'View visit log',NULL,NULL,1590500441,1590500441,'userManagement');
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('user2','/patientss/*'),('user2','/patientss/captcha'),('user2','/patientss/create'),('user2','/patientss/delete'),('user2','/patientss/error'),('user2','/patientss/index'),('user2','/patientss/update'),('user2','/patientss/view'),('user2','/site/*'),('changeOwnPassword','/user-management/auth/change-own-password'),('assignRolesToUsers','/user-management/user-permission/set'),('assignRolesToUsers','/user-management/user-permission/set-roles'),('editUsers','/user-management/user/bulk-activate'),('editUsers','/user-management/user/bulk-deactivate'),('deleteUsers','/user-management/user/bulk-delete'),('changeUserPassword','/user-management/user/change-password'),('createUsers','/user-management/user/create'),('deleteUsers','/user-management/user/delete'),('viewUsers','/user-management/user/grid-page-size'),('viewUsers','/user-management/user/index'),('editUsers','/user-management/user/update'),('viewUsers','/user-management/user/view'),('Admin','assignRolesToUsers'),('Admin','changeOwnPassword'),('Admin','changeUserPassword'),('Admin','createUsers'),('Admin','deleteUsers'),('Admin','editUsers'),('user','user2'),('editUserEmail','viewUserEmail'),('assignRolesToUsers','viewUserRoles'),('Admin','viewUsers'),('assignRolesToUsers','viewUsers'),('changeUserPassword','viewUsers'),('createUsers','viewUsers'),('deleteUsers','viewUsers'),('editUsers','viewUsers');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_group`
--

DROP TABLE IF EXISTS `auth_item_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_group`
--

LOCK TABLES `auth_item_group` WRITE;
/*!40000 ALTER TABLE `auth_item_group` DISABLE KEYS */;
INSERT INTO `auth_item_group` VALUES ('userCommonPermissions','User common permission',1590500441,1590500441),('userManagement','User management',1590500441,1590500441);
/*!40000 ALTER TABLE `auth_item_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_diseases`
--

DROP TABLE IF EXISTS `form_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_diseases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_diseases`
--

LOCK TABLES `form_diseases` WRITE;
/*!40000 ALTER TABLE `form_diseases` DISABLE KEYS */;
INSERT INTO `form_diseases` VALUES (1,'Легкая',NULL),(2,'Средней тяжести',NULL),(3,'Тяжело',NULL),(4,'Бессимптомно',NULL);
/*!40000 ALTER TABLE `form_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1590500438),('m140608_173539_create_user_table',1590500440),('m140611_133903_init_rbac',1590500440),('m140808_073114_create_auth_item_group_table',1590500440),('m140809_072112_insert_superadmin_to_user',1590500440),('m140809_073114_insert_common_permisison_to_auth_item',1590500440),('m141023_141535_create_user_visit_log',1590500441),('m141116_115804_add_bind_to_ip_and_registration_ip_to_user',1590500441),('m141121_194858_split_browser_and_os_column',1590500441),('m141201_220516_add_email_and_email_confirmed_to_user',1590500441),('m141207_001649_create_basic_user_permissions',1590500441);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT '0000-00-00',
  `phone` varchar(50) DEFAULT '0',
  `address` varchar(512) DEFAULT '0',
  `polyclinic_id` int(11) DEFAULT '0',
  `treatment_id` int(11) DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `form_disease_id` int(11) DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT '0',
  `updated` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `diagnosis_date` date DEFAULT '0000-00-00',
  `recovery_date` date DEFAULT '0000-00-00',
  `analysis_date` date DEFAULT '0000-00-00',
  `source_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_patients_polyclinics` (`polyclinic_id`),
  KEY `FK_patients_statuses` (`status_id`),
  KEY `FK_patients_form_diseases` (`form_disease_id`),
  KEY `FK_patients_treatments` (`treatment_id`),
  KEY `FK_patients_user` (`created_by`),
  KEY `FK_patients_patients` (`source_id`),
  KEY `FK_patients_user_2` (`updated_by`),
  CONSTRAINT `FK_patients_form_diseases` FOREIGN KEY (`form_disease_id`) REFERENCES `form_diseases` (`id`) ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_patients` FOREIGN KEY (`source_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_polyclinics` FOREIGN KEY (`polyclinic_id`) REFERENCES `polyclinics` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_statuses` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_treatments` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_patients_user_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Пациент','1971-07-27','','Маяковского, 122-222',2,2,3,1,NULL,NULL,'2020-05-28 18:43:16',1,NULL,NULL,NULL,NULL),(2,'Пациент','1970-05-31','','Маяковского, 122-222',2,2,3,1,NULL,NULL,'2020-05-28 18:41:54',1,NULL,NULL,NULL,NULL),(8,'Пациент','1966-05-21','','Маяковского, 122-222',2,2,3,1,'2020-05-28 14:36:37',1,'2020-05-28 18:42:48',1,NULL,NULL,NULL,NULL),(14,'Пациент','1992-09-06','','Маяковского, 122-222',2,2,3,2,'2020-05-28 18:32:45',1,'2020-05-28 18:44:04',1,NULL,NULL,NULL,NULL),(15,'Пациент','1980-04-18','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:33:17',1,'2020-05-28 18:44:19',1,NULL,NULL,NULL,NULL),(16,'Пациент','1990-09-05','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:33:59',1,'2020-05-28 18:44:32',1,NULL,NULL,NULL,NULL),(17,'Пациент','1955-09-10','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:34:20',1,'2020-05-28 18:44:43',1,NULL,NULL,NULL,NULL),(18,'Пациент','1939-09-21','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:34:43',1,'2020-05-28 18:44:58',1,NULL,NULL,NULL,NULL),(19,'Пациент','1949-04-27','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:35:03',1,'2020-05-28 18:45:17',1,NULL,NULL,NULL,NULL),(20,'Пациент','1959-04-12','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:35:24',1,'2020-05-28 18:45:31',1,NULL,NULL,NULL,NULL),(21,'Пациент','1955-10-31','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:35:47',1,'2020-05-28 18:45:48',1,NULL,NULL,NULL,NULL),(22,'Пациент','1981-03-18','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:36:07',1,'2020-05-28 18:46:01',1,NULL,NULL,NULL,NULL),(23,'Пациент','1997-12-27','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:36:30',1,'2020-05-28 18:46:14',1,NULL,NULL,NULL,NULL),(24,'Пациент','1970-09-19','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:36:50',1,'2020-05-28 18:46:28',1,NULL,NULL,NULL,NULL),(25,'Пациент','1965-04-15','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:37:09',1,'2020-05-28 18:46:41',1,NULL,NULL,NULL,NULL),(26,'Пациент','1979-04-22','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:37:32',1,'2020-05-28 18:46:55',1,NULL,NULL,NULL,NULL),(27,'Пациент','1972-03-01','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:37:52',1,'2020-05-28 18:47:07',1,NULL,NULL,NULL,NULL),(28,'Пациент','1982-11-25','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:38:10',1,'2020-05-28 18:47:24',1,NULL,NULL,NULL,NULL),(29,'Пациент','1992-05-28','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:38:31',1,'2020-05-28 18:47:41',1,NULL,NULL,NULL,NULL),(31,'Пациент','1995-12-22','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:39:14',1,'2020-05-28 18:47:56',1,NULL,NULL,NULL,NULL),(32,'Пациент','1977-04-04','','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:39:53',1,'2020-05-28 18:48:07',1,NULL,NULL,NULL,NULL),(33,'Пациент','1973-07-12','89995675156','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:48:37',1,'2020-05-28 18:49:18',1,NULL,NULL,NULL,NULL),(34,'Пациент','2020-05-28','89995675156','Маяковского, 122-222',2,2,3,1,'2020-05-28 18:49:02',1,'2020-05-28 18:49:02',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polyclinics`
--

DROP TABLE IF EXISTS `polyclinics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polyclinics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polyclinics`
--

LOCK TABLES `polyclinics` WRITE;
/*!40000 ALTER TABLE `polyclinics` DISABLE KEYS */;
INSERT INTO `polyclinics` VALUES (2,'Поликлиника первая'),(3,'поликлиника 2');
/*!40000 ALTER TABLE `polyclinics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Контакт',NULL),(2,'Не подтвердился',NULL),(3,'Болен',NULL),(4,'Поправился',NULL),(5,'Умер',NULL);
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (1,'Госпитализация',NULL),(2,'Амбулаторно',NULL);
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `polyclinic_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'superadmin','YpBGl_EWteH_sAUPHVWTpbgdJDE7mrXy','$2y$13$uwzoN00JcxSMo2zungt6Hubis6w5GLtcLzdwzZZ1ij3bvgLCiKbvS',NULL,1,1,1590500440,1590683188,NULL,'',NULL,0),(9,2,'a.plotnikov','qyftGvqeDsWenw2pVFzOlm_7u1OhdwpZ','$2y$13$RXC/s.EQoxntoq9zbVgqreAO7ht9MTMhnV8RaXcVaRQ4eJFF2iVXe',NULL,1,1,1590683226,1590683226,'188.32.22.19','','',0),(10,2,'user.poilclinica.1','5Z372ETTEPlibgXrOOK7XzjVH_glLfnY','$2y$13$TKyulybBOSs3LIf/jb3MeODgl.vPQ43zbtRRkl.h9bohtuSDD5P7W',NULL,1,0,1590683290,1590683290,'188.32.22.19','','',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_visit_log`
--

DROP TABLE IF EXISTS `user_visit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_visit_log`
--

LOCK TABLES `user_visit_log` WRITE;
/*!40000 ALTER TABLE `user_visit_log` DISABLE KEYS */;
INSERT INTO `user_visit_log` VALUES (1,'5ecd32603a185','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',1,1590506080,'Chrome','Windows'),(2,'5ecf5690e0075','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',1,1590646416,'Chrome','Windows'),(3,'5ecf59cb0e140','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',1,1590647243,'Chrome','Windows'),(4,'5ecfde4c30be1','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',NULL,1590681164,'Chrome','Windows'),(5,'5ecfe0b81a0a5','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',NULL,1590681784,'Chrome','Windows'),(6,'5ecfe0fc2320f','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',NULL,1590681852,'Chrome','Windows'),(7,'5ecfe175ee46c','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',NULL,1590681973,'Chrome','Windows'),(8,'5ecfe1e052711','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',NULL,1590682080,'Chrome','Windows'),(9,'5ecfe672bfb1b','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',9,1590683250,'Chrome','Windows'),(10,'5ecfe6b1d026b','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36',10,1590683313,'Chrome','Windows'),(11,'5f0d5605d355f','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36',9,1594709509,'Chrome','Windows'),(12,'60377dd4bdec5','188.32.22.19','ru','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36',9,1614249428,'Chrome','Windows');
/*!40000 ALTER TABLE `user_visit_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-25 13:54:57
