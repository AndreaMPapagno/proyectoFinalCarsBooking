-- Create table characteristics

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`characteristics`;
CREATE TABLE `0521PTC6N2db_GRUPO11`.`characteristics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `characteristic` varchar(50) DEFAULT NULL,
  `url_icon` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- insert table characteristics

LOCK TABLES `0521PTC6N2db_GRUPO11`.`characteristics` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`characteristics`(id, characteristic, url_icon) VALUES 
(1,'Bluetooth', 'fa-solid fa-check'),
(2, 'ABS', 'fa-solid fa-check'),
(3, 'Audio System', 'fa-solid fa-check'),
(4, 'USB', 'fa-solid fa-check'),
(5, 'GPS', 'fa-solid fa-check'),
(6, 'Central locking', 'fa-solid fa-check'),
(7, 'Cruise Control', 'fa-solid fa-check'),
(8, 'Electric windows', 'fa-solid fa-check'),
(9, 'Sensor', 'fa-solid fa-check'),
(10, 'Slicing roof', 'fa-solid fa-check'),
(11, 'Leather Seats', 'fa-solid fa-check'),
(12, 'Navigation System', 'fa-solid fa-check');

UNLOCK TABLES;