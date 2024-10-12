-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: proyect_solpedcaf
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add pagina_inicial',7,'add_pagina_inicial'),(26,'Can change pagina_inicial',7,'change_pagina_inicial'),(27,'Can delete pagina_inicial',7,'delete_pagina_inicial'),(28,'Can view pagina_inicial',7,'view_pagina_inicial'),(29,'Can add pagina_inicial',8,'add_pagina_inicial'),(30,'Can change pagina_inicial',8,'change_pagina_inicial'),(31,'Can delete pagina_inicial',8,'delete_pagina_inicial'),(32,'Can view pagina_inicial',8,'view_pagina_inicial'),(33,'Can add plagas_y_enfermedades',9,'add_plagas_y_enfermedades'),(34,'Can change plagas_y_enfermedades',9,'change_plagas_y_enfermedades'),(35,'Can delete plagas_y_enfermedades',9,'delete_plagas_y_enfermedades'),(36,'Can view plagas_y_enfermedades',9,'view_plagas_y_enfermedades'),(37,'Can add etapa_de_crecimiento',10,'add_etapa_de_crecimiento'),(38,'Can change etapa_de_crecimiento',10,'change_etapa_de_crecimiento'),(39,'Can delete etapa_de_crecimiento',10,'delete_etapa_de_crecimiento'),(40,'Can view etapa_de_crecimiento',10,'view_etapa_de_crecimiento'),(41,'Can add etapa_de_plantacion',11,'add_etapa_de_plantacion'),(42,'Can change etapa_de_plantacion',11,'change_etapa_de_plantacion'),(43,'Can delete etapa_de_plantacion',11,'delete_etapa_de_plantacion'),(44,'Can view etapa_de_plantacion',11,'view_etapa_de_plantacion'),(45,'Can add etapa_de_fructificacion',12,'add_etapa_de_fructificacion'),(46,'Can change etapa_de_fructificacion',12,'change_etapa_de_fructificacion'),(47,'Can delete etapa_de_fructificacion',12,'delete_etapa_de_fructificacion'),(48,'Can view etapa_de_fructificacion',12,'view_etapa_de_fructificacion'),(49,'Can add etapa_de_floracion',13,'add_etapa_de_floracion'),(50,'Can change etapa_de_floracion',13,'change_etapa_de_floracion'),(51,'Can delete etapa_de_floracion',13,'delete_etapa_de_floracion'),(52,'Can view etapa_de_floracion',13,'view_etapa_de_floracion'),(53,'Can add consejos_para_su_cultivo',14,'add_consejos_para_su_cultivo'),(54,'Can change consejos_para_su_cultivo',14,'change_consejos_para_su_cultivo'),(55,'Can delete consejos_para_su_cultivo',14,'delete_consejos_para_su_cultivo'),(56,'Can view consejos_para_su_cultivo',14,'view_consejos_para_su_cultivo'),(57,'Can add seleccion_semilla',15,'add_seleccion_semilla'),(58,'Can change seleccion_semilla',15,'change_seleccion_semilla'),(59,'Can delete seleccion_semilla',15,'delete_seleccion_semilla'),(60,'Can view seleccion_semilla',15,'view_seleccion_semilla'),(61,'Can add cuidado_inicial',16,'add_cuidado_inicial'),(62,'Can change cuidado_inicial',16,'change_cuidado_inicial'),(63,'Can delete cuidado_inicial',16,'delete_cuidado_inicial'),(64,'Can view cuidado_inicial',16,'view_cuidado_inicial'),(65,'Can add sembrado',17,'add_sembrado'),(66,'Can change sembrado',17,'change_sembrado'),(67,'Can delete sembrado',17,'delete_sembrado'),(68,'Can view sembrado',17,'view_sembrado'),(69,'Can add fertilizacion',18,'add_fertilizacion'),(70,'Can change fertilizacion',18,'change_fertilizacion'),(71,'Can delete fertilizacion',18,'delete_fertilizacion'),(72,'Can view fertilizacion',18,'view_fertilizacion'),(73,'Can add soluciones_para_su_cultivo',19,'add_soluciones_para_su_cultivo'),(74,'Can change soluciones_para_su_cultivo',19,'change_soluciones_para_su_cultivo'),(75,'Can delete soluciones_para_su_cultivo',19,'delete_soluciones_para_su_cultivo'),(76,'Can view soluciones_para_su_cultivo',19,'view_soluciones_para_su_cultivo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$Ysn00UX4xzAL7YK3Y110m9$N7/esu9XdDBiguy5MMdkgXWbr+bMba35hg32lviE9ZI=','2024-10-09 00:50:33.136193',1,'root','','','root@gmail.com',1,1,'2024-10-02 05:33:42.367598');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-02 05:34:24.371695','1','Plagas y Enfermedades',1,'[{\"added\": {}}]',7,1),(2,'2024-10-03 21:35:25.559149','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',7,1),(3,'2024-10-03 21:54:33.322772','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',7,1),(4,'2024-10-03 22:07:12.923963','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"Imagen\", \"UrlDestino\"]}}]',7,1),(5,'2024-10-06 00:33:51.262305','1','Etapa De Plantación',1,'[{\"added\": {}}]',9,1),(6,'2024-10-06 00:36:53.358483','2','Etapa De Crecimiento',1,'[{\"added\": {}}]',9,1),(7,'2024-10-06 00:42:38.816162','3','Etapa De Floración',1,'[{\"added\": {}}]',9,1),(8,'2024-10-06 00:43:26.588911','4','Etapa De Fructificación',1,'[{\"added\": {}}]',9,1),(9,'2024-10-06 02:38:34.741971','2','Etapa De Crecimiento',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(10,'2024-10-06 02:39:44.288404','2','Etapa De Crecimiento',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(11,'2024-10-06 02:40:22.293465','2','Etapa De Crecimiento',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(12,'2024-10-06 03:01:50.912439','1','Etapa De Plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(13,'2024-10-06 03:02:14.048587','1','Etapa De Plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(14,'2024-10-06 03:02:45.800564','1','Etapa De Plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(15,'2024-10-06 03:32:25.246927','4','Etapa De Fructificación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(16,'2024-10-07 02:14:03.312951','3','Etapa De Floración',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',9,1),(17,'2024-10-07 02:20:57.993961','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',7,1),(18,'2024-10-07 02:23:50.902611','2','Consejos Para Su Cultivo',1,'[{\"added\": {}}]',7,1),(19,'2024-10-07 02:24:11.822192','3','Soluciones para su cultivo',1,'[{\"added\": {}}]',7,1),(20,'2024-10-07 02:27:16.120192','3','Soluciones Para Su Cultivo',2,'[{\"changed\": {\"fields\": [\"Titulo\"]}}]',7,1),(21,'2024-10-07 02:51:49.834568','2','Consejos Para Su Cultivo',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',7,1),(22,'2024-10-07 03:14:49.551933','3','Soluciones Para Su Cultivo',3,'',7,1),(23,'2024-10-07 18:09:32.364175','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',7,1),(24,'2024-10-07 18:10:08.568920','1','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',7,1),(25,'2024-10-07 18:11:37.219333','2','Consejos Para Su Cultivo',2,'[]',7,1),(26,'2024-10-07 18:23:48.533358','1','Selección De La Semilla',1,'[{\"added\": {}}]',14,1),(27,'2024-10-07 18:27:12.989614','2','Cuidado Inicial',1,'[{\"added\": {}}]',14,1),(28,'2024-10-07 18:33:50.378040','3','Sembrado',1,'[{\"added\": {}}]',14,1),(29,'2024-10-07 18:36:28.553525','4','Fertilización',1,'[{\"added\": {}}]',14,1),(30,'2024-10-07 18:57:51.272030','1','Selección De La Semilla',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(31,'2024-10-07 18:58:54.488259','1','Selección De La Semilla',2,'[]',14,1),(32,'2024-10-07 19:05:29.879937','1','Selección De La Semilla',2,'[]',14,1),(33,'2024-10-07 19:09:34.136624','1','Selección De La Semilla',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(34,'2024-10-07 19:10:27.245090','1','Selección De La Semilla',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(35,'2024-10-07 21:33:59.756259','2','Cuidado Inicial',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(36,'2024-10-07 21:56:25.858307','3','Sembrado',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(37,'2024-10-08 00:06:53.354083','4','Fertilización',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',14,1),(38,'2024-10-09 00:58:55.904315','4','Soluciones Para Su Cultivo',1,'[{\"added\": {}}]',7,1),(39,'2024-10-09 01:01:55.707030','4','Soluciones Para Su Cultivo',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',7,1),(40,'2024-10-09 01:10:15.153053','4','Soluciones Para Su Cultivo',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',7,1),(41,'2024-10-09 02:18:55.942758','6','broca',1,'[{\"added\": {}}]',19,1),(42,'2024-10-09 02:19:24.308192','6','Broca',2,'[{\"changed\": {\"fields\": [\"Titulo\"]}}]',19,1),(43,'2024-10-10 02:04:29.394954','1','ROYA DEL CAFÉ',1,'[{\"added\": {}}]',11,1),(44,'2024-10-10 02:13:16.360721','1','ROYA DEL CAFÉ',2,'[]',11,1),(45,'2024-10-10 02:14:12.159915','1','ROYA DEL CAFÉ',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',11,1),(46,'2024-10-10 02:31:41.860202','1','ROYA DEL CAFÉ',2,'[{\"changed\": {\"fields\": [\"Urldestino\"]}}]',11,1),(47,'2024-10-10 02:47:49.696711','1','ROYA DEL CAFÉ',2,'[{\"changed\": {\"fields\": [\"Imagen2\", \"Imagen3\"]}}]',11,1),(48,'2024-10-10 03:08:32.522682','1','ROYA DEL CAFÉ',2,'[]',11,1),(49,'2024-10-10 03:08:43.293944','1','ROYA DEL CAFÉ',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(14,'solpedcaf','consejos_para_su_cultivo'),(16,'solpedcaf','cuidado_inicial'),(10,'solpedcaf','etapa_de_crecimiento'),(13,'solpedcaf','etapa_de_floracion'),(12,'solpedcaf','etapa_de_fructificacion'),(11,'solpedcaf','etapa_de_plantacion'),(18,'solpedcaf','fertilizacion'),(7,'solpedcaf','pagina_inicial'),(9,'solpedcaf','plagas_y_enfermedades'),(15,'solpedcaf','seleccion_semilla'),(17,'solpedcaf','sembrado'),(19,'solpedcaf','soluciones_para_su_cultivo'),(8,'solpedcaf_front','pagina_inicial');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-02 05:31:52.265784'),(2,'auth','0001_initial','2024-10-02 05:32:09.201729'),(3,'admin','0001_initial','2024-10-02 05:32:12.887794'),(4,'admin','0002_logentry_remove_auto_add','2024-10-02 05:32:12.986210'),(5,'admin','0003_logentry_add_action_flag_choices','2024-10-02 05:32:13.054652'),(6,'contenttypes','0002_remove_content_type_name','2024-10-02 05:32:14.754510'),(7,'auth','0002_alter_permission_name_max_length','2024-10-02 05:32:16.259807'),(8,'auth','0003_alter_user_email_max_length','2024-10-02 05:32:16.615628'),(9,'auth','0004_alter_user_username_opts','2024-10-02 05:32:16.699191'),(10,'auth','0005_alter_user_last_login_null','2024-10-02 05:32:17.954052'),(11,'auth','0006_require_contenttypes_0002','2024-10-02 05:32:18.047921'),(12,'auth','0007_alter_validators_add_error_messages','2024-10-02 05:32:18.121995'),(13,'auth','0008_alter_user_username_max_length','2024-10-02 05:32:19.802602'),(14,'auth','0009_alter_user_last_name_max_length','2024-10-02 05:32:21.324020'),(15,'auth','0010_alter_group_name_max_length','2024-10-02 05:32:21.670778'),(16,'auth','0011_update_proxy_permissions','2024-10-02 05:32:21.807976'),(17,'auth','0012_alter_user_first_name_max_length','2024-10-02 05:32:23.534869'),(18,'sessions','0001_initial','2024-10-02 05:32:24.617319'),(19,'solpedcaf','0001_initial','2024-10-02 05:32:25.416467'),(20,'solpedcaf','0002_rename_modulo_pagina_inicial','2024-10-02 05:32:26.231258'),(21,'solpedcaf_front','0001_initial','2024-10-02 14:56:43.342681'),(22,'solpedcaf','0003_plagas_y_enfermedades','2024-10-06 00:32:03.151489'),(23,'solpedcaf','0004_etapa_de_crecimiento','2024-10-06 01:21:30.764801'),(24,'solpedcaf','0005_remove_etapa_de_crecimiento_urldestino','2024-10-06 02:55:49.094377'),(25,'solpedcaf','0006_etapa_de_plantacion','2024-10-06 03:06:25.751147'),(26,'solpedcaf','0007_etapa_de_fructificacion','2024-10-06 03:25:37.120212'),(27,'solpedcaf','0008_etapa_de_floracion_alter_etapa_de_crecimiento_imagen_and_more','2024-10-07 02:07:19.344758'),(28,'solpedcaf','0009_consejos_para_su_cultivo','2024-10-07 02:49:23.330145'),(29,'solpedcaf','0010_seleccion_semilla','2024-10-07 19:04:54.576498'),(30,'solpedcaf','0011_cuidado_inicial','2024-10-07 21:31:25.194314'),(31,'solpedcaf','0012_sembrado','2024-10-07 22:03:13.113087'),(32,'solpedcaf','0013_fertilizacion','2024-10-08 00:10:46.755587'),(33,'solpedcaf','0014_soluciones_para_su_cultivo','2024-10-09 01:09:22.596929'),(34,'solpedcaf','0015_rename_titulo_soluciones_para_su_cultivo_plaga_enfermedad','2024-10-09 02:01:04.219387'),(35,'solpedcaf','0016_remove_soluciones_para_su_cultivo_imagen','2024-10-09 02:03:16.750797'),(36,'solpedcaf','0017_rename_plaga_enfermedad_soluciones_para_su_cultivo_afectacion','2024-10-09 02:08:54.054792'),(37,'solpedcaf','0015_rename_afectacion_soluciones_para_su_cultivo_titulo','2024-10-09 02:18:12.414402'),(38,'solpedcaf','0016_etapa_de_plantacion_urldestino','2024-10-10 02:30:58.240203'),(39,'solpedcaf','0017_etapa_de_plantacion_imagen2_and_more','2024-10-10 02:44:07.950112');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8688z62qqjoq534vh2kbn5bh1epium0t','.eJxVjEEOwiAQRe_C2hAKpYBL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kziLQZx-twT44LoDukO9NYmtrsuc5K7Ig3Z5bcTPy-H-HRTo5Vs75xM4HrUhdnmasubBKcUpZ7Se_YjZ22A0ea0wGUCLjEqBCjpRIC_eH_gfOJs:1sxybw:b5wJE5DBTZCr-u_alnXdU21XlW4c-r_3GLQIingShHM','2024-10-22 01:02:00.810223'),('pic5wogcj8ph1suf3dxtrf3n2cusj7m0','.eJxVjEEOwiAQRe_C2hAKpYBL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kziLQZx-twT44LoDukO9NYmtrsuc5K7Ig3Z5bcTPy-H-HRTo5Vs75xM4HrUhdnmasubBKcUpZ7Se_YjZ22A0ea0wGUCLjEqBCjpRIC_eH_gfOJs:1syKuP:kh8s5q1sXHNl5FzItSr5571ci213HVkIGBfR16cigL4','2024-10-23 00:50:33.577312'),('ta25dsm8tqbzz2du00iybdcru6k5o6hv','.eJxVjMsOwiAQRf-FtSE8ygAu3fsNZGBAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hJnZmkp1-t4jpkdsO6I7t1nnqbV3myHeFH3Twa6f8vBzu30HFUb-1JmOU8WUSRlmB1kcQoEBO3iawSFo6IueSLIDReKNEKSCthVhi1iKx9wewrjcf:1sw0s7:f-G9n2ym1_kIsPjgHDg63TM0CoKSs0VdnXJHXzOQ9B8','2024-10-16 15:02:35.368195'),('ykzd5j44zkmdypb38ueiem4lth2ew7fd','.eJxVjEEOwiAQRe_C2hAKpYBL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kziLQZx-twT44LoDukO9NYmtrsuc5K7Ig3Z5bcTPy-H-HRTo5Vs75xM4HrUhdnmasubBKcUpZ7Se_YjZ22A0ea0wGUCLjEqBCjpRIC_eH_gfOJs:1sxs6q:3e3G3NdzY99OM30YHPNVK2WifmkB3KxSHJVExy94KE0','2024-10-21 18:05:28.204420');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_consejos_para_su_cultivo`
--

DROP TABLE IF EXISTS `solpedcaf_consejos_para_su_cultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_consejos_para_su_cultivo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_consejos_para_su_cultivo`
--

LOCK TABLES `solpedcaf_consejos_para_su_cultivo` WRITE;
/*!40000 ALTER TABLE `solpedcaf_consejos_para_su_cultivo` DISABLE KEYS */;
INSERT INTO `solpedcaf_consejos_para_su_cultivo` VALUES (1,'Selección De La Semilla','NA','modulos/eleccion_semilla.jpg','solpedcafseleccion_semilla'),(2,'Cuidado Inicial','NA','modulos/cuidado_inicial.png','solpedcafcuidado_inicial'),(3,'Sembrado','NA','modulos/etpa.jpg','solpedcafsembrado'),(4,'Fertilización','NA','modulos/sddefault.jpg','solpedcafertilizacion');
/*!40000 ALTER TABLE `solpedcaf_consejos_para_su_cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_cuidado_inicial`
--

DROP TABLE IF EXISTS `solpedcaf_cuidado_inicial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_cuidado_inicial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `a_tener_en_cuenta` longtext,
  `a_tener_en_cuenta2` longtext,
  `a_tener_en_cuenta3` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_cuidado_inicial`
--

LOCK TABLES `solpedcaf_cuidado_inicial` WRITE;
/*!40000 ALTER TABLE `solpedcaf_cuidado_inicial` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_cuidado_inicial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_etapa_de_crecimiento`
--

DROP TABLE IF EXISTS `solpedcaf_etapa_de_crecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_etapa_de_crecimiento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_etapa_de_crecimiento`
--

LOCK TABLES `solpedcaf_etapa_de_crecimiento` WRITE;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_crecimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_crecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_etapa_de_floracion`
--

DROP TABLE IF EXISTS `solpedcaf_etapa_de_floracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_etapa_de_floracion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_etapa_de_floracion`
--

LOCK TABLES `solpedcaf_etapa_de_floracion` WRITE;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_floracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_floracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_etapa_de_fructificacion`
--

DROP TABLE IF EXISTS `solpedcaf_etapa_de_fructificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_etapa_de_fructificacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_etapa_de_fructificacion`
--

LOCK TABLES `solpedcaf_etapa_de_fructificacion` WRITE;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_fructificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_fructificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_etapa_de_plantacion`
--

DROP TABLE IF EXISTS `solpedcaf_etapa_de_plantacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_etapa_de_plantacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urldestino` varchar(100) DEFAULT NULL,
  `imagen2` varchar(100) DEFAULT NULL,
  `imagen3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_etapa_de_plantacion`
--

LOCK TABLES `solpedcaf_etapa_de_plantacion` WRITE;
/*!40000 ALTER TABLE `solpedcaf_etapa_de_plantacion` DISABLE KEYS */;
INSERT INTO `solpedcaf_etapa_de_plantacion` VALUES (1,'ROYA DEL CAFÉ','HONGO','modulos/roya_cardpes.png','NA','modulos/roya2.png','modulos/roya3.png');
/*!40000 ALTER TABLE `solpedcaf_etapa_de_plantacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_fertilizacion`
--

DROP TABLE IF EXISTS `solpedcaf_fertilizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_fertilizacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `a_tener_en_cuenta` longtext,
  `a_tener_en_cuenta2` longtext,
  `a_tener_en_cuenta3` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_fertilizacion`
--

LOCK TABLES `solpedcaf_fertilizacion` WRITE;
/*!40000 ALTER TABLE `solpedcaf_fertilizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_fertilizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_front_pagina_inicial`
--

DROP TABLE IF EXISTS `solpedcaf_front_pagina_inicial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_front_pagina_inicial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_front_pagina_inicial`
--

LOCK TABLES `solpedcaf_front_pagina_inicial` WRITE;
/*!40000 ALTER TABLE `solpedcaf_front_pagina_inicial` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_front_pagina_inicial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_pagina_inicial`
--

DROP TABLE IF EXISTS `solpedcaf_pagina_inicial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_pagina_inicial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_pagina_inicial`
--

LOCK TABLES `solpedcaf_pagina_inicial` WRITE;
/*!40000 ALTER TABLE `solpedcaf_pagina_inicial` DISABLE KEYS */;
INSERT INTO `solpedcaf_pagina_inicial` VALUES (1,'Plagas y Enfermedades','NA','modulos/image-card2_sYHTdMH.png','solpedcafplagas_y_enfermedades'),(2,'Consejos Para Su Cultivo','NA','modulos/image-card3_WgbmpdA.png','solpedcafconsejos_para_su_cultivo'),(4,'Soluciones Para Su Cultivo','NA','modulos/modulo1_iFng8ZD.png','solpedcafsoluciones_para_su_cultivo');
/*!40000 ALTER TABLE `solpedcaf_pagina_inicial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_plagas_y_enfermedades`
--

DROP TABLE IF EXISTS `solpedcaf_plagas_y_enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_plagas_y_enfermedades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_plagas_y_enfermedades`
--

LOCK TABLES `solpedcaf_plagas_y_enfermedades` WRITE;
/*!40000 ALTER TABLE `solpedcaf_plagas_y_enfermedades` DISABLE KEYS */;
INSERT INTO `solpedcaf_plagas_y_enfermedades` VALUES (1,'Etapa De Plantación','NA','modulos/etapa_plantacion_rCT40WC_PejHdhx.png','solpedcafetapa_de_plantacion'),(2,'Etapa De Crecimiento','NA','modulos/etapa_crecimiento_ZlUTOuT.png','solpedcafetapa_de_crecimiento'),(3,'Etapa De Floración','NA','modulos/etapa_floracion_QL2hmJy.png','solpedcafetapa_de_floracion'),(4,'Etapa De Fructificación','NA','modulos/etapa_fructificacion_ylvKj0G.png','solpedcafetapa_de_fructificacion');
/*!40000 ALTER TABLE `solpedcaf_plagas_y_enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_seleccion_semilla`
--

DROP TABLE IF EXISTS `solpedcaf_seleccion_semilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_seleccion_semilla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `a_tener_en_cuenta` longtext,
  `a_tener_en_cuenta2` longtext,
  `a_tener_en_cuenta3` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_seleccion_semilla`
--

LOCK TABLES `solpedcaf_seleccion_semilla` WRITE;
/*!40000 ALTER TABLE `solpedcaf_seleccion_semilla` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_seleccion_semilla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_sembrado`
--

DROP TABLE IF EXISTS `solpedcaf_sembrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_sembrado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `a_tener_en_cuenta` longtext,
  `a_tener_en_cuenta2` longtext,
  `a_tener_en_cuenta3` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_sembrado`
--

LOCK TABLES `solpedcaf_sembrado` WRITE;
/*!40000 ALTER TABLE `solpedcaf_sembrado` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpedcaf_sembrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpedcaf_soluciones_para_su_cultivo`
--

DROP TABLE IF EXISTS `solpedcaf_soluciones_para_su_cultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpedcaf_soluciones_para_su_cultivo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpedcaf_soluciones_para_su_cultivo`
--

LOCK TABLES `solpedcaf_soluciones_para_su_cultivo` WRITE;
/*!40000 ALTER TABLE `solpedcaf_soluciones_para_su_cultivo` DISABLE KEYS */;
INSERT INTO `solpedcaf_soluciones_para_su_cultivo` VALUES (6,'Broca','NA','NA');
/*!40000 ALTER TABLE `solpedcaf_soluciones_para_su_cultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyect_solpedcaf'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10  0:25:23
