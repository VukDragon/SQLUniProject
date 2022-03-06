CREATE DATABASE  IF NOT EXISTS `bolton_events` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bolton_events`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bolton_events
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Temporary view structure for view `attendence_list`
--

DROP TABLE IF EXISTS `attendence_list`;
/*!50001 DROP VIEW IF EXISTS `attendence_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `attendence_list` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `booking_theater`
--

DROP TABLE IF EXISTS `booking_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_theater` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Theater_ID` varchar(7) NOT NULL,
  `Event_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Theater_ID` (`Theater_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `booking_theater_ibfk_1` FOREIGN KEY (`Theater_ID`) REFERENCES `theaters` (`ID`),
  CONSTRAINT `booking_theater_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_theater`
--

LOCK TABLES `booking_theater` WRITE;
/*!40000 ALTER TABLE `booking_theater` DISABLE KEYS */;
INSERT INTO `booking_theater` VALUES (1,'F2-08',1),(2,'M1-11',2),(3,'M1-12',3),(4,'M1-14',4),(5,'M1-16',5),(6,'F2-08',6),(7,'F2-08',7),(8,'M1-16',8),(9,'F2-08',9),(10,'F2-08',10),(11,'M2-11',10),(12,'F2-08',11),(13,'M1-14',11),(14,'M1-12',12),(15,'M1-14',13),(16,'M1-11',14);
/*!40000 ALTER TABLE `booking_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_ticket`
--

DROP TABLE IF EXISTS `booking_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_ticket` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` char(7) NOT NULL,
  `Event_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `booking_ticket_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID`),
  CONSTRAINT `booking_ticket_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_ticket`
--

LOCK TABLES `booking_ticket` WRITE;
/*!40000 ALTER TABLE `booking_ticket` DISABLE KEYS */;
INSERT INTO `booking_ticket` VALUES (1,'111111',1),(2,'111112',2),(3,'111113',1),(4,'111114',3),(5,'111115',2),(6,'111116',4),(7,'111117',5),(8,'111118',2),(9,'111119',1),(10,'111120',2),(11,'111121',5),(12,'111122',4),(13,'111123',3),(14,'111124',5),(15,'111125',4),(16,'111111',6),(17,'111112',7),(18,'111113',8),(19,'111114',6),(20,'111115',7),(21,'111116',8),(22,'111117',6),(23,'111118',7),(24,'111119',8),(25,'111120',6),(26,'111121',7),(27,'111122',8),(28,'111123',6),(29,'111124',7),(30,'111125',8),(31,'111111',9),(32,'111112',10),(33,'111113',11),(34,'111114',12),(35,'111115',9),(36,'111116',10),(37,'111117',11),(38,'111118',12),(39,'111119',9),(40,'111120',10),(41,'111121',11),(42,'111122',12),(43,'111123',9),(44,'111124',10),(45,'111125',11),(46,'111111',13),(47,'111112',14),(49,'111114',13),(50,'111115',14),(52,'111117',13),(53,'111118',14),(55,'111120',13),(56,'111121',14),(58,'111123',13),(59,'111124',14);
/*!40000 ALTER TABLE `booking_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `curent_month`
--

DROP TABLE IF EXISTS `curent_month`;
/*!50001 DROP VIEW IF EXISTS `curent_month`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `curent_month` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Theater_ID`,
 1 AS `Ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `curent_week`
--

DROP TABLE IF EXISTS `curent_week`;
/*!50001 DROP VIEW IF EXISTS `curent_week`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `curent_week` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Theater_ID`,
 1 AS `Ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Starting_date` datetime NOT NULL,
  `Ending_date` datetime NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Event_group` varchar(100) NOT NULL,
  `Number_of_tickets` char(4) NOT NULL,
  `Ticket_price` int NOT NULL,
  `External_WWW` varchar(100) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` char(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2021-05-01 17:00:00','2021-05-01 18:00:00','Gabriel Iglesias','STAND UP','150',10,'stundup.co.uk','event@event.co.uk','123456789'),(2,'2021-05-01 17:00:00','2021-05-01 18:00:00','Trevor Noah','STAND UP','50',10,'stundup.co.uk','event@event.co.uk','123456789'),(3,'2021-05-01 17:00:00','2021-05-01 18:00:00','Nikki Glaser','STAND UP','76',10,'stundup.co.uk','event@event.co.uk','123456789'),(4,'2021-05-01 17:00:00','2021-05-01 18:00:00','Lewis Capaldi','CONCERT','76',10,'concert.co.uk','event@event.co.uk','123456789'),(5,'2021-05-01 17:00:00','2021-05-01 18:00:00','Taylor Tomlinson','STAND UP','50',10,'stundup.co.uk','event@event.co.uk','123456789'),(6,'2021-05-02 17:00:00','2021-05-02 18:00:00','Jen Kirman','STAND UP','150',10,'stundup.co.uk','event@event.co.uk','123456789'),(7,'2021-05-02 17:00:00','2021-05-02 18:00:00','Lewis Capaldi','CONCERT','150',10,'concert.co.uk','event@event.co.uk','123456789'),(8,'2021-05-02 17:00:00','2021-05-02 18:00:00','Ali Wong','STAND UP','50',10,'stundup.co.uk','event@event.co.uk','123456789'),(9,'2021-05-03 17:00:00','2021-05-03 18:00:00','Whitney Cummings','STAND UP','150',10,'stundup.co.uk','event@event.co.uk','123456789'),(10,'2021-05-03 17:00:00','2021-05-03 18:00:00','silent night','SILENT DISCO','200',5,'silent.co.uk','event@event.co.uk','123456789'),(11,'2021-05-04 17:00:00','2021-05-04 18:00:00','silent night','SILENT DISCO','226',5,'silent.co.uk','event@event.co.uk','123456789'),(12,'2021-05-04 17:00:00','2021-05-04 18:00:00','Ali Wong','STAND UP','76',10,'stundup.co.uk','event@event.co.uk','123456789'),(13,'2021-05-05 17:00:00','2021-05-05 18:00:00','Lewis Capaldi','CONCERT','76',10,'concert.co.uk','event@event.co.uk','123456789'),(14,'2021-05-05 17:00:00','2021-05-05 18:00:00','Deliso Chaponda','STAND UP','50',10,'stundup.co.uk','event@event.co.uk','123456789');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `following_month`
--

DROP TABLE IF EXISTS `following_month`;
/*!50001 DROP VIEW IF EXISTS `following_month`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `following_month` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Theater_ID`,
 1 AS `Ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `following_week`
--

DROP TABLE IF EXISTS `following_week`;
/*!50001 DROP VIEW IF EXISTS `following_week`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `following_week` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Theater_ID`,
 1 AS `Ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `list_of_participient`
--

DROP TABLE IF EXISTS `list_of_participient`;
/*!50001 DROP VIEW IF EXISTS `list_of_participient`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `list_of_participient` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `onwards_attendence`
--

DROP TABLE IF EXISTS `onwards_attendence`;
/*!50001 DROP VIEW IF EXISTS `onwards_attendence`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `onwards_attendence` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `previous_attendence`
--

DROP TABLE IF EXISTS `previous_attendence`;
/*!50001 DROP VIEW IF EXISTS `previous_attendence`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `previous_attendence` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `seats_available_on_date`
--

DROP TABLE IF EXISTS `seats_available_on_date`;
/*!50001 DROP VIEW IF EXISTS `seats_available_on_date`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `seats_available_on_date` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Number_of_tickets`,
 1 AS `Number_of_tickets_left`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `seats_booked_vs_left`
--

DROP TABLE IF EXISTS `seats_booked_vs_left`;
/*!50001 DROP VIEW IF EXISTS `seats_booked_vs_left`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `seats_booked_vs_left` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Number_Of_Sold_Tickets`,
 1 AS `Number_of_tickets_left`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaters` (
  `ID` varchar(7) NOT NULL,
  `Capasity` char(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES ('F2-08','150'),('M1-11','50'),('M1-12','76'),('M1-14','76'),('M1-16','50'),('M2-11','50');
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `upcoming_events`
--

DROP TABLE IF EXISTS `upcoming_events`;
/*!50001 DROP VIEW IF EXISTS `upcoming_events`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `upcoming_events` AS SELECT 
 1 AS `Title`,
 1 AS `Starting_date`,
 1 AS `Theater_ID`,
 1 AS `Ticket_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` char(7) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `DoB` varchar(20) NOT NULL,
  `Participant` tinyint NOT NULL,
  `Staff` tinyint DEFAULT NULL,
  `Admin` tinyint DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` char(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('111111','Adam','Low','15.06.1985',1,0,0,'adam.low@gmail.co','123456789'),('111112','Jess','Low','11.11.1984',1,0,0,'jess.low@gmail.co','234567891'),('111113','Adam','Big','12.02.1990',1,0,0,'adam.big@gmail.co','345678912'),('111114','Jess','Mac','12.01.1991',1,1,1,'jess.mac@gmail.co','456789123'),('111115','Ben','Bat','11.11.1992',1,1,1,'ben.bat@gmail.co','567891234'),('111116','Adam','Yes','12.10.1990',1,0,0,'adam.yes@gmail.co','678912345'),('111117','Jess','Watt','12.02.1991',1,0,0,'jess.watt@gmail.co','789123456'),('111118','Ben','Simons','12.01.1992',1,1,0,'ben.simons@gmail.co','891234567'),('111119','Adam','Tack','11.11.1993',1,1,0,'adam.tack@gmail.co','912345678'),('111120','Jess','Silver','12.10.1991',1,0,0,'jess.silver@gmail.co','991234567'),('111121','Ben','Gold','12.02.1992',1,0,0,'ben.gold@gmail.co','991234566'),('111122','Ben','Ban','12.01.1993',1,0,0,'ben.ban@gmail.co','665432198'),('111123','Jess','Right','11.11.1994',1,0,0,'jess.right@gmail.co','887654321'),('111124','Ben','Right','12.10.1992',1,0,0,'ben.right@gmail.co','112345678'),('111125','Jess','Left','12.02.1993',1,1,1,'jess.left@gmail.co','776895432');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bolton_events'
--

--
-- Final view structure for view `attendence_list`
--

/*!50001 DROP VIEW IF EXISTS `attendence_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendence_list` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`u`.`First_Name` AS `First_Name`,`u`.`Last_Name` AS `Last_Name`,`u`.`ID` AS `ID` from ((`booking_ticket` `b` join `users` `u` on((`b`.`User_ID` = `u`.`ID`))) join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) where ((`u`.`ID` = 111112) and (`e`.`Starting_date` between '2021-05-01 18:00:00' and '2021-05-03 21:00:00')) group by `b`.`User_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `curent_month`
--

/*!50001 DROP VIEW IF EXISTS `curent_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `curent_month` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`bt`.`Theater_ID` AS `Theater_ID`,`e`.`Ticket_price` AS `Ticket_price` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `booking_theater` `bt` on((`bt`.`Event_ID` = `e`.`ID`))) where (month(`e`.`Starting_date`) = month(curdate())) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `curent_week`
--

/*!50001 DROP VIEW IF EXISTS `curent_week`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `curent_week` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`bt`.`Theater_ID` AS `Theater_ID`,`e`.`Ticket_price` AS `Ticket_price` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `booking_theater` `bt` on((`bt`.`Event_ID` = `e`.`ID`))) where ((`e`.`Starting_date` > curdate()) and (`e`.`Starting_date` <= (curdate() + interval 7 day))) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `following_month`
--

/*!50001 DROP VIEW IF EXISTS `following_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `following_month` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`bt`.`Theater_ID` AS `Theater_ID`,`e`.`Ticket_price` AS `Ticket_price` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `booking_theater` `bt` on((`bt`.`Event_ID` = `e`.`ID`))) where ((`e`.`Starting_date` > curdate()) and (`e`.`Starting_date` <= (curdate() + interval 1 month))) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `following_week`
--

/*!50001 DROP VIEW IF EXISTS `following_week`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `following_week` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`bt`.`Theater_ID` AS `Theater_ID`,`e`.`Ticket_price` AS `Ticket_price` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `booking_theater` `bt` on((`bt`.`Event_ID` = `e`.`ID`))) where ((`e`.`Starting_date` > (curdate() + interval 7 day)) and (`e`.`Starting_date` <= (curdate() + interval 14 day))) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `list_of_participient`
--

/*!50001 DROP VIEW IF EXISTS `list_of_participient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `list_of_participient` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`u`.`First_Name` AS `First_Name`,`u`.`Last_Name` AS `Last_Name`,`u`.`ID` AS `ID` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `users` `u` on((`b`.`User_ID` = `u`.`ID`))) where ((`e`.`ID` = 10) and (`e`.`Starting_date` between '2021-05-01 18:00:00' and '2021-05-03 21:00:00')) group by `b`.`User_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `onwards_attendence`
--

/*!50001 DROP VIEW IF EXISTS `onwards_attendence`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `onwards_attendence` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`u`.`First_Name` AS `First_Name`,`u`.`Last_Name` AS `Last_Name`,`u`.`ID` AS `ID` from ((`booking_ticket` `b` join `users` `u` on((`b`.`User_ID` = `u`.`ID`))) join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) where ((`u`.`ID` = 111112) and (`e`.`Starting_date` >= curdate())) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `previous_attendence`
--

/*!50001 DROP VIEW IF EXISTS `previous_attendence`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `previous_attendence` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`u`.`First_Name` AS `First_Name`,`u`.`Last_Name` AS `Last_Name`,`u`.`ID` AS `ID` from ((`booking_ticket` `b` join `users` `u` on((`b`.`User_ID` = `u`.`ID`))) join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) where ((`u`.`ID` = 111112) and (`e`.`Starting_date` < curdate())) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `seats_available_on_date`
--

/*!50001 DROP VIEW IF EXISTS `seats_available_on_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `seats_available_on_date` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`e`.`Number_of_tickets` AS `Number_of_tickets`,(`e`.`Number_of_tickets` - count(`b`.`Event_ID`)) AS `Number_of_tickets_left` from (`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) where ((`e`.`ID` = 10) and (`e`.`Starting_date` between '2021-05-01 18:00:00' and '2021-05-03 21:00:00')) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `seats_booked_vs_left`
--

/*!50001 DROP VIEW IF EXISTS `seats_booked_vs_left`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `seats_booked_vs_left` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,count(`b`.`Event_ID`) AS `Number_Of_Sold_Tickets`,(`e`.`Number_of_tickets` - count(`b`.`Event_ID`)) AS `Number_of_tickets_left` from (`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) where ((`e`.`ID` = 10) and (`e`.`Starting_date` between '2021-05-01 18:00:00' and '2021-05-03 21:00:00')) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `upcoming_events`
--

/*!50001 DROP VIEW IF EXISTS `upcoming_events`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `upcoming_events` AS select `e`.`Title` AS `Title`,`e`.`Starting_date` AS `Starting_date`,`bt`.`Theater_ID` AS `Theater_ID`,`e`.`Ticket_price` AS `Ticket_price` from ((`booking_ticket` `b` join `events` `e` on((`b`.`Event_ID` = `e`.`ID`))) join `booking_theater` `bt` on((`bt`.`Event_ID` = `e`.`ID`))) where (`e`.`Starting_date` >= curdate()) group by `b`.`Event_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 20:18:19
