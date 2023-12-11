-- Create table users

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`users`;
CREATE TABLE `0521PTC6N2db_GRUPO11`.`users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `0521PTC6N2db_GRUPO11`.`users`
    ADD COLUMN id_role int NOT NULL,
    ADD CONSTRAINT `fk_id_role` FOREIGN KEY (id_role)
        REFERENCES `0521PTC6N2db_GRUPO11`.`roles` (id);

-- Inserts table users
LOCK TABLES `0521PTC6N2db_GRUPO11`.`users` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`users`(id, name, lastname, email, password, idRole) VALUES 
();

UNLOCK TABLES;