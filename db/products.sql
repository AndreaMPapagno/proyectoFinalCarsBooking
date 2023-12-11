-- Create table products
CREATE TABLE `0521PTC6N2db_GRUPO11`.`products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `description`  varchar(100) DEFAULT NULL,
  `city_id` int NOT NULL,
  `category_id` int NOT NULL,
  `patente` varchar(50) DEFAULT NULL, 
  `portada_url` varchar(500) DEFAULT NULL,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`city_id`) REFERENCES `0521PTC6N2db_GRUPO11`.`cities`(`id`),
   FOREIGN KEY (`category_id`) REFERENCES `0521PTC6N2db_GRUPO11`.`categories`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Add columns
ALTER TABLE `0521PTC6N2db_GRUPO11`.`products` 
ADD COLUMN `rules` VARCHAR(500) NULL DEFAULT NULL AFTER `map_location_product`,
ADD COLUMN `insurance` VARCHAR(500) NULL DEFAULT NULL AFTER `rules`,
ADD COLUMN `cancellation` VARCHAR(500) NULL AFTER `insurance`;

-- Updates
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '4');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '1');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '2');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '3');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '7');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'PLUS COVER - Cobertura que reduce 100% la franquicia por daños de colisión' WHERE (`id` = '8');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'FULL COVER - Reduce 100% la franquicia por daños de colisión y vuelco' WHERE (`id` = '5');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `insurance` = 'FULL COVER - Reduce 100% la franquicia por daños de colisión y vuelco' WHERE (`id` = '6');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '1');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '2');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '3');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '4');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '5');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '6');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '7');
UPDATE `0521PTC6N2db_GRUPO11`.`products` SET `cancellation` = 'Ante una cancelación o no show de la reserva pre pagada online, se retendrá un 4% + IVA de la misma en concepto de gastos administrativos y se aplicará un cargo por cancelación.' WHERE (`id` = '8');








-- insert para tabla products

LOCK TABLES `0521PTC6N2db_GRUPO11`.`products` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`products` VALUES 
(1, 'Volkswagen', 'Up', 'Compacto de 3 puertas. Caja Manual. Capacidad: 2 personas. Combustible: Eléctrico.', 1, 1, 'AA123AB', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-up.jpg'),
(2, 'Renault', 'Kwid', 'Compacto de 5 puertas con detalles de SUV. Caja: Automática. Capacidad: 4 personas. Combustible: Nafta.', 2, 1, 'AA234AC', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-kwid.jpg'),
(3, 'Renault', 'Duster', 'SUV de 5 puertas con gran capacidad de guardado. Caja: Automática. Capacidad: 5 personas. Combustible: Nafta', 3, 2, 'AA345AD', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-duster.jpg'),
(4, 'Chevrolet', 'Tracker', 'SUV de 5 puertas compacta. Caja: Manual. Capacidad: 5 personas. Combustible: Nafta.', 4, 2, 'AA456AE', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-4.jpg'),
(5, 'Chevrolet', 'Camaro', 'Deportivo de 2 puertas. Caja: Automática. Capacidad: 2 personas. Combustible: Nafta', 1, 4,'A171TLK', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-camaro.jpg'),
(6, 'Audi', 'R8', 'Deportivo de 2 puertas. Caja: Manual. Capacidad: 2 personas. Combustible: Nafta.', 2, 4, 'GI009CE', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-r8.jpg'),
(7, 'Toyota', 'Hilux', 'Camioneta 4X4. Caja: Manual. Capacidad: 5 personas. Combustible: Diesel.', 3, 3, 'ED032UA','https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-hilux.jpg'),
(8, 'Jeep', 'Wrangler', 'Jeep 4X4. Caja: Automática. Capacidad: 5 personas. Combustible: Diesel', 4, 3, 'NA036LU', 'https://c6-g11-s3-images.s3.us-east-2.amazonaws.com/images/portada-wrangler.jpg');

UNLOCK TABLES;