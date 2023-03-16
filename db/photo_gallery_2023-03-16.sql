# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.31)
# Database: photo_gallery
# Generation Time: 2023-03-16 01:45:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `photograph_id` int DEFAULT NULL,
  `created` date DEFAULT NULL,
  `author` int DEFAULT NULL,
  `body` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table photographs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photographs`;

CREATE TABLE `photographs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `caption` varchar(512) DEFAULT NULL,
  `filename` varchar(256) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `photographs` WRITE;
/*!40000 ALTER TABLE `photographs` DISABLE KEYS */;

INSERT INTO `photographs` (`id`, `caption`, `filename`, `type`, `size`)
VALUES
	(1,'bamboo','bamboo.jpg','jpg',455568),
	(2,'buddhas','buddhas.jpg','jpg',455568),
	(3,'flowers','flowers.jpg','jpg',455568),
	(4,'roof','roof.jpg','jpg',455568),
	(5,'wall','wall.jpg','jpg',455568),
	(6,'wood','wood.jpg','jpg',455568);

/*!40000 ALTER TABLE `photographs` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
