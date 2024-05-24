CREATE DATABASE  IF NOT EXISTS `finalwork` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finalwork`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: finalwork
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartID` varchar(36) NOT NULL,
  `id` varchar(45) NOT NULL,
  `cid` varchar(3) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `counter` varchar(10) NOT NULL,
  `key` varchar(1) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('1','1');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `favoriteID` varchar(36) NOT NULL,
  `id` varchar(45) NOT NULL,
  `cid` varchar(3) NOT NULL,
  PRIMARY KEY (`favoriteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finish`
--

DROP TABLE IF EXISTS `finish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finish` (
  `finishUID` varchar(36) NOT NULL,
  `orderUID` varchar(36) NOT NULL,
  `payf` varchar(5) NOT NULL,
  `candle` varchar(45) NOT NULL,
  `note` varchar(99) NOT NULL,
  `recipient` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `cid` varchar(45) NOT NULL,
  `quantity` varchar(5) NOT NULL,
  `id` varchar(45) NOT NULL,
  `submitdate` varchar(10) NOT NULL,
  PRIMARY KEY (`finishUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finish`
--

LOCK TABLES `finish` WRITE;
/*!40000 ALTER TABLE `finish` DISABLE KEYS */;
/*!40000 ALTER TABLE `finish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('1','a','a','a','a');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `messageID` varchar(36) NOT NULL,
  `cid` varchar(3) NOT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `content` varchar(99) NOT NULL,
  `putdate` varchar(10) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `cid` varchar(3) NOT NULL,
  `cakeName` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `cakePrice` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `imgpath1` varchar(20) DEFAULT NULL,
  `imgpath2` varchar(20) DEFAULT NULL,
  `intor` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('101','芒果生乳酪',25,'1200','pie','pie01-1.jpg','pie01-2.jpg','- 經典款系列 -<br>混合2種乳酪的cheese香<br>配上當季最新鮮的芒果<br>法國發酵奶油.日本麵粉.日本上白糖.殺菌洗選蛋'),('102','雙莓生乳酪',25,'1000','pie','pie02-1.jpg','pie02-2.jpg','- 經典款系列 -<br>草莓乳酪<br>藍莓乳酪<br>新鮮草莓、藍莓'),('103','提拉公爵',25,'1100','pie','pie03-1.jpg','pie03-2.jpg','- 經典款系列 -<br>阿拉比卡咖啡凍<br>咖啡拇指餅乾<br>香草提拉米酥、伯爵茶內餡'),('104','蜂蜜柚子',25,'1100','pie','pie04-1.jpg','pie04-2.jpg','- 經典款系列 -<br>蜂蜜柚子奶油霜<br>蜂蜜乳酪球<br>新鮮綠葡萄'),('105','苦甜生抹茶',25,'1200','pie','pie05-1.jpg','pie05-2.jpg','- 經典款系列 -<br>靜岡抹茶<br>現磨黑芝麻粉的<br>微苦的靜岡抹茶香緹'),('106','布想芋見泥',25,'1100','pie','pie06-1.jpg','pie06-2.jpg','- 經典款系列 -<br>香草布丁口感的內餡<br>黑糖ＱＱ<br>大甲香芋'),('107','生巧克力香蕉',25,'1000','pie','pie07-1.jpg','pie07-2.jpg','- 經典款系列 -<br>台灣新鮮香蕉<br>烘烤杏仁片<br>佳麗寶54%+70%苦甜巧克力'),('108','藍莓生乳酪',25,'1000','pie','pie08-1.jpg','pie08-2.jpg','- 經典款系列 -<br>底層藍莓餡杏仁派底<br>藍莓生乳酪<br>整顆新鮮藍'),('201','檸檬奶油覆盆莓',25,'1100','birth','birth01-1.jpeg','birth01-2.jpeg','-summer cake-<br>法國發酵奶油<br>檸檬清香蛋糕體、覆盆莓奶凍<br>日本麵粉、日本上白糖、殺菌洗選蛋'),('202','半熟芒果蛋',25,'1300','birth','birth02-1.jpeg','birth02-2.jpeg','- 經典款系列 -	<br>芒果卡士達<br>靜岡抹茶蛋糕<br>新鮮芒果'),('203','草莓蛋糕',25,'1300','birth','birth03-1.jpeg','birth03-2.jpeg','- 經典款系列 -<br>裏到外，滿滿草莓<br>新鮮草莓<br>草莓內餡'),('204','寶寶性別揭曉蛋糕',25,'1700','birth','birth04-1.jpeg','birth04-2.jpeg','蛋糕統一香草口味<br>內餡<br>男孩:巧克力or藍莓內餡<br>女孩:草莓內餡或覆盆莓'),('205','超級芝麻',25,'1000','birth','birth05-1.jpeg','birth05-2.jpeg','- 經典款系列 -<br>芝麻戚風蛋糕體<br>芝麻內餡<br>焦糖脆粒'),('206','告白豬豬蛋糕',25,'1300','birth','birth06-1.jpeg','birth06-2.jpeg','選自己喜歡的口味<br>蛋糕口味：巧克力.香草.伯爵<br>水果布丁.芋泥布丁<br>內餡：巧克力oreo布丁.藍莓巧克力布丁.焦糖核桃布丁'),('207','伯爵夫人與雙莓公主',25,'800','birth','birth07-1.jpeg','birth07-2.jpeg','- 經典款系列 -<br>混合2種乳酪的cheese香<br>配上當季最新鮮的芒果<br>法國發酵奶油.日本麵粉.日本上白糖.殺菌洗選蛋'),('208','海鹽焦糖可可蛋糕',25,'1100','birth','birth08-1.jpeg','birth08-2.jpeg','-經典款系列-<br>香草海綿蛋糕<br>焦糖核桃<br>海鹽焦糖奶油、巧克力甘那許'),('209','伯爵火山+果乾',25,'1300','birth','birth09-1.jpeg','birth09-2.jpeg','布朗尼核桃派底<br>巧克力奶凍<br>海綿蛋糕<br>伯爵奶餡'),('301','經典之派中塔禮盒',25,'680','other','other01-1.jpeg','other01-2.jpeg',' - 新年禮盒 -<br>伯爵布朗尼 、檸檬橙香塔<br>草莓乳酪香提、可可提拉米蘇<br>芋香花生奶餡、無花果抹茶起司'),('302','花美．月圓|中秋禮盒',25,'880','other','other02-1.jpeg','other02-2.jpeg','讓月餅在吃的同時像賞月般一樣<br>咖哩鹹蛋黃麻吉 <br>豆沙鹹蛋黃麻吉<br>低糖豆沙鹹蛋黃'),('303','花樣年華新年禮盒',25,'880','other','other03-1.jpeg','other03-2.jpeg','雙層禮盒21入<br>鳳凰酥、法式蝴蝶酥<br>鹹蛋黃雪花酥、草莓雪花酥<br>檸檬柑橘磅蛋糕、櫻桃酒釀布朗尼'),('304','鐵盒喜餅',25,'750','other','other04-1.jpeg','other04-2.jpeg','客製化喜餅<br>法式奶油蝴蝶酥、佛羅倫斯餅<br>法芙娜鑽石巧克力、金沙曲奇<br>布列塔尼酥餅、馬林糖'),('305','牛派禮盒',25,'500','other','other05-1.jpeg','other05-2.jpeg','中塔5.5cm 6入<br>檸檬雙餡、雙莓生乳酪<br>芋見、京都焙茶芝麻<br>野莓巧克力、靜岡草莓抹茶');
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

-- Dump completed on 2022-06-18 23:04:06
