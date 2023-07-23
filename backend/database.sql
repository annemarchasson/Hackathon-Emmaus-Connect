--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Region` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tessa','Fondeur','Hauts-de-France','pokemon123'),(2,'Val','Vakarian','Occitanie','patacrepe'),(3,'Anne','Marchasson','Nord','2611');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(100) NOT NULL,
  `Model_name` varchar(100) NOT NULL,
  `RAM` int NOT NULL,
  `Memory` int NOT NULL,
  `Device_condition` varchar(100) NOT NULL,
  `Other` varchar(500) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hgefihzqdq_idx` (`user_id`),
  CONSTRAINT `hgefihzqdq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Samsung','Galaxy S10+','8','128','Bloqué','Rayé',1),(2,'Samsung','Galaxy Note 8','6','64','Reconditionné','RAS',2),(3,'Samsung','A40','4','64','Reparable','Ecran flou',3),(4,'Samsung','Galaxy S20','8','128','Comme neuf','RAS',1);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Price` INT NULL,
  `Price_category` VARCHAR(10) NULL,
  `model_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xrvgyuhij_idx` (`model_id`),
  CONSTRAINT `xrvgyuhij` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dump completed on 2023-06-28 17:12:37
