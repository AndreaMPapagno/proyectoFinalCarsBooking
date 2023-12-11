-- Create table categories

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`categories`;
CREATE TABLE `0521PTC6N2db_GRUPO11`.`categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  ALTER TABLE `0521PTC6N2db_GRUPO11`.`categories`
    DROP COLUMN `price`;
 ALTER TABLE `0521PTC6N2db_GRUPO11`.`categories`
    ADD COLUMN `price` double; 
update `0521PTC6N2db_GRUPO11`.`categories`
set price = 15000.0
where id = 1;
update `0521PTC6N2db_GRUPO11`.`categories`
set price = 20000.0
where id = 2;
update `0521PTC6N2db_GRUPO11`.`categories`
set price = 25000.0
where id = 3;
update `0521PTC6N2db_GRUPO11`.`categories`
set price = 30000.0
where id = 4;

-- Inserts table categories

LOCK TABLES `0521PTC6N2db_GRUPO11`.`categories` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`categories`(id, category, description, img, price) VALUES (1,'Classic','Ideales para pasear por la ciudad o si estas en viaje de negocios','https://images.unsplash.com/photo-1586143117324-4eee90b9ca2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=866&q=80','15000.0'),
(2,'Familiar','Ideal para las vacaciones y recorrer los lugares que quieras','https://images.unsplash.com/photo-1606611013016-969c19ba27bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80','20000.0'),
(3,'Aventura','Si te gustan los desafios, aca encontras tu auto ideal','https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80','25000.0'),
(4,'Lujosos','Ideal para tirar facha','https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1190&q=80','30000.0');

UNLOCK TABLES;

