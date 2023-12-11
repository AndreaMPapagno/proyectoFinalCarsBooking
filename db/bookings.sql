-- Create table bookings

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`bookings`;
CREATE TABLE `0521PTC6N2db_GRUPO11`.`bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `startHour` time DEFAULT NULL,
  `startDate` date NOT NULL,
  `finalDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `0521PTC6N2db_GRUPO11`.`bookings`
    ADD COLUMN product_id int NOT NULL,
    ADD CONSTRAINT `fk_product_id` FOREIGN KEY (product_id)
        REFERENCES `0521PTC6N2db_GRUPO11`.`products` (id);
ALTER TABLE `0521PTC6N2db_GRUPO11`.`bookings`
    ADD COLUMN user_id int NOT NULL,
    ADD CONSTRAINT `fk_user_id` FOREIGN KEY (user_id)
        REFERENCES `0521PTC6N2db_GRUPO11`.`users` (id);