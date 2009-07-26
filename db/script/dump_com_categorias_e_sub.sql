-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.31-1ubuntu2


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema money_mg
--

CREATE DATABASE IF NOT EXISTS money_mg;
USE money_mg;

--
-- Definition of table `money_mg`.`categories`
--

DROP TABLE IF EXISTS `money_mg`.`categories`;
CREATE TABLE  `money_mg`.`categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `income` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_mg`.`categories`
--

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
LOCK TABLES `categories` WRITE;
INSERT INTO `money_mg`.`categories` VALUES  (1,'Renda',1,'2009-07-25 10:44:32','2009-07-25 10:44:32'),
 (2,'Saúde',0,'2009-07-25 10:44:52','2009-07-25 10:44:52'),
 (3,'Transporte',0,'2009-07-25 10:45:03','2009-07-25 10:45:03'),
 (4,'Automóvel',0,'2009-07-25 10:45:20','2009-07-25 10:45:20'),
 (5,'Despesas pessoais',0,'2009-07-25 10:45:34','2009-07-25 10:45:34'),
 (6,'Lazer',0,'2009-07-25 10:45:46','2009-07-25 10:45:46'),
 (7,'Cartões de credito',0,'2009-07-25 10:45:58','2009-07-25 10:45:58');
UNLOCK TABLES;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


--
-- Definition of table `money_mg`.`items`
--

DROP TABLE IF EXISTS `money_mg`.`items`;
CREATE TABLE  `money_mg`.`items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `value` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_mg`.`items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
LOCK TABLES `items` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `money_mg`.`schema_migrations`
--

DROP TABLE IF EXISTS `money_mg`.`schema_migrations`;
CREATE TABLE  `money_mg`.`schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_mg`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `money_mg`.`schema_migrations` VALUES  ('20090724193356'),
 ('20090724195350'),
 ('20090724195948');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `money_mg`.`subcategories`
--

DROP TABLE IF EXISTS `money_mg`.`subcategories`;
CREATE TABLE  `money_mg`.`subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_mg`.`subcategories`
--

/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
LOCK TABLES `subcategories` WRITE;
INSERT INTO `money_mg`.`subcategories` VALUES  (1,'Salários',1,'2009-07-25 10:46:20','2009-07-25 10:46:20'),
 (2,'Outros',1,'2009-07-25 10:46:31','2009-07-25 10:46:31'),
 (3,'Plano de saúde',2,'2009-07-25 10:46:46','2009-07-25 10:46:46'),
 (4,'Medicamentos',2,'2009-07-25 10:46:59','2009-07-25 10:46:59'),
 (5,'Outros',2,'2009-07-25 10:47:08','2009-07-25 10:47:08'),
 (6,'Onibus',3,'2009-07-25 10:47:20','2009-07-25 10:47:20'),
 (7,'Metrô',3,'2009-07-25 10:47:27','2009-07-25 10:47:27'),
 (8,'Outros',3,'2009-07-25 10:47:35','2009-07-25 10:47:35'),
 (9,'Combustível',4,'2009-07-25 10:47:52','2009-07-25 10:47:52'),
 (10,'Multas',4,'2009-07-25 10:48:02','2009-07-25 10:48:02'),
 (11,'Mecânico',4,'2009-07-25 10:48:13','2009-07-25 10:48:13'),
 (12,'Lavagens',4,'2009-07-25 10:48:20','2009-07-25 10:48:20'),
 (13,'Outros',4,'2009-07-25 10:48:27','2009-07-25 10:48:27'),
 (14,'Higiene pessoal',5,'2009-07-25 10:48:46','2009-07-25 10:48:46'),
 (15,'Cosméticos',5,'2009-07-25 10:48:58','2009-07-25 10:48:58'),
 (16,'Barbeiro',5,'2009-07-25 10:49:08','2009-07-25 10:49:08');
INSERT INTO `money_mg`.`subcategories` VALUES  (17,'Vestuário',5,'2009-07-25 10:49:19','2009-07-25 10:49:19'),
 (18,'Celular',5,'2009-07-25 10:49:32','2009-07-25 10:49:32'),
 (19,'Livros',5,'2009-07-25 10:49:45','2009-07-25 10:49:45'),
 (20,'Outros',5,'2009-07-25 10:49:52','2009-07-25 10:49:52'),
 (21,'Restaurantes',6,'2009-07-25 10:50:03','2009-07-25 10:50:03'),
 (22,'Cafés/Bares/Boates',6,'2009-07-25 10:50:16','2009-07-25 10:50:16'),
 (23,'Locadora de Vídeo',6,'2009-07-25 10:50:28','2009-07-25 10:50:28'),
 (24,'CDs, DVDs, acessórios',6,'2009-07-25 10:50:44','2009-07-25 10:50:44'),
 (25,'Passagens',6,'2009-07-25 10:50:55','2009-07-25 10:50:55'),
 (26,'Hotéis',6,'2009-07-25 10:51:05','2009-07-25 10:51:05'),
 (27,'Passeios',6,'2009-07-25 10:51:13','2009-07-25 10:51:13'),
 (28,'Outros',6,'2009-07-25 10:51:22','2009-07-25 10:51:22'),
 (29,'MasterCard',7,'2009-07-25 10:51:52','2009-07-25 10:51:52'),
 (31,'Visa',7,'2009-07-25 10:52:15','2009-07-25 10:52:15'),
 (32,'Outros',7,'2009-07-25 10:52:30','2009-07-25 10:52:30');
UNLOCK TABLES;
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
