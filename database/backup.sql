-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: imitate_modabir_db
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(150) NOT NULL,
  `article` text NOT NULL,
  `unite` varchar(10) NOT NULL,
  `prix_ht` double NOT NULL,
  `categorie` varchar(150) NOT NULL,
  `tva` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'c01-09-01','Réfection de la peinture d\'un pylône existant:','U',1200,'M',0.2),(2,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,'M',0.2),(3,'c02-01-02','Poteau béton armé classe A 8 m 300 daN','U',380,'M',0.2),(4,'c02-01-03','Poteau béton armé classe A 8 m 500 daN','U',390,'M',0.2),(5,'c02-01-04','Poteau béton armé classe A 8 m 700 daN','U',410,'M',0.2),(6,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,'M',0.2),(7,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,'M',0.2),(8,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,'M',0.2),(9,'c02-01-09','Poteau béton armé classe A 9 m 700 daN','U',410,'M',0.2),(10,'c02-01-11','Poteau béton armé classe A 12 m 200 daN','U',510,'M',0.2),(11,'c02-01-12','Poteau béton armé classe A 12 m 300 daN','U',510,'M',0.2),(12,'c02-01-13','Poteau béton armé classe A 12 m 500 daN','U',560,'M',0.2),(13,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,'M',0.2),(14,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,'M',0.2),(15,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,'M',0.2),(16,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,'M',0.2),(17,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,'M',0.2),(18,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,'M',0.2),(19,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,'M',0.2),(20,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,'M',0.2),(21,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,'M',0.2),(22,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,'M',0.2),(23,'c02-01-25','Poteau béton arme classe B 10,50 m 1000 daN','U',660,'M',0.2),(24,'c02-01-26','Poteau béton armé classe B 10,50 m 1500 daN','U',710,'M',0.2),(25,'c02-01-27','Poteau béton armé classe B 12 m 1000 daN','U',610,'M',0.2),(26,'c02-01-28','Poteau béton armé classe B 12 m 1250 daN','U',710,'M',0.2),(27,'c02-01-29','Poteau béton armé classe B 12 m1500 daN','U',760,'M',0.2),(28,'c02-01-30','Poteau béton armé classe B 13 m 1000 daN','U',610,'M',0.2),(29,'c02-01-31','Poteau béton armé classe B 13 m 1250 daN','U',710,'M',0.2),(30,'c02-01-32','Poteau béton armé classe B 13 m 1500 daN','U',760,'M',0.2),(31,'c02-01-33','Poteau béton armé classe B 14 m 1000 daN','U',610,'M',0.2),(32,'c02-01-34','Poteau béton armé classe B 14 m 1250 daN','U',710,'M',0.2),(33,'c02-01-35','Poteau béton armé classe B 14 m 1500 daN','U',760,'M',0.2),(34,'c02-02-01','Poteau béton armé classe A 8 m 150 daN','U',1130,'F+M',0.2),(35,'c02-02-02','Poteau béton armé classe A 8 m 300 daN','U',1330,'F+M',0.2),(36,'c02-02-03','Poteau béton armé classe A 8 m 500 daN','U',1480,'F+M',0.2),(37,'c02-02-04','Poteau béton armé classe A 8 m 700 daN','U',1700,'F+M',0.2),(38,'c02-02-06','Poteau béton armé classe A 9m 150 daN','U',1290,'F+M',0.2),(39,'c02-02-07','Poteau béton armé classe A 9 m 300 daN','U',1400,'F+M',0.2),(40,'c02-02-08','Poteau béton armé classe A 9 m 500 daN','U',1650,'F+M',0.2),(41,'c02-02-09','Poteau béton armé classe A 9 m 700 daN','U',1900,'F+M',0.2),(42,'c02-02-11','Poteau béton armé classe A 12 m 200 daN','U',1950,'F+M',0.2),(43,'c02-02-12','Poteau béton armé classe A 12 m 300 daN','U',1950,'F+M',0.2),(44,'c02-02-13','Poteau béton armé classe A 12 m 500 daN','U',2300,'F+M',0.2),(45,'c02-02-14','Poteau béton armé classe A 12 m 800 daN','U',3150,'F+M',0.2),(46,'c02-02-15','Poteau béton armé classe A 13 m 300 daN','U',2150,'F+M',0.2),(47,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,'F+M',0.2),(48,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,'F+M',0.2),(49,'BFG','BIG FAT GUN','W',1500,'WEAPON',0.4),(50,'panzer','Poteau béton armé classe A 9 m 150 daN','5',5,'8',0.5);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int NOT NULL,
  `categorie` varchar(120) NOT NULL,
  `commentaire` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Appel d offre',''),(2,'Bon de commande',''),(3,'Contrat cadre',''),(4,'Partenareat','');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL,
  `client` text NOT NULL,
  `rc` varchar(80) NOT NULL,
  `patente` varchar(100) NOT NULL,
  `iff` varchar(100) NOT NULL,
  `ice` varchar(150) NOT NULL,
  `forme_juridique` varchar(150) NOT NULL,
  `representant` text NOT NULL,
  `tel` text NOT NULL,
  `email` text NOT NULL,
  `site_web` text NOT NULL,
  `fax` text NOT NULL,
  `adresse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'ONEE','12547','125478','0021455555','','Administration','','052214587','','','','Hay Riad Rabat'),(2,'MAROC TELECOM','','','','','SA','','05371458710','','','','');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histoire_rapport`
