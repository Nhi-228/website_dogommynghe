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


-- Dumping database structure for thucong_store
CREATE DATABASE IF NOT EXISTS `thucong_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `thucong_store`;

-- Dumping structure for table thucong_store.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thucong_store.category: ~0 rows (approximately)
INSERT INTO `category` (`category_id`, `category_name`, `description`, `created_at`) VALUES
	(1, 'tranh', '', '2025-11-06 03:58:00');

-- Dumping structure for table thucong_store.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(12,2) NOT NULL,
  `stock` int DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive') DEFAULT 'active',
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thucong_store.product: ~1 rows (approximately)
INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`, `status`) VALUES
	(1, NULL, 'Test', 'Mô tả', 100000.00, 5, 'images/products/default.png', '2025-11-06 05:41:19', '2025-11-06 05:41:19', 'active'),
	(2, 1, 'tranh đông hồ ', 'dan gian', 2000000.00, 10, 'images/products/default.png', '2025-11-06 06:06:38', '2025-11-06 06:06:38', 'active'),
	(3, 1, 'tranh đông hồ ', 'dân gian', 2000000.00, 10, 'images/productImages/default.png', '2025-11-06 06:15:34', '2025-11-06 06:15:34', 'active'),
	(4, 1, 'tranh đông hồ ', 'ddddd', 2000000.00, 10, 'uploaded_images/01_gomsu.jpg', '2025-11-06 07:00:50', '2025-11-06 07:00:50', 'active');

-- Dumping structure for table thucong_store.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `verified` tinyint(1) DEFAULT '0',
  `blocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thucong_store.users: ~2 rows (approximately)
INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `full_name`, `phone`, `address`, `role`, `created_at`, `updated_at`, `is_active`, `verified`, `blocked`) VALUES
	(1, 'binh nhi', 'binhnhi5128@gmail.com', 'Binhi@0510', 'nguyen thi binh nhi', '0981067344', 'Bắc Ninh', 'user', '2025-11-04 08:22:27', '2025-11-04 08:22:27', 1, 0, 0),
	(2, 'dam minh', 'xuanminh@gmail.com', 'Minh@1234', 'dam xuan minh', '0987234567', 'ha noi', 'user', '2025-11-04 09:57:33', '2025-11-04 09:57:33', 1, 0, 0),
	(3, 'admin', 'admin@gmail.com', '123456', 'Quản trị viên', '0900000000', 'Hà Nội', 'admin', '2025-11-06 02:28:26', '2025-11-06 02:28:26', 1, 0, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
