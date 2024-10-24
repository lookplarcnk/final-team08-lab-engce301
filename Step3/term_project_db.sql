-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for term_project_db
CREATE DATABASE IF NOT EXISTS `term_project_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `term_project_db`;

-- Dumping structure for table term_project_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(30) DEFAULT NULL,
  `name_title` varchar(30) DEFAULT NULL,
  `name_first` varchar(100) DEFAULT NULL,
  `name_last` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `md5` varchar(100) DEFAULT NULL,
  `sha1` varchar(100) DEFAULT NULL,
  `sha256` varchar(100) DEFAULT NULL,
  `picture_large` varchar(100) DEFAULT NULL,
  `picture_medium` varchar(100) DEFAULT NULL,
  `picture_thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table term_project_db.users: ~4 rows (approximately)
REPLACE INTO `users` (`id`, `gender`, `name_title`, `name_first`, `name_last`, `country`, `email`, `dob`, `uuid`, `username`, `password`, `md5`, `sha1`, `sha256`, `picture_large`, `picture_medium`, `picture_thumbnail`) VALUES
	(1, 'female', 'Mrs', 'Pia', 'Fossdal', 'Norway', 'pia.fossdal@example.com', NULL, NULL, 'goldenwolf280', 'preston', NULL, NULL, NULL, 'https://randomuser.me/api/portraits/women/51.jpg', 'https://randomuser.me/api/portraits/med/women/51.jpg', 'https://randomuser.me/api/portraits/thumb/women/51.jpg'),
	(50, 'female', 'Miss', 'Ratchaneekorn', 'Chuadee', 'Thailand', 'ratchaneekorn.c2000@gmail.com', NULL, NULL, 'lookpla1234', 'pass1234', NULL, NULL, NULL, 'https://randomuser.me/api/portraits/men/1.jpg', 'https://randomuser.me/api/portraits/med/men/1.jpg', 'https://randomuser.me/api/portraits/thumb/men/1.jpg'),
	(51, 'male', 'Mr', 'Kaweewat', 'Kansupattanakul', 'Thailand', 'kaweewat@example.com', NULL, NULL, 'kaweewat1234', 'kawee1234', NULL, NULL, NULL, 'https://randomuser.me/api/portraits/men/1.jpg', 'https://randomuser.me/api/portraits/med/men/1.jpg', 'https://randomuser.me/api/portraits/thumb/men/1.jpg'),
	(52, 'male', 'Mr', 'Aphinan', 'Hongpong', 'Thailand', 'aphinan@example.com', NULL, NULL, 'aphinan1234', 'aphinan1234', NULL, NULL, NULL, 'https://randomuser.me/api/portraits/men/1.jpg', 'https://randomuser.me/api/portraits/med/men/1.jpg', 'https://randomuser.me/api/portraits/thumb/men/1.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