--

DROP TABLE IF EXISTS `histoire_rapport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histoire_rapport` (
  `id_h_r` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `user` varchar(20) NOT NULL,
  PRIMARY KEY (`id_h_r`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histoire_rapport`
--

LOCK TABLES `histoire_rapport` WRITE;
/*!40000 ALTER TABLE `histoire_rapport` DISABLE KEYS */;
INSERT INTO `histoire_rapport` VALUES (1,104,'user2'),(2,105,'user1'),(3,106,'user1'),(4,107,'user1'),(5,108,'user1'),(6,109,'user1'),(7,110,'user1'),(8,111,'user2'),(9,112,'user1'),(10,113,'user2');
/*!40000 ALTER TABLE `histoire_rapport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `societe`
--

DROP TABLE IF EXISTS `societe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `societe` (
  `id` int NOT NULL,
  `nom` text NOT NULL,
  `logo` text NOT NULL,
  `slogon` text NOT NULL,
  `rc` text NOT NULL,
  `ice` text NOT NULL,
  `patente` text NOT NULL,
  `IFF` text NOT NULL,
  `capitale` text NOT NULL,
  `tel` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `web` text NOT NULL,
  `adresse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `societe`
--

LOCK TABLES `societe` WRITE;
/*!40000 ALTER TABLE `societe` DISABLE KEYS */;
INSERT INTO `societe` VALUES (1,'DMG2S','logo_dmg2s.jpg','VOTRE PARTENANIRE D ENGAGEMENT','','','','','','0','0','0','0','');
/*!40000 ALTER TABLE `societe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statut_commande` (
  `id` int NOT NULL,
  `statut` varchar(120) NOT NULL,
  `commentaire` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_commande`
--

LOCK TABLES `statut_commande` WRITE;
/*!40000 ALTER TABLE `statut_commande` DISABLE KEYS */;
INSERT INTO `statut_commande` VALUES (1,'devis',''),(2,'commande','');
/*!40000 ALTER TABLE `statut_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `login` text NOT NULL,
  `mp` text NOT NULL,
  `societe` text NOT NULL,
  `categorie` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Souissi Abdelmoghit','user1','123456','DMG2S','MANAGER'),(2,'alex','user2','123','unknwon','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente`
--

DROP TABLE IF EXISTS `vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client` text NOT NULL,
  `num` text NOT NULL,
  `projet` text NOT NULL,
  `categorie` text NOT NULL,
  `description` text NOT NULL,
  `statut` varchar(150) NOT NULL,
  `user` text NOT NULL,
  `date_creation` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente`
--

LOCK TABLES `vente` WRITE;
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
INSERT INTO `vente` VALUES (1,'ONEE','','TEST1','AO','PRESTATION TEST','','',NULL),(2,'ONEE','','TEST','Appel d offre','TEST','','',NULL),(3,'ONEE','enee/2024/3','Azilal','Appel d offre','electrification zone rural azilal tranche1','devis','user1','2024-02-10'),(4,'ONEE','enee/2024/3','Azilal','Appel d offre','electrification zone rural azilal tranche1','devis','user1','2024-02-10'),(5,'ONEE','enee/2024/4','Benimellal','Appel d offre','electrification zone benimellal tranche1','devis','user1','2024-02-10'),(6,'ONEE','enee/2024/10','casa','Bon de commande','elect casa sidi maarouf','devis','user1','2024-02-10'),(7,'ONEE','enee/2024/15','casa','Bon de commande','elect casa maatif','devis','user1','2024-02-10'),(8,'ONEE','enee/2024/3','TEMARA8RABAT','Appel d offre','electrification zone TEMARA','devis','user1','2024-02-10'),(9,'ONEE','enee/2024/17','Rabat','Bon de commande','RAS','devis','user1','2024-03-04'),(10,'MAROC TELECOM','WAR 2','WAR 2','Appel d offre','WAR 2','devis','user1','2024-03-18'),(11,'MAROC TELECOM','foruser2','foruser2','Partenareat','foruser2','devis','user2','2024-03-18'),(12,'ONEE','','','Bon de commande','','devis','user1','2024-03-18'),(13,'ONEE','','','Appel d offre','','devis','user1','2024-03-18'),(14,'MAROC TELECOM','foruser2','foruser2','Contrat cadre','foruser2','commande','user1','2024-03-18'),(15,'MAROC TELECOM','foruser2','foruser2','Bon de commande','foruser2','commande','user2','2024-03-18'),(16,'MAROC TELECOM','foruser2 again modified','foruser2 again modified','Contrat cadre','foruser2 again modified','commande','user2','2024-03-18'),(17,'MAROC TELECOM','foruser1 again','foruser1 again','Contrat cadre','foruser1 again','devis','user2','2024-03-18'),(18,'MAROC TELECOM','today confirmation','today confirmation','Contrat cadre','today confirmation','commande','user2','2024-03-19'),(19,'MAROC TELECOM','today confirmation again 2','today confirmation again 2','Partenareat','today confirmationagain 2','commande','user2','2024-03-19'),(20,'MAROC TELECOM','today confirmation again','today confirmation again','Appel d offre','today confirmationagain','devis','user1','2024-03-21'),(21,'MAROC TELECOM','testing_selected_purshing','testing_selected_purshing','Partenareat','testing_selected_purshing','devis','user1','2024-03-21'),(22,'MAROC TELECOM','testing_selected_purshing','testing_selected_purshing','Appel d offre','testing_','devis','user1','2024-03-21'),(23,'MAROC TELECOM','','manhaten','Bon de commande','','devis','user1','2024-03-21'),(24,'MAROC TELECOM','','','Bon de commande','','devis','user1','2024-03-21'),(25,'MAROC TELECOM','','foruser2','Contrat cadre','foruser2','devis','user1','2024-03-21'),(26,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(27,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(28,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(29,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(30,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(31,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(32,'ONEE','enee/2024/3','TEMARA8RABAT','Appel d offre','electrification zone TEMARA','devis','user1','2024-03-21'),(33,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(34,'ONEE','','','Appel d offre','','devis','user1','2024-03-21'),(35,'ONEE','enee/2024/3','Azilal','Appel d offre','electrification zone rural azilal tranche1','devis','user1','2024-03-22'),(36,'ONEE','enee/2024/3','Azilal','Appel d offre','electrification zone rural azilal tranche1','devis','user1','2024-03-22'),(37,'ONEE','enee/2024/3','Azilal','Appel d offre','electrification zone rural azilal tranche1','devis','user1','2024-03-22'),(38,'ONEE','','','Appel d offre','','devis','user1','2024-03-22'),(39,'MAROC TELECOM','selected_articles','selected_articles','Bon de commande','selected_articles','commande','user1','2024-03-22'),(40,'ONEE','','','Appel d offre','','devis','user1','2024-03-22'),(41,'','','','','','','','0000-00-00'),(42,'ONEE','','','Appel d offre','','devis','user1','2024-03-22'),(43,'MAROC TELECOM','for43','for43','Partenareat','for43','commande','user1','2024-03-22'),(44,'MAROC TELECOM','for44','for44','Contrat cadre','for44','commande','user1','2024-03-23'),(45,'ONEE','for45','for45','Appel d offre','for45','commande','user1','2024-03-23'),(46,'ONEE','for46','for46','Appel d offre','for46','devis','user1','2024-03-23'),(47,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(48,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(49,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(50,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(51,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(52,'ONEE','','','Appel d offre','','devis','user1','2024-03-23'),(53,'MAROC TELECOM','for49','for49','Bon de commande','for49','commande','user1','2024-03-23'),(54,'ONEE','for50','for50','Contrat cadre','for50','commande','user1','2024-03-23'),(55,'ONEE','testing_phase_1','testing_phase_1','Contrat cadre','testing_phase_1','commande','user1','2024-03-23'),(56,'ONEE','testing_phase_2','testing_phase_2','Appel d offre','testing_phase_2','commande','user1','2024-03-23'),(57,'ONEE','testing_phase_3','testing_phase_3','Bon de commande','testing_phase_3','devis','user1','2024-03-23'),(58,'ONEE','testing_phase_button_disabling_1','testing_phase_button_disabling_1','Contrat cadre','testing_phase_button_disabling_1','commande','user1','2024-03-23'),(59,'MAROC TELECOM','testing_phase_button_disabling_2','testing_phase_button_disabling_2','Bon de commande','testing_phase_button_disabling_2','commande','user1','2024-03-23'),(60,'ONEE','testing_phase_button_disabling_3','testing_phase_button_disabling_3','Appel d offre','testing_phase_button_disabling_3','devis','user1','2024-03-23'),(61,'ONEE','testing_phase_button_disabling_3','testing_phase_button_disabling_3','Appel d offre','testing_phase_button_disabling_3','devis','user1','2024-03-23'),(62,'MAROC TELECOM','session_needs_to_stay','session_needs_to_stay','Partenareat','session_needs_to_stay','commande','user1','2024-03-23'),(63,'ONEE','session_needs_to_stay_2','session_needs_to_stay_2','Appel d offre','session_needs_to_stay_2','commande','user1','2024-03-23'),(64,'ONEE','session_needs_to_stay_3','session_needs_to_stay_3','Partenareat','session_needs_to_stay_3','commande','user1','2024-03-23'),(65,'MAROC TELECOM','thelastNormalInser','thelastNormalInser','Contrat cadre','thelastNormalInser','commande','user2','2024-03-23'),(66,'MAROC TELECOM','integration_test_2','integration_test_2','Contrat cadre','integration_test_2','commande','user1','2024-03-24'),(67,'MAROC TELECOM','integration_test_3','integration_test_3','Bon de commande','integration_test_3','devis','user1','2024-03-24'),(68,'MAROC TELECOM','integration_test_4','integration_test_4','Contrat cadre','integration_test_4','commande','user1','2024-03-24'),(69,'MAROC TELECOM','integration_test_5','integration_test_5','Contrat cadre','integration_test_5','commande','user1','2024-03-24'),(70,'ONEE','','','Appel d offre','','devis','user1','2024-03-24'),(71,'ONEE','integration_test_5','integration_test_5','Appel d offre','integration_test_5','commande','user1','2024-03-24'),(72,'MAROC TELECOM','integration_test_6','integration_test_6','Contrat cadre','integration_test_6','commande','user1','2024-03-24'),(73,'ONEE','integration_test_7','integration_test_7','Appel d offre','integration_test_7','commande','user1','2024-03-24'),(74,'ONEE','the_opposet_effect','the_opposet_effect','Appel d offre','the_opposet_effect','commande','user1','2024-03-24'),(75,'MAROC TELECOM','the_opposet_effect_2','the_opposet_effect_2','Bon de commande','the_opposet_effect_2','commande','user1','2024-03-24'),(76,'MAROC TELECOM','the_opposet_effect_2','the_opposet_effect_2','Contrat cadre','the_opposet_effect_2','commande','user1','2024-03-24'),(77,'ONEE','foruser2','foruser2','Appel d offre','foruser2','commande','user1','2024-03-24'),(78,'ONEE','foruser2','foruser2','Appel d offre','foruser2','devis','user1','2024-03-24'),(79,'ONEE','','','Appel d offre','','devis','user1','2024-03-24'),(80,'ONEE','','','Appel d offre','','devis','user1','2024-03-24'),(81,'ONEE','','','Appel d offre','','devis','user1','2024-03-24'),(82,'ONEE','tester','tester','Appel d offre','tester','commande','user1','2024-03-25'),(83,'MAROC TELECOM','lkhamis_againagain','foruser2','Contrat cadre','lkhamis_againagain','commande','user1','2024-03-25'),(84,'ONEE','forTestin','forTestin','Appel d offre','forTestin','commande','user1','2024-03-25'),(85,'MAROC TELECOM','forTestin','forTestin','Contrat cadre','forTestin','commande','user1','2024-03-25'),(86,'MAROC TELECOM','forTestin','forTestin','Contrat cadre','forTestin','commande','user1','2024-03-25'),(87,'MAROC TELECOM','forTestin','forTestin','Appel d offre','forTestin','commande','user1','2024-03-25'),(88,'MAROC TELECOM','the_final_tests','the_final_tests','Contrat cadre','the_final_tests','commande','user1','2024-03-25'),(89,'MAROC TELECOM','the_final_tests_1','the_final_tests_1','Contrat cadre','the_final_tests_1','devis','user1','2024-03-25'),(90,'ONEE','','','Appel d offre','','devis','user1','2024-03-25'),(91,'MAROC TELECOM','the_final_tests_1','the_final_tests_1','Bon de commande','the_final_tests_1','commande','user1','2024-03-25'),(92,'MAROC TELECOM','the_final_tests_3','the_final_tests_3','Bon de commande','the_final_tests_3','commande','user2','2024-03-25'),(93,'ONEE','the_final_tests_4','the_final_tests_4','Appel d offre','the_final_tests_4','commande','user2','2024-03-25'),(94,'MAROC TELECOM','delivery_day_4','delivery_day_4','Bon de commande','delivery_day_4','commande','user2','2024-03-26'),(95,'ONEE','delivery_day','delivery_day','Appel d offre','delivery_day','devis','user2','2024-03-26'),(96,'MAROC TELECOM','delivery_day_modified','delivery_day_modified','Partenareat','delivery_day_modified','devis','user2','2024-03-26'),(97,'MAROC TELECOM','generating_report_1_modified','generating_report_1_modified','Contrat cadre','generating_report_1_modified','devis','user2','2024-03-26'),(98,'MAROC TELECOM','generating_report_1','generating_report_1','Bon de commande','generating_report_1','commande','user1','2024-03-26'),(99,'ONEE','','','Bon de commande','','devis','user1','2024-03-27'),(100,'MAROC TELECOM','generating_report_1','generating_report_1','Bon de commande','generating_report_1','commande','user1','2024-03-27'),(101,'ONEE','','','Appel d offre','','devis','user1','2024-03-28'),(102,'ONEE','','','Appel d offre','','devis','user1','2024-03-28'),(103,'ONEE','','','Appel d offre','','devis','user2','2024-03-28'),(104,'MAROC TELECOM','generating_report_1_with_history_modified','generating_report_1_with_history_modified','Partenareat','generating_report_1_with_history_modified','devis','user2','2024-03-29'),(105,'ONEE','generating_report_2_with_history','generating_report_2_with_history','Contrat cadre','generating_report_2_with_history','commande','user1','2024-03-29'),(106,'ONEE','client_1','client_1','Appel d offre','client_1','devis','user1','2024-03-29'),(107,'ONEE','client_2','client_2','Appel d offre','client_2','commande','user1','2024-03-29'),(108,'MAROC TELECOM','client_3','client_3','Bon de commande','client_3','commande','user1','2024-03-29'),(109,'MAROC TELECOM','theEnd','theEnd','Contrat cadre','theEnd','commande','user1','2024-03-30'),(110,'MAROC TELECOM','theEnd','theEnd','Bon de commande','theEnd','commande','user1','2024-03-30'),(111,'MAROC TELECOM','testing','testing','Contrat cadre','testing','commande','user2','2024-03-31'),(112,'MAROC TELECOM','testing','testing','Contrat cadre','testing','commande','user1','2024-04-16'),(113,'MAROC TELECOM','testing','testing','Bon de commande','testing','commande','user2','2024-04-16');
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente_article`
--

DROP TABLE IF EXISTS `vente_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vente_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_vente` int NOT NULL,
  `code` varchar(150) NOT NULL,
  `article` text NOT NULL,
  `unite` varchar(10) NOT NULL,
  `prix_ht` double NOT NULL,
  `quantite` double NOT NULL,
  `categorie` varchar(150) NOT NULL,
  `tva` float NOT NULL,
  `statut` varchar(50) NOT NULL,
  `user` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente_article`
--

LOCK TABLES `vente_article` WRITE;
/*!40000 ALTER TABLE `vente_article` DISABLE KEYS */;
INSERT INTO `vente_article` VALUES (2,2,'c02-01-12','Poteau béton armé classe A 12 m 300 daN','U',510,5,'',0.2,'devis','user1'),(3,2,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,12,'',0.2,'devis','user1'),(4,2,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,20,'',0.2,'devis','user1'),(5,2,'c02-01-13','Poteau béton armé classe A 12 m 500 daN','U',560,5,'',0.2,'devis','user1'),(6,3,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,10,'',0.2,'associe','user1'),(7,3,'c02-02-14','Poteau béton armé classe A 12 m 800 daN','U',3150,5,'',0.2,'associe','user1'),(8,3,'c02-02-06','Poteau béton armé classe A 9m 150 daN','U',1290,5,'',0.2,'associe','user1'),(9,3,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,5,'',0.2,'associe','user1'),(10,3,'c02-01-12','Poteau béton armé classe A 12 m 300 daN','U',510,10,'',0.2,'associe','user1'),(11,3,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,8,'',0.2,'associe','user1'),(12,3,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,10,'',0.2,'associe','user1'),(13,7,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,15,'',0.2,'associe','user1'),(14,7,'c02-02-01','Poteau béton armé classe A 8 m 150 daN','U',1130.6,15.15,'',0.2,'associe','user1'),(15,8,'c02-02-14','Poteau béton armé classe A 12 m 800 daN','U',3150,5,'',0.2,'associe','user1'),(16,8,'c02-02-14','Poteau béton armé classe A 12 m 800 daN','U',3150,5,'',0.2,'associe','user1'),(17,8,'c02-02-06','Poteau béton armé classe A 9m 150 daN','U',1290,5,'',0.2,'associe','user1'),(18,8,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,5,'',0.2,'associe','user1'),(19,8,'c02-01-12','Poteau béton armé classe A 12 m 300 daN','U',510,10,'',0.2,'associe','user1'),(20,8,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,8,'',0.2,'associe','user1'),(21,8,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,10,'',0.2,'associe','user1'),(22,8,'c02-01-15','Poteau béton armé classe A 14 m 300 daN','U',511,10,'',0.2,'associe','user1'),(23,8,'c02-01-15','Poteau béton armé classe A 15 m 300 daN','U',512,10,'',0.2,'associe','user1'),(24,8,'c02-01-15','Poteau béton armé classe A 16 m 300 daN','U',513,10,'',0.2,'associe','user1'),(25,8,'c02-01-15','Poteau béton armé classe A 17 m 300 daN','U',514,10,'',0.2,'associe','user1'),(26,8,'c02-01-15','Poteau béton armé classe A 18 m 300 daN','U',515,10,'',0.2,'associe','user1'),(27,8,'c02-01-15','Poteau béton armé classe A 19 m 300 daN','U',516,10,'',0.2,'associe','user1'),(28,8,'c02-01-15','Poteau béton armé classe A 20 m 300 daN','U',517,10,'',0.2,'associe','user1'),(29,8,'c02-01-15','Poteau béton armé classe A 21 m 300 daN','U',518,10,'',0.2,'associe','user1'),(30,8,'c02-01-15','Poteau béton armé classe A 23 m 300 daN','U',518,10,'',0.2,'associe','user1'),(31,9,'c02-01-11','Poteau béton armé classe A 12 m 200 daN','U',510,12.8,'',0.2,'associe','user1'),(32,9,'c02-01-33','Poteau béton armé classe B 14 m 1000 daN','U',610,2,'',0.2,'associe','user1'),(33,9,'c02-02-09','Poteau béton armé classe A 9 m 700 daN','U',1900,1,'',0.2,'associe','user1'),(34,10,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,7,'',0.2,'associe','user1'),(35,10,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,3,'',0.2,'associe','user1'),(36,10,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user1'),(37,10,'BFG','BIG FAT GUN','W',1500,6,'',0.4,'associe','user1'),(38,15,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,20,'unknown',0.2,'associe','user2'),(39,15,'','hot weaponary','F',210,19,'unknown',0.05,'associe','user2'),(40,16,'c02-01-33','Poteau béton armé classe B 14 m 1000 daN','U',610,70,'',0.2,'associe','user2'),(41,16,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,71,'',0.2,'associe','user2'),(42,17,'BFG','BIG FAT GUN','W',1500,4,'',0.4,'associe','user2'),(43,17,'c02-01-02','Poteau béton armé classe A 8 m 300 daN','U',380,5,'',0.2,'associe','user2'),(44,18,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user2'),(45,19,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,5,'',0.2,'associe','user2'),(46,20,'c02-01-02','Poteau béton armé classe A 8 m 300 daN','U',380,5,'',0.2,'associe','user1'),(47,20,'c02-02-15','Poteau béton armé classe A 13 m 300 daN','U',2150,6,'',0.2,'associe','user1'),(48,20,'BFG','BIG FAT GUN','W',1500,7,'',0.4,'associe','user1'),(49,21,'BFG','BIG FAT GUN','W',1500,1,'',0.4,'associe','user1'),(50,21,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,2,'',0.2,'associe','user1'),(51,21,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,3,'',0.2,'associe','user1'),(52,39,'BFG','BIG FAT GUN','W',1500,3,'',0.4,'associe','user1'),(53,42,'BFG','BIG FAT GUN','W',1500,4,'',0.4,'associe','user1'),(54,39,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user1'),(55,42,'BFG','BIG FAT GUN','W',1500,6,'',0.4,'associe','user1'),(56,42,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,5,'',0.2,'associe','user1'),(57,42,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,6,'',0.2,'associe','user1'),(58,43,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user1'),(59,42,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,5,'',0.2,'associe','user1'),(60,43,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,6,'',0.2,'associe','user1'),(61,42,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,7,'',0.2,'associe','user1'),(62,45,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,44,'',0.2,'associe','user1'),(63,44,'BFG','BIG FAT GUN','W',1500,41,'',0.4,'associe','user1'),(64,44,'BFG','BIG FAT GUN','W',1500,40,'',0.4,'associe','user1'),(65,44,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,39,'',0.2,'associe','user1'),(66,46,'BFG','BIG FAT GUN','W',1500,15,'',0.4,'associe','user1'),(67,46,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,16,'',0.2,'associe','user1'),(68,46,'BFG','BIG FAT GUN','W',1500,14,'',0.4,'associe','user1'),(69,47,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,19,'',0.2,'associe','user1'),(70,47,'BFG','BIG FAT GUN','W',1500,15,'',0.4,'associe','user1'),(71,47,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,16,'',0.2,'associe','user1'),(72,47,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,17,'',0.2,'associe','user1'),(73,53,'BFG','BIG FAT GUN','W',1500,99,'',0.4,'associe','user1'),(74,52,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,98,'',0.2,'associe','user1'),(75,54,'BFG','BIG FAT GUN','W',1500,1,'',0.4,'associe','user1'),(76,54,'c01-09-01','','',0,10,'',0,'associe','user1'),(77,54,'c02-01-11','Poteau béton armé classe A 12 m 200 daN','U',510,5,'',0.2,'associe','user1'),(78,55,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user1'),(79,55,'c02-02-15','Poteau béton armé classe A 13 m 300 daN','U',2150,6,'',0.2,'associe','user1'),(80,55,'c02-02-16','Poteau béton armé classe A 13 m 500 daN','U',2800,7,'',0.2,'associe','user1'),(81,56,'BFG','BIG FAT GUN','W',1500,20,'',0.4,'associe','user1'),(82,56,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,21,'',0.2,'associe','user1'),(83,56,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,22,'',0.2,'associe','user1'),(84,57,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,15,'',0.2,'associe','user1'),(85,57,'BFG','BIG FAT GUN','W',1500,16,'',0.4,'associe','user1'),(86,58,'BFG','BIG FAT GUN','W',1500,12,'',0.4,'associe','user1'),(87,59,'c02-01-09','Poteau béton armé classe A 9 m 700 daN','U',410,4,'',0.2,'associe','user1'),(88,59,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,85,'',0.2,'associe','user1'),(89,59,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,81,'',0.2,'associe','user1'),(90,60,'BFG','BIG FAT GUN','W',1500,12,'',0.4,'associe','user1'),(91,61,'BFG','BIG FAT GUN','W',1500,13,'',0.4,'associe','user1'),(92,61,'c02-01-03','Poteau béton armé classe A 8 m 500 daN','U',390,21,'',0.2,'associe','user1'),(93,61,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,21,'',0.2,'associe','user1'),(94,62,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,22,'',0.2,'associe','user1'),(95,63,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,23,'',0.2,'associe','user1'),(96,63,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,24,'',0.2,'associe','user1'),(97,64,'BFG','BIG FAT GUN','W',1500,15,'',0.4,'associe','user1'),(98,64,'c02-01-13','Poteau béton armé classe A 12 m 500 daN','U',560,16,'',0.2,'associe','user1'),(99,64,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,17,'',0.2,'associe','user1'),(100,64,'c02-01-11','Poteau béton armé classe A 12 m 200 daN','U',510,5,'',0.2,'associe','user1'),(101,65,'BFG','BIG FAT GUN','W',1500,12,'',0.4,'associe','user2'),(115,66,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,4,'',0.2,'associe','user1'),(116,66,'BFG','BIG FAT GUN','W',1500,5,'',0.4,'associe','user1'),(117,66,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,7,'',0.2,'associe','user1'),(118,67,'intgration_test','$_SESSION[\'procced_id\']','W',500,19,'',0.3,'associe','user1'),(119,68,'test 3','test 3','W',500,19,'',0.3,'associe','user1'),(120,69,'test 3','test 3','W',500,19,'',0.3,'associe','user1'),(121,69,'test 3','test 3','W',500,19,'',0.3,'associe','user1'),(122,69,'test 3','test 3','W',500,19,'',0.3,'associe','user1'),(124,70,'BFG','BIG FAT GUN','W',1500,2,'',0.4,'associe','user1'),(125,70,'BFG','BIG FAT GUN','W',1500,3,'',0.4,'associe','user1'),(126,70,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,4,'',0.2,'associe','user1'),(127,71,'1','1','W',500,19,'',0.3,'associe','user1'),(128,71,'BFG','BIG FAT GUN','W',1500,20,'',0.4,'associe','user1'),(129,71,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,21,'',0.2,'associe','user1'),(130,72,'BFG','BIG FAT GUN','W',1500,1,'',0.4,'associe','user1'),(131,72,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,2,'',0.2,'associe','user1'),(132,72,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,3,'',0.2,'associe','user1'),(133,72,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,12,'',0.2,'associe','user1'),(134,72,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,13,'',0.2,'associe','user1'),(135,72,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,11,'',0.2,'associe','user1'),(136,73,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,19,'',0.2,'associe','user1'),(137,73,'c02-02-02','Poteau béton armé classe A 8 m 300 daN','U',1330,20,'',0.2,'associe','user1'),(138,73,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,21,'',0.2,'associe','user1'),(139,73,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,10,'',0.2,'associe','user1'),(140,73,'BFG','BIG FAT GUN','W',1500,11,'',0.4,'associe','user1'),(141,73,'c02-01-11','Poteau béton armé classe A 12 m 200 daN','U',510,12,'',0.2,'associe','user1'),(142,74,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,12,'',0.2,'associe','user1'),(143,74,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,13,'',0.2,'associe','user1'),(144,74,'BFG','BIG FAT GUN','W',1500,14,'',0.4,'associe','user1'),(145,74,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,12,'',0.2,'associe','user1'),(146,74,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,13,'',0.2,'associe','user1'),(147,74,'BFG','BIG FAT GUN','W',1500,14,'',0.4,'associe','user1'),(148,74,'1','1','W',500,19,'',0.3,'associe','user1'),(149,74,'BFG','BIG FAT GUN','W',1500,12,'',0.4,'associe','user1'),(150,74,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,13,'',0.2,'associe','user1'),(151,74,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,14,'',0.2,'associe','user1'),(152,74,'1','1','W',500,19,'',0.3,'associe','user1'),(153,74,'1','1','W',500,19,'',0.3,'associe','user1'),(154,75,'BFG','BIG FAT GUN','W',1500,12,'',0.4,'associe','user1'),(155,75,'c02-01-09','Poteau béton armé classe A 9 m 700 daN','U',410,14,'',0.2,'associe','user1'),(156,76,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,15,'',0.2,'associe','user1'),(157,76,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,16,'',0.2,'associe','user1'),(158,76,'BFG','BIG FAT GUN','W',1500,14,'',0.4,'associe','user1'),(159,76,'BFG','BIG FAT GUN','W',1500,19,'',0.4,'associe','user1'),(160,77,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,15,'',0.2,'associe','user1'),(161,77,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,51,'',0.2,'associe','user1'),(162,78,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,12,'',0.2,'associe','user1'),(163,78,'BFG','BIG FAT GUN','W',1500,13,'',0.4,'associe','user1'),(164,79,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,15,'',0.2,'associe','user1'),(165,79,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,16,'',0.2,'associe','user1'),(166,79,'c02-02-02','Poteau béton armé classe A 8 m 300 daN','U',1330,54,'',0.2,'associe','user1'),(167,80,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,1,'',0.2,'associe','user1'),(168,80,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,4,'',0.2,'associe','user1'),(169,80,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,0,'',0.2,'associe','user1'),(170,81,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,4,'',0.2,'associe','user1'),(171,81,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,5,'',0.2,'associe','user1'),(172,81,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,5,'',0.2,'associe','user1'),(173,81,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,8,'',0.2,'associe','user1'),(174,81,'c01-09-01','','',0,0,'',0,'associe','user1'),(175,81,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,5,'',0.2,'associe','user1'),(176,81,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,5,'',0.2,'associe','user1'),(177,81,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,4,'',0.2,'associe','user1'),(178,82,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,12,'',0.2,'associe','user1'),(179,82,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,16,'',0.2,'associe','user1'),(180,82,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,5,'',0.2,'associe','user1'),(184,83,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,12,'',0.2,'associe','user1'),(185,83,'c02-02-17','Poteau béton armé classe A 13 m 800 daN','U',4100,15,'',0.2,'associe','user1'),(186,83,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,16,'',0.2,'associe','user1'),(187,84,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,5,'',0.2,'associe','user1'),(188,84,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,6,'',0.2,'associe','user1'),(189,85,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','',510,4,'',0.2,'associe','user1'),(190,85,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,20,'',0.2,'associe','user1'),(191,85,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,12,'',0.2,'associe','user1'),(192,86,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,15,'',0.2,'associe','user1'),(193,86,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,12,'',0.2,'associe','user1'),(194,87,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,15,'',0.2,'associe','user1'),(195,87,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,16,'',0.2,'associe','user1'),(196,88,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,12,'',0.2,'associe','user1'),(197,88,'BFG','BIG FAT GUN','W',1500,13,'',0.4,'associe','user1'),(198,88,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,14,'',0.2,'associe','user1'),(199,88,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,15,'',0.2,'associe','user1'),(200,89,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,12,'',0.2,'associe','user1'),(201,89,'BFG','BIG FAT GUN','W',1500,13,'',0.4,'associe','user1'),(202,89,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,14,'',0.2,'associe','user1'),(203,90,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,15,'',0.2,'associe','user1'),(204,90,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,13,'',0.2,'associe','user1'),(205,90,'c02-01-08','Poteau béton armé classe A 9 m 500 daN','U',390,16,'',0.2,'associe','user1'),(206,91,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,12,'',0.2,'associe','user1'),(207,91,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,14,'',0.2,'associe','user1'),(208,91,'BFG','BIG FAT GUN','W',1500,16,'',0.4,'associe','user1'),(209,92,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,15,'',0.2,'associe','user2'),(210,92,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,16,'',0.2,'associe','user2'),(211,92,'BFG','BIG FAT GUN','W',1500,17,'',0.4,'associe','user2'),(212,93,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,12,'',0.2,'associe','user2'),(213,93,'c02-01-12','Poteau béton armé classe A 12 m 300 daN','U',510,14,'',0.2,'associe','user2'),(214,93,'c02-01-03','Poteau béton armé classe A 8 m 500 daN','U',390,16,'',0.2,'associe','user2'),(215,93,'c02-01-14','Poteau béton armé classe A 12 m 800 daN','U',610,17,'',0.2,'associe','user2'),(216,94,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,5,'',0.2,'associe','user2'),(217,94,'BFG','BIG FAT GUN','W',1500,6,'',0.4,'associe','user2'),(218,94,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,7,'',0.2,'associe','user2'),(219,94,'c02-01-15','Poteau béton armé classe A 13 m 300 daN','U',510,4,'',0.2,'associe','user2'),(220,95,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,5,'',0.2,'associe','user2'),(221,96,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,12,'',0.2,'associe','user2'),(222,96,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,13,'',0.2,'associe','user2'),(223,97,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,1,'',0.2,'associe','user2'),(224,97,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,2,'',0.2,'associe','user2'),(225,97,'c02-01-16','Poteau béton armé classe A 13 m 500 daN','U',560,3,'',0.2,'associe','user2'),(226,97,'c02-01-07','Poteau béton armé classe A 9 m 300 daN','U',380,4,'',0.2,'associe','user2'),(227,97,'c02-01-06','Poteau béton armé classe A 9 m 150 daN','U',370,5,'',0.2,'associe','user2'),(228,97,'c02-01-04','Poteau béton armé classe A 8 m 700 daN','U',410,6,'',0.2,'associe','user2'),(229,97,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,7,'',0.2,'associe','user2'),(230,97,'c02-01-04','Poteau béton armé classe A 8 m 700 daN','U',410,8,'',0.2,'associe','user2'),(231,97,'c02-01-13','Poteau béton armé classe A 12 m 500 daN','U',560,9,'',0.2,'associe','user2'),(232,97,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,10,'',0.2,'associe','user2'),(233,97,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,11,'',0.2,'associe','user2'),(234,98,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,5,'',0.2,'associe','user1'),(235,98,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,6,'',0.2,'associe','user1'),(236,98,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,7,'',0.2,'associe','user1'),(237,98,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,4,'',0.2,'associe','user1'),(239,100,'c02-01-19','Poteau béton armé classe A14 m 300 daN','U',510,4,'',0.2,'associe','user1'),(240,101,'c02-02-02','Poteau béton armé classe A 8 m 300 daN','U',1330,4,'',0.2,'associe','user1'),(241,102,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,0,'',0.2,'associe','user1'),(242,103,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,7,'',0.2,'associe','user2'),(243,103,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,6,'',0.2,'associe','user2'),(244,103,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,8,'',0.2,'associe','user2'),(246,104,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,7,'',0.2,'associe','user2'),(247,104,'c02-01-24','Poteau béton arme classe B 10,50 m 700 daN','U',610,8,'',0.2,'associe','user2'),(248,105,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,5,'',0.2,'associe','user1'),(249,105,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,5,'',0.2,'associe','user1'),(250,106,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,5,'',0.2,'associe','user1'),(251,106,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,98,'',0.2,'associe','user1'),(252,106,'c02-01-21','Poteau béton armé classe A 14 m 800 daN','U',610,70,'',0.2,'associe','user1'),(253,106,'c02-01-23','Poteau béton arme classe B 10,50 m 500 daN','U',560,7,'',0.2,'associe','user1'),(254,107,'panzer','Poteau béton armé classe A 9 m 150 daN','5',5,5,'',0.5,'associe','user1'),(255,107,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,7,'',0.2,'associe','user1'),(256,107,'BFG','BIG FAT GUN','W',1500,8,'',0.4,'associe','user1'),(257,108,'c02-01-22','Poteau béton arme classe B 10,50  m 300 daN','U',510,5,'',0.2,'associe','user1'),(258,109,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,4,'',0.2,'associe','user1'),(259,109,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,5,'',0.2,'associe','user1'),(260,110,'c02-01-01','Poteau béton armé classe A 8 m 150 daN','U',370,4,'',0.2,'associe','user1'),(261,111,'c02-02-11','Poteau béton armé classe A 12 m 200 daN','U',1950,4,'',0.2,'associe','user2'),(263,112,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,4,'',0.2,'associe','user1'),(265,113,'c02-01-20','Poteau béton armé classe A14 m 500 daN','U',560,5,'',0.2,'associe','user2'),(266,113,'c02-01-17','Poteau béton armé classe A 13 m 800 daN','U',610,5,'',0.2,'associe','user2');
/*!40000 ALTER TABLE `vente_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 10:46:41
