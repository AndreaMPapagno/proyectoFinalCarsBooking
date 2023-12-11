-- Create table images

DROP TABLE IF EXISTS `0521PTC6N2db_GRUPO11`.`images`;

CREATE TABLE `0521PTC6N2db_GRUPO11`.`images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `product_id`  int NOT NULL,
   PRIMARY KEY (`id`),
   FOREIGN KEY (`product_id`) REFERENCES `0521PTC6N2db_GRUPO11`.`products`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Inserts table images

LOCK TABLES `0521PTC6N2db_GRUPO11`.`images` WRITE;
INSERT INTO `0521PTC6N2db_GRUPO11`.`images`(id, title, url, product_id) VALUES 
(1, 'up!5', 'https://coches.com/fotos_historicas/volkswagen/e-up!-2014/volkswagen_e-up-2014_r18.jpg', 1),
(2, 'up!1', 'https://coches.com/fotos_historicas/volkswagen/e-up!-2014/volkswagen_e-up-2014_r4.jpg', 1),
(3, 'up!2', 'https://i0.wp.com/1.bp.blogspot.com/-G6PAkviUGVQ/WW7LDZ-xZhI/AAAAAAACm0o/AMrLcBIMqaAavHVKFzQF_D_8K0pqcTDAwCLcBGAs/s1600/VW-Up-tsi-pepper-2018%2B%25284%2529.JPG?ssl=1', 1),
(4, 'up!3', 'https://coches.com/fotos_historicas/volkswagen/e-up!-2014/volkswagen_e-up-2014_r1.jpg', 1),
(5, 'up!4', 'https://coches.com/fotos_historicas/volkswagen/Up!-GTI-2018/volkswagen_up-gti-2018_r6.jpg', 1),
(6, 'portadaKwid', 'https://tn.com.ar/resizer/T7hCVjgyCRCx5FjcqFw8SWOpE24=/1440x0/smart/filters:format(webp)/cloudfront-us-east-1.images.arcpublishing.com/artear/JGKSSWEDYZE2PIKETBNKBEBU3Y.jpg', 2),
(7, 'kwid1', 'https://www.motoryracing.com/images/noticias/31000/31076/2.jpg',2),
(8, 'kwid2', 'https://www.motoryracing.com/images/noticias/31000/31076/4.jpg',2),
(9, 'kwid3', 'https://tn.com.ar/resizer/X11ntL6SP5T8ElfOSQtCF-oVHkE=/1440x0/smart/filters:format(webp)/cloudfront-us-east-1.images.arcpublishing.com/artear/LFWINCJHAJERXKO6FI44BDNG2A.jpg',2),
(10, 'kwid4', 'https://www.clarin.com/img/2019/06/19/9nBw7zggc_720x0__1.jpg',2),
(11, 'duster5', 'https://cdn.motor1.com/images/mgl/KL3rQ/s3/critica-renault-duster-iconic-1-3-turbo-4x4-manual.jpg',3),
(12, 'duster1', 'https://www.autoalquilados.com/galeriasproductos/media_galeria_producto_183.jpg', 3),
(13, 'duster2', 'https://www.autoalquilados.com/galeriasproductos/media_galeria_producto_185.jpg', 3),
(14, 'duster3', 'https://cdn.group.renault.com/ren/ar/modelos/nuevo-duster/ph1/renault-duster-hjd-ph1-diseno-interior-004.jpg.ximg.xsmall.jpg/76f5c3b045.jpg', 3),
(15, 'duster4', 'https://cdn.group.renault.com/ren/ar/modelos/nuevo-duster/ph1/renault-duster-hjd-ph1-diseno-interior-009.jpg.ximg.xsmall.jpg/2c7b7d1c30.jpg', 3),
(16, 'portadaTracker', 'https://www.autoalquilados.com/fotosproductos/media_tracker_o_similar_camioneta_4x2_mecanica_1627940692.jpg', 4),
(17, 'tracker1', 'https://www.autoalquilados.com/galeriasproductos/media_galeria_producto_1627943836.jpg', 4),
(18, 'tracker2', 'https://www.autoalquilados.com/galeriasproductos/media_galeria_producto_1627943869.jpg', 4),
(19, 'tracker3', 'https://autotest.com.ar/wp-content/uploads/2020/12/Chevrolet-Tracker-Premier-Turbo-AT-21.jpg', 4),
(20, 'tracker4', 'https://cdn.motor1.com/images/mgl/reX4r/s1/lanzamiento-chevrolet-tracker-2021.jpg', 4),
(21, 'portadaCamaro', 'https://acnews.blob.core.windows.net/imgnews/large/NAZ_eb0347c5d0cd4170bfa5bb17fb0c3247.jpg', 5),
(22, 'camaro1', 'https://www.chevrolet.com.ar/content/dam/chevrolet/mercosur/argentina/espanol/index/performance/2018-camaro-coupe/mov/01-images/aceleracao-6-2-novo-camaro-cupe-mov-perfomance-01.jpg?imwidth=1200', 5),
(23, 'camaro2', 'https://www.chevrolet.com.ar/content/dam/chevrolet/mercosur/master/portuguese/index/performance/2018-camaro-coupe/mov/01-images/cockpit-do-chevrolet-camaro-cupe-mov-tech-04.jpg?imwidth=960', 5),
(24, 'camaro3', 'https://es.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2023/performance/camaro/01-images/colorizer/interior/v2/23-camaro-2ss-int-ceramic-white-1.jpg?imwidth=960', 5),
(25, 'camaro4', 'https://www.chevrolet.com.ar/content/dam/chevrolet/mercosur/argentina/espanol/index/performance/2018-camaro-conversivel/mov/01-images/design-camaro-conversivel-2018-mov-safety-01.jpg?imwidth=960', 5),
(26, 'portadaR8', 'https://www.manualesdetodo.net/wp-content/uploads/2020/12/2015-r8-spyder-audi-u-1200x900.jpg', 6),
(27, 'r81', 'https://autotest.com.ar/wp-content/uploads/2022/08/Auto-Audi-R8-trasera.jpg', 6),
(28, 'r82', 'https://alquiladeportivo.es/wp-content/uploads/AUDI-R8-V10-PLUS-11-300x225.jpg', 6),
(29, 'r83', 'https://www.autobild.es/sites/autobild.es/public/styles/480x272/public/dc/fotos/Audi_R8_Spyder_02.jpg?itok=0UCnNNoz', 6),
(30, 'r84', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8J-gXPlO0D1aSiIluWWj1amm1ujnLutItWA&usqp=CAU', 6),
(31, 'portadaHilux', 'https://www.lavoz.com.ar/resizer/G-av9jq63E9emIBNvhiJT9QeGDM=/980x640/smart/cloudfront-us-east-1.images.arcpublishing.com/grupoclarin/YRGBKH7FZVBTXMO7EBWDT2MYM4.jpg', 7),
(32, 'hilux1', 'https://coches.com/fotos_historicas/toyota/Hilux/7e101336d192ffa7a8eddf7d91205663.jpg', 7),
(33, 'hilux2', 'https://coches.com/fotos_historicas/toyota/Hilux/08f5bfdfae6bfb0d3818f7f4958c7f97.jpg', 7),
(34, 'hilux3', 'https://coches.com/fotos_historicas/toyota/Hilux/638460c0158086e27632eddf76727b11.jpg', 7),
(35, 'hilux4', 'https://coches.com/fotos_historicas/toyota/Hilux/a8857d823a9409529b707e33d2b410df.jpg', 7),
(36, 'portadaWrangler', 'https://www.ddsportcar.com/vehicle_images/thumbs/13_15386724771.jpg', 8),
(37,'wrangler1', 'https://okdiario.com/img/motor/2017/12/01/jeep-wrangler-4.jpg', 8),
(38,'wrangler2', 'https://www.ddsportcar.com/vehicle_images/thumbs/13_15307903251.jpg', 8),
(39,'wrangler3', 'https://www.ddsportcar.com/vehicle_images/thumbs/13_15386724770.jpg', 8),
(40,'wrangler4', 'https://di-uploads-pod9.dealerinspire.com/nylemaxwellcdjroftaylor/uploads/2020/06/2020-Jeep-Wrangler-Interior-e1591117420514.jpg', 8);
