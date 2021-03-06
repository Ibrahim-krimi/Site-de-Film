-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: mysql.info.unicaen.fr    Database: 22010400_bd
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.11-MariaDB-1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `name` varchar(40) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `statut` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('rahmani','faical','$2y$10$PRnznDXwFy6oNs1kkhh67OoxKvC8QI3L3WV2h2PKyeGfF69CwVPa2','admin'),('ikrimi','ibrahim','$2y$10$W6DB7jF7Xfkf64QHVPJRAueIbclTQBnsLLt6fLtaB2A/C7ihpzNgm','admin'),('lecarpentier','lecarpentier','$2y$10$.FKkAMLbbi3tCWzbHqYaS.W2zjo39A4yQprRyAu8vaznASWERCLmm','user'),('vanier','vanier','$2y$10$rK.ODeYj2wADWg.phd2KaOoPX4IDJB.ixlhneLNOzCBrBiyTOWKBS','user');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `director` varchar(40) DEFAULT NULL,
  `release_year` int(4) DEFAULT NULL,
  `genre` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `accounts` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (28,'Inception','Christopher Nolan',2010,'Action/SF','Dom Cobb est un voleur exp??riment?? dans l\'art p??rilleux de `l\'extraction\' : sa sp??cialit?? consiste ?? s\'approprier les secrets les plus pr??cieux d\'un individu, enfouis au plus profond de son subconscient, pendant qu\'il r??ve et que son esprit est particuli??rement vuln??rable. Tr??s recherch?? pour ses talents dans l\'univers trouble de l\'espionnage industriel, Cobb est aussi devenu un fugitif traqu?? dans le monde entier. Cependant, une ultime mission pourrait lui permettre de retrouver sa vie d\'avant.','1636758147912AErFSBHL._AC_SY550_.jpg','ibrahim'),(29,'The Walk','Robert Zemeckis',2015,'Aventure/Drame','Au d??but des ann??es 1970, le funambule Philippe Petit est connu pour avoir parcouru de longues distances sur un fil tendu au-dessus du vide. Il l\'a d??j?? fait ?? Notre-Dame de Paris, ou encore sur le Harbour Bridge de Sydney. En 1974, il se penche sur un nouveau projet encore plus fou. Il va tenter de r??aliser son r??ve : rejoindre sur un fil les deux tours du World Trade Center de New York, hautes de plus de 410 m??tres.','163675834691CSnIKKJoL._AC_SY445_.jpg','ibrahim'),(30,'Unknown','Jaume Collet-Serra',2011,'Thriller/Myst??re','Alors qu\'il se trouve ?? Berlin pour donner une conf??rence, le docteur Martin Harris est victime d\'un grave accident de taxi. Il tombe dans le coma et se r??veille plusieurs jours plus tard, ?? l\'h??pital. Sa vie a alors bascul??. Personne, pas m??me sa propre femme, Elizabeth, ne le reconna??t. Il d??couvre bient??t qu\'un homme a usurp?? son identit?? et qu\'il cherche ?? le tuer. Les autorit??s refusent de l\'??couter et Martin se retrouve seul, ext??nu?? et en cavale.','1636758705516c62y7DSL._AC_SY445_.jpg','faical'),(31,'Troy','Wolfgang Petersen',2004,'Guerre/Aventure','Dans la Gr??ce antique, l\'enl??vement d\'H??l??ne, reine de Sparte, par Paris, prince de Troie, est une insulte que le roi M??n??las ne peut supporter. L\'honneur familial ??tant en jeu, Agamemnon, fr??re de M??n??las et puissant roi de Myc??nes, r??unit toutes les arm??es grecques afin de faire sortir H??l??ne de Troie. L\'issue de la guerre de Troie d??pendra notamment d\'un homme, Achille. Arrogant, rebelle, et r??put?? invicible, celui-ci n\'a d\'attache pour rien ni personne si ce n\'est sa propre gloire.','1636758884https _pictures.webp','faical'),(32,'Interstellar','Christopher Nolan',2014,'SF/Aventure ','Dans un proche futur, la Terre est devenue hostile pour l\'homme. Les temp??tes de sable sont fr??quentes et il n\'y a plus que le ma??s qui peut ??tre cultiv??, en raison d\'un sol trop aride. Cooper est un pilote, recycl?? en agriculteur, qui vit avec son fils et sa fille dans la ferme familiale.','1636759382158828.jpg','faical');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-14 23:24:54
