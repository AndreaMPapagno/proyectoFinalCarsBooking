-- create table cities

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`cities`;

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `0521PTC6N2db_GRUPO11`.`cities`
    ADD COLUMN map_location varchar(500);

-- insert table cities

LOCK TABLES `0521PTC6N2db_GRUPO11`.`cities` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`cities`(id, city, province, country) VALUES (1, 'Buenos Aires', 'CABA', 'Argentina'),
(2, 'Córdoba', 'Córdoba', 'Argentina'),
(3, 'Mendoza', 'Mendoza', 'Argentina'),
(4, 'Rosario', 'Santa Fe', 'Argentina');

INSERT INTO `0521PTC6N2db_GRUPO11`.`cities`(map_location) VALUES
('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105073.26483389552!2d-58.503338741128935!3d-34.61580373594947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca3b4ef90cbd%3A0xa0b3812e88e88e87!2sBuenos%20Aires%2C%20CABA!5e0!3m2!1ses!2sar!4v1668705611538!5m2!1ses!2sar'),
('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d108977.0603892232!2d-64.26438438479792!3d-31.399434162263262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9432985f478f5b69%3A0xb0a24f9a5366b092!2zQ8OzcmRvYmE!5e0!3m2!1ses!2sar!4v1668705645681!5m2!1ses!2sar'),
('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26804.48763909044!2d-68.87602871664502!3d-32.883333980142616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e093ec45179bf%3A0x205a78f6d20efa3a!2sMendoza%2C%20Capital%2C%20Mendoza!5e0!3m2!1ses!2sar!4v1668705456173!5m2!1ses!2sar'),
('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d107134.56934209526!2d-60.766679840576316!3d-32.95218976016963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95b6539335d7d75b%3A0xec4086e90258a557!2sRosario%2C%20Santa%20Fe!5e0!3m2!1ses!2sar!4v1668705587082!5m2!1ses!2sar');

UNLOCK TABLES;
