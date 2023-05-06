-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce_cart
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'New Arrival Female Shoes','Female Shoes',150000,'female-shoes1.jpg'),(2,'High heels','Female Shoes',105000,'female-shoes2.jpg'),(3,'Open shoes','Female Shoes',60000,'female-shoes3.jpg'),(4,'Female boots','Female Shoes',160000,'female-shoes4.jpg'),(5,'Tote bag','Ladies Bags',58000,'ladies-bag1.jpg'),(6,'Celine','Ladies Bags',130000,'ladies-bag2.jpg'),(7,'Satchel','Ladies Bags',70000,'ladies-bag3.jpg'),(8,'Hobo bag','Ladies Bags',65000,'ladies-bag4.jpg'),(9,'sweat suit','Mens Clothes',180000,'mens-clothes1.jpg'),(10,'Designer Jacket','Mens Clothes',50000,'mens-clothes2.jpg'),(11,'Cool Shirt','Mens Clothes',25000,'mens-clothes3.jpg'),(12,'Dark Jacket','Mens Clothes',80000,'mens-clothes4.jpg'),(13,'Todds','Mens Shoes',150000,'men-shoes1.jpg'),(14,'Gentle Spree','Mens Shoes',260000,'men-shoes2.jpg'),(15,'Nike Exclusive','Mens Shoes',165000,'men-shoes3.jpg'),(16,'Nike Sport','Mens Shoes',180000,'men-shoes4.jpg'),(17,'Jaeger‑LeCoultre','Mens Watch',760000,'men-watch1.jpg'),(18,'Audemars Piguet','Mens Watch',850000,'men-watch2.jpg'),(19,'Patek Philippe','Mens Watch',490000,'men-watch3.jpg'),(20,'I-watch pro','Mens Watch',990000,'men-watch4.jpg'),(21,'Jewelry pack','Packs',70000,'pack1.jpg'),(22,'Jewelry pack pro','Packs',145000,'pack2.jpg'),(23,'Fitness pack','Packs',380000,'pack3.jpg'),(24,'TopG pack','Packs',730000,'pack4.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  6:36:18
