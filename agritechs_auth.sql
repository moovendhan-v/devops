-- Adminer 4.8.1 MySQL 8.1.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `agritechs_auth`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `ban` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `fname` (`fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int NOT NULL,
  `bio` varchar(64) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `instagram` varchar(1024) DEFAULT NULL,
  `facebook` varchar(1024) DEFAULT NULL,
  `dob` date NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `auth` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2023-11-25 11:42:30
