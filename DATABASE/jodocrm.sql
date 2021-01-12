-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: suitedemo
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('169da36d-2dac-b3b9-590a-5ff9e43e180d','Rhyme & Reason Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Technology',NULL,NULL,'9 IBM Path','San Jose','NY','99222','USA',NULL,'(141) 610-9771',NULL,'www.infoinfo.co.uk',NULL,NULL,NULL,'9 IBM Path','San Jose','NY','99222','USA',NULL,NULL,NULL),('17c08950-1669-c8b1-54c4-5ff9e59a14a8','A.G. Parr PLC','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Government',NULL,NULL,'321 University Ave.','San Mateo','NY','15419','USA',NULL,'(680) 442-0748',NULL,'www.supportsugar.name',NULL,NULL,NULL,'321 University Ave.','San Mateo','NY','15419','USA',NULL,NULL,NULL),('1840c12c-603e-6c28-6ab4-5ff9e4f4c963','TJ O\'Rourke Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Recreation',NULL,NULL,'9 IBM Path','Ohio','NY','25220','USA',NULL,'(714) 709-7582',NULL,'www.sectionkid.co.uk',NULL,NULL,NULL,'9 IBM Path','Ohio','NY','25220','USA',NULL,NULL,NULL),('1d9384ea-662b-dcdb-d90b-5ff9e50458f3','Gifted Holdings AG','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Construction',NULL,NULL,'9 IBM Path','Santa Monica','CA','53239','USA',NULL,'(988) 718-5864',NULL,'www.sugarinfo.biz',NULL,NULL,NULL,'9 IBM Path','Santa Monica','CA','53239','USA',NULL,NULL,NULL),('20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','Trait Institute Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Government',NULL,NULL,'111 Silicon Valley Road','Alabama','CA','68913','USA',NULL,'(728) 683-1038',NULL,'www.supporthr.info',NULL,NULL,NULL,'111 Silicon Valley Road','Alabama','CA','68913','USA',NULL,NULL,NULL),('23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','RR. Talker Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Apparel',NULL,NULL,'123 Anywhere Street','Los Angeles','CA','53145','USA',NULL,'(212) 155-2287',NULL,'www.imqa.de',NULL,NULL,NULL,'123 Anywhere Street','Los Angeles','CA','53145','USA',NULL,NULL,NULL),('243c9004-e246-96f6-4e65-5ff9e47fd593','JBC Banking Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Communications',NULL,NULL,'111 Silicon Valley Road','Alabama','NY','28113','USA',NULL,'(117) 832-3989',NULL,'www.sugarkid.com',NULL,NULL,NULL,'111 Silicon Valley Road','Alabama','NY','28113','USA',NULL,NULL,NULL),('2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','Rubble Group Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Insurance',NULL,NULL,'999 Baker Way','Denver','NY','45286','USA',NULL,'(707) 615-7785',NULL,'www.beansim.edu',NULL,NULL,NULL,'999 Baker Way','Denver','NY','45286','USA',NULL,NULL,NULL),('364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','EEE Endowments LTD','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Utilities',NULL,NULL,'777 West Filmore Ln','San Mateo','CA','72832','USA',NULL,'(517) 439-9420',NULL,'www.veganim.co.jp',NULL,NULL,NULL,'777 West Filmore Ln','San Mateo','CA','72832','USA',NULL,NULL,NULL),('3b1771a5-c851-95b1-b53f-5ff9e4a844b0','5D Investments','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Media',NULL,NULL,'321 University Ave.','St. Petersburg','CA','56993','USA',NULL,'(706) 332-9536',NULL,'www.thesupport.biz',NULL,NULL,NULL,'321 University Ave.','St. Petersburg','CA','56993','USA',NULL,NULL,NULL),('42a4f906-a97f-e814-95c4-5ff9e4f5f92a','Draft Diversified Energy Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Machinery',NULL,NULL,'48920 San Carlos Ave','Cupertino','CA','77688','USA',NULL,'(696) 383-3237',NULL,'www.sugarqa.org',NULL,NULL,NULL,'48920 San Carlos Ave','Cupertino','CA','77688','USA',NULL,NULL,NULL),('43a27b00-6987-92d0-6019-5ff9e551bc06','Kaos Trading Ltd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Consulting',NULL,NULL,'999 Baker Way','St. Petersburg','CA','65261','USA',NULL,'(505) 215-2244',NULL,'www.sugardev.de',NULL,NULL,NULL,'999 Baker Way','St. Petersburg','CA','65261','USA',NULL,NULL,NULL),('44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','Super Star Holdings Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Not For Profit',NULL,NULL,'999 Baker Way','Alabama','CA','30345','USA',NULL,'(120) 559-8993',NULL,'www.kidsales.net',NULL,NULL,NULL,'999 Baker Way','Alabama','CA','30345','USA',NULL,NULL,NULL),('47209eba-76e0-8f0d-6f1d-5ff9e477e52b','RR. Talker Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Chemicals',NULL,NULL,'48920 San Carlos Ave','Los Angeles','CA','30958','USA',NULL,'(387) 678-8606',NULL,'www.veganinfo.co.jp',NULL,NULL,NULL,'48920 San Carlos Ave','Los Angeles','CA','30958','USA',NULL,NULL,NULL),('49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','P Piper & Sons','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Chemicals',NULL,NULL,'67321 West Siam St.','Santa Monica','CA','37240','USA',NULL,'(945) 652-5669',NULL,'www.salesthe.edu',NULL,NULL,NULL,'67321 West Siam St.','Santa Monica','CA','37240','USA',NULL,NULL,NULL),('59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','Airline Maintenance Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Machinery',NULL,NULL,'123 Anywhere Street','Santa Monica','CA','66385','USA',NULL,'(690) 369-4168',NULL,'www.devkid.it',NULL,NULL,NULL,'123 Anywhere Street','Santa Monica','CA','66385','USA',NULL,NULL,NULL),('5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','Avery Software Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Transportation',NULL,NULL,'111 Silicon Valley Road','San Mateo','NY','37938','USA',NULL,'(428) 184-6034',NULL,'www.saleskid.us',NULL,NULL,NULL,'111 Silicon Valley Road','San Mateo','NY','37938','USA',NULL,NULL,NULL),('6119a10e-22af-9291-defa-5ff9e5a5d04f','Ink Conglomerate Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Apparel',NULL,NULL,'111 Silicon Valley Road','Sunnyvale','CA','38545','USA',NULL,'(249) 580-8285',NULL,'www.infosales.co.jp',NULL,NULL,NULL,'111 Silicon Valley Road','Sunnyvale','CA','38545','USA',NULL,NULL,NULL),('62956c44-79cd-b16e-b306-5ff9e5fa24a9','DD Furniture Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Consulting',NULL,NULL,'67321 West Siam St.','Persistance','CA','87027','USA',NULL,'(063) 877-5908',NULL,'www.kidvegan.name',NULL,NULL,NULL,'67321 West Siam St.','Persistance','CA','87027','USA',NULL,NULL,NULL),('64613793-c9b7-a7c0-97c2-5ff9e4975faf','White Cross Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Energy',NULL,NULL,'999 Baker Way','Ohio','CA','54571','USA',NULL,'(275) 052-8965',NULL,'www.supportqa.info',NULL,NULL,NULL,'999 Baker Way','Ohio','CA','54571','USA',NULL,NULL,NULL),('66d88013-82df-90bf-fdd3-5ff9e48a94c9','S Cane Sweeteners Ltd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Machinery',NULL,NULL,'67321 West Siam St.','Santa Monica','CA','16891','USA',NULL,'(716) 573-2954',NULL,'www.sugarhr.co.uk',NULL,NULL,NULL,'67321 West Siam St.','Santa Monica','CA','16891','USA',NULL,NULL,NULL),('6989fefe-cd69-611b-03d8-5ff9e4e3a083','Spend Thrift Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Other',NULL,NULL,'67321 West Siam St.','Santa Monica','NY','25635','USA',NULL,'(316) 593-2776',NULL,'www.salesvegan.net',NULL,NULL,NULL,'67321 West Siam St.','Santa Monica','NY','25635','USA',NULL,NULL,NULL),('6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Dirt Mining Ltd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Environmental',NULL,NULL,'321 University Ave.','San Jose','CA','23764','USA',NULL,'(967) 261-8136',NULL,'www.devim.info',NULL,NULL,NULL,'321 University Ave.','San Jose','CA','23764','USA',NULL,NULL,NULL),('7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','Southern Realty','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Insurance',NULL,NULL,'321 University Ave.','Cupertino','NY','15186','USA',NULL,'(621) 865-5301',NULL,'www.beansinfo.name',NULL,NULL,NULL,'321 University Ave.','Cupertino','NY','15186','USA',NULL,NULL,NULL),('76d15820-4e44-ea7a-eebc-5ff9e505aca5','Insight Marketing Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Chemicals',NULL,NULL,'48920 San Carlos Ave','St. Petersburg','CA','48671','USA',NULL,'(983) 542-1198',NULL,'www.supportim.org',NULL,NULL,NULL,'48920 San Carlos Ave','St. Petersburg','CA','48671','USA',NULL,NULL,NULL),('7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','Southern Realty','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Banking',NULL,NULL,'48920 San Carlos Ave','San Jose','CA','65030','USA',NULL,'(081) 814-2736',NULL,'www.imsection.info',NULL,NULL,NULL,'48920 San Carlos Ave','San Jose','CA','65030','USA',NULL,NULL,NULL),('7ea01596-83e7-624d-c792-5ff9e46dd493','Tortoise Corp','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Hospitality',NULL,NULL,'321 University Ave.','Los Angeles','CA','24819','USA',NULL,'(622) 055-5623',NULL,'www.kidhr.it',NULL,NULL,NULL,'321 University Ave.','Los Angeles','CA','24819','USA',NULL,NULL,NULL),('83789240-ef96-8047-7ea0-5ff9e50536b1','Start Over Trust','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Healthcare',NULL,NULL,'9 IBM Path','Alabama','NY','43968','USA',NULL,'(901) 865-0775',NULL,'www.veganinfo.com',NULL,NULL,NULL,'9 IBM Path','Alabama','NY','43968','USA',NULL,NULL,NULL),('8636dd93-aecd-acc3-7d25-5ff9e4661308','Green Tractor Group Limited','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Utilities',NULL,NULL,'1715 Scott Dr','Cupertino','CA','39987','USA',NULL,'(388) 304-1704',NULL,'www.devhr.it',NULL,NULL,NULL,'1715 Scott Dr','Cupertino','CA','39987','USA',NULL,NULL,NULL),('86748ca4-8574-a46f-0187-5ff9e5608ccd','Cloud Cover Trust','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Utilities',NULL,NULL,'321 University Ave.','Persistance','NY','39394','USA',NULL,'(090) 176-9129',NULL,'www.beansim.co.jp',NULL,NULL,NULL,'321 University Ave.','Persistance','NY','39394','USA',NULL,NULL,NULL),('8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','Kringle Bell IncK.A. Tower & Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Engineering',NULL,NULL,'999 Baker Way','San Francisco','CA','94183','USA',NULL,'(839) 488-5096',NULL,'www.hrbeans.it',NULL,NULL,NULL,'999 Baker Way','San Francisco','CA','94183','USA',NULL,NULL,NULL),('9069cc03-e955-384b-fb50-5ff9e4f28398','Powell Funding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Biotechnology',NULL,NULL,'9 IBM Path','Ohio','CA','54996','USA',NULL,'(452) 163-9154',NULL,'www.theinfo.info',NULL,NULL,NULL,'9 IBM Path','Ohio','CA','54996','USA',NULL,NULL,NULL),('91c89470-f34b-f69c-7e6b-5ff9e4861146','Smallville Resources Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Engineering',NULL,NULL,'48920 San Carlos Ave','Kansas City','CA','71043','USA',NULL,'(021) 430-1542',NULL,'www.sugarim.co.uk',NULL,NULL,NULL,'48920 San Carlos Ave','Kansas City','CA','71043','USA',NULL,NULL,NULL),('95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','Anytime Air Support Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Consulting',NULL,NULL,'123 Anywhere Street','Alabama','NY','46593','USA',NULL,'(220) 878-8362',NULL,'www.supportim.us',NULL,NULL,NULL,'123 Anywhere Street','Alabama','NY','46593','USA',NULL,NULL,NULL),('9721d66f-e546-f89e-0cd8-5ff9e5a0a814','24/7 Couriers','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Finance',NULL,NULL,'48920 San Carlos Ave','Santa Monica','CA','64305','USA',NULL,'(415) 795-5157',NULL,'www.beansqa.co.uk',NULL,NULL,NULL,'48920 San Carlos Ave','Santa Monica','CA','64305','USA',NULL,NULL,NULL),('9f43bb09-45cc-123c-bd41-5ff9e5d41008','JJ Resources Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Chemicals',NULL,NULL,'777 West Filmore Ln','Alabama','CA','56861','USA',NULL,'(169) 912-4031',NULL,'www.devkid.tw',NULL,NULL,NULL,'777 West Filmore Ln','Alabama','CA','56861','USA',NULL,NULL,NULL),('a18dac90-9853-e440-c497-5ff9e42723b0','Nimble Technologies Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Entertainment',NULL,NULL,'9 IBM Path','Sunnyvale','CA','57770','USA',NULL,'(394) 481-2928',NULL,'www.devkid.org',NULL,NULL,NULL,'9 IBM Path','Sunnyvale','CA','57770','USA',NULL,NULL,NULL),('bc78c90d-047f-84aa-f226-5ff9e4361490','Rubble Group Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Media',NULL,NULL,'345 Sugar Blvd.','St. Petersburg','NY','90260','USA',NULL,'(588) 380-9830',NULL,'www.kidsales.de',NULL,NULL,NULL,'345 Sugar Blvd.','St. Petersburg','NY','90260','USA',NULL,NULL,NULL),('be526ddc-bc43-eabe-6d25-5ff9e4852c8e','Tri-State Medical Corp','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Consulting',NULL,NULL,'48920 San Carlos Ave','Denver','CA','14122','USA',NULL,'(784) 235-9122',NULL,'www.thesection.org',NULL,NULL,NULL,'48920 San Carlos Ave','Denver','CA','14122','USA',NULL,NULL,NULL),('d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','T-Squared Techs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Technology',NULL,NULL,'321 University Ave.','San Jose','CA','85051','USA',NULL,'(146) 975-4732',NULL,'www.supportsugar.it',NULL,NULL,NULL,'321 University Ave.','San Jose','CA','85051','USA',NULL,NULL,NULL),('d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','NW Bridge Construction','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Environmental',NULL,NULL,'321 University Ave.','Ohio','NY','89346','USA',NULL,'(121) 069-2727',NULL,'www.salesvegan.net',NULL,NULL,NULL,'321 University Ave.','Ohio','NY','89346','USA',NULL,NULL,NULL),('d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','White Cross Co','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','',NULL,NULL,'67321 West Siam St.','San Francisco','CA','18892','USA',NULL,'(021) 416-6818',NULL,'www.veganbeans.it',NULL,NULL,NULL,'67321 West Siam St.','San Francisco','CA','18892','USA',NULL,NULL,NULL),('d76fac61-12db-f067-1527-5ff9e55e0b3a','Riviera Hotels','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Customer','Healthcare',NULL,NULL,'1715 Scott Dr','Cupertino','NY','96018','USA',NULL,'(342) 124-3379',NULL,'www.sugarsection.it',NULL,NULL,NULL,'1715 Scott Dr','Cupertino','NY','96018','USA',NULL,NULL,NULL),('d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Union Bank','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','',NULL,NULL,'1715 Scott Dr','St. Petersburg','CA','61492','USA',NULL,'(875) 950-2220',NULL,'www.devsupport.us',NULL,NULL,NULL,'1715 Scott Dr','St. Petersburg','CA','61492','USA',NULL,NULL,NULL),('da921383-3870-9526-247e-5ff9e5748b4e','International Art Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Customer','Consulting',NULL,NULL,'123 Anywhere Street','Salt Lake City','CA','51112','USA',NULL,'(909) 671-3948',NULL,'www.supportvegan.cn',NULL,NULL,NULL,'123 Anywhere Street','Salt Lake City','CA','51112','USA',NULL,NULL,NULL),('daf33abf-a900-a8b3-7f14-5ff9e50575a6','Jungle Systems Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Customer','Healthcare',NULL,NULL,'123 Anywhere Street','Sunnyvale','CA','45624','USA',NULL,'(476) 803-4124',NULL,'www.saleshr.it',NULL,NULL,NULL,'123 Anywhere Street','Sunnyvale','CA','45624','USA',NULL,NULL,NULL),('e0776e3c-2b65-e7ef-1cda-5ff9e5373856','Powder Suppliers','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Machinery',NULL,NULL,'1715 Scott Dr','Los Angeles','NY','40124','USA',NULL,'(456) 727-2864',NULL,'www.sectioninfo.tw',NULL,NULL,NULL,'1715 Scott Dr','Los Angeles','NY','40124','USA',NULL,NULL,NULL),('e37c09b4-4849-7a46-7d80-5ff9e5b88722','First National S/B','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Construction',NULL,NULL,'777 West Filmore Ln','Alabama','NY','24027','USA',NULL,'(457) 905-8230',NULL,'www.kidkid.cn',NULL,NULL,NULL,'777 West Filmore Ln','Alabama','NY','24027','USA',NULL,NULL,NULL),('e6da908e-865e-3abf-b4ec-5ff9e50b6db2','J.K.M. Corp (HA)','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Customer','Electronics',NULL,NULL,'123 Anywhere Street','Persistance','NY','79838','USA',NULL,'(578) 109-5228',NULL,'www.sugardev.co.jp',NULL,NULL,NULL,'123 Anywhere Street','Persistance','NY','79838','USA',NULL,NULL,NULL),('eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','Slender Broadband Inc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Customer','Other',NULL,NULL,'9 IBM Path','St. Petersburg','CA','51985','USA',NULL,'(432) 100-3035',NULL,'www.beanssugar.de',NULL,NULL,NULL,'9 IBM Path','St. Petersburg','CA','51985','USA',NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
INSERT INTO `accounts_bugs` VALUES ('229a3253-92e8-ddd1-9db3-5ff9e5ce1fd7','6119a10e-22af-9291-defa-5ff9e5a5d04f','2275ef97-ec67-7400-1b53-5ff9e57cfb50','2021-01-09 17:06:33',0),('25b6221a-4f2f-014b-a839-5ff9e517f54c','9f43bb09-45cc-123c-bd41-5ff9e5d41008','25943f37-bc2b-3b53-11d8-5ff9e5fc878e','2021-01-09 17:06:33',0),('2bed15ab-3257-3db6-c1b7-5ff9e4658311','91c89470-f34b-f69c-7e6b-5ff9e4861146','2bc685d9-e618-4e54-a7a9-5ff9e485cb68','2021-01-09 17:06:33',0),('2eee87e6-20d7-2d35-f9ee-5ff9e50ab0a2','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','2ece1724-40f1-247a-6982-5ff9e55b015a','2021-01-09 17:06:33',0),('3101474d-6359-1746-a7fe-5ff9e5f91130','e37c09b4-4849-7a46-7d80-5ff9e5b88722','30dd73fb-5e4a-2d1c-cc74-5ff9e50bfb89','2021-01-09 17:06:33',0),('31ddf93f-ad33-16d7-833b-5ff9e5edee10','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','31b8a2ea-39bc-7d6e-04d8-5ff9e5a38a96','2021-01-09 17:06:33',0),('3841e232-510d-dcbe-effa-5ff9e5f65e45','86748ca4-8574-a46f-0187-5ff9e5608ccd','381f97c9-47fb-36d9-da14-5ff9e52159fd','2021-01-09 17:06:33',0),('385da986-d44f-7953-d558-5ff9e4961556','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','383d8f2c-d297-def1-034e-5ff9e4998f57','2021-01-09 17:06:33',0),('39418932-80ab-7ca8-70c8-5ff9e4b93718','169da36d-2dac-b3b9-590a-5ff9e43e180d','3937cf75-622d-f570-dda4-5ff9e4ff1121','2021-01-09 17:06:33',0),('3a5a0db7-aa61-b4a3-5737-5ff9e4ce859f','bc78c90d-047f-84aa-f226-5ff9e4361490','381b0119-e3da-6103-af73-5ff9e4166818','2021-01-09 17:06:33',0),('4b2eb55b-6514-9e28-9f65-5ff9e5fe11b6','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','4b043016-8845-a1fb-074d-5ff9e53bce9b','2021-01-09 17:06:33',0),('4bedc432-ba43-117a-34c6-5ff9e4402b29','9069cc03-e955-384b-fb50-5ff9e4f28398','4bc5b26a-03a9-970b-d2f4-5ff9e49a4838','2021-01-09 17:06:33',0),('5668023a-095b-2399-bced-5ff9e5e313cd','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','56439b9c-ee49-efa7-fd7b-5ff9e525373f','2021-01-09 17:06:33',0),('5c5414f2-c377-e350-3046-5ff9e40d3335','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','5c247c29-4861-12bc-9173-5ff9e46c4b69','2021-01-09 17:06:33',0),('5d6a2c6c-161b-95a1-d0f7-5ff9e5a231d0','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','5d61626e-5473-3532-04fb-5ff9e55b33c5','2021-01-09 17:06:33',0),('5fbd0d03-a619-0fda-f835-5ff9e4552687','66d88013-82df-90bf-fdd3-5ff9e48a94c9','5f8886ba-6939-5bb2-c3a7-5ff9e4030155','2021-01-09 17:06:33',0),('6078975e-f826-1ad9-a747-5ff9e5c28c9d','daf33abf-a900-a8b3-7f14-5ff9e50575a6','604d72e8-4966-f1ef-e730-5ff9e5298c8a','2021-01-09 17:06:33',0),('6a8053e3-7baf-4f94-837c-5ff9e43bf16b','3b1771a5-c851-95b1-b53f-5ff9e4a844b0','6a54d6ac-a862-f845-0375-5ff9e49ac948','2021-01-09 17:06:33',0),('6c3e9995-4a28-8a80-4da3-5ff9e5e41a88','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','6c183067-2f3e-5321-6345-5ff9e552b35b','2021-01-09 17:06:33',0),('6cdc46df-5032-3f6f-aba4-5ff9e5a681d5','17c08950-1669-c8b1-54c4-5ff9e59a14a8','6cb82ddc-0832-ddc2-35dd-5ff9e5da7c7f','2021-01-09 17:06:33',0),('6e2dd7d4-c6c1-a183-04d2-5ff9e5f6776d','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','6e0f7c75-b4fc-25f5-243b-5ff9e5609612','2021-01-09 17:06:33',0),('7353506a-1e7c-d5f2-46d0-5ff9e5c9bd04','da921383-3870-9526-247e-5ff9e5748b4e','734ab28f-55f4-e47f-5ef5-5ff9e50bd9dd','2021-01-09 17:06:33',0),('74a6c3f9-e4c4-9bf5-c4cf-5ff9e4675d4c','42a4f906-a97f-e814-95c4-5ff9e4f5f92a','746e69d4-3953-56dd-241b-5ff9e4873450','2021-01-09 17:06:33',0),('78b91ff3-679c-47a1-277c-5ff9e45a0190','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','7894be81-483f-1fc3-2d16-5ff9e48665f0','2021-01-09 17:06:33',0),('78ebd0ea-94c9-6ad3-59fe-5ff9e5740846','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','78c7cdfd-806f-75fa-3ebd-5ff9e58607ac','2021-01-09 17:06:33',0),('7a789e00-3649-cc09-bb28-5ff9e58ec099','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','7a374cc4-fb13-cae7-3b23-5ff9e5e785a5','2021-01-09 17:06:33',0),('83bfcf38-f594-65dc-64df-5ff9e593784e','d76fac61-12db-f067-1527-5ff9e55e0b3a','839f6cb0-7274-6ab6-f79e-5ff9e5c96b20','2021-01-09 17:06:33',0),('8ed551ff-96eb-14b3-ede6-5ff9e589c234','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','8eb1e445-1c0b-1d4d-ee2b-5ff9e5f64d78','2021-01-09 17:06:33',0),('9106dcd1-6a94-ba98-b0d5-5ff9e49d8221','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','90d8da3d-abbf-6ab8-7915-5ff9e46aca24','2021-01-09 17:06:33',0),('958a65eb-84fd-1ade-cb24-5ff9e4dad28d','6989fefe-cd69-611b-03d8-5ff9e4e3a083','9567ec21-5695-c46b-8fec-5ff9e4611be7','2021-01-09 17:06:33',0),('9917da8b-8758-db0c-b14f-5ff9e5ef4105','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','98f35830-6d8e-d3e6-d4f9-5ff9e5962c0b','2021-01-09 17:06:33',0),('a40f7f44-1f94-870c-1f28-5ff9e4f3d2d9','be526ddc-bc43-eabe-6d25-5ff9e4852c8e','a3eee7ae-b28e-e668-abb8-5ff9e4f4f09d','2021-01-09 17:06:33',0),('a60d968a-38ca-bd78-33e6-5ff9e58c1e4e','1d9384ea-662b-dcdb-d90b-5ff9e50458f3','a5ed0221-ad38-81cb-7811-5ff9e541cbf5','2021-01-09 17:06:33',0),('a7ce7cac-ce51-e112-426c-5ff9e488a755','a18dac90-9853-e440-c497-5ff9e42723b0','a7aa974a-b076-4316-8e41-5ff9e4c70749','2021-01-09 17:06:33',0),('a9656663-3812-0ab8-f541-5ff9e5b702ae','76d15820-4e44-ea7a-eebc-5ff9e505aca5','a935ca86-d4c2-e5da-e403-5ff9e555e725','2021-01-09 17:06:33',0),('ab997560-6890-4a97-9992-5ff9e58bc3ce','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','ab903583-7807-be17-c886-5ff9e541adbb','2021-01-09 17:06:33',0),('abd32e80-e389-c575-9997-5ff9e4a32a1b','64613793-c9b7-a7c0-97c2-5ff9e4975faf','abafb42c-03b4-2abb-3b72-5ff9e41e25da','2021-01-09 17:06:33',0),('c34599c6-ccf4-2433-2387-5ff9e4755cfe','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','c33c40c5-cf45-11ba-182f-5ff9e41d730b','2021-01-09 17:06:33',0),('c87903a7-8f50-cde5-dac7-5ff9e5787dbb','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','c5570e61-b7fb-8cae-55fd-5ff9e5389078','2021-01-09 17:06:33',0),('cce9a9d5-ffb0-d901-d8fc-5ff9e5b663fd','9721d66f-e546-f89e-0cd8-5ff9e5a0a814','ccd35ebb-eddf-1f60-154d-5ff9e5f231cc','2021-01-09 17:06:33',0),('cfb98781-f1fc-6f13-99c2-5ff9e49f0571','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','cf994807-bb79-7a54-3113-5ff9e4019ab2','2021-01-09 17:06:33',0),('d0191548-b438-255f-fbb3-5ff9e4223938','8636dd93-aecd-acc3-7d25-5ff9e4661308','d00b2a98-999d-7ade-4c87-5ff9e433a4bb','2021-01-09 17:06:33',0),('dcd4ba8c-5bd1-5b04-b36e-5ff9e51f4c24','43a27b00-6987-92d0-6019-5ff9e551bc06','dcb17e38-1fbc-1807-48c0-5ff9e56d1c06','2021-01-09 17:06:33',0),('dd0a9d03-6831-c2ed-9853-5ff9e5c0eb39','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','dd015b39-6c32-e0cd-3955-5ff9e5f8dacb','2021-01-09 17:06:33',0),('e1295cec-f74c-3731-2a14-5ff9e4628cd8','243c9004-e246-96f6-4e65-5ff9e47fd593','e120379a-87f3-84ac-d5d8-5ff9e4171a08','2021-01-09 17:06:33',0),('e4e82fbc-464d-5709-5ff9-5ff9e4c486b3','1840c12c-603e-6c28-6ab4-5ff9e4f4c963','e4c40acf-64aa-6f70-c0d8-5ff9e4145643','2021-01-09 17:06:33',0),('e58e9141-a6df-b058-d6db-5ff9e55d8e78','62956c44-79cd-b16e-b306-5ff9e5fa24a9','e56c9acb-2bdd-7193-b11e-5ff9e5957b7b','2021-01-09 17:06:33',0),('e6a0084f-1afa-11df-9d87-5ff9e49e270e','7ea01596-83e7-624d-c792-5ff9e46dd493','be600113-9532-9b18-0113-5ff9e40c1d63','2021-01-09 17:06:33',0),('e81c3fb3-f6c5-9fbf-014c-5ff9e53150b7','83789240-ef96-8047-7ea0-5ff9e50536b1','e7fc2484-a3d6-c89e-758f-5ff9e5ed7910','2021-01-09 17:06:33',0),('ef7e2c70-f2c2-18e6-b82d-5ff9e5a8d9be','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','ef554595-0f59-6d93-6ffc-5ff9e526a6ee','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
INSERT INTO `accounts_contacts` VALUES ('15e295d1-1a52-df84-e85e-5ff9e5ff8052','89c7e668-991e-4dd5-7619-5ff9e5541756','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','2021-01-09 17:06:33',0),('2682bec7-caee-0032-9820-5ff9e51ac8a7','e0ba2917-7017-6a73-1a45-5ff9e5f929a3','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','2021-01-09 17:06:33',0),('29e3919e-89f9-275c-4a52-5ff9e518f041','bc2c5743-8675-1169-2652-5ff9e599af68','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','2021-01-09 17:06:33',0),('2a940128-cc74-859a-29c7-5ff9e5085bb9','b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','2021-01-09 17:06:33',0),('2c08174d-e71b-6cd2-1664-5ff9e5a395a3','e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','9069cc03-e955-384b-fb50-5ff9e4f28398','2021-01-09 17:06:33',0),('31ae87ee-2170-a536-f61f-5ff9e5e49131','99d14881-6332-db47-1114-5ff9e5866741','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','2021-01-09 17:06:33',0),('34c6064e-3986-2a4c-8135-5ff9e5730205','77145904-99e8-9624-c82d-5ff9e50ac392','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','2021-01-09 17:06:33',0),('4adb9102-8e23-1f4b-52d7-5ff9e5ca1729','94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','17c08950-1669-c8b1-54c4-5ff9e59a14a8','2021-01-09 17:06:33',0),('5302e544-ce7f-eb93-9d97-5ff9e50b51fa','6d33aad4-8175-e485-d04c-5ff9e57cbf86','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','2021-01-09 17:06:33',0),('6204a64d-ad5d-10f6-7707-5ff9e57e55e9','cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','bc78c90d-047f-84aa-f226-5ff9e4361490','2021-01-09 17:06:33',0),('726def4a-c546-0e81-7911-5ff9e5f86247','f0f23ca0-57c9-160a-f717-5ff9e5cd3def','91c89470-f34b-f69c-7e6b-5ff9e4861146','2021-01-09 17:06:33',0),('761cb1a4-2adc-7158-16af-5ff9e5057a6a','ec51a991-ccf0-7665-d2c2-5ff9e579665d','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','2021-01-09 17:06:33',0),('86231b7b-2cd4-97ab-4f5b-5ff9e5a8158f','49faa0f9-a041-c118-5131-5ff9e5b033de','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','2021-01-09 17:06:33',0),('9578c190-e50b-c5bd-bea3-5ff9e559492d','b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66','a18dac90-9853-e440-c497-5ff9e42723b0','2021-01-09 17:06:33',0),('a8c9c1aa-b5f3-932b-2ff0-5ff9e5e722da','f3d1c25c-981f-2052-331a-5ff9e5a38926','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','2021-01-09 17:06:33',0),('aa403a93-2d06-99bc-7254-5ff9e53c0d1b','bade0bdb-1482-2e88-3e34-5ff9e5562a29','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','2021-01-09 17:06:33',0),('af5035f6-6467-005d-d6b1-5ff9e5e35ddc','202a0b4a-a2df-8cc4-a564-5ff9e57b369c','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','2021-01-09 17:06:33',0),('b1764846-d2ca-5e5c-45d6-5ff9e538216a','6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','2021-01-09 17:06:33',0),('b2d9e76d-2e8e-b0e1-f677-5ff9e5e072c6','6e523b23-29fe-8db1-e59b-5ff9e5401d2e','6989fefe-cd69-611b-03d8-5ff9e4e3a083','2021-01-09 17:06:33',0),('b5c150d8-84b5-0c59-3955-5ff9e5509a24','5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','66d88013-82df-90bf-fdd3-5ff9e48a94c9','2021-01-09 17:06:33',0),('bd5c8301-1563-d1f1-f0ea-5ff9e5a16a15','dd01d891-146f-20e1-e32a-5ff9e5c54b91','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','2021-01-09 17:06:33',0),('bee547aa-302c-cab9-5e01-5ff9e56aa839','13099e74-4d76-790c-d920-5ff9e5d8dfce','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','2021-01-09 17:06:33',0),('c20a7ce0-80ee-f7bf-cf22-5ff9e5b094c9','1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','66d88013-82df-90bf-fdd3-5ff9e48a94c9','2021-01-09 17:06:33',0),('c82a86df-ec19-1048-7c40-5ff9e52f255d','139ea344-eb2c-ca62-99e9-5ff9e53540b4','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','2021-01-09 17:06:33',0),('da9108f5-b38e-0232-5abb-5ff9e5e600a2','6a088da8-3ef3-ae32-0436-5ff9e5741b98','e37c09b4-4849-7a46-7d80-5ff9e5b88722','2021-01-09 17:06:33',0),('dffde66c-cddb-e4bd-4d64-5ff9e5b60d7a','61e3666b-66b4-7e09-1df1-5ff9e5659eed','6119a10e-22af-9291-defa-5ff9e5a5d04f','2021-01-09 17:06:33',0),('e129816e-2ce6-a8e3-3ce9-5ff9e5b211a0','a4a4b79f-2e72-44fe-4e16-5ff9e5162442','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
INSERT INTO `accounts_opportunities` VALUES ('122403ea-d55c-df2a-fe95-5ff9e54b6f57','ab4e3a5a-9deb-c80b-a71c-5ff9e54469fb','6119a10e-22af-9291-defa-5ff9e5a5d04f','2021-01-09 17:06:33',0),('1675f00a-78be-3a49-f951-5ff9e47e938b','e9097530-dbaa-f1d8-cb70-5ff9e4cb8a41','8636dd93-aecd-acc3-7d25-5ff9e4661308','2021-01-09 17:06:33',0),('1acdbd71-ba52-408c-91ab-5ff9e47a332e','7fa260a7-5492-98ca-690a-5ff9e4fb8804','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','2021-01-09 17:06:33',0),('2176da5e-0ff9-8dd5-95bf-5ff9e479c767','cc518da3-f588-0393-d558-5ff9e43dcf37','1840c12c-603e-6c28-6ab4-5ff9e4f4c963','2021-01-09 17:06:33',0),('292d117c-66a4-922d-ad22-5ff9e5abf836','f2e4a50d-01bd-534e-2fa0-5ff9e5ec34d1','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','2021-01-09 17:06:33',0),('294f9d3f-165b-10a6-ffc7-5ff9e4762e7c','c9b86e7c-74f1-08f4-a4a2-5ff9e44028e7','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','2021-01-09 17:06:33',0),('30bfd9a4-63a7-4539-a04e-5ff9e4f9ee2b','64e289ed-9824-e5f6-b8c0-5ff9e40a1d0d','42a4f906-a97f-e814-95c4-5ff9e4f5f92a','2021-01-09 17:06:33',0),('3499acbb-8b0a-df9c-b8b0-5ff9e504ec62','12104dfa-647a-6626-b8b5-5ff9e5f23208','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','2021-01-09 17:06:33',0),('35185db0-0b6d-630e-b85f-5ff9e50ab834','d0cd48b3-f7db-439b-3d59-5ff9e55efd08','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','2021-01-09 17:06:33',0),('3f46ae83-d3ff-f4fb-a42b-5ff9e51f3616','dcba4b9b-4782-d1bf-05c7-5ff9e5fdf9cc','e37c09b4-4849-7a46-7d80-5ff9e5b88722','2021-01-09 17:06:33',0),('4196d22c-151d-8200-8f0a-5ff9e53235c0','c4611ef6-3b13-820c-97ec-5ff9e548a2fe','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','2021-01-09 17:06:33',0),('43768365-6951-5489-1a07-5ff9e4623dfe','d7230614-70ca-1108-5e70-5ff9e466c9e6','169da36d-2dac-b3b9-590a-5ff9e43e180d','2021-01-09 17:06:33',0),('47fe30dc-8650-7dbb-3c27-5ff9e51ffba2','2c28e910-47d9-dcb1-0aa3-5ff9e501e30c','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','2021-01-09 17:06:33',0),('4ded3c21-28e8-056e-0209-5ff9e41c5f67','c48db5e2-f5af-df9a-bd20-5ff9e4678024','243c9004-e246-96f6-4e65-5ff9e47fd593','2021-01-09 17:06:33',0),('5aec18a1-8ada-8336-dc92-5ff9e5947eae','e8507677-4065-97aa-885e-5ff9e56e03c2','d76fac61-12db-f067-1527-5ff9e55e0b3a','2021-01-09 17:06:33',0),('5b82d7b8-8420-ea0f-6cd7-5ff9e49bdb33','72ee954c-9d43-a577-4121-5ff9e4dfd6df','6989fefe-cd69-611b-03d8-5ff9e4e3a083','2021-01-09 17:06:33',0),('601c7c48-56d5-292e-9766-5ff9e4704caf','20c30464-bd37-ad79-0ed8-5ff9e4b5fdfe','bc78c90d-047f-84aa-f226-5ff9e4361490','2021-01-09 17:06:33',0),('68cef0b9-bdd5-2187-e199-5ff9e41378f1','360a7616-d74f-7bb7-c07c-5ff9e4ab12cf','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','2021-01-09 17:06:33',0),('6edb3ef5-aed2-9866-3f73-5ff9e567b24b','38784347-b71a-d670-7228-5ff9e50fac8f','43a27b00-6987-92d0-6019-5ff9e551bc06','2021-01-09 17:06:33',0),('6fe12a45-516b-c886-02c6-5ff9e5373211','1faaf5bb-c4e8-3ab2-0185-5ff9e5fad107','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','2021-01-09 17:06:33',0),('70b412c8-3440-d58b-d1d7-5ff9e54c4680','1b498193-0e32-7992-4df0-5ff9e59c7b1c','daf33abf-a900-a8b3-7f14-5ff9e50575a6','2021-01-09 17:06:33',0),('74655d31-6a29-f9a7-4340-5ff9e4800921','f3499a2f-40f4-11f7-464d-5ff9e40b4640','9069cc03-e955-384b-fb50-5ff9e4f28398','2021-01-09 17:06:33',0),('75539530-41f0-d694-dc74-5ff9e5279f74','551412fa-4594-f747-4d83-5ff9e567de5f','1d9384ea-662b-dcdb-d90b-5ff9e50458f3','2021-01-09 17:06:33',0),('7ff8a734-4e7f-8d45-d0e0-5ff9e517c4bd','3ae6cc18-39d4-e062-8bab-5ff9e56c3c44','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','2021-01-09 17:06:33',0),('88040344-4044-cfbe-f2a3-5ff9e49a76a2','6ed7c6d6-ac79-cafe-7e67-5ff9e4263579','66d88013-82df-90bf-fdd3-5ff9e48a94c9','2021-01-09 17:06:33',0),('8ad94142-9a67-039f-8f0c-5ff9e427ba6e','d69f65e3-bc09-01d5-0ad2-5ff9e407c03f','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','2021-01-09 17:06:33',0),('95ae0df4-b28d-afd0-c567-5ff9e5604221','c2505b43-369b-a85d-43c1-5ff9e5a8c8f3','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','2021-01-09 17:06:33',0),('9facdde8-90df-30f0-0706-5ff9e4c974a8','5d97f050-c3d8-582c-d39f-5ff9e44c3f03','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','2021-01-09 17:06:33',0),('a10e96be-cf5c-71a8-4743-5ff9e55e0fdf','7c6e157c-0a87-3b0d-328e-5ff9e5ba53d7','76d15820-4e44-ea7a-eebc-5ff9e505aca5','2021-01-09 17:06:33',0),('a19bf6ea-fc98-35f1-b668-5ff9e5085c2d','5196bebd-89a1-9243-03f2-5ff9e5a04614','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','2021-01-09 17:06:33',0),('a6964e9a-214a-0bbf-1671-5ff9e4915bc8','864c3a4e-9956-3f48-e25e-5ff9e45f0694','91c89470-f34b-f69c-7e6b-5ff9e4861146','2021-01-09 17:06:33',0),('adb27e9d-97c9-9a06-9def-5ff9e5ce12b2','6a008065-bacd-6516-656b-5ff9e5677ad2','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','2021-01-09 17:06:33',0),('b46ba0d9-af42-96b1-5f55-5ff9e416e7bf','49131211-96aa-0082-d131-5ff9e4f26176','be526ddc-bc43-eabe-6d25-5ff9e4852c8e','2021-01-09 17:06:33',0),('b63db907-95ba-c9c5-a1ff-5ff9e56b5687','7a640393-459c-f450-8446-5ff9e50f3f4a','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','2021-01-09 17:06:33',0),('ba0a0cfa-4189-5942-93b1-5ff9e541852d','9c1ce69a-f2fa-28e8-a524-5ff9e5cf22b1','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','2021-01-09 17:06:33',0),('bb6d6089-1056-95d7-285c-5ff9e52e69a4','6a6c4199-d01e-e16e-611d-5ff9e5d81fa0','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','2021-01-09 17:06:33',0),('be5ea637-f68f-2262-2aba-5ff9e56c577b','59ae8a84-e196-ffb4-e169-5ff9e5787a0d','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','2021-01-09 17:06:33',0),('bf857a32-4ebe-a67d-ed61-5ff9e437b683','1e0c38d1-b445-999f-61a3-5ff9e4c9fe63','7ea01596-83e7-624d-c792-5ff9e46dd493','2021-01-09 17:06:33',0),('c2c5de2d-b1b8-2756-3fc7-5ff9e55bb4a2','7a246200-3de4-5c93-d8b3-5ff9e5b792b8','86748ca4-8574-a46f-0187-5ff9e5608ccd','2021-01-09 17:06:33',0),('c3df9de6-c9f9-0150-dcd4-5ff9e5a35e82','e3e66489-cca9-c33c-ad99-5ff9e588bf50','62956c44-79cd-b16e-b306-5ff9e5fa24a9','2021-01-09 17:06:33',0),('c5b13502-5017-8bbd-da01-5ff9e5684f68','6ec66b9a-4080-40cd-a66c-5ff9e55d53c4','da921383-3870-9526-247e-5ff9e5748b4e','2021-01-09 17:06:33',0),('cac0d7b2-24aa-a51b-a122-5ff9e5ebc593','8b780bbc-c1fd-5f25-06b2-5ff9e53975f5','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','2021-01-09 17:06:33',0),('d9395bbe-f59e-f8d8-8db0-5ff9e468fd96','88f318e8-7647-6e1c-7540-5ff9e48bab08','3b1771a5-c851-95b1-b53f-5ff9e4a844b0','2021-01-09 17:06:33',0),('dc370714-2884-9565-86a9-5ff9e5ac5702','b09cf311-e133-3629-ebcc-5ff9e524ec51','17c08950-1669-c8b1-54c4-5ff9e59a14a8','2021-01-09 17:06:33',0),('de409a3c-ba7d-6ddf-3fc3-5ff9e46696f0','912e7348-ec6e-f9b5-05f6-5ff9e4696c22','64613793-c9b7-a7c0-97c2-5ff9e4975faf','2021-01-09 17:06:33',0),('ebc30858-e887-48eb-9355-5ff9e5a4036d','811df0cc-bc07-4518-a821-5ff9e59adc20','83789240-ef96-8047-7ea0-5ff9e50536b1','2021-01-09 17:06:33',0),('edc1317f-52e4-6486-0715-5ff9e51b0554','d278656f-d901-09f7-b83d-5ff9e5c0edff','9721d66f-e546-f89e-0cd8-5ff9e5a0a814','2021-01-09 17:06:33',0),('f351479c-0c28-0457-881f-5ff9e4e754f9','7ffe22e9-f885-8e5b-2429-5ff9e4bb8931','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','2021-01-09 17:06:33',0),('f3cf1b5d-3499-f5f3-60e9-5ff9e5a98c7b','a319e717-e6da-82fc-c934-5ff9e5fbd1b9','a18dac90-9853-e440-c497-5ff9e42723b0','2021-01-09 17:06:33',0),('fcbf0554-c7e2-c2bd-2184-5ff9e5fc090b','ce607cbd-9c2d-34f0-352d-5ff9e5af5a9d','9f43bb09-45cc-123c-bd41-5ff9e5d41008','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('107b0ddd-b02e-b0ad-9fa9-5ff9e3e5f41b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Accounts','module',89,0),('107dc06c-89cc-fd68-2470-5ff9e33e7dc4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','TemplateSectionLine','module',90,0),('10eba4e9-c9a9-d4f7-d21c-5ff9e3298998','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_Contracts','module',90,0),('117105ef-6f48-6950-02e1-5ff9e39cdabe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOP_Case_Updates','module',90,0),('121bb62f-6cc7-70b0-3caf-5ff9e3695383','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','jjwg_Areas','module',90,0),('1236d263-ba2f-5c69-b1bd-5ff9e3e70963','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_PDF_Templates','module',90,0),('12724bc4-9afc-4e10-50a3-5ff9e3241471','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Leads','module',90,0),('13400500-4674-bef9-cc07-5ff9e3425cbe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Meetings','module',90,0),('145e0cd0-5db0-4919-18be-5ff9e38f35a5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','jjwg_Maps','module',90,0),('15c504ef-c984-bcb8-d055-5ff9e3cf43b3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOK_KnowledgeBase','module',90,0),('15fa67d8-8d36-ef4f-6620-5ff9e34c3818','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Campaigns','module',90,0),('1676d98f-8c69-4193-23ee-5ff9e36cd73f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AM_ProjectTemplates','module',90,0),('16a86d24-b1e6-09d6-94c0-5ff9e3f963f1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','EAPM','module',90,0),('16b006eb-3e69-4893-0485-5ff9e3b3c7b5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Accounts','module',90,0),('17b6fb00-1e98-9f18-f664-5ff9e3d877dc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_Contracts','module',90,0),('17f32214-9b25-e0d7-1d6a-5ff9e341c2aa','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','TemplateSectionLine','module',89,0),('18968b72-fe52-0df3-3068-5ff9e357b962','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Project','module',89,0),('193c2fa5-a1ca-754c-af72-5ff9e3dc06f9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOD_Index','module',90,0),('1957bdfd-84c8-351a-560c-5ff9e3235490','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','SurveyQuestionResponses','module',90,0),('1a61001a-0137-68e0-34cf-5ff9e394c0e6','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AM_TaskTemplates','module',89,0),('1a664f15-2460-b62d-bc23-5ff9e34fdb22','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOW_WorkFlow','module',90,0),('1be8ffaf-6003-b898-95a4-5ff9e3035031','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Spots','module',90,0),('1c92545b-ee03-12b8-6256-5ff9e311984e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_Product_Categories','module',90,0),('1d27c3d9-df69-73fb-fa08-5ff9e390fdc4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','ProjectTask','module',90,0),('1d31570b-32ef-d517-38e0-5ff9e3955175','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','SurveyQuestionOptions','module',90,0),('1d4c0572-2073-b72d-fad9-5ff9e35d6e83','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','EmailTemplates','module',90,0),('1dfede94-471b-741f-d77a-5ff9e39ea4c8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Contacts','module',90,0),('1f01544e-bbed-3e02-7dd4-5ff9e3881865','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','OutboundEmailAccounts','module',90,0),('1f47c418-4cba-faa0-05ae-5ff9e3f607d8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOW_Processed','module',90,0),('1f4b3a5d-c50b-342d-9657-5ff9e3e246db','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Prospects','module',89,0),('1f960148-b75b-c713-a046-5ff9e37d15d7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_Invoices','module',89,0),('1fce1190-4bd2-2360-d4ea-5ff9e3f4c5b1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','FP_Event_Locations','module',90,0),('205da80b-1acc-4732-16f8-5ff9e3e8df8d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Notes','module',90,0),('20a0bb5e-a524-e182-1c54-5ff9e3d8a5f9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','EmailMarketing','module',90,0),('20bc9217-0b26-af08-21dc-5ff9e3af6cac','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','FP_events','module',90,0),('21602351-a69f-8b4d-be50-5ff9e3552ad9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Surveys','module',90,0),('21be59ae-3846-6715-7343-5ff9e39030c8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOD_IndexEvent','module',90,0),('22442458-c740-374d-037d-5ff9e326ed1f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Bugs','module',90,0),('22e5f53e-84c5-56a9-d0ac-5ff9e3ab2e86','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Tasks','module',90,0),('24960c1a-ab29-3539-5010-5ff9e3faed62','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Campaigns','module',90,0),('2503b914-c6f4-24da-e9d2-5ff9e3625f87','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Calls','module',90,0),('275fb06e-bacd-b26d-2104-5ff9e331d434','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','EAPM','module',90,0),('27f00271-72ff-cb32-5acf-5ff9e3e49e8c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AM_TaskTemplates','module',90,0),('28010915-98e6-3807-dc9c-5ff9e3f381dd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','jjwg_Markers','module',89,0),('2826e426-516c-305c-dba2-5ff9e38faed8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Alerts','module',90,0),('28ae1f71-e91f-57f5-c39f-5ff9e38ebb11','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','EmailTemplates','module',90,0),('28eae2de-7a65-d9ff-a571-5ff9e3395d78','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','FP_events','module',89,0),('2961c592-c0af-0192-9c4b-5ff9e329abfc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','SurveyResponses','module',90,0),('29682bc5-7688-f931-67c0-5ff9e38e6390','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','SurveyQuestionResponses','module',90,0),('2998eb54-7290-95d4-d57e-5ff9e3c2f019','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOD_IndexEvent','module',90,0),('2a616ae5-f30d-92a6-1c55-5ff9e3271eb0','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_PDF_Templates','module',90,0),('2a748fd8-46e8-4baf-ace2-5ff9e34c3056','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOW_WorkFlow','module',90,0),('2ab90aaa-7062-89e5-baf7-5ff9e3d74bc0','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','EmailMarketing','module',90,0),('2ace20fb-2953-d669-a5af-5ff9e3d869f7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','ProjectTask','module',90,0),('2b086921-03a3-29b0-0d9f-5ff9e3972661','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOP_Case_Events','module',90,0),('2bb3a548-c3fe-bccc-08ff-5ff9e3ee7475','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','jjwg_Markers','module',90,0),('2bde9c3f-a3fd-8c8c-bce6-5ff9e34f85f2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOR_Reports','module',90,0),('2d366b5c-77be-8b81-1ba3-5ff9e321e272','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Meetings','module',89,0),('2d3d5f19-ba4d-d1af-6c4a-5ff9e395f2a5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_Quotes','module',90,0),('2d6daa7c-17e6-b402-d6a3-5ff9e38b7b7b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Prospects','module',90,0),('2d8c2222-d40a-3075-136c-5ff9e38ffc6a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','ProjectTask','module',89,0),('2e9207e2-e50d-d679-377b-5ff9e3c8cb24','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','SurveyQuestionResponses','module',90,0),('2e974762-1cb2-d9a4-64cc-5ff9e3946b2b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Contacts','module',90,0),('2f6d0631-094d-e654-61d6-5ff9e3c322be','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','SecurityGroups','module',90,0),('30792d12-784c-5a76-5d94-5ff9e3a6a649','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Tasks','module',90,0),('31a594ba-4ba4-5ed1-9d38-5ff9e38c55c7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','ProspectLists','module',90,0),('31af9088-3c19-126f-a102-5ff9e38492ab','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Notes','module',89,0),('32054307-0475-b17b-7c72-5ff9e38ae544','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOD_IndexEvent','module',90,0),('32107902-4f15-615f-1760-5ff9e33d9d63','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_Product_Categories','module',89,0),('321fdfe1-63ea-c8cb-4d3a-5ff9e3354acd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','OutboundEmailAccounts','module',90,0),('32d6e6c6-e825-98e2-7f46-5ff9e360e832','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','jjwg_Areas','module',90,0),('33540e24-a0eb-ccdb-b572-5ff9e36caf0d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_Invoices','module',90,0),('346ed786-dbe6-684b-e0f5-5ff9e30909c3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Cases','module',90,0),('360d7b9c-cb96-ab61-113c-5ff9e37ef91a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','EmailTemplates','module',90,0),('360ec498-5153-45a6-08de-5ff9e3a5a00f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Meetings','module',90,0),('36aba5f2-1f69-9e95-1879-5ff9e308403b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Project','module',90,0),('37ed9565-480c-95d1-59ad-5ff9e35a8cdb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOR_Scheduled_Reports','module',90,0),('383a0d4c-f532-643c-e463-5ff9e34b9e0e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Contacts','module',90,0),('387774da-7301-3744-1ebb-5ff9e3b4da33','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','ProjectTask','module',90,0),('399fc060-cfbe-3c61-041d-5ff9e3fc9937','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Leads','module',90,0),('39dae4b7-bded-e433-76dc-5ff9e3587b77','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Bugs','module',90,0),('39e90196-bc1f-4810-61c2-5ff9e3b82263','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','SurveyQuestionResponses','module',90,0),('3a2bad8b-2473-522b-ebe4-5ff9e31acb3f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOR_Scheduled_Reports','module',89,0),('3b0b2178-94a3-891b-83b9-5ff9e395cacb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Prospects','module',90,0),('3b7c62ca-173c-7a4a-bfdc-5ff9e3d82cfb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_Product_Categories','module',90,0),('3bbf8fa9-383a-586f-683e-5ff9e34c87fd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','ProjectTask','module',90,0),('3c8b54bd-ff9d-b455-f942-5ff9e31cda89','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Spots','module',90,0),('3cfb090e-82e7-ecda-c979-5ff9e354b749','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOP_Case_Updates','module',90,0),('3e127400-2a50-de64-c65d-5ff9e3ec0b72','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Bugs','module',89,0),('3e3d7cf6-8688-6121-a727-5ff9e38e065a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Tasks','module',90,0),('3fae4854-15d9-daeb-ddde-5ff9e3149dce','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','jjwg_Address_Cache','module',90,0),('3fdd4888-896f-10e9-a5d4-5ff9e31e623e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Notes','module',90,0),('3fee739c-0dc3-a065-f6c4-5ff9e3acdb16','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_PDF_Templates','module',90,0),('40620bd4-3666-fedc-bd91-5ff9e342d0ff','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_Product_Categories','module',90,0),('40704956-80f9-0d99-fa74-5ff9e3846bf7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOP_Case_Events','module',90,0),('4141b290-4125-f63c-6160-5ff9e3015b74','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Project','module',90,0),('41582513-5cb9-cd0b-1be1-5ff9e3f6dca2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','SurveyResponses','module',90,0),('41a302e0-e0c3-1ab0-f5f8-5ff9e3ba4f29','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','FP_Event_Locations','module',90,0),('41be0940-ed1f-f85b-dabb-5ff9e30966cd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AM_ProjectTemplates','module',90,0),('41d0114d-0c77-fa97-c9d8-5ff9e3a4433c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('41d4719b-f853-82cb-2627-5ff9e30187e3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOW_WorkFlow','module',89,0),('420b0659-ec91-515b-3338-5ff9e317d847','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Emails','module',90,0),('4255bfdb-4615-612c-4460-5ff9e3b94eb7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Campaigns','module',90,0),('43046a9b-31c6-4eb4-603a-5ff9e31887b2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','OutboundEmailAccounts','module',90,0),('431fa068-5d30-14d6-d372-5ff9e389db80','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_Invoices','module',90,0),('43550b90-fd98-7b64-918e-5ff9e36620ec','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AM_ProjectTemplates','module',90,0),('43acce0b-d4b4-ccd4-58f2-5ff9e337f922','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','EmailTemplates','module',90,0),('44422814-b991-fb28-56e6-5ff9e3e8c096','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Users','module',90,0),('45073a8f-01c6-51f4-7956-5ff9e375e4ce','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOP_Case_Updates','module',90,0),('453b5a58-8b1d-b091-1ee0-5ff9e3fe65d8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_Products','module',89,0),('4603705c-9183-00cc-2bbd-5ff9e3d9499c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','ProjectTask','module',90,0),('4617f4ba-3bf8-7355-cc05-5ff9e3cf0857','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Opportunities','module',90,0),('479c6eb5-68d7-a74b-0e95-5ff9e337ae5e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOW_Processed','module',89,0),('47c2dea2-9bf3-56de-364e-5ff9e3de05bf','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Alerts','module',90,0),('488fcd32-89d2-55c2-83ed-5ff9e3fabc6d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Prospects','module',90,0),('492a09ae-53b1-ec56-1503-5ff9e3ad0b38','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Calls','module',90,0),('492c2427-f85c-9226-a6e6-5ff9e3ce6b43','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Contacts','module',90,0),('495ade34-a1bf-24e3-fc15-5ff9e308d601','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AM_TaskTemplates','module',90,0),('49608201-743c-f9ce-0993-5ff9e3c63541','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOK_KnowledgeBase','module',89,0),('49669d93-18b2-c2a2-957c-5ff9e306678a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_Products','module',90,0),('4a90b160-995c-ea44-f7d1-5ff9e3663f76','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Spots','module',90,0),('4b0a85db-4a73-ee7d-9c0a-5ff9e3b08c77','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Surveys','module',90,0),('4bbcf043-d129-dffd-89a6-5ff9e3aa6283','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Tasks','module',90,0),('4ced426d-5996-4433-0650-5ff9e38cc6bc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Accounts','module',90,0),('4d235a0c-50df-5a0f-cb41-5ff9e37cfd4d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOW_Processed','module',90,0),('4da6c5b6-21c9-7a33-e4d7-5ff9e3232c08','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_Product_Categories','module',90,0),('4dddadf2-1f33-79d8-6b60-5ff9e3947620','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','EAPM','module',90,0),('4e4cd6f6-80f3-77f0-8092-5ff9e3854047','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOR_Reports','module',90,0),('4eca90e5-fc86-d0e0-3811-5ff9e35cf2ec','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOD_Index','module',89,0),('4ece1709-2594-3717-0cc5-5ff9e36c3f74','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Bugs','module',90,0),('4f176380-a420-c648-0370-5ff9e3755ace','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Project','module',90,0),('4f7ed723-1ed8-32c1-5b49-5ff9e32b74c5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Bugs','module',90,0),('4fbff2b9-259e-8654-5c70-5ff9e37fb49a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOK_KnowledgeBase','module',90,0),('4ff63718-88ce-fc26-7b9a-5ff9e317de4e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOD_IndexEvent','module',90,0),('500c3b27-2f14-d031-8ebd-5ff9e38fcfe5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOW_WorkFlow','module',90,0),('502112c5-8947-f3e6-65cc-5ff9e344e0c0','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOP_Case_Events','module',90,0),('505b33a2-c93f-f954-f76d-5ff9e35cab65','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','ProspectLists','module',89,0),('506b0a4c-f50b-3f93-a42b-5ff9e3325c7a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','EmailMarketing','module',90,0),('50a9077c-b225-d743-32e2-5ff9e3b1e852','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Notes','module',90,0),('51222406-f77d-ec85-c826-5ff9e3fca04d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Leads','module',89,0),('5316533c-32df-505f-63c2-5ff9e35d5572','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('5367c39a-3bac-9b77-9011-5ff9e37747f7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Documents','module',90,0),('539abcbb-3b14-a908-f92f-5ff9e3a35b3b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_Products','module',90,0),('53e35271-8753-6f9c-2d09-5ff9e3015239','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_Invoices','module',90,0),('54162b88-9205-986f-588d-5ff9e34bec4f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','SecurityGroups','module',90,0),('54655093-8155-d4a3-070a-5ff9e37d51ee','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','ProjectTask','module',90,0),('54cece09-5052-af2a-a125-5ff9e395c523','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','OutboundEmailAccounts','module',89,0),('54d85208-4c96-fc27-d0b4-5ff9e3719c29','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Users','module',90,0),('56e334a2-243a-4593-4647-5ff9e338bd66','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Spots','module',90,0),('57734eed-d8f3-7e8d-f239-5ff9e3ef5f88','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Notes','module',90,0),('57ca93f4-4645-688f-ef13-5ff9e32142d6','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOK_KnowledgeBase','module',90,0),('5845bbb5-e763-310f-5f23-5ff9e3c09987','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','jjwg_Address_Cache','module',89,0),('58d24d9a-96c6-5deb-f00d-5ff9e3a6facd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOW_WorkFlow','module',90,0),('595c3b67-85c9-883c-15a2-5ff9e3322e02','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Tasks','module',90,0),('59f80c15-0c06-3edf-a1ba-5ff9e35dcbe7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','SurveyResponses','module',90,0),('5a2f3a82-eb8b-d15a-6d87-5ff9e3da5729','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AM_TaskTemplates','module',90,0),('5a3d953f-2581-764a-bcc4-5ff9e3e67fc0','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Accounts','module',90,0),('5b8d811c-332a-e41d-99fa-5ff9e3db2936','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_Product_Categories','module',90,0),('5c089ba7-6e8d-b108-31c4-5ff9e3dcce12','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AM_ProjectTemplates','module',90,0),('5ce00733-f2fa-147c-0df0-5ff9e325ecc9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','TemplateSectionLine','module',90,0),('5df79a9c-ac76-0f11-045b-5ff9e364c808','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Project','module',90,0),('5ee5aa63-0ef2-85ad-355b-5ff9e34c21f3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Bugs','module',90,0),('5f2940cc-5198-f6c2-724c-5ff9e36a4fe4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','jjwg_Areas','module',89,0),('5f78f18c-6214-61dd-735e-5ff9e3de2171','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Accounts','module',90,0),('5fc97816-e28f-829f-363e-5ff9e3c00dab','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Bugs','module',90,0),('5fd7aa3a-9a71-4079-e90e-5ff9e3ba394c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','jjwg_Areas','module',90,0),('5ff7feed-275d-ae44-886d-5ff9e35fd038','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOP_Case_Updates','module',90,0),('60473053-3206-a4e5-2651-5ff9e34f70ec','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOW_WorkFlow','module',90,0),('60ae2ece-084a-b8b2-d1e9-5ff9e3b33826','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Leads','module',90,0),('60de046a-f6ca-3666-b3d7-5ff9e303aebc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_Products','module',90,0),('60f82130-7779-309b-4baa-5ff9e321a2d3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','SurveyQuestions','module',89,0),('6159d4df-b4aa-070f-d4f3-5ff9e3253d79','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Opportunities','module',90,0),('61786478-0b26-0e00-652c-5ff9e39ac843','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Tasks','module',89,0),('61860fa4-b289-ffbf-415e-5ff9e36c3580','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Emails','module',90,0),('61d9e982-b5e6-9813-0ae1-5ff9e365fc08','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','EmailMarketing','module',90,0),('645fabc5-cb5f-3152-358f-5ff9e323fcfb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Spots','module',90,0),('64f4714b-65be-f58f-73f9-5ff9e34a3124','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOR_Reports','module',90,0),('652600cd-5deb-c1d7-22d0-5ff9e38e4a7f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Users','module',90,0),('6584bdac-f557-03e6-5e07-5ff9e3c0a3a3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','jjwg_Markers','module',90,0),('66daa178-5637-3230-963d-5ff9e30a5e1b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','ProspectLists','module',90,0),('678a382a-6b5e-ee37-3c5e-5ff9e3d6fcc8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','SurveyResponses','module',90,0),('67ef82eb-bdf4-ce50-b975-5ff9e337541b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Accounts','module',90,0),('685ed01f-3c08-f3f3-f992-5ff9e3e1c049','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','SurveyQuestionOptions','module',90,0),('68b34c1e-0f57-e776-de55-5ff9e35643ee','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','jjwg_Markers','module',90,0),('69598165-4f12-75ba-4d0b-5ff9e35c1176','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOR_Reports','module',89,0),('6a30f5a6-2143-dc46-02ac-5ff9e3eee90d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Surveys','module',89,0),('6ca8423e-7755-0a37-ec1c-5ff9e34e46c9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Alerts','module',90,0),('6d65be6c-9ce6-b940-0833-5ff9e3ab84cb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Documents','module',90,0),('6d8a0aba-88bf-9cf9-efa8-5ff9e3a4e038','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Bugs','module',90,0),('6de86a25-a331-76a0-430a-5ff9e3aeb16d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOD_Index','module',90,0),('6e363529-d516-e102-8981-5ff9e3ac2bb9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_Quotes','module',89,0),('6efed08f-a5f5-9cfa-668e-5ff9e39467fe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Opportunities','module',90,0),('6f3afb58-6dc0-1b20-a113-5ff9e306e20a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','FP_events','module',90,0),('6f84f380-6724-ee3c-9f07-5ff9e36aae1f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','EmailMarketing','module',90,0),('6ff3e792-6ca1-ddb6-a8d0-5ff9e36dbc9f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','EmailTemplates','module',90,0),('703a0d80-9e33-d504-5db6-5ff9e3166100','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','SurveyQuestions','module',90,0),('708d5844-c43a-2852-4a45-5ff9e3f48d3a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Project','module',90,0),('70b6d73d-b5b1-6c10-a0a2-5ff9e355f25e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Calls_Reschedule','module',90,0),('70cd6e93-7223-ba3a-51c7-5ff9e3c0bb87','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOW_WorkFlow','module',90,0),('714c67ca-517c-c4a8-02e8-5ff9e3ce18d4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_Quotes','module',90,0),('71cd94d4-5afc-389d-25c7-5ff9e3cce2df','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_Contracts','module',90,0),('730cb5be-14d8-e9c1-0b97-5ff9e3d753a8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOR_Scheduled_Reports','module',90,0),('734fd534-7df6-b7ad-4ebc-5ff9e31dd022','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Surveys','module',90,0),('742242a4-9cfb-32b3-1ba8-5ff9e3390dd6','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Users','module',90,0),('745e0088-363c-c6e8-154c-5ff9e35afef5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','TemplateSectionLine','module',90,0),('74fa0e5b-79e5-db2b-c1bf-5ff9e36d8177','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','SurveyResponses','module',90,0),('75a569a9-bec0-cd90-2e8a-5ff9e3bcc7d1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Accounts','module',90,0),('76d899b1-88ee-e0e4-943e-5ff9e35516e4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Prospects','module',90,0),('774e3050-5b74-6304-e9a6-5ff9e31b61c4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_Invoices','module',90,0),('77d361b7-c8ee-b0c8-f4b6-5ff9e3c4bb21','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOD_IndexEvent','module',89,0),('77e6ddda-02b6-1cfd-7d98-5ff9e3b41939','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Calls_Reschedule','module',90,0),('7814cd34-5233-cb41-bc64-5ff9e395c91b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','SecurityGroups','module',90,0),('787c8130-0958-7384-f107-5ff9e33d57df','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','jjwg_Markers','module',90,0),('7ae586c9-75c7-b420-17fc-5ff9e3e13d47','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Leads','module',90,0),('7af285ed-dd47-6d50-83a8-5ff9e3c01884','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Documents','module',90,0),('7c69cd7f-97fa-bb2f-acf8-5ff9e3e56739','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_Quotes','module',90,0),('7cac8f53-96d0-9e1a-0f97-5ff9e3b78d10','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Opportunities','module',90,0),('7d2a9a79-b237-e496-19c3-5ff9e333ed06','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','EmailMarketing','module',90,0),('7d34da3e-7333-7aed-304c-5ff9e36da866','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','FP_Event_Locations','module',89,0),('7db5e22d-b117-91a5-ba50-5ff9e3bae059','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOD_Index','module',90,0),('7dce2616-38d6-12be-aac3-5ff9e38f072c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','EmailTemplates','module',90,0),('7ea88929-3773-c59c-697a-5ff9e334d6da','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','jjwg_Markers','module',90,0),('7f2dc437-bf08-63b3-f5d5-5ff9e37c42fe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Opportunities','module',89,0),('7f46d276-4ed5-2326-8fa6-5ff9e39cfcaf','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOP_Case_Events','module',89,0),('7fb12a1e-cf92-2502-93d0-5ff9e3750b3e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','SurveyQuestions','module',90,0),('8022596f-1154-e51b-35a0-5ff9e394701a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOW_WorkFlow','module',90,0),('80998de3-2abc-3802-0aac-5ff9e3628c44','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Project','module',90,0),('81c4533b-bf60-cde3-0f5e-5ff9e307d2e4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Users','module',90,0),('82e903c7-9f8e-9af4-2886-5ff9e35c28c5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','FP_Event_Locations','module',90,0),('83add475-ed96-409b-3f67-5ff9e37559f4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Campaigns','module',90,0),('8427db57-7eb6-9ac8-3070-5ff9e32e3f26','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Leads','module',90,0),('857bac08-bbe5-8fc4-ce5d-5ff9e32efd09','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOK_KnowledgeBase','module',90,0),('85a449e0-1c79-75b0-af51-5ff9e3829f27','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','jjwg_Areas','module',90,0),('86490010-5cde-e841-1241-5ff9e37f66e5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOP_Case_Events','module',90,0),('872de88a-2310-4271-a6ed-5ff9e35d6099','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AM_TaskTemplates','module',90,0),('8760fb49-7b79-2244-ade9-5ff9e3c20293','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AM_ProjectTemplates','module',89,0),('876c201c-3673-dd5e-95eb-5ff9e33a5b18','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Notes','module',90,0),('88a44511-4712-944c-339e-5ff9e3d9531b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Documents','module',90,0),('89c40b27-a7ad-7c53-6f58-5ff9e3b836a3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_Quotes','module',90,0),('8a1c3642-b5ef-004b-6cca-5ff9e3576aca','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_PDF_Templates','module',90,0),('8a51d2c1-a570-f512-d79a-5ff9e384a5ed','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Opportunities','module',90,0),('8a633ce3-3f47-1477-cd80-5ff9e371835b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','jjwg_Address_Cache','module',90,0),('8a7e8776-5c96-e0f2-b625-5ff9e3399576','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOR_Reports','module',90,0),('8b50c5fa-de23-2413-1b70-5ff9e3369247','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','SurveyQuestionOptions','module',90,0),('8b829868-4ff5-72b6-0936-5ff9e32d2612','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','OutboundEmailAccounts','module',90,0),('8c0a2622-b9e3-4c77-434f-5ff9e3b7556d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOD_Index','module',90,0),('8c7a4c76-ef39-96ee-ae0f-5ff9e3e8e6e3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Emails','module',90,0),('8dafcdb3-fd3b-5feb-49b1-5ff9e36a94d4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOR_Scheduled_Reports','module',90,0),('8f55a510-f6ae-97c2-d022-5ff9e32c552a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Users','module',90,0),('8fec990f-daaa-0e43-f50a-5ff9e37cc547','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','SurveyQuestions','module',90,0),('909bc1ac-3d08-ff04-1d71-5ff9e3e2810a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_Product_Categories','module',90,0),('909f217e-164d-2837-8ae1-5ff9e3ed7ec1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Accounts','module',90,0),('90f25146-442b-ff49-1097-5ff9e388fbb4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOD_IndexEvent','module',90,0),('9128095d-d20f-91de-e169-5ff9e369c737','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_Contracts','module',89,0),('9307e8c1-f583-d16b-594f-5ff9e3662f5c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOW_Processed','module',90,0),('935cae3f-e0b7-2443-e749-5ff9e3ed14c2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Leads','module',90,0),('939d2c2e-ac9f-c8da-4cf8-5ff9e391003a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOD_Index','module',90,0),('93a3d5e8-21f7-f7af-9b2e-5ff9e3c1da08','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Surveys','module',90,0),('94272bdd-54ca-3f86-51be-5ff9e3519b03','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_Invoices','module',90,0),('9458f501-8534-ecf4-6305-5ff9e31a8c8e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','TemplateSectionLine','module',90,0),('9558e668-c624-6f53-a9c9-5ff9e3554786','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Opportunities','module',90,0),('95e6e116-6265-4796-d10c-5ff9e34e2cd9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AM_ProjectTemplates','module',90,0),('95e8a173-55f1-3b6d-7a64-5ff9e33e8dde','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','FP_events','module',90,0),('962c2e77-34b0-03ff-91f1-5ff9e32f9a64','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Documents','module',90,0),('962d23ff-5b5b-0397-7572-5ff9e36c0c41','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Calls_Reschedule','module',90,0),('97ca71ae-dfad-9b9e-6b0b-5ff9e3665c5f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','ProspectLists','module',90,0),('97e45b1d-4053-bb38-2f04-5ff9e33d3305','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Calls_Reschedule','module',89,0),('98167d7d-37c5-9193-0cf7-5ff9e3a43c60','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','jjwg_Address_Cache','module',90,0),('98e5ac2c-20cc-8b56-f344-5ff9e33d30c5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Meetings','module',90,0),('99125b85-c783-001b-eb35-5ff9e3f7562a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOS_PDF_Templates','module',89,0),('991a488a-cb1d-139c-c897-5ff9e30e4ac5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Project','module',90,0),('9977b52c-5015-1baa-ea19-5ff9e38af17b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Calls','module',90,0),('9a2abebf-1fe9-2e7a-8261-5ff9e3c748b7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Prospects','module',90,0),('9aa8765e-268b-a174-217a-5ff9e3358c31','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Surveys','module',90,0),('9b52d212-91aa-b32a-3ccc-5ff9e343d563','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('9b935e52-cf4e-fa9c-9685-5ff9e340b580','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Tasks','module',90,0),('9ba20b3e-d8cf-2124-5b3c-5ff9e3461030','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','SurveyQuestionResponses','module',89,0),('9cc9e508-66ad-ab87-85f1-5ff9e334d4d4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Emails','module',90,0),('9e0c0b20-c3d3-e06c-8d18-5ff9e3d9a527','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Prospects','module',90,0),('9e170816-a4dc-d29a-b002-5ff9e318b966','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','FP_Event_Locations','module',90,0),('9eba3eda-0077-59fa-dc55-5ff9e3aa40f4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOP_Case_Events','module',90,0),('9f854eb3-eb8e-14a6-c6b6-5ff9e34179cf','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_Products','module',90,0),('9fbbbe03-78c8-154a-3542-5ff9e3166f1f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Cases','module',90,0),('9fda9d10-0821-de00-791e-5ff9e39cd567','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','SurveyQuestions','module',90,0),('a08f2fbd-512c-77b7-ef16-5ff9e3168e90','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('a0f96ece-7950-fac0-62c4-5ff9e3d6ce37','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Leads','module',90,0),('a1709605-0fc2-d3ad-2df4-5ff9e3d15dae','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','FP_Event_Locations','module',90,0),('a17f5c9e-0443-5cde-b0ce-5ff9e3e96e21','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','jjwg_Maps','module',89,0),('a1f41633-c955-c9dd-79c6-5ff9e3c09774','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','TemplateSectionLine','module',90,0),('a23e12ca-a98b-6351-0016-5ff9e3d36f3e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AM_TaskTemplates','module',90,0),('a2986998-8532-50cd-dd01-5ff9e37b3897','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Meetings','module',90,0),('a3bfc37a-fee0-14a0-a995-5ff9e3c196a5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','OutboundEmailAccounts','module',90,0),('a3ff08c2-8530-d31f-4f67-5ff9e3a243b0','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Documents','module',90,0),('a4e22d20-a0ac-f98c-95b2-5ff9e32f9261','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','ProspectLists','module',90,0),('a4e999e8-19b6-a709-6ce0-5ff9e3be9c56','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Calls_Reschedule','module',90,0),('a4ffa02b-7288-b2da-cf85-5ff9e394f08f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','EmailTemplates','module',89,0),('a50ddb88-bbf3-f44d-235e-5ff9e3cf4283','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','SurveyQuestionResponses','module',90,0),('a5654728-2376-e097-5cee-5ff9e3562dbb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Users','module',89,0),('a62648fd-80dd-e0f5-288d-5ff9e3e75a75','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','SurveyResponses','module',90,0),('a6c62479-91a9-4864-ff97-5ff9e3ff3890','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_PDF_Templates','module',90,0),('a6e343fe-620e-d3cf-f199-5ff9e3da5c19','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','SurveyQuestionOptions','module',89,0),('a771f586-8d31-718b-6134-5ff9e3e91d0c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Contacts','module',90,0),('a9393f3f-904f-193b-5b6e-5ff9e319870f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','jjwg_Address_Cache','module',90,0),('aaacaa20-93fd-fab6-0553-5ff9e3d6515c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Contacts','module',89,0),('aaacd7d7-6f06-60c6-ec22-5ff9e33e3c9b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Tasks','module',90,0),('ab3ca467-bbe0-2858-d658-5ff9e3d9d510','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOW_Processed','module',90,0),('ab7669b5-1c3c-53e4-83ce-5ff9e3e751ab','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Calls','module',89,0),('ac3ae214-84fc-d573-f668-5ff9e3d9b174','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOS_Contracts','module',90,0),('acabc44e-7a57-9d8c-4f74-5ff9e3cb5e17','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','SurveyQuestions','module',90,0),('acee1228-1b70-1a0c-69dd-5ff9e364a4c3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Emails','module',90,0),('ad080bfd-1a83-bf15-6165-5ff9e30c434c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Cases','module',90,0),('ae00bb47-4365-8537-803c-5ff9e31b7681','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Emails','module',89,0),('ae2b5c9f-e6e0-77ec-9041-5ff9e37df18d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('ae90c6dd-2ab0-8043-fe57-5ff9e385613e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','jjwg_Areas','module',90,0),('aecd89ab-e88e-f96c-19ce-5ff9e33de347','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','jjwg_Maps','module',90,0),('aeea2825-44c2-d917-4c6b-5ff9e3210c30','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','EmailMarketing','module',90,0),('aff00b92-46e1-1884-92b3-5ff9e3b71893','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','EAPM','module',90,0),('b07155c8-ec51-63e9-5002-5ff9e343ad3f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOP_Case_Updates','module',90,0),('b075c8ac-4e13-ef29-6e6b-5ff9e31f04f4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','ProspectLists','module',90,0),('b091a6d8-1535-48fa-c7c6-5ff9e36d9fd6','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Opportunities','module',90,0),('b1132c26-4216-3965-b15e-5ff9e3b2287e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','ProspectLists','module',90,0),('b4a0b2aa-7c4d-eca4-dbe4-5ff9e3977dfe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','FP_events','module',90,0),('b54b3bae-79e2-8d1f-4774-5ff9e3961ca7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOS_PDF_Templates','module',90,0),('b5746d10-9866-4ead-270e-5ff9e37643b9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','SurveyQuestionOptions','module',90,0),('b5e77fee-136b-e6f1-fc29-5ff9e36918c3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','Cases','module',90,0),('b6236f5e-8284-ceb7-e157-5ff9e31bedc9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Users','module',90,0),('b630e01f-8099-4c35-4ccc-5ff9e3aa2d73','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_Invoices','module',90,0),('b6994ffe-547e-6cd2-96c4-5ff9e3bb519e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOR_Reports','module',90,0),('b7ede574-8c00-e839-ad20-5ff9e317bac5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','SurveyQuestions','module',90,0),('b83383aa-a339-2398-e495-5ff9e3e3329e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','jjwg_Maps','module',90,0),('b83a4b00-c12f-ee54-24bf-5ff9e343d0e2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_Products','module',90,0),('b8ac05a7-a8f0-07f4-5f4d-5ff9e39e7bd5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Calls','module',90,0),('b9ce9962-12f5-29c0-011d-5ff9e367681d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOK_KnowledgeBase','module',90,0),('bbc22bbe-1e57-4557-161e-5ff9e3e1c045','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','SecurityGroups','module',89,0),('bbcc1f8f-6fb2-774a-36a4-5ff9e335be56','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('bbd90aff-0232-6360-a121-5ff9e30036bf','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AM_ProjectTemplates','module',90,0),('bbef6a46-06ac-0a2d-1818-5ff9e3b903ec','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Spots','module',90,0),('bc3f05a6-31e2-f196-2a3a-5ff9e36f2c3d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','OutboundEmailAccounts','module',90,0),('bc71fd91-ba37-ce79-2ff3-5ff9e3bf289f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','jjwg_Maps','module',90,0),('bdaa0d1c-278d-281f-cbdc-5ff9e358bc08','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOP_Case_Events','module',90,0),('be6777c9-963d-1442-f5d4-5ff9e373b002','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Surveys','module',90,0),('beb4b466-1442-f8d5-430a-5ff9e39a7384','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOW_Processed','module',90,0),('bf388cd7-c271-b523-6630-5ff9e347b62f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_Quotes','module',90,0),('c048e98d-2468-9460-dd6e-5ff9e30b3906','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','jjwg_Areas','module',90,0),('c0c51d18-4ed3-6e18-a401-5ff9e3d6491b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','FP_events','module',90,0),('c0f7c25e-6040-8e3e-e842-5ff9e3c30597','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','EAPM','module',90,0),('c149210f-4ace-9cf1-98ad-5ff9e3975539','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_Contracts','module',90,0),('c154ba44-bf6f-2d6a-ce0b-5ff9e3089308','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','FP_Event_Locations','module',90,0),('c1f502b1-2b82-344c-69bc-5ff9e320cc33','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','jjwg_Address_Cache','module',90,0),('c2b32192-051d-aea7-a648-5ff9e300edfd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','SurveyQuestionOptions','module',90,0),('c3eb5f0d-2673-8438-b462-5ff9e3182c7c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','AOR_Scheduled_Reports','module',90,0),('c473914a-3930-fa2d-f4e9-5ff9e338b163','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','jjwg_Markers','module',90,0),('c5a2f356-b91f-4f3c-1789-5ff9e35d6743','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','SurveyQuestions','module',90,0),('c62e1551-5a01-0493-9c45-5ff9e395adcb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Calls','module',90,0),('c77e7f85-7702-a9a3-c589-5ff9e33362de','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Meetings','module',90,0),('c7fab173-94b0-661f-6340-5ff9e371ce2a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Meetings','module',90,0),('c883c469-fb22-bc9f-e4fb-5ff9e3dc826b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Campaigns','module',89,0),('c890d008-f4d1-e5df-2e93-5ff9e3af50fc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','EAPM','module',89,0),('c893e97a-705a-3aad-cc8b-5ff9e32056aa','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','SurveyQuestionResponses','module',90,0),('c93741b4-7469-aa9d-4f19-5ff9e33e6a1c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Emails','module',90,0),('c9701044-4347-117e-51be-5ff9e3eecf42','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Spots','module',90,0),('c971abca-2866-cfd3-fb54-5ff9e3dcff10','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('c9cdba76-c921-fe6d-bbea-5ff9e3fc677a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Campaigns','module',90,0),('c9cdefc4-d40d-7c54-3dc5-5ff9e3b54bf5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Notes','module',90,0),('cb0a8659-8b4a-6615-208f-5ff9e3458071','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','jjwg_Maps','module',90,0),('cc456d77-8d85-9be9-3754-5ff9e3fe2283','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOD_Index','module',90,0),('cd81cac8-c6af-62d6-9717-5ff9e39feeab','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Calls_Reschedule','module',90,0),('cd849a2f-33be-4ffa-c3db-5ff9e3a73a97','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','TemplateSectionLine','module',90,0),('cd9c0705-4847-7319-0706-5ff9e3abaf5b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Prospects','module',90,0),('cdab483a-a870-8dd1-bcaf-5ff9e31b5f22','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','SecurityGroups','module',90,0),('cdb0b405-86d1-be2c-06aa-5ff9e3acf1b2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Emails','module',90,0),('cde9f662-f2b8-1a8e-0011-5ff9e3e601ed','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOR_Scheduled_Reports','module',90,0),('ce2c06af-e9e7-9e5e-395d-5ff9e3a99fc4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','ProjectTask','module',90,0),('ce5a697a-17a8-166e-ce69-5ff9e38c82f7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','FP_events','module',90,0),('ce945993-d2c6-07fe-cf84-5ff9e3ff9193','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','EAPM','module',90,0),('d040d87c-7208-7dff-ac9c-5ff9e331ba9f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','SurveyQuestionOptions','module',90,0),('d097e2bf-7a25-f55a-f7e3-5ff9e348533e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','EmailTemplates','module',90,0),('d0ee2f02-2cf1-7559-c390-5ff9e38b9093','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','OutboundEmailAccounts','module',90,0),('d13ca533-976e-6741-fc13-5ff9e3df868d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Cases','module',90,0),('d15ff367-4b72-36ca-4f9c-5ff9e3882e1f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOR_Reports','module',90,0),('d20701f7-22e0-949e-2bf8-5ff9e3a3c242','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOP_Case_Events','module',90,0),('d20de5b5-9221-8c5d-f381-5ff9e362cd21','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','jjwg_Areas','module',90,0),('d284cfb1-2c9c-91d7-8e36-5ff9e3e765ef','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','SecurityGroups','module',90,0),('d304f6f1-e704-3e52-d476-5ff9e3e33e0f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Documents','module',90,0),('d32526a3-2c3d-d000-6f77-5ff9e38c5307','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','jjwg_Maps','module',90,0),('d45258d8-e491-4c46-c597-5ff9e3f79f64','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','EmailMarketing','module',89,0),('d48f73f6-710a-6987-5929-5ff9e31e980c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOK_KnowledgeBase','module',90,0),('d51101ae-a1a2-93fa-c812-5ff9e3047738','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Alerts','module',90,0),('d5374857-b8a4-e035-0497-5ff9e31e1ad8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Notes','module',90,0),('d6c58fde-29a0-1221-7d86-5ff9e376524f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_Contracts','module',90,0),('d71313dd-f8c0-f727-fbeb-5ff9e3f854af','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('d829080f-fb92-d2bd-7d21-5ff9e3710928','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','SurveyResponses','module',89,0),('d8c17cac-28ab-1cc5-6272-5ff9e37c09b4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','FP_events','module',90,0),('d8c1cdb2-b346-aa5d-4f27-5ff9e3b94449','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','AOD_IndexEvent','module',90,0),('d991997e-7334-0039-4953-5ff9e34fb47e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AM_ProjectTemplates','module',90,0),('da1924e3-3945-5c6e-7562-5ff9e3ddc78a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Documents','module',89,0),('da19b0ca-da39-99c6-4985-5ff9e33f1a18','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOD_IndexEvent','module',90,0),('da31a9ce-87cb-2ab5-202a-5ff9e37e451a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_Products','module',90,0),('da4a50d9-fe57-ebd3-f15a-5ff9e3c4b52b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','jjwg_Maps','module',90,0),('db5cb910-be3f-b48f-a9f1-5ff9e3233d70','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Calls_Reschedule','module',90,0),('db740344-70bf-4736-9edb-5ff9e3145e5f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','Contacts','module',90,0),('dbcf63ec-f6e5-9034-f33e-5ff9e3630f70','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOP_Case_Updates','module',90,0),('dbd44a2f-e07e-cb83-e98e-5ff9e33f57ca','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','SecurityGroups','module',90,0),('dbe518a7-f8f1-bcfb-4d99-5ff9e3365cb6','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Surveys','module',90,0),('dc5d9435-e1fa-b429-93a2-5ff9e3d80a82','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','EAPM','module',90,0),('dccaec3d-39b1-7694-b95a-5ff9e30b3a2f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Campaigns','module',90,0),('ddf88c77-5e06-f683-1190-5ff9e3e35b2b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Meetings','module',90,0),('de04f0a7-d322-b1e5-bef1-5ff9e35a65c8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Cases','module',89,0),('de63a2c0-c9de-f519-3bfb-5ff9e37740cd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','SurveyQuestionResponses','module',90,0),('dec11f76-f2b9-d095-9eba-5ff9e3554a2d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Cases','module',90,0),('dece02a3-d350-bd12-1d07-5ff9e3d479cb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Alerts','module',90,0),('dfbff97e-9c3e-90cf-88b4-5ff9e316382a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','jjwg_Address_Cache','module',90,0),('e0e997f2-53f5-9d1e-aa06-5ff9e3494712','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','jjwg_Markers','module',90,0),('e173c63c-c109-0abe-842e-5ff9e35fab58','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Contacts','module',90,0),('e257c026-101e-2cac-3ada-5ff9e3248690','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Alerts','module',89,0),('e3e50502-d676-ee32-4283-5ff9e314bd06','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOW_Processed','module',90,0),('e48dd815-b45c-1d31-5743-5ff9e369b55c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','TemplateSectionLine','module',90,0),('e4d62e84-8993-5a41-bfb7-5ff9e372a828','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','view','Campaigns','module',90,0),('e4e2fa76-e827-e8fd-505a-5ff9e374738e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOS_Quotes','module',90,0),('e5a91db3-f7cd-ff7c-c367-5ff9e3b30838','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('e5fac5b0-0a32-6555-50e2-5ff9e3714085','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','Alerts','module',90,0),('e642a22a-1ca9-c999-39d2-5ff9e376da69','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','SurveyResponses','module',90,0),('e6d8f106-e6b7-dae9-4e78-5ff9e31b3b63','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_Contracts','module',90,0),('e6f63c54-f04f-115a-8d47-5ff9e31e5c1f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Calls','module',90,0),('e7255d15-6c7b-d0e7-ecb1-5ff9e3d918b4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','AOR_Reports','module',90,0),('e7f7f2e0-1475-329b-91db-5ff9e39f79eb','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOD_Index','module',90,0),('e82a1ce1-aaff-314b-a827-5ff9e3003fa4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','FP_Event_Locations','module',90,0),('e8bb7dc2-059c-b061-0c39-5ff9e367e9a4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AM_TaskTemplates','module',90,0),('e9917ac7-c190-7d83-2f5c-5ff9e3769931','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','SecurityGroups','module',90,0),('e9ab156a-df74-db25-5f0e-5ff9e3cdc1ff','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOP_Case_Updates','module',90,0),('e9fd056e-c7f6-6862-7496-5ff9e3de913e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AM_TaskTemplates','module',90,0),('ea9a58ed-e1c2-444e-4249-5ff9e302ec42','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Calls_Reschedule','module',90,0),('eb60cf7f-94de-34e9-870e-5ff9e3f69a07','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','delete','SurveyQuestionOptions','module',90,0),('eb9485d0-5c09-ea53-8534-5ff9e3c1ee92','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','list','ProspectLists','module',90,0),('ebd5ad19-2b8c-e7fd-f375-5ff9e3a42061','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOS_PDF_Templates','module',90,0),('ed2f6557-7a42-9847-c7c8-5ff9e3befa30','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOR_Scheduled_Reports','module',90,0),('ed3327f9-8a1c-b90b-293c-5ff9e340ccda','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','Cases','module',90,0),('edff0e56-fc04-9365-2fb0-5ff9e3cce495','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','AOS_Products','module',90,0),('ee67e616-b66b-d7fd-2f81-5ff9e37f4bbe','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','AOP_Case_Updates','module',89,0),('eee866b2-cb69-c204-b98a-5ff9e3adec97','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','access','Spots','module',89,0),('ef103a5d-0554-0fc0-4fa1-5ff9e3e2510a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','massupdate','AOS_Invoices','module',90,0),('ef4c0f7b-207d-66ba-ceee-5ff9e3a793e3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','Calls','module',90,0),('efa11b8f-edb9-a5ed-b42b-5ff9e3bb29ec','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOK_KnowledgeBase','module',90,0),('efd1a4ea-50e3-c32a-e4af-5ff9e3e58181','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','edit','AOW_Processed','module',90,0),('efef1bee-eaa6-44de-dd87-5ff9e3d71c83','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','jjwg_Address_Cache','module',90,0),('f0b80c2f-d0ea-81f7-e9ba-5ff9e3d83df8','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_Product_Categories','module',90,0),('f37d17ff-849c-2432-c58e-5ff9e3ede6cd','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','export','Alerts','module',90,0),('f4bb06ca-c2a2-bbe8-4b03-5ff9e31e7b46','2021-01-09 17:06:33','2021-01-09 17:06:33','1','','import','AOS_Quotes','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2021-01-11 06:30:47','2021-01-11 06:30:47','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
INSERT INTO `aop_case_events` VALUES ('10a8f608-cf3d-b3ca-c71f-5ff9e4f61065','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'9d19952c-f85a-ef0b-0701-5ff9e41cd69d'),('115c0cba-8f22-33db-38d6-5ff9e5985fed','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'c83dfd9d-639b-5257-84a3-5ff9e5f3696c'),('120c4406-fee9-8947-7bbd-5ff9e5f1e4bf','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'80937667-2e36-9158-2b5e-5ff9e5770849'),('12e42517-39ee-e012-0a8d-5ff9e4633a70','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'87cd3d70-8901-527d-0ca9-5ff9e47d9613'),('13114f6f-0f09-8c14-4bad-5ff9e58a839c','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'75b3fc65-8d37-2016-47f4-5ff9e5d0f91b'),('143f830d-e5f3-ce4f-15e8-5ff9e5c652d3','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'8b9d17d5-881e-1fb6-17e1-5ff9e58bf013'),('167f021b-f2e5-42f8-3e05-5ff9e4f285e8','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'4a110fe2-5415-1018-73e1-5ff9e4bd14c4'),('17d73001-e8a2-4629-272b-5ff9e589c217','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'d29c6fbf-3fff-96ac-7994-5ff9e5712fbb'),('1c237297-f9d1-c53d-23d7-5ff9e5c56e59','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'ef5d400e-05a5-bfde-f86b-5ff9e589fc7d'),('1d393721-e743-917d-9eb3-5ff9e43d015e','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'ea49298e-f772-350a-b81e-5ff9e4f0f9e3'),('1d65188a-08fd-4f69-2028-5ff9e5862630','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'49889432-c317-735e-ec16-5ff9e5a16b6f'),('217d8b84-b773-1726-78c8-5ff9e4b4947a','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'295d1a61-7e5b-7995-568b-5ff9e483abb1'),('23af2e45-3956-e36d-60fd-5ff9e5510e4a','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'c83dfd9d-639b-5257-84a3-5ff9e5f3696c'),('2e2d54cb-5c68-4616-a90a-5ff9e413ab49','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'bd1e1e81-7707-beb4-0412-5ff9e4ef309a'),('376b3aba-8eb6-15c2-7154-5ff9e54e62e9','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'bccd19ef-decf-3fe1-d523-5ff9e587e6a0'),('3804d5a2-d863-9c88-173c-5ff9e482e671','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'ea49298e-f772-350a-b81e-5ff9e4f0f9e3'),('3862d51f-8807-a25c-82cd-5ff9e5914b4e','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'2843a451-eef3-5138-1288-5ff9e59d11b0'),('3a4cd254-e28f-fe11-cbdb-5ff9e42bcd56','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'9140a01b-0cd7-b748-f5fb-5ff9e4426024'),('3ce5dc14-7db8-141d-6acf-5ff9e5cf5906','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c'),('4122b020-e185-9b2c-0cf2-5ff9e4275a13','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'303cac90-c072-87c5-7daf-5ff9e4f9023f'),('43989a4a-3cc9-bdd2-c17a-5ff9e506e8e9','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e'),('48313740-0e3d-28cd-a170-5ff9e5584c2a','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'2843a451-eef3-5138-1288-5ff9e59d11b0'),('495e1894-2274-e2d5-e414-5ff9e4873711','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'8aa976fa-fe1d-4a33-525f-5ff9e44c8c66'),('49cc8cd0-61fc-fe5b-994d-5ff9e5d1a531','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'c83dfd9d-639b-5257-84a3-5ff9e5f3696c'),('4a328333-eb3c-b341-26c7-5ff9e5589fe5','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'ef5d400e-05a5-bfde-f86b-5ff9e589fc7d'),('4a4c9bf0-782d-cccd-c4e6-5ff9e5792dd8','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'bccd19ef-decf-3fe1-d523-5ff9e587e6a0'),('4e34700a-003e-8123-dfc8-5ff9e4325286','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'303cac90-c072-87c5-7daf-5ff9e4f9023f'),('4ff40d9c-bb50-72d2-cf92-5ff9e5fe2066','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'bd000392-a0f1-3a55-10bb-5ff9e53062c0'),('51a58da3-157f-3223-c2b7-5ff9e4dacd71','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'281c36ff-88dc-7890-07ac-5ff9e4be2230'),('55eb9c5c-a7f6-704b-5046-5ff9e5c6ef92','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'2843a451-eef3-5138-1288-5ff9e59d11b0'),('56bd214d-9aef-55ba-dceb-5ff9e5749abc','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c'),('58be065a-9873-06d3-f9da-5ff9e464aae6','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'ea49298e-f772-350a-b81e-5ff9e4f0f9e3'),('58e897b6-5fee-c037-8270-5ff9e40d55c9','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'8aa976fa-fe1d-4a33-525f-5ff9e44c8c66'),('5be4fa8b-6b15-b360-c684-5ff9e48f6731','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'303cac90-c072-87c5-7daf-5ff9e4f9023f'),('5c871d18-7825-df89-c7c4-5ff9e5eb234b','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'1a71bfb6-d9e1-6844-f268-5ff9e5090fc3'),('6177ad01-9ae2-701e-3bd6-5ff9e5afae77','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'40010517-c975-b3af-47a0-5ff9e5b6b765'),('619b3fa1-d3ba-7fe8-5cd2-5ff9e425d88b','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'281c36ff-88dc-7890-07ac-5ff9e4be2230'),('61e2ca34-2912-0ddb-3973-5ff9e54feb79','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'495dcd43-abd0-5ae1-2166-5ff9e519997b'),('63b34a7d-e763-92fb-236c-5ff9e576aa97','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'1bef94cc-3852-4257-c11a-5ff9e58e6a60'),('63fd0ce4-ce51-895c-2ad2-5ff9e5ec3518','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'bccd19ef-decf-3fe1-d523-5ff9e587e6a0'),('65e91ca9-4aa9-1af9-cb9f-5ff9e4953ccd','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'78bd7388-2d82-fa69-3d9c-5ff9e4d5af29'),('678090ae-2feb-29d7-dae9-5ff9e4c84612','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'9d19952c-f85a-ef0b-0701-5ff9e41cd69d'),('6e56eedf-349e-d75a-a576-5ff9e556b4a6','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'1a71bfb6-d9e1-6844-f268-5ff9e5090fc3'),('6f66a782-49a6-3204-c6ea-5ff9e4099b60','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'bd1e1e81-7707-beb4-0412-5ff9e4ef309a'),('70d546d1-6230-d0f5-6bb1-5ff9e474b295','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'295d1a61-7e5b-7995-568b-5ff9e483abb1'),('712928fe-7019-a4a8-078d-5ff9e4e1b3ed','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'54e66068-9ed3-38fe-8529-5ff9e4d46b7d'),('71e41f36-86b0-cc06-ebd1-5ff9e468f4e8','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'281c36ff-88dc-7890-07ac-5ff9e4be2230'),('7396cd5a-4fe6-ca73-6874-5ff9e543e497','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'317ac7aa-4c8a-0846-952b-5ff9e59299d1'),('756466c6-d397-52d0-8c94-5ff9e5e58221','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c'),('760f803c-cc80-2b5f-a9cf-5ff9e546c5ea','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'5a03945c-44ce-7836-14b7-5ff9e5a4b524'),('777f57c1-0d34-e163-09ea-5ff9e4a18346','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'4bdb698d-b7a0-6c91-669c-5ff9e4935250'),('783ed38e-c0ce-0eea-b3d3-5ff9e46650de','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'3e35019c-dae9-d8c5-fe38-5ff9e49e1d94'),('78732e49-1172-eba4-b7e0-5ff9e43166fd','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'5898592a-fe28-e143-469f-5ff9e4fd7b98'),('7944d344-cb38-4c3d-a152-5ff9e50e863c','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'d29c6fbf-3fff-96ac-7994-5ff9e5712fbb'),('799d2ca7-b740-49a5-4625-5ff9e56fa1c2','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82'),('7baa6bec-ec05-cc98-db03-5ff9e4db9eab','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'4a110fe2-5415-1018-73e1-5ff9e4bd14c4'),('7c05c19d-aff8-636a-f7d5-5ff9e5eac11c','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'1a71bfb6-d9e1-6844-f268-5ff9e5090fc3'),('7edc5595-1ed0-d67a-f92c-5ff9e563e41b','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'47567bf4-1478-bb25-adf4-5ff9e5ef0cec'),('7ee60fd4-2e49-4251-5cca-5ff9e5cf5f6e','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e'),('840d4c9d-95c2-2493-0728-5ff9e567efe3','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'49889432-c317-735e-ec16-5ff9e5a16b6f'),('847dce40-569f-0451-f869-5ff9e5ec2f36','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'4579be35-7bd4-c886-f636-5ff9e5712458'),('8535aa01-3bf2-0dc3-d7cf-5ff9e57153bb','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9'),('86a9be1a-07bf-e5d3-481b-5ff9e4252dfc','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa'),('87efe3c5-44c5-8a65-fff8-5ff9e5a485f9','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e'),('8951711c-a165-cc48-97d0-5ff9e53cc475','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'bd000392-a0f1-3a55-10bb-5ff9e53062c0'),('89bb396a-a4c5-c2bd-0500-5ff9e598a3ad','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b'),('8d489567-7b3e-64cf-aecb-5ff9e4c8e8e4','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'5898592a-fe28-e143-469f-5ff9e4fd7b98'),('8d49a067-a898-1aea-09c0-5ff9e57e7ce2','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'27b2c1e7-b000-c138-8029-5ff9e54afdff'),('8f430612-5201-8c4b-b380-5ff9e43a9a93','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa'),('90b94065-ff0f-9483-cd54-5ff9e48c40fb','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'295d1a61-7e5b-7995-568b-5ff9e483abb1'),('9143756e-fd58-2b3e-21ea-5ff9e5ff7553','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'508b7ed4-907f-42df-f2b9-5ff9e5457e17'),('924b6cd3-7fa2-ed11-3f26-5ff9e460412d','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'8aa976fa-fe1d-4a33-525f-5ff9e44c8c66'),('93a6c033-18e3-fc04-d5de-5ff9e415f33c','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'54e66068-9ed3-38fe-8529-5ff9e4d46b7d'),('95343c78-80e8-f630-37f4-5ff9e5e15355','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9'),('96cedc4e-e1b5-f251-c015-5ff9e5625127','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82'),('973c9f1d-9f71-f6be-f24a-5ff9e51229bf','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'40010517-c975-b3af-47a0-5ff9e5b6b765'),('98e79534-fc71-54d9-70e2-5ff9e5331047','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'317ac7aa-4c8a-0846-952b-5ff9e59299d1'),('99df74e5-155b-269d-11ac-5ff9e46c76ee','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'4bdb698d-b7a0-6c91-669c-5ff9e4935250'),('9a8d2f8c-8416-cd78-efff-5ff9e5e9a373','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'47567bf4-1478-bb25-adf4-5ff9e5ef0cec'),('9b6b9a55-0f83-88a9-0408-5ff9e5d8a1a9','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'495dcd43-abd0-5ae1-2166-5ff9e519997b'),('9bca07f8-bfad-e1d0-3ddd-5ff9e4f9a2ed','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'4a110fe2-5415-1018-73e1-5ff9e4bd14c4'),('9d344716-ba65-159f-b081-5ff9e4ae8a2e','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'80522de6-75a4-36eb-8bfc-5ff9e4146e6a'),('9e9324cb-e9b6-9219-1ee7-5ff9e4e698b5','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa'),('9f8f84ec-41ca-3a11-55d8-5ff9e4c1df76','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'36151157-2add-fc45-be50-5ff9e4462e62'),('9f937172-fcb4-b690-5162-5ff9e46a2b97','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'78bd7388-2d82-fa69-3d9c-5ff9e4d5af29'),('a425ccae-7dd5-b3b1-3f70-5ff9e548ed9e','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'1bef94cc-3852-4257-c11a-5ff9e58e6a60'),('a466d035-3bda-f05f-70a0-5ff9e444efea','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'87cd3d70-8901-527d-0ca9-5ff9e47d9613'),('a56b0108-bbac-cf28-b9dc-5ff9e5313e2f','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9'),('a80990e7-d409-8788-bc90-5ff9e4a9310d','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'5898592a-fe28-e143-469f-5ff9e4fd7b98'),('a8c937ee-f825-6d08-c4a3-5ff9e595bb10','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'d29c6fbf-3fff-96ac-7994-5ff9e5712fbb'),('aa320ded-7096-cac5-3575-5ff9e40d783e','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'4bdb698d-b7a0-6c91-669c-5ff9e4935250'),('aaf755bf-f020-9871-bfc4-5ff9e5f06cf9','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'508b7ed4-907f-42df-f2b9-5ff9e5457e17'),('ab86d212-8481-ab5c-4a35-5ff9e559fda2','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'15588da5-4378-5cb5-2550-5ff9e5fc3ee9'),('ac2b04a8-f65e-3a7c-7f9e-5ff9e5c4e285','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'8b9d17d5-881e-1fb6-17e1-5ff9e58bf013'),('ac700225-ece1-02d1-37df-5ff9e4ba4a95','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'907af971-dd55-df4e-acc1-5ff9e4e6fdac'),('acd2467e-5393-679c-fcab-5ff9e5dc6ea0','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'40010517-c975-b3af-47a0-5ff9e5b6b765'),('aeafca64-88dd-b9b8-bd09-5ff9e4c6c735','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'9565e394-6787-6c51-793e-5ff9e47d6a7a'),('af0f0bb0-1848-87f5-7be5-5ff9e4cf2636','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'bd1e1e81-7707-beb4-0412-5ff9e4ef309a'),('b0c478c6-8a70-ef0e-fc40-5ff9e4c7bfe3','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'54e66068-9ed3-38fe-8529-5ff9e4d46b7d'),('b163182e-cc08-dfa7-6ac5-5ff9e509d2ed','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'495dcd43-abd0-5ae1-2166-5ff9e519997b'),('b1684381-69e8-c6d6-5896-5ff9e58ef09d','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'8460ce2f-3170-00ec-25a4-5ff9e5eefc92'),('b211cfac-61d6-27c6-0420-5ff9e5e036c1','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'5a03945c-44ce-7836-14b7-5ff9e5a4b524'),('b3ab0906-3d0f-9d19-4d67-5ff9e4bddc5b','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'3e35019c-dae9-d8c5-fe38-5ff9e49e1d94'),('b7daa233-5428-3429-e3b4-5ff9e5771cd2','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'75b3fc65-8d37-2016-47f4-5ff9e5d0f91b'),('bc242a4e-6022-fc17-faee-5ff9e5aa9b9a','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'7380adc9-d189-2d77-e9f1-5ff9e5ecefd0'),('bfb69738-a598-7641-1cd4-5ff9e45048c2','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'80522de6-75a4-36eb-8bfc-5ff9e4146e6a'),('bfb8f12f-0403-d0a9-4824-5ff9e43159f2','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e'),('c0a261ad-d907-071f-8220-5ff9e46d5284','Status changed from  to Open_New.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_New.',0,NULL,'3e35019c-dae9-d8c5-fe38-5ff9e49e1d94'),('c1101ace-5668-a12c-0c42-5ff9e542334f','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'8460ce2f-3170-00ec-25a4-5ff9e5eefc92'),('c1c7036c-8cae-34b5-a7d9-5ff9e5ec5aa3','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'ef5d400e-05a5-bfde-f86b-5ff9e589fc7d'),('c2376d9c-745c-6d36-a881-5ff9e5b1dab1','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82'),('c2b96ecc-00e1-e775-9515-5ff9e59e094f','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'49889432-c317-735e-ec16-5ff9e5a16b6f'),('c31b7df6-7b97-4df9-b068-5ff9e59cf887','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'4579be35-7bd4-c886-f636-5ff9e5712458'),('c4544658-c424-0513-aac0-5ff9e520df98','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'15588da5-4378-5cb5-2550-5ff9e5fc3ee9'),('c45c377d-b7da-9c1d-ea8c-5ff9e4310a01','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'9d19952c-f85a-ef0b-0701-5ff9e41cd69d'),('c5520336-62de-f8f6-1d37-5ff9e48d7ed0','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'78bd7388-2d82-fa69-3d9c-5ff9e4d5af29'),('c583c484-8812-d3d1-324a-5ff9e4eafcf7','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'36151157-2add-fc45-be50-5ff9e4462e62'),('c8164c80-6cad-5e04-c7d5-5ff9e504c4cc','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'27b2c1e7-b000-c138-8029-5ff9e54afdff'),('c964b60b-cb88-b1a4-e4de-5ff9e4e2414a','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'87cd3d70-8901-527d-0ca9-5ff9e47d9613'),('c989295a-65dd-e51c-f952-5ff9e4867b7c','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'9565e394-6787-6c51-793e-5ff9e47d6a7a'),('ca92f190-a6ee-5b99-3bec-5ff9e5ee6f66','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'7380adc9-d189-2d77-e9f1-5ff9e5ecefd0'),('cb8bccee-92f1-01d4-2ffe-5ff9e58045f3','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'508b7ed4-907f-42df-f2b9-5ff9e5457e17'),('ccb78cf7-3df7-8ac6-e0d0-5ff9e5ad2d75','Priority changed from  to P3.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P3.',0,NULL,'80937667-2e36-9158-2b5e-5ff9e5770849'),('cd319a87-aa62-6ac4-da24-5ff9e41024cc','Priority changed from  to P2.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P2.',0,NULL,'9140a01b-0cd7-b748-f5fb-5ff9e4426024'),('cd4ac1c6-8b31-6c07-684e-5ff9e44fd7ed','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e'),('ce5b88d2-4ddf-b595-3fa1-5ff9e52553e2','Priority changed from  to P1.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Priority changed from  to P1.',0,NULL,'af8f5e96-7035-21a2-6c8b-5ff9e567f8b9'),('cf7d8b9c-becf-9f41-3f34-5ff9e516c522','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'8b9d17d5-881e-1fb6-17e1-5ff9e58bf013'),('d192a8a0-99c6-db17-03a6-5ff9e5f02829','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'8460ce2f-3170-00ec-25a4-5ff9e5eefc92'),('d1a2c4aa-9070-0fe2-1b84-5ff9e4646dc8','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'907af971-dd55-df4e-acc1-5ff9e4e6fdac'),('d280b31c-3a52-2331-9796-5ff9e5737ba7','Status changed from  to Open_Assigned.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Assigned.',0,NULL,'6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b'),('d2bbe3cf-6772-c84c-c435-5ff9e5137055','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'bd000392-a0f1-3a55-10bb-5ff9e53062c0'),('d50b0848-4286-a561-c1ee-5ff9e5e3f4e4','Status changed from  to Closed_Duplicate.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Duplicate.',0,NULL,'75b3fc65-8d37-2016-47f4-5ff9e5d0f91b'),('d68a04f2-d03d-15f8-663c-5ff9e52711bc','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'af8f5e96-7035-21a2-6c8b-5ff9e567f8b9'),('d82d6def-3815-322b-985f-5ff9e5fab3ea','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'7380adc9-d189-2d77-e9f1-5ff9e5ecefd0'),('d99f0b01-6929-5d1b-ce12-5ff9e5c1acbf','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'47567bf4-1478-bb25-adf4-5ff9e5ef0cec'),('db067d32-0007-aaa6-2ef0-5ff9e46624e7','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'80522de6-75a4-36eb-8bfc-5ff9e4146e6a'),('db7d2188-0b1a-4b29-3092-5ff9e55e85b8','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'317ac7aa-4c8a-0846-952b-5ff9e59299d1'),('e143f496-da21-2756-0760-5ff9e518740b','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'4579be35-7bd4-c886-f636-5ff9e5712458'),('e1776a33-40f8-b8cc-ba88-5ff9e5150073','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'15588da5-4378-5cb5-2550-5ff9e5fc3ee9'),('e1875ec7-6ec1-825c-fb36-5ff9e4ac383c','Assigned User changed from  to seed_chris.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_chris.',0,NULL,'36151157-2add-fc45-be50-5ff9e4462e62'),('e4c0eb4d-21e3-b2d6-2ded-5ff9e5103a17','Assigned User changed from  to seed_sarah.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sarah.',0,NULL,'27b2c1e7-b000-c138-8029-5ff9e54afdff'),('e81b9c9e-7c9b-fefc-004d-5ff9e54ba43c','Status changed from  to Closed_Closed.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Closed.',0,NULL,'80937667-2e36-9158-2b5e-5ff9e5770849'),('e84ae463-073f-9573-4e10-5ff9e4f47d61','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e'),('ea947308-50fe-195c-3e5f-5ff9e58bc638','Assigned User changed from  to seed_max.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_max.',0,NULL,'1bef94cc-3852-4257-c11a-5ff9e58e6a60'),('ea97c9c4-bcd7-f11b-6cdc-5ff9e43011f0','Status changed from  to Open_Pending Input.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Open_Pending Input.',0,NULL,'9140a01b-0cd7-b748-f5fb-5ff9e4426024'),('eafac595-2190-eb4f-23de-5ff9e593a7c2','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'5a03945c-44ce-7836-14b7-5ff9e5a4b524'),('ebab013b-aee5-3017-06f6-5ff9e47c79ec','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'907af971-dd55-df4e-acc1-5ff9e4e6fdac'),('ec768c30-bbc3-213b-99bc-5ff9e4775c18','Assigned User changed from  to seed_sally.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_sally.',0,NULL,'9565e394-6787-6c51-793e-5ff9e47d6a7a'),('edade897-0967-5821-92b9-5ff9e5729525','Assigned User changed from  to seed_will.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Assigned User changed from  to seed_will.',0,NULL,'6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b'),('f12ef71b-54f6-03b3-3523-5ff9e5fd4139','Status changed from  to Closed_Rejected.','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Status changed from  to Closed_Rejected.',0,NULL,'af8f5e96-7035-21a2-6c8b-5ff9e567f8b9');
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text DEFAULT NULL,
  `pdffooter` text DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
INSERT INTO `bugs` VALUES ('2275ef97-ec67-7400-1b53-5ff9e57cfb50','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',42,NULL,'Rejected','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('25943f37-bc2b-3b53-11d8-5ff9e5fc878e','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',34,NULL,'Closed','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('2bc685d9-e618-4e54-a7a9-5ff9e485cb68','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',9,NULL,'Rejected','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('2ece1724-40f1-247a-6982-5ff9e55b015a','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',25,NULL,'Rejected','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('30dd73fb-5e4a-2d1c-cc74-5ff9e50bfb89','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',32,NULL,'Assigned','High',NULL,NULL,NULL,NULL,NULL,NULL),('31b8a2ea-39bc-7d6e-04d8-5ff9e5a38a96','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',50,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL),('381b0119-e3da-6103-af73-5ff9e4166818','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',8,NULL,'Pending','High',NULL,NULL,NULL,NULL,NULL,NULL),('381f97c9-47fb-36d9-da14-5ff9e52159fd','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',29,NULL,'Closed','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('383d8f2c-d297-def1-034e-5ff9e4998f57','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',11,NULL,'Pending','High',NULL,NULL,NULL,NULL,NULL,NULL),('3937cf75-622d-f570-dda4-5ff9e4ff1121','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',5,NULL,'Pending','High',NULL,NULL,NULL,NULL,NULL,NULL),('4b043016-8845-a1fb-074d-5ff9e53bce9b','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',41,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('4bc5b26a-03a9-970b-d2f4-5ff9e49a4838','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',13,NULL,'Assigned','Low',NULL,NULL,NULL,NULL,NULL,NULL),('56439b9c-ee49-efa7-fd7b-5ff9e525373f','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',30,NULL,'New','Low',NULL,NULL,NULL,NULL,NULL,NULL),('5c247c29-4861-12bc-9173-5ff9e46c4b69','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',7,NULL,'New','Low',NULL,NULL,NULL,NULL,NULL,NULL),('5d61626e-5473-3532-04fb-5ff9e55b33c5','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',28,NULL,'Pending','Low',NULL,NULL,NULL,NULL,NULL,NULL),('5f8886ba-6939-5bb2-c3a7-5ff9e4030155','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',4,NULL,'Closed','Low',NULL,NULL,NULL,NULL,NULL,NULL),('604d72e8-4966-f1ef-e730-5ff9e5298c8a','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',48,NULL,'Assigned','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('6a54d6ac-a862-f845-0375-5ff9e49ac948','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',15,NULL,'Assigned','High',NULL,NULL,NULL,NULL,NULL,NULL),('6c183067-2f3e-5321-6345-5ff9e552b35b','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',27,NULL,'Assigned','High',NULL,NULL,NULL,NULL,NULL,NULL),('6cb82ddc-0832-ddc2-35dd-5ff9e5da7c7f','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',23,NULL,'Assigned','Low',NULL,NULL,NULL,NULL,NULL,NULL),('6e0f7c75-b4fc-25f5-243b-5ff9e5609612','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',46,NULL,'New','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('734ab28f-55f4-e47f-5ef5-5ff9e50bd9dd','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',40,NULL,'Pending','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('746e69d4-3953-56dd-241b-5ff9e4873450','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',18,NULL,'Pending','Low',NULL,NULL,NULL,NULL,NULL,NULL),('7894be81-483f-1fc3-2d16-5ff9e48665f0','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',12,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL),('78c7cdfd-806f-75fa-3ebd-5ff9e58607ac','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',45,NULL,'Pending','High',NULL,NULL,NULL,NULL,NULL,NULL),('7a374cc4-fb13-cae7-3b23-5ff9e5e785a5','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',35,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('839f6cb0-7274-6ab6-f79e-5ff9e5c96b20','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',38,NULL,'Pending','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('8eb1e445-1c0b-1d4d-ee2b-5ff9e5f64d78','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',37,NULL,'Closed','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('90d8da3d-abbf-6ab8-7915-5ff9e46aca24','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',3,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('9567ec21-5695-c46b-8fec-5ff9e4611be7','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',20,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL),('98f35830-6d8e-d3e6-d4f9-5ff9e5962c0b','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',33,NULL,'Closed','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('a3eee7ae-b28e-e668-abb8-5ff9e4f4f09d','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',10,NULL,'New','High',NULL,NULL,NULL,NULL,NULL,NULL),('a5ed0221-ad38-81cb-7811-5ff9e541cbf5','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',43,NULL,'Closed','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('a7aa974a-b076-4316-8e41-5ff9e4c70749','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',21,NULL,'Pending','Low',NULL,NULL,NULL,NULL,NULL,NULL),('a935ca86-d4c2-e5da-e403-5ff9e555e725','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',39,NULL,'Closed','High',NULL,NULL,NULL,NULL,NULL,NULL),('ab903583-7807-be17-c886-5ff9e541adbb','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',47,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('abafb42c-03b4-2abb-3b72-5ff9e41e25da','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',6,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL),('be600113-9532-9b18-0113-5ff9e40c1d63','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',19,NULL,'Rejected','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('c33c40c5-cf45-11ba-182f-5ff9e41d730b','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',16,NULL,'Rejected','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('c5570e61-b7fb-8cae-55fd-5ff9e5389078','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',31,NULL,'Pending','High',NULL,NULL,NULL,NULL,NULL,NULL),('ccd35ebb-eddf-1f60-154d-5ff9e5f231cc','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',49,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL),('cf994807-bb79-7a54-3113-5ff9e4019ab2','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',14,NULL,'Assigned','High',NULL,NULL,NULL,NULL,NULL,NULL),('d00b2a98-999d-7ade-4c87-5ff9e433a4bb','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',1,NULL,'Rejected','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('dcb17e38-1fbc-1807-48c0-5ff9e56d1c06','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',24,NULL,'Rejected','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('dd015b39-6c32-e0cd-3955-5ff9e5f8dacb','Warning is displayed in file after exporting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',22,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('e120379a-87f3-84ac-d5d8-5ff9e4171a08','Fatal error during installation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',2,NULL,'Pending','Low',NULL,NULL,NULL,NULL,NULL,NULL),('e4c40acf-64aa-6f70-c0d8-5ff9e4145643','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',17,NULL,'New','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('e56c9acb-2bdd-7193-b11e-5ff9e5957b7b','Error occurs while running count query','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',36,NULL,'Assigned','Urgent',NULL,NULL,NULL,NULL,NULL,NULL),('e7fc2484-a3d6-c89e-758f-5ff9e5ed7910','Syntax error appears when running old reports','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',44,NULL,'Closed','Medium',NULL,NULL,NULL,NULL,NULL,NULL),('ef554595-0f59-6d93-6ffc-5ff9e526a6ee','Broken image appears in home page','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',26,NULL,'Rejected','High',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('15f48deb-c41b-ef6f-e292-5ff9e56dd0d2','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-03-16 08:45:00','2021-03-16 08:45:00','Accounts','Planned','Outbound','86748ca4-8574-a46f-0187-5ff9e5608ccd',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('1660c4a4-ac54-1575-d337-5ff9e5ea6b81','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-04-07 19:45:00','2021-04-07 19:45:00','Accounts','Planned','Outbound','9721d66f-e546-f89e-0cd8-5ff9e5a0a814',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('1a0e0305-030e-8aa7-88f1-5ff9e52929f1','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-11-21 13:45:00','2021-11-21 13:45:00','Accounts','Planned','Outbound','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('20380e99-d27c-c74c-3d41-5ff9e5b84e2e','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-12-19 10:15:00','2021-12-19 10:15:00','Accounts','Planned','Outbound','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('21bb7d24-c32c-f57c-4234-5ff9e52188c0','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-10-30 13:00:00','2021-10-30 13:00:00','Accounts','Planned','Outbound','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('26d600f2-c6f0-31fb-e7cc-5ff9e4f3e6e0','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-11-07 16:30:00','2021-11-07 16:30:00','Accounts','Planned','Outbound','6989fefe-cd69-611b-03d8-5ff9e4e3a083',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('27e9b316-3262-2b35-64b8-5ff9e4ab8636','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-08-06 13:15:00','2021-08-06 13:15:00','Accounts','Planned','Outbound','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('29c3fd63-f841-f842-d0f0-5ff9e521682c','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-02-14 16:30:00','2021-02-14 16:30:00','Accounts','Planned','Outbound','76d15820-4e44-ea7a-eebc-5ff9e505aca5',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2bfb041a-9805-4caa-7bd9-5ff9e4505777','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-04-05 14:45:00','2021-04-05 14:45:00','Accounts','Planned','Outbound','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2c010bb5-be69-a2a3-c55f-5ff9e5fcd7a5','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-05-17 07:00:00','2021-05-17 07:00:00','Accounts','Planned','Outbound','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2d048389-7983-36f3-8367-5ff9e491a0b2','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-02-06 12:15:00','2021-02-06 12:15:00','Accounts','Planned','Outbound','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2edb0c8f-94a3-7f04-4b00-5ff9e58f3593','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-06-01 11:00:00','2021-06-01 11:00:00','Accounts','Planned','Outbound','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3220a288-f68c-c2b6-9517-5ff9e54cd4e2','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-04-29 14:45:00','2021-04-29 14:45:00','Accounts','Planned','Outbound','1d9384ea-662b-dcdb-d90b-5ff9e50458f3',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3484178e-aacc-60e9-65ee-5ff9e5d02219','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-06-15 06:15:00','2021-06-15 06:15:00','Accounts','Planned','Outbound','83789240-ef96-8047-7ea0-5ff9e50536b1',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('34cb31d7-5a07-9b90-a681-5ff9e4dc8817','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-10-23 18:45:00','2021-10-23 18:45:00','Accounts','Planned','Outbound','8636dd93-aecd-acc3-7d25-5ff9e4661308',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('36efa2a5-36ca-0533-d596-5ff9e4216e21','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-01-12 15:45:00','2021-01-12 15:45:00','Accounts','Planned','Outbound','64613793-c9b7-a7c0-97c2-5ff9e4975faf',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3723f065-ad96-cd43-c4af-5ff9e5880a9b','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-01-22 15:15:00','2021-01-22 15:15:00','Accounts','Planned','Outbound','43a27b00-6987-92d0-6019-5ff9e551bc06',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('379d0dd7-e99c-a04b-d9ec-5ff9e44f5eb9','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-10-07 16:45:00','2021-10-07 16:45:00','Accounts','Planned','Outbound','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3a3541ab-2b59-fd01-4a25-5ff9e57a5cb5','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-04-11 16:45:00','2021-04-11 16:45:00','Accounts','Planned','Outbound','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3bccf78e-f8eb-6555-1e2b-5ff9e50a5180','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-12-26 10:45:00','2021-12-26 10:45:00','Accounts','Planned','Outbound','e0776e3c-2b65-e7ef-1cda-5ff9e5373856',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('3bef5bb5-6bab-7ce6-de3f-5ff9e599dbcb','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-12-28 18:45:00','2021-12-28 18:45:00','Accounts','Planned','Outbound','a18dac90-9853-e440-c497-5ff9e42723b0',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('47371dd1-7f35-3602-d3c1-5ff9e5cfd112','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-09-26 17:00:00','2021-09-26 17:00:00','Accounts','Planned','Outbound','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('495d21c6-52c9-4ffd-bb57-5ff9e5594620','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-12-30 10:30:00','2021-12-30 10:30:00','Accounts','Planned','Outbound','17c08950-1669-c8b1-54c4-5ff9e59a14a8',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('4fd390c7-1e3d-c7b4-6797-5ff9e4042e68','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-04-03 19:15:00','2021-04-03 19:15:00','Accounts','Planned','Outbound','bc78c90d-047f-84aa-f226-5ff9e4361490',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('5ddf0097-748e-3651-061f-5ff9e555e95e','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-10-05 19:00:00','2021-10-05 19:00:00','Accounts','Planned','Outbound','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('61ede40a-d823-3fd1-a0c6-5ff9e4f64f7e','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-06-08 19:15:00','2021-06-08 19:15:00','Accounts','Planned','Outbound','91c89470-f34b-f69c-7e6b-5ff9e4861146',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('69733c56-872f-f3ec-fc02-5ff9e57f07c4','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-11-24 07:30:00','2021-11-24 07:30:00','Accounts','Planned','Outbound','9f43bb09-45cc-123c-bd41-5ff9e5d41008',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('6bce573e-76cb-3c34-de3d-5ff9e5f166c8','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-07-13 11:00:00','2021-07-13 11:00:00','Accounts','Planned','Outbound','6119a10e-22af-9291-defa-5ff9e5a5d04f',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('7e26695b-3cc5-0695-d3f0-5ff9e530c412','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-07-28 10:15:00','2021-07-28 10:15:00','Accounts','Planned','Outbound','d76fac61-12db-f067-1527-5ff9e55e0b3a',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('813a8c01-246b-979a-e2be-5ff9e560a97b','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-07-04 17:30:00','2021-07-04 17:30:00','Accounts','Planned','Outbound','62956c44-79cd-b16e-b306-5ff9e5fa24a9',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('87289487-3eaf-ff87-ff15-5ff9e416aeaf','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-08-15 17:30:00','2021-08-15 17:30:00','Accounts','Planned','Outbound','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('896e6f49-23ce-22ae-93eb-5ff9e41a7d17','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-07-22 12:00:00','2021-07-22 12:00:00','Accounts','Planned','Outbound','1840c12c-603e-6c28-6ab4-5ff9e4f4c963',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('8cf9b3b8-dd97-912d-ba47-5ff9e4f5e7e0','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-07-06 08:00:00','2021-07-06 08:00:00','Accounts','Planned','Outbound','243c9004-e246-96f6-4e65-5ff9e47fd593',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('8ec188ae-34e1-9810-7bf7-5ff9e5ddb762','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-11-14 10:45:00','2021-11-14 10:45:00','Accounts','Planned','Outbound','e37c09b4-4849-7a46-7d80-5ff9e5b88722',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('a2c0c30e-e6cc-cfaf-fbd6-5ff9e4211345','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-12-30 15:30:00','2021-12-30 15:30:00','Accounts','Planned','Outbound','9069cc03-e955-384b-fb50-5ff9e4f28398',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('aaf90ffb-4993-ac42-7837-5ff9e5757d3d','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-11-19 12:15:00','2021-11-19 12:15:00','Accounts','Planned','Outbound','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('abf9545c-5c77-85ad-c102-5ff9e58af67b','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',0,30,'2021-12-24 17:30:00','2021-12-24 17:30:00','Accounts','Planned','Outbound','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('ae9ccab7-0059-c041-6bf9-5ff9e54f6825','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-03-12 06:30:00','2021-03-12 06:30:00','Accounts','Planned','Outbound','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('ba05db23-7500-5408-fe3a-5ff9e51622d5','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-07-26 15:15:00','2021-07-26 15:15:00','Accounts','Planned','Outbound','daf33abf-a900-a8b3-7f14-5ff9e50575a6',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('bcc4a7d7-9918-cee2-7cc1-5ff9e41f08a6','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-03-23 06:15:00','2021-03-23 06:15:00','Accounts','Planned','Outbound','7ea01596-83e7-624d-c792-5ff9e46dd493',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('be9010a6-a487-079c-e67e-5ff9e40a9920','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-03-27 07:00:00','2021-03-27 07:00:00','Accounts','Planned','Outbound','42a4f906-a97f-e814-95c4-5ff9e4f5f92a',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('c3c255e4-0b16-ad0c-6f68-5ff9e454b0fb','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-11-20 09:00:00','2021-11-20 09:00:00','Accounts','Planned','Outbound','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('c89ba27e-4e68-df7c-22ae-5ff9e45db418','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-02-16 11:45:00','2021-02-16 11:45:00','Accounts','Planned','Outbound','3b1771a5-c851-95b1-b53f-5ff9e4a844b0',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('cdb980d1-0088-6370-b590-5ff9e4c09a3c','Bad time, will call back','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',0,30,'2021-05-03 14:45:00','2021-05-03 14:45:00','Accounts','Planned','Outbound','169da36d-2dac-b3b9-590a-5ff9e43e180d',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('ceeda64d-1546-6f8e-4d3e-5ff9e528ab9d','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-07-28 16:30:00','2021-07-28 16:30:00','Accounts','Planned','Outbound','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('d22ca2cc-37c5-a072-4a4c-5ff9e4df373a','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2021-06-10 13:30:00','2021-06-10 13:30:00','Accounts','Planned','Outbound','be526ddc-bc43-eabe-6d25-5ff9e4852c8e',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('e3b01945-e643-d48a-9d3b-5ff9e5107f86','Left a message','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-04-21 18:45:00','2021-04-21 18:45:00','Accounts','Planned','Outbound','da921383-3870-9526-247e-5ff9e5748b4e',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('e3f69f1c-4164-e8f7-9e9d-5ff9e48ec7bc','Discuss review process','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',0,30,'2021-05-24 10:30:00','2021-05-24 10:30:00','Accounts','Planned','Outbound','66d88013-82df-90bf-fdd3-5ff9e48a94c9',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('ea531754-3a8d-d864-e8f2-5ff9e5dee9a9','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',0,30,'2021-05-01 12:45:00','2021-05-01 12:45:00','Accounts','Planned','Outbound','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('ff85023c-01ca-3b8e-5850-5ff9e54bb997','Get more information on the proposed deal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',0,30,'2022-01-08 07:00:00','2022-01-08 07:00:00','Accounts','Planned','Outbound','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
INSERT INTO `calls_users` VALUES ('117dd215-3da4-9d76-86ae-5ff9e48efb71','c89ba27e-4e68-df7c-22ae-5ff9e45db418','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('13c42f8e-5ce7-ab29-c580-5ff9e49e5cde','e3f69f1c-4164-e8f7-9e9d-5ff9e48ec7bc','seed_max_id','1','accept','2021-01-09 17:06:33',0),('17cf1d2e-0d0b-12c7-9f0a-5ff9e560db04','ea531754-3a8d-d864-e8f2-5ff9e5dee9a9','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('19813564-3572-4dff-4abe-5ff9e4172ef4','be9010a6-a487-079c-e67e-5ff9e40a9920','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('1c5089af-a38c-cc52-4b7d-5ff9e5cb55b6','aaf90ffb-4993-ac42-7837-5ff9e5757d3d','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('1e0de82f-b421-98ec-205c-5ff9e4ac6842','2bfb041a-9805-4caa-7bd9-5ff9e4505777','seed_max_id','1','accept','2021-01-09 17:06:33',0),('1e655c89-40e8-a24a-09a9-5ff9e56bd136','2c010bb5-be69-a2a3-c55f-5ff9e5fcd7a5','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('23a9c017-e8dc-94f9-a9f1-5ff9e502c40e','ff85023c-01ca-3b8e-5850-5ff9e54bb997','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('289ea191-e5f4-5fa2-2998-5ff9e4f9098c','8cf9b3b8-dd97-912d-ba47-5ff9e4f5e7e0','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('2aa70b41-0206-b21e-0733-5ff9e4f4ea99','c3c255e4-0b16-ad0c-6f68-5ff9e454b0fb','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('3234c9c4-297c-b455-3e4c-5ff9e5244b17','e3b01945-e643-d48a-9d3b-5ff9e5107f86','seed_max_id','1','accept','2021-01-09 17:06:33',0),('3bbacb53-491f-7c2c-4550-5ff9e56ee388','20380e99-d27c-c74c-3d41-5ff9e5b84e2e','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('3d2d3090-caaa-01b3-0092-5ff9e5bac5a4','15f48deb-c41b-ef6f-e292-5ff9e56dd0d2','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('3d6685c5-8e02-7ae8-9a22-5ff9e5e79637','29c3fd63-f841-f842-d0f0-5ff9e521682c','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('45999cac-a7e0-cc90-5253-5ff9e5322f80','3220a288-f68c-c2b6-9517-5ff9e54cd4e2','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('45ab36d7-b9e7-a30b-7eb8-5ff9e44d8a07','26d600f2-c6f0-31fb-e7cc-5ff9e4f3e6e0','seed_will_id','1','accept','2021-01-09 17:06:33',0),('4c0a52c3-4137-46eb-128e-5ff9e4e95b6b','2d048389-7983-36f3-8367-5ff9e491a0b2','seed_max_id','1','accept','2021-01-09 17:06:33',0),('52717929-4ff6-aa33-41d3-5ff9e5bd1313','3bccf78e-f8eb-6555-1e2b-5ff9e50a5180','seed_will_id','1','accept','2021-01-09 17:06:33',0),('52fd5c90-b4ca-ba3f-134c-5ff9e5554d98','3723f065-ad96-cd43-c4af-5ff9e5880a9b','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('5368e548-d3f5-d6c5-e46e-5ff9e417196b','36efa2a5-36ca-0533-d596-5ff9e4216e21','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('5c02c889-6ebb-521f-82b9-5ff9e5ccc069','3484178e-aacc-60e9-65ee-5ff9e5d02219','seed_will_id','1','accept','2021-01-09 17:06:33',0),('5d26e86d-1648-0ee5-4432-5ff9e5a61e40','3bef5bb5-6bab-7ce6-de3f-5ff9e599dbcb','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('5e08aab0-be5d-80a7-4664-5ff9e5535954','21bb7d24-c32c-f57c-4234-5ff9e52188c0','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('61a1042e-ac67-3860-7e54-5ff9e49bec6b','379d0dd7-e99c-a04b-d9ec-5ff9e44f5eb9','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('6272c070-faf3-385e-affa-5ff9e465705b','27e9b316-3262-2b35-64b8-5ff9e4ab8636','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('7465ff32-8c66-535f-3ddf-5ff9e40fc001','61ede40a-d823-3fd1-a0c6-5ff9e4f64f7e','seed_max_id','1','accept','2021-01-09 17:06:33',0),('7bf8544b-30e4-2f07-b4e8-5ff9e58356d9','2edb0c8f-94a3-7f04-4b00-5ff9e58f3593','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('7f6b3ce6-bb6a-7e72-96cc-5ff9e54bfd47','3a3541ab-2b59-fd01-4a25-5ff9e57a5cb5','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('8105f137-4f7b-7ce2-14e1-5ff9e55d44b9','47371dd1-7f35-3602-d3c1-5ff9e5cfd112','seed_will_id','1','accept','2021-01-09 17:06:33',0),('877462bb-dcd1-fc92-c309-5ff9e56c6846','5ddf0097-748e-3651-061f-5ff9e555e95e','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('87b0d3cb-fee3-fcea-c756-5ff9e53eeff6','6bce573e-76cb-3c34-de3d-5ff9e5f166c8','seed_max_id','1','accept','2021-01-09 17:06:33',0),('945b8bef-f76a-9143-2094-5ff9e56053de','495d21c6-52c9-4ffd-bb57-5ff9e5594620','seed_will_id','1','accept','2021-01-09 17:06:33',0),('9ca558ed-b62b-9f0b-6d2c-5ff9e4fe9d35','896e6f49-23ce-22ae-93eb-5ff9e41a7d17','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('a110ad96-dfbd-1c3e-7f04-5ff9e58e603f','7e26695b-3cc5-0695-d3f0-5ff9e530c412','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('a51cf61a-8bb8-a3e2-c819-5ff9e51f990a','813a8c01-246b-979a-e2be-5ff9e560a97b','seed_max_id','1','accept','2021-01-09 17:06:33',0),('a6fdeaa6-57f8-f9b0-762b-5ff9e48a6090','87289487-3eaf-ff87-ff15-5ff9e416aeaf','seed_will_id','1','accept','2021-01-09 17:06:33',0),('ae833524-efac-a0ee-0a92-5ff9e53d3525','69733c56-872f-f3ec-fc02-5ff9e57f07c4','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('b1329234-28e3-de85-41c5-5ff9e4f4a4d7','34cb31d7-5a07-9b90-a681-5ff9e4dc8817','seed_max_id','1','accept','2021-01-09 17:06:33',0),('bbc776c5-861b-88eb-bb54-5ff9e5ce5217','8ec188ae-34e1-9810-7bf7-5ff9e5ddb762','seed_will_id','1','accept','2021-01-09 17:06:33',0),('bf012cba-0312-877d-29f2-5ff9e42cb6d2','a2c0c30e-e6cc-cfaf-fbd6-5ff9e4211345','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('c1d476f3-e7b7-73ca-2bee-5ff9e5a822a0','1660c4a4-ac54-1575-d337-5ff9e5ea6b81','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('c2bafc41-db54-01c9-bb46-5ff9e59e155c','ae9ccab7-0059-c041-6bf9-5ff9e54f6825','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('d2b07448-7f4e-fc34-72d0-5ff9e5a4d027','1a0e0305-030e-8aa7-88f1-5ff9e52929f1','seed_max_id','1','accept','2021-01-09 17:06:33',0),('d5a591be-d94b-7ccc-32da-5ff9e56707dd','ba05db23-7500-5408-fe3a-5ff9e51622d5','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('d60e891e-e8c5-a6d0-63b1-5ff9e41c5fd0','4fd390c7-1e3d-c7b4-6797-5ff9e4042e68','seed_will_id','1','accept','2021-01-09 17:06:33',0),('e2bea8aa-3faf-85b9-2fc3-5ff9e53930bf','ceeda64d-1546-6f8e-4d3e-5ff9e528ab9d','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('eb9b4cde-9ada-b07e-05c7-5ff9e59c0c72','abf9545c-5c77-85ad-c102-5ff9e58af67b','seed_will_id','1','accept','2021-01-09 17:06:33',0),('ec877bee-5b3e-6688-b090-5ff9e4f80507','cdb980d1-0088-6370-b590-5ff9e4c09a3c','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('f25e8d5b-119d-5297-b19f-5ff9e470536e','d22ca2cc-37c5-a072-4a4c-5ff9e4df373a','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('f37d1331-2a75-4007-4f96-5ff9e4b3037f','bcc4a7d7-9918-cee2-7cc1-5ff9e41f08a6','seed_max_id','1','accept','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES ('122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',44,NULL,'Open_New','P1',NULL,NULL,'83789240-ef96-8047-7ea0-5ff9e50536b1','Open',NULL),('15588da5-4378-5cb5-2550-5ff9e5fc3ee9','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',42,NULL,'Open_Pending Input','P2',NULL,NULL,'6119a10e-22af-9291-defa-5ff9e5a5d04f','Open',NULL),('1a71bfb6-d9e1-6844-f268-5ff9e5090fc3','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',33,NULL,'Open_Pending Input','P1',NULL,NULL,'59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','Open',NULL),('1bef94cc-3852-4257-c11a-5ff9e58e6a60','Warning message when using the wrong browser','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',28,NULL,'Closed_Rejected','P3',NULL,NULL,'49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','Open',NULL),('248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',47,NULL,'Open_New','P2',NULL,NULL,'e0776e3c-2b65-e7ef-1cda-5ff9e5373856','Open',NULL),('27b2c1e7-b000-c138-8029-5ff9e54afdff','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',46,NULL,'Closed_Rejected','P2',NULL,NULL,'d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','Open',NULL),('281c36ff-88dc-7890-07ac-5ff9e4be2230','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',2,NULL,'Open_Pending Input','P3',NULL,NULL,'243c9004-e246-96f6-4e65-5ff9e47fd593','Open',NULL),('2843a451-eef3-5138-1288-5ff9e59d11b0','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',43,NULL,'Open_New','P1',NULL,NULL,'1d9384ea-662b-dcdb-d90b-5ff9e50458f3','Open',NULL),('295d1a61-7e5b-7995-568b-5ff9e483abb1','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',15,NULL,'Closed_Duplicate','P3',NULL,NULL,'3b1771a5-c851-95b1-b53f-5ff9e4a844b0','Open',NULL),('303cac90-c072-87c5-7daf-5ff9e4f9023f','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',12,NULL,'Open_New','P3',NULL,NULL,'47209eba-76e0-8f0d-6f1d-5ff9e477e52b','Open',NULL),('317ac7aa-4c8a-0846-952b-5ff9e59299d1','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',39,NULL,'Open_New','P1',NULL,NULL,'76d15820-4e44-ea7a-eebc-5ff9e505aca5','Open',NULL),('36151157-2add-fc45-be50-5ff9e4462e62','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',5,NULL,'Closed_Rejected','P1',NULL,NULL,'169da36d-2dac-b3b9-590a-5ff9e43e180d','Open',NULL),('3e35019c-dae9-d8c5-fe38-5ff9e49e1d94','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',18,NULL,'Open_New','P2',NULL,NULL,'42a4f906-a97f-e814-95c4-5ff9e4f5f92a','Open',NULL),('40010517-c975-b3af-47a0-5ff9e5b6b765','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',24,NULL,'Closed_Rejected','P1',NULL,NULL,'43a27b00-6987-92d0-6019-5ff9e551bc06','Open',NULL),('4579be35-7bd4-c886-f636-5ff9e5712458','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',31,NULL,'Closed_Duplicate','P1',NULL,NULL,'44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','Open',NULL),('47567bf4-1478-bb25-adf4-5ff9e5ef0cec','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',29,NULL,'Closed_Rejected','P3',NULL,NULL,'86748ca4-8574-a46f-0187-5ff9e5608ccd','Open',NULL),('495dcd43-abd0-5ae1-2166-5ff9e519997b','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',49,NULL,'Closed_Duplicate','P2',NULL,NULL,'9721d66f-e546-f89e-0cd8-5ff9e5a0a814','Open',NULL),('49889432-c317-735e-ec16-5ff9e5a16b6f','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',40,NULL,'Closed_Duplicate','P3',NULL,NULL,'da921383-3870-9526-247e-5ff9e5748b4e','Open',NULL),('4a110fe2-5415-1018-73e1-5ff9e4bd14c4','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',4,NULL,'Closed_Rejected','P3',NULL,NULL,'66d88013-82df-90bf-fdd3-5ff9e48a94c9','Open',NULL),('4bdb698d-b7a0-6c91-669c-5ff9e4935250','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',14,NULL,'Closed_Closed','P3',NULL,NULL,'95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','Open',NULL),('4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',38,NULL,'Open_Assigned','P3',NULL,NULL,'d76fac61-12db-f067-1527-5ff9e55e0b3a','Open',NULL),('508b7ed4-907f-42df-f2b9-5ff9e5457e17','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',34,NULL,'Closed_Closed','P3',NULL,NULL,'9f43bb09-45cc-123c-bd41-5ff9e5d41008','Open',NULL),('54e66068-9ed3-38fe-8529-5ff9e4d46b7d','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',1,NULL,'Open_Assigned','P3',NULL,NULL,'8636dd93-aecd-acc3-7d25-5ff9e4661308','Open',NULL),('5898592a-fe28-e143-469f-5ff9e4fd7b98','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',9,NULL,'Open_New','P2',NULL,NULL,'91c89470-f34b-f69c-7e6b-5ff9e4861146','Open',NULL),('5a03945c-44ce-7836-14b7-5ff9e5a4b524','Warning message when using the wrong browser','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',30,NULL,'Open_Assigned','P3',NULL,NULL,'d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','Open',NULL),('62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',17,NULL,'Closed_Closed','P3',NULL,NULL,'1840c12c-603e-6c28-6ab4-5ff9e4f4c963','Open',NULL),('6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',50,NULL,'Open_Assigned','P1',NULL,NULL,'5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','Open',NULL),('7380adc9-d189-2d77-e9f1-5ff9e5ecefd0','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',41,NULL,'Open_Pending Input','P3',NULL,NULL,'7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','Open',NULL),('75b3fc65-8d37-2016-47f4-5ff9e5d0f91b','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',37,NULL,'Closed_Duplicate','P1',NULL,NULL,'d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Open',NULL),('78bd7388-2d82-fa69-3d9c-5ff9e4d5af29','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',10,NULL,'Closed_Duplicate','P3',NULL,NULL,'be526ddc-bc43-eabe-6d25-5ff9e4852c8e','Open',NULL),('80522de6-75a4-36eb-8bfc-5ff9e4146e6a','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',8,NULL,'Closed_Rejected','P1',NULL,NULL,'bc78c90d-047f-84aa-f226-5ff9e4361490','Open',NULL),('80937667-2e36-9158-2b5e-5ff9e5770849','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',35,NULL,'Closed_Closed','P3',NULL,NULL,'2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','Open',NULL),('8460ce2f-3170-00ec-25a4-5ff9e5eefc92','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',25,NULL,'Closed_Rejected','P2',NULL,NULL,'7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','Open',NULL),('87cd3d70-8901-527d-0ca9-5ff9e47d9613','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',13,NULL,'Open_Pending Input','P1',NULL,NULL,'9069cc03-e955-384b-fb50-5ff9e4f28398','Open',NULL),('8aa976fa-fe1d-4a33-525f-5ff9e44c8c66','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',19,NULL,'Closed_Duplicate','P2',NULL,NULL,'7ea01596-83e7-624d-c792-5ff9e46dd493','Open',NULL),('8b9d17d5-881e-1fb6-17e1-5ff9e58bf013','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',32,NULL,'Closed_Closed','P3',NULL,NULL,'e37c09b4-4849-7a46-7d80-5ff9e5b88722','Open',NULL),('907af971-dd55-df4e-acc1-5ff9e4e6fdac','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',11,NULL,'Closed_Duplicate','P2',NULL,NULL,'d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','Open',NULL),('9140a01b-0cd7-b748-f5fb-5ff9e4426024','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',20,NULL,'Open_Pending Input','P2',NULL,NULL,'6989fefe-cd69-611b-03d8-5ff9e4e3a083','Open',NULL),('9565e394-6787-6c51-793e-5ff9e47d6a7a','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',7,NULL,'Open_Assigned','P3',NULL,NULL,'eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','Open',NULL),('9d19952c-f85a-ef0b-0701-5ff9e41cd69d','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',21,NULL,'Open_Assigned','P1',NULL,NULL,'a18dac90-9853-e440-c497-5ff9e42723b0','Open',NULL),('af8f5e96-7035-21a2-6c8b-5ff9e567f8b9','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',48,NULL,'Closed_Rejected','P1',NULL,NULL,'daf33abf-a900-a8b3-7f14-5ff9e50575a6','Open',NULL),('bccd19ef-decf-3fe1-d523-5ff9e587e6a0','Having trouble adding new items','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',45,NULL,'Open_Pending Input','P1',NULL,NULL,'20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','Open',NULL),('bd000392-a0f1-3a55-10bb-5ff9e53062c0','Warning message when using the wrong browser','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',26,NULL,'Closed_Closed','P2',NULL,NULL,'e6da908e-865e-3abf-b4ec-5ff9e50b6db2','Open',NULL),('bd1e1e81-7707-beb4-0412-5ff9e4ef309a','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',16,NULL,'Open_Pending Input','P3',NULL,NULL,'23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','Open',NULL),('c83dfd9d-639b-5257-84a3-5ff9e5f3696c','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',27,NULL,'Open_Assigned','P3',NULL,NULL,'6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Open',NULL),('d29c6fbf-3fff-96ac-7994-5ff9e5712fbb','Warning message when using the wrong browser','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',36,NULL,'Closed_Closed','P1',NULL,NULL,'62956c44-79cd-b16e-b306-5ff9e5fa24a9','Open',NULL),('ea49298e-f772-350a-b81e-5ff9e4f0f9e3','Need assistance with large customization','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',6,NULL,'Open_New','P2',NULL,NULL,'64613793-c9b7-a7c0-97c2-5ff9e4975faf','Open',NULL),('ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e','Need to purchase additional licenses','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',3,NULL,'Open_Pending Input','P3',NULL,NULL,'8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','Open',NULL),('ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82','System not responding','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',22,NULL,'Open_Assigned','P1',NULL,NULL,'364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','Open',NULL),('ef5d400e-05a5-bfde-f86b-5ff9e589fc7d','Warning message when using the wrong browser','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',23,NULL,'Open_Assigned','P3',NULL,NULL,'17c08950-1669-c8b1-54c4-5ff9e59a14a8','Open',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTozODp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6OToiamp3Z19NYXBzIjtpOjI5O3M6MTI6Impqd2dfTWFya2VycyI7aTozMDtzOjEwOiJqandnX0FyZWFzIjtpOjMxO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aTozMjtzOjExOiJBT1JfUmVwb3J0cyI7aTozMztzOjEyOiJBT1dfV29ya0Zsb3ciO2k6MzQ7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MzU7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO2k6MzY7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6Mzc7czo3OiJTdXJ2ZXlzIjt9'),('portal','on','0'),('tracker','Tracker','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('13099e74-4d76-790c-d920-5ff9e5d8dfce','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Sondra','Wirtz','President',NULL,NULL,0,'(939) 264-3607','(030) 878-9264','(963) 677-9838',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','Sunnyvale','CA','16807','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Trade Show',NULL,NULL,NULL,NULL,NULL,'Single'),('139ea344-eb2c-ca62-99e9-5ff9e53540b4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Kathi','Cutright','Senior Product Manager',NULL,NULL,0,'(654) 668-4095','(531) 366-0783','(619) 950-4157',NULL,NULL,NULL,NULL,NULL,'1715 Scott Dr','Denver','NY','91349','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'Single'),('1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Giuseppe','Alverez','IT Developer',NULL,NULL,0,'(221) 664-5594','(701) 844-1091','(765) 008-8502',NULL,NULL,NULL,NULL,NULL,'999 Baker Way','St. Petersburg','CA','79490','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cold Call',NULL,NULL,NULL,NULL,NULL,'Single'),('202a0b4a-a2df-8cc4-a564-5ff9e57b369c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Frank','Ogrady','Director Sales',NULL,NULL,0,'(038) 234-6239','(039) 369-9893','(170) 594-1466',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','San Mateo','NY','90835','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee',NULL,NULL,NULL,NULL,NULL,'Single'),('49faa0f9-a041-c118-5131-5ff9e5b033de','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Domingo','Thornhill','VP Sales',NULL,NULL,0,'(358) 142-5560','(437) 467-9185','(463) 271-6118',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','St. Petersburg','NY','29247','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee',NULL,NULL,NULL,NULL,NULL,'Single'),('5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Phoebe','Butcher','Director Operations',NULL,NULL,0,'(931) 722-6001','(642) 843-9794','(851) 478-0448',NULL,NULL,NULL,NULL,NULL,'1715 Scott Dr','Los Angeles','CA','36390','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Trade Show',NULL,NULL,NULL,NULL,NULL,'Single'),('61e3666b-66b4-7e09-1df1-5ff9e5659eed','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Jackie','Staples','Director Operations',NULL,NULL,0,'(722) 016-8796','(383) 887-7790','(306) 223-4784',NULL,NULL,NULL,NULL,NULL,'67321 West Siam St.','Cupertino','CA','72017','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,'Single'),('6a088da8-3ef3-ae32-0436-5ff9e5741b98','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Sherwood','Cribb','IT Developer',NULL,NULL,0,'(802) 245-6179','(146) 331-4870','(404) 844-2069',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','Denver','NY','20095','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee',NULL,NULL,NULL,NULL,NULL,'Single'),('6d33aad4-8175-e485-d04c-5ff9e57cbf86','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Demetrius','Farner','President',NULL,NULL,0,'(954) 929-6511','(011) 519-4205','(925) 402-2671',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','Cupertino','CA','48463','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,'Single'),('6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Marcus','Derringer','IT Developer',NULL,NULL,0,'(210) 845-8638','(628) 984-6044','(822) 108-1629',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','Santa Monica','CA','34025','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cold Call',NULL,NULL,NULL,NULL,NULL,'Single'),('6e523b23-29fe-8db1-e59b-5ff9e5401d2e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Levi','Gore','IT Developer',NULL,NULL,0,'(587) 627-9546','(751) 561-0589','(088) 126-6284',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','Alabama','NY','35973','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Existing Customer',NULL,NULL,NULL,NULL,NULL,'Single'),('77145904-99e8-9624-c82d-5ff9e50ac392','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Karina','Schroder','President',NULL,NULL,0,'(300) 557-5266','(343) 503-7771','(603) 545-3639',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','Persistance','NY','94911','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,'Single'),('89c7e668-991e-4dd5-7619-5ff9e5541756','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Denny','Amaro','Senior Product Manager',NULL,NULL,0,'(883) 841-0364','(050) 963-0406','(985) 878-0241',NULL,NULL,NULL,NULL,NULL,'777 West Filmore Ln','Denver','CA','53862','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Campaign',NULL,NULL,NULL,NULL,NULL,'Single'),('94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Willard','Bartolome','Director Operations',NULL,NULL,0,'(569) 862-3470','(685) 830-5140','(750) 585-8513',NULL,NULL,NULL,NULL,NULL,'123 Anywhere Street','Kansas City','NY','21256','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee',NULL,NULL,NULL,NULL,NULL,'Single'),('99d14881-6332-db47-1114-5ff9e5866741','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Marquita','Lambdin','IT Developer',NULL,NULL,0,'(105) 270-3756','(540) 545-3770','(769) 324-3132',NULL,NULL,NULL,NULL,NULL,'999 Baker Way','Ohio','CA','13379','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cold Call',NULL,NULL,NULL,NULL,NULL,'Single'),('a4a4b79f-2e72-44fe-4e16-5ff9e5162442','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Terry','Petree','IT Developer',NULL,NULL,0,'(759) 196-1649','(073) 119-1340','(799) 091-5223',NULL,NULL,NULL,NULL,NULL,'345 Sugar Blvd.','Kansas City','CA','78535','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Self Generated',NULL,NULL,NULL,NULL,NULL,'Single'),('b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',NULL,'Becky','Trexler','Director Operations',NULL,NULL,0,'(583) 934-1045','(742) 572-0844','(514) 424-8230',NULL,NULL,NULL,NULL,NULL,'1715 Scott Dr','Los Angeles','NY','42841','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Email',NULL,NULL,NULL,NULL,NULL,'Single'),('b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Reva','Pendley','Director Operations',NULL,NULL,0,'(195) 730-0076','(789) 471-7707','(642) 156-5387',NULL,NULL,NULL,NULL,NULL,'777 West Filmore Ln','Ohio','CA','95698','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Web Site',NULL,NULL,NULL,NULL,NULL,'Single'),('bade0bdb-1482-2e88-3e34-5ff9e5562a29','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Henry','Holguin','President',NULL,NULL,0,'(470) 050-6891','(253) 200-7107','(888) 656-0797',NULL,NULL,NULL,NULL,NULL,'111 Silicon Valley Road','Los Angeles','CA','18883','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Word of mouth',NULL,NULL,NULL,NULL,NULL,'Single'),('bc2c5743-8675-1169-2652-5ff9e599af68','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Del','Tune','Senior Product Manager',NULL,NULL,0,'(431) 886-0155','(784) 412-3283','(390) 911-5435',NULL,NULL,NULL,NULL,NULL,'321 University Ave.','Alabama','CA','37023','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Web Site',NULL,NULL,NULL,NULL,NULL,'Single'),('cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Tiffany','Dessert','VP Operations',NULL,NULL,0,'(842) 782-8836','(418) 589-1377','(960) 511-6201',NULL,NULL,NULL,NULL,NULL,'321 University Ave.','St. Petersburg','NY','17715','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Direct Mail',NULL,NULL,NULL,NULL,NULL,'Single'),('dd01d891-146f-20e1-e32a-5ff9e5c54b91','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',NULL,'Elvis','Guillot','President',NULL,NULL,0,'(909) 537-9914','(892) 856-9862','(470) 107-5028',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','Los Angeles','CA','79839','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Conference',NULL,NULL,NULL,NULL,NULL,'Single'),('e0ba2917-7017-6a73-1a45-5ff9e5f929a3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id',NULL,'Ivy','Yearby','Director Operations',NULL,NULL,0,'(771) 829-7881','(923) 607-6350','(026) 553-5886',NULL,NULL,NULL,NULL,NULL,'123 Anywhere Street','San Mateo','NY','45290','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee',NULL,NULL,NULL,NULL,NULL,'Single'),('e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id',NULL,'Alex','Largent','VP Operations',NULL,NULL,0,'(303) 025-1644','(520) 679-7092','(253) 531-0672',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','Santa Fe','CA','98535','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Self Generated',NULL,NULL,NULL,NULL,NULL,'Single'),('ec51a991-ccf0-7665-d2c2-5ff9e579665d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id',NULL,'Charlene','Brass','VP Sales',NULL,NULL,0,'(345) 177-5294','(529) 411-5156','(771) 693-9173',NULL,NULL,NULL,NULL,NULL,'999 Baker Way','Cupertino','CA','64177','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Direct Mail',NULL,NULL,NULL,NULL,NULL,'Single'),('f0f23ca0-57c9-160a-f717-5ff9e5cd3def','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id',NULL,'Bryon','Canady','Mgr Operations',NULL,NULL,0,'(934) 178-0977','(861) 195-4943','(214) 929-6296',NULL,NULL,NULL,NULL,NULL,'48920 San Carlos Ave','Sunnyvale','CA','41537','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Trade Show',NULL,NULL,NULL,NULL,NULL,'Single'),('f3d1c25c-981f-2052-331a-5ff9e5a38926','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id',NULL,'Jewell','Severt','Director Operations',NULL,NULL,0,'(663) 673-9178','(107) 170-4718','(919) 782-2486',NULL,NULL,NULL,NULL,NULL,'999 Baker Way','Ohio','NY','73394','USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Email',NULL,NULL,NULL,NULL,NULL,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('13582b30-7eca-cb15-8b00-5ff9e520a246','13d73271-1b3b-9660-129e-5ff9e56d05a2','13099e74-4d76-790c-d920-5ff9e5d8dfce','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('13efe332-368b-d4bc-d7fb-5ff9e5cd9979','142de246-3450-9dfb-b69d-5ff9e5122de2','139ea344-eb2c-ca62-99e9-5ff9e53540b4','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1612a964-07a9-7946-87ed-5ff9e44d1631','169f372d-d42b-9b99-89bb-5ff9e4e0a7da','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('16dd6a90-cd41-e54c-6032-5ff9e49f87c6','173bc169-0cdc-b8ed-2af8-5ff9e429471e','169da36d-2dac-b3b9-590a-5ff9e43e180d','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('17ffa044-d0b8-2d77-05e6-5ff9e509e73a','18625d3e-f3b5-caf7-dcd0-5ff9e52ef894','17c08950-1669-c8b1-54c4-5ff9e59a14a8','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('187e96fb-a9a4-82ed-d00f-5ff9e4ac7178','18e6de0d-6ff4-40f4-c3bd-5ff9e4f5a316','1840c12c-603e-6c28-6ab4-5ff9e4f4c963','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1dd1641e-4866-a5a3-ac33-5ff9e5420ac4','1e30d970-477d-e6d7-27d7-5ff9e5f7ab43','1d9384ea-662b-dcdb-d90b-5ff9e50458f3','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1de6f69f-61ce-23df-8f91-5ff9e5702590','1e4f8eed-4edb-5438-c0de-5ff9e55ff5d4','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1fce4b35-ceaf-c229-8578-5ff9e43d78b0','20163f9b-27d3-fd60-b81d-5ff9e499cdba','be526ddc-bc43-eabe-6d25-5ff9e4852c8e','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1fe004b6-ac43-4ba2-786f-5ff9e5efdc13','85d005fc-08ed-f3de-f4b6-5ff9e5802646','f3d1c25c-981f-2052-331a-5ff9e5a38926','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2033e80c-3b02-272e-9019-5ff9e516776f','207f53d6-17de-b4e2-ba8c-5ff9e51f9485','1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2043a0d7-83fd-986e-a4d4-5ff9e5d255ba','20bcec71-786e-fc29-9d2e-5ff9e5ec12a1','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('20c06532-229c-5bd3-ec07-5ff9e58bde22','2108246a-fc13-5106-633b-5ff9e5fda77b','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('220203ca-2a3d-8eb5-6e4a-5ff9e5acd16d','23e40fbd-12af-d29d-eae1-5ff9e5e0845a','202a0b4a-a2df-8cc4-a564-5ff9e57b369c','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('242c2eae-8891-f56b-7d91-5ff9e4d657b2','2488b88b-bd2c-ae97-e58e-5ff9e447497b','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('24507aad-3868-0970-44a6-5ff9e551575d','24f5f3d1-68af-8a37-7cb7-5ff9e5a8e101','e37c09b4-4849-7a46-7d80-5ff9e5b88722','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2487384b-dbd6-b3a0-c39a-5ff9e4dd2754','25068541-c827-75ef-f498-5ff9e4c5db15','243c9004-e246-96f6-4e65-5ff9e47fd593','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2bc6a467-d94c-9608-4add-5ff9e5d6f2c7','2c312a11-168f-fa25-ddc3-5ff9e53d83db','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2e177f4b-ef7d-d96a-f50a-5ff9e5ea2bdb','2e8b6e6c-d1f3-3ba9-5db7-5ff9e5f2042a','d76fac61-12db-f067-1527-5ff9e55e0b3a','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2fcf64b5-5594-36b5-5152-5ff9e43e270f','2fe9599e-9f18-c5fc-8085-5ff9e4270368','seed_jim_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('368d5180-6803-7439-1b12-5ff9e5a5a972','36f4a5d9-56f2-985a-f948-5ff9e53c25ef','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('38ebf73d-dff3-3a3a-12a3-5ff9e4ce6799','3958cacd-9ffc-681e-5203-5ff9e4a77e78','seed_sally_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3b19de86-8a81-3aa8-2a49-5ff9e52da9de','3b85feff-ceb3-7f3d-b19d-5ff9e5e70541','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3b721d94-3bb3-3774-9fb2-5ff9e4809212','3bea6520-bbd7-c629-e5ff-5ff9e47162b5','3b1771a5-c851-95b1-b53f-5ff9e4a844b0','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3fc5ec6a-ffe8-3e02-eaaa-5ff9e406dee8','403363bb-3678-6cd1-5a11-5ff9e41e55ae','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3fca99b3-9732-5e26-a907-5ff9e41149dc','40494b78-265e-7a33-a6a4-5ff9e4a8d1dc','seed_will_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4064e52e-cc5b-2c54-5a6b-5ff9e4bae3b1','40c95526-87f2-1b4d-e496-5ff9e4e02b2d','9069cc03-e955-384b-fb50-5ff9e4f28398','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('42eb8b53-53c7-54c9-0631-5ff9e4a73c7e','435d9205-7567-2268-537a-5ff9e4c0adfa','42a4f906-a97f-e814-95c4-5ff9e4f5f92a','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('43dafbea-a5f6-4ff7-443e-5ff9e5ec62df','44281b13-453e-f290-f8d5-5ff9e541ee4c','43a27b00-6987-92d0-6019-5ff9e551bc06','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('450ef663-46f3-62ef-e00c-5ff9e54b3d73','45837559-652f-fb1a-6eb9-5ff9e516487e','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('464564d8-3415-65a4-88ed-5ff9e52b11fd','46d2098d-53c1-0df7-b4e1-5ff9e587e85b','1d9384ea-662b-dcdb-d90b-5ff9e50458f3','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('469305a1-fbab-db7d-a630-5ff9e542f247','47090764-4a17-13ec-5f88-5ff9e54facdd','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4732782a-f4bd-31c2-aee9-5ff9e4c5c887','47443ad4-179e-175e-3756-5ff9e4ca454b','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('477e4b10-ef01-8035-a6a5-5ff9e56fa6e8','47e9af49-9ed3-4f90-c66f-5ff9e55f09e8','daf33abf-a900-a8b3-7f14-5ff9e50575a6','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('48c00c37-5e2a-5909-b941-5ff9e48436bb','4c540dea-3817-4ef6-78cd-5ff9e4d81a5b','bc78c90d-047f-84aa-f226-5ff9e4361490','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4a7fe968-5617-073d-1e6e-5ff9e576d342','4ae0ce8c-9278-02ca-d051-5ff9e5cec21d','49faa0f9-a041-c118-5131-5ff9e5b033de','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4cc5035a-a67c-c4c4-7bf2-5ff9e53e1f1c','52c60183-7667-f5dd-de9e-5ff9e5685234','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5058b288-c9b0-0651-0a49-5ff9e4a4716f','50c5ce22-c032-36cf-6089-5ff9e46ef71c','243c9004-e246-96f6-4e65-5ff9e47fd593','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('506f44a4-1164-c1c3-f819-5ff9e45246fe','50df62c8-7b42-0626-38b3-5ff9e43eab24','seed_chris_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('53a70e70-cbab-4a9d-5249-5ff9e4a1c378','5a680e35-b445-9ae6-77f8-5ff9e4d0ad81','seed_sally_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('58486948-7f44-d3ed-403b-5ff9e5eecda6','58b5f0dd-cd74-d66a-084c-5ff9e5e44d28','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5aac06a9-8556-e222-883c-5ff9e4bd8b3d','60e30b92-f4c9-9ec8-1f8c-5ff9e4ec4a0c','91c89470-f34b-f69c-7e6b-5ff9e4861146','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5b9131d4-9058-0f22-6638-5ff9e583de4b','5c2de423-c418-ef1a-1cef-5ff9e509a555','17c08950-1669-c8b1-54c4-5ff9e59a14a8','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5beb3a88-23dc-c687-34fd-5ff9e5db3ff2','5c414d10-9b04-7967-ea08-5ff9e5666bb0','5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5cc48cf6-9bb5-1db5-ef6e-5ff9e5f8534e','5d273767-4dea-a407-43c3-5ff9e5442bf3','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5ef407fc-e540-cb5c-7b2f-5ff9e5bcab62','651402f9-56e8-146d-c87a-5ff9e52fdf16','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('61564040-0ee1-8603-e38f-5ff9e5de76ee','61b20e3c-1742-11c5-5d89-5ff9e5039ab3','6119a10e-22af-9291-defa-5ff9e5a5d04f','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6253fe2d-70a9-d4e8-4597-5ff9e54fa773','62c810b9-a649-ba50-26b4-5ff9e5e849e0','61e3666b-66b4-7e09-1df1-5ff9e5659eed','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('64a1ba7d-2ad6-db8b-2f47-5ff9e439d1da','650c9794-ebe3-d116-f3a5-5ff9e442d7a0','64613793-c9b7-a7c0-97c2-5ff9e4975faf','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('671a2dd8-d96e-35e3-052c-5ff9e5b14e2f','6792fc1c-57a5-9433-e2dd-5ff9e589ae45','76d15820-4e44-ea7a-eebc-5ff9e505aca5','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('671c4f20-1a53-a002-d9ec-5ff9e4cf9392','67808ded-feb4-aa68-9fd8-5ff9e401a249','66d88013-82df-90bf-fdd3-5ff9e48a94c9','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('677c4978-4253-57f8-85ec-5ff9e511c99a','678ff042-532c-e345-c038-5ff9e568a15d','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('69ba1f26-d6a9-2144-f551-5ff9e464273c','69fb107f-03b8-e602-f52a-5ff9e4a0298b','6989fefe-cd69-611b-03d8-5ff9e4e3a083','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6a68f9a1-3c26-1b43-d5fb-5ff9e5b864dc','6ac906aa-cead-5ed6-8424-5ff9e5a33762','6a088da8-3ef3-ae32-0436-5ff9e5741b98','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6b1e8b7e-5869-8020-46a8-5ff9e428a42b','6ba2efc6-89c9-2945-268c-5ff9e40932dd','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6b6e1027-69a4-16cd-02f3-5ff9e4b773d1','6be25388-7fb9-6489-5623-5ff9e4ea27b6','169da36d-2dac-b3b9-590a-5ff9e43e180d','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6d951100-1490-265d-edc7-5ff9e54b06ba','6deffd02-c8b1-f935-80b2-5ff9e5a8d787','6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6d9aefbf-2600-a57d-f447-5ff9e53e2b1a','6dff0c20-e99b-4b4a-842e-5ff9e591ac69','6d33aad4-8175-e485-d04c-5ff9e57cbf86','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6df695e3-9ed5-ce62-341b-5ff9e595440b','6e6f47f0-d48b-8d21-93d9-5ff9e5033312','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6edc9fc0-7246-ec7e-5177-5ff9e5b9b386','6f2ffb2f-f4ed-14b3-4575-5ff9e58ce879','6e523b23-29fe-8db1-e59b-5ff9e5401d2e','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('702c2eb5-7a2b-bb39-c15f-5ff9e5a6437c','704b1003-cfc8-a919-5211-5ff9e54f083e','62956c44-79cd-b16e-b306-5ff9e5fa24a9','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7253ccf5-7935-d441-d412-5ff9e5517d9e','72b5b987-2a8c-36b7-9665-5ff9e599727c','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('757e4d1e-49b1-a5ec-2d7b-5ff9e40601b4','75fe4aae-b81f-0bc5-013c-5ff9e49e185c','seed_jim_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('76a1baf4-20ad-93a8-0179-5ff9e5db00e1','b7a21bc5-a800-7866-26b3-5ff9e5c37ef5','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7713df03-aaa6-ae8b-08ea-5ff9e508b28d','77845df7-dce7-a360-0f68-5ff9e59af952','76d15820-4e44-ea7a-eebc-5ff9e505aca5','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('775d24c5-4584-8e66-96aa-5ff9e5ae1cd5','77ad3d91-edc5-e67c-7554-5ff9e51a9e00','77145904-99e8-9624-c82d-5ff9e50ac392','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7bc5203c-9ee8-5a7f-2d50-5ff9e5e76305','7c1493fd-b17b-da69-adb4-5ff9e52ea115','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7ed985b7-2ada-5732-14c1-5ff9e4ecbbbd','7f31bbb0-56c9-fd6d-7e50-5ff9e48227d8','7ea01596-83e7-624d-c792-5ff9e46dd493','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7f7af459-b859-c770-9493-5ff9e59eb23f','7ff32aad-4511-7bab-6f3f-5ff9e540e1b0','da921383-3870-9526-247e-5ff9e5748b4e','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8266b70c-9658-5117-a003-5ff9e4f8fb4f','82cc3e8d-7986-aca0-709b-5ff9e4784752','64613793-c9b7-a7c0-97c2-5ff9e4975faf','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('83b6003e-cf63-ff01-5574-5ff9e58bba30','84146e00-b14f-01d8-6da8-5ff9e5a90b1a','83789240-ef96-8047-7ea0-5ff9e50536b1','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('868383a3-3433-50f2-04a6-5ff9e4f3a7c8','86d20a7c-ca99-fdaa-8cac-5ff9e472dd78','8636dd93-aecd-acc3-7d25-5ff9e4661308','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('86c6679c-0630-1c67-9b55-5ff9e543c0ff','872e50e6-b951-7dff-4408-5ff9e5c92899','86748ca4-8574-a46f-0187-5ff9e5608ccd','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('88b75dbf-1744-32c0-abc8-5ff9e5699b8c','892e7f89-21bb-f614-a007-5ff9e5bf7b19','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8a26c91d-bf28-02eb-16ae-5ff9e5ecd57e','8a86a34b-1ace-aef1-30e1-5ff9e51aa126','89c7e668-991e-4dd5-7619-5ff9e5541756','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8b5a045c-aa37-cfb6-fa1f-5ff9e5c5269c','8bbfcdef-a3d7-73fe-b479-5ff9e5d1c82c','62956c44-79cd-b16e-b306-5ff9e5fa24a9','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8c7523ed-282b-1fe9-8cef-5ff9e4a90298','8cfc8470-0e6c-c098-9ed2-5ff9e4c8b84b','3b1771a5-c851-95b1-b53f-5ff9e4a844b0','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8d3423d9-4705-133c-3249-5ff9e5b56808','8d951280-0ddd-d015-7999-5ff9e561f9b8','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8e72f3c1-10bd-d542-be34-5ff9e45f1d55','8e90635b-8d73-f284-da55-5ff9e4df8ea5','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8f97a694-4430-b6e1-cb0f-5ff9e4f51d05','a0057665-8bd6-5b52-f78a-5ff9e45d646d','1840c12c-603e-6c28-6ab4-5ff9e4f4c963','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('90ac9f3c-544c-93f9-b38b-5ff9e41951ab','9113be86-f90b-8530-3661-5ff9e4cedd48','9069cc03-e955-384b-fb50-5ff9e4f28398','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('92053ca2-d4b9-0937-43a5-5ff9e4127bef','92643dd4-0437-d7f0-e779-5ff9e498e1ca','91c89470-f34b-f69c-7e6b-5ff9e4861146','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('94d9d88f-d71b-adf1-d671-5ff9e5c0cfab','94ff646b-857e-1d5b-c1fd-5ff9e59c5604','94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9604c031-0917-55ae-18c9-5ff9e47a6ce6','966aaba8-c8c9-d83a-263c-5ff9e4186849','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('975533ab-c150-17ab-1c09-5ff9e572c5a8','97a22173-c856-f736-cc1a-5ff9e510f990','9721d66f-e546-f89e-0cd8-5ff9e5a0a814','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('98d833a9-dafd-b28f-6f92-5ff9e476cd5e','99418b80-df42-b330-09e7-5ff9e4abfb44','seed_max_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('99e69fc6-bb1d-73a3-c0d3-5ff9e59d3be6','99f6b1c6-0f41-96eb-0f16-5ff9e5c0e355','99d14881-6332-db47-1114-5ff9e5866741','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9e537d5a-db89-6b39-3f67-5ff9e5687593','9ec1781d-a875-5ac0-3ba1-5ff9e5ba1290','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9e844f2b-426a-1b73-665f-5ff9e5b07327','9ef840dc-8421-b5c7-42f8-5ff9e50a595d','83789240-ef96-8047-7ea0-5ff9e50536b1','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9ed11962-fb93-318e-6417-5ff9e531cc19','9f22efc7-d9be-6b00-19aa-5ff9e511c7e1','6119a10e-22af-9291-defa-5ff9e5a5d04f','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9f5d4650-9a06-bc9c-ab3b-5ff9e4345ab9','9fc2d791-4765-5647-f0be-5ff9e4ee219f','seed_will_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9f83a812-8896-6308-9a0f-5ff9e591368d','9fe5ab5c-9604-fd1d-09f4-5ff9e5a85eb2','9f43bb09-45cc-123c-bd41-5ff9e5d41008','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a0ba115d-f14e-3efd-0156-5ff9e5677dfb','a124010a-1c0b-48dd-bc32-5ff9e59192df','43a27b00-6987-92d0-6019-5ff9e551bc06','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a0eaa1c7-5185-e3ad-303e-5ff9e4fb87dd','aea0bb44-cab2-17f1-7e4f-5ff9e44e8cf1','seed_jim_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a1ce402a-efbd-1323-f7c8-5ff9e4c71bc3','a22b85a8-b332-44b1-2cb0-5ff9e436993d','a18dac90-9853-e440-c497-5ff9e42723b0','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a1fe84c5-541b-9190-f73e-5ff9e4abf905','a2905240-08e4-b5bd-661f-5ff9e4fe25cc','8636dd93-aecd-acc3-7d25-5ff9e4661308','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a53aedfb-531b-7cf9-30ae-5ff9e5d01029','a5b1d8bd-efab-303c-0254-5ff9e5575fc0','a4a4b79f-2e72-44fe-4e16-5ff9e5162442','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a5d72df8-2a38-03e6-b3a4-5ff9e507d4fd','a641a776-3aca-c9cf-f14f-5ff9e53ac127','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('aa5a478d-3ca7-d953-d70a-5ff9e458d011','aa72707c-9c20-38c1-d648-5ff9e4b2ba72','seed_sarah_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('aba32325-2933-3c2f-61d5-5ff9e53677f7','ac0bf286-70e4-9bfd-c577-5ff9e5209391','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ac112c7d-5a22-0cdf-d7d9-5ff9e4f2dd53','ac739c99-ecfb-a439-0088-5ff9e4fecea4','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('afc60ae0-92d3-c216-d9f5-5ff9e4ab01a0','14b9e81d-d6c1-a027-21fe-5ff9e4ee3476','6989fefe-cd69-611b-03d8-5ff9e4e3a083','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b1b11c59-92d7-0f8e-95de-5ff9e594d0f1','b1ff4b0e-2940-e7fb-3e58-5ff9e5594a19','b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b3b0a27a-9a28-4946-1cf1-5ff9e46aafc6','b4191026-a4ab-b51c-64b5-5ff9e4ccfa9f','seed_max_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b70be93a-15fa-a58a-8d23-5ff9e52d4452','b73fac4c-ebf9-d40c-7dad-5ff9e58b4065','b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('bc9d1bb2-94d2-e5c4-df21-5ff9e545e60f','bd008604-baa2-2dea-e91d-5ff9e5d56e80','bc2c5743-8675-1169-2652-5ff9e599af68','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('bcb9208f-4b57-e6e0-1553-5ff9e4528e15','bd250f9d-b9d2-420e-0749-5ff9e410b756','bc78c90d-047f-84aa-f226-5ff9e4361490','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c034082a-677b-4d12-43f4-5ff9e5f5f6b2','c5b10d08-4475-7713-0ebd-5ff9e5deee2d','bade0bdb-1482-2e88-3e34-5ff9e5562a29','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c4b7d5a0-c32d-bdac-2ea8-5ff9e56b6161','c52c4ac5-59bb-a346-e10c-5ff9e54456a4','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c54aa418-f14d-3108-8c48-5ff9e4629e26','c5b0335f-e3c2-088a-9d0d-5ff9e4a8fe4a','seed_sarah_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c5f41dbd-9248-ffef-cc12-5ff9e4a2797c','c65c1023-fc4b-095b-3777-5ff9e451213b','42a4f906-a97f-e814-95c4-5ff9e4f5f92a','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c91cd185-454c-1f1a-23c0-5ff9e4c1730b','c96b1a0f-2e20-624d-8b16-5ff9e4af16e9','seed_chris_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c9377220-f8d0-defe-dbc3-5ff9e4e3e722','c9a72fbd-e845-dcb7-6ceb-5ff9e42801ec','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('cbec8e9d-9414-1180-b8e8-5ff9e403bf2f','cc118110-d0c4-dd10-e5a0-5ff9e4453f99','be526ddc-bc43-eabe-6d25-5ff9e4852c8e','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('cf7a1ce8-8358-473b-0148-5ff9e5c9863a','cf98a146-fb08-4e67-2514-5ff9e503e012','cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d041607d-c2d4-1594-302d-5ff9e57f0c4b','d0c5e560-168e-bc06-abd4-5ff9e528785a','9721d66f-e546-f89e-0cd8-5ff9e5a0a814','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d219c5d3-0d12-0515-762c-5ff9e5e40b87','d2745bc5-a28a-dfff-b4a9-5ff9e5ce470b','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d3297605-1cec-c0ac-2628-5ff9e4276584','d3a22a4a-931c-63c7-d19b-5ff9e4165f08','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d350e5ec-e543-85d5-c86b-5ff9e460023e','d3aa9b77-e1a7-25aa-2055-5ff9e425b6be','seed_sally_id','Users',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d37ce236-2516-049d-1965-5ff9e47b6b7c','d3f4e514-eae9-4d60-b13a-5ff9e4e7279f','66d88013-82df-90bf-fdd3-5ff9e48a94c9','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d5352675-1cbf-28e8-772f-5ff9e5e15cc9','d5930ad1-0bab-6198-bdbd-5ff9e50dea1e','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d7b20155-3fe1-c2aa-79c5-5ff9e580ee95','d81a2935-ae1d-7f6c-4daa-5ff9e579d4e2','d76fac61-12db-f067-1527-5ff9e55e0b3a','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d96e80ce-f2a0-66b2-2ae2-5ff9e58e573c','d9cd00ae-9b6c-8e9b-d1cc-5ff9e5ce2770','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('da245ea9-7954-28fa-1a34-5ff9e59bc36e','daafd482-4f09-e7c8-a65d-5ff9e5a903df','9f43bb09-45cc-123c-bd41-5ff9e5d41008','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('da3b1ccd-d1ca-c3e2-3b7c-5ff9e457c585','dac01bee-4964-271d-5b8d-5ff9e49ffaf1','seed_will_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dad73587-af74-a04c-0098-5ff9e5b52d09','db2d9b97-1c68-e464-6f16-5ff9e591f87a','da921383-3870-9526-247e-5ff9e5748b4e','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('db4255f6-abff-6010-f609-5ff9e59480c5','dbac7fee-e097-e73a-704a-5ff9e58d53d4','daf33abf-a900-a8b3-7f14-5ff9e50575a6','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dc43489d-ebe7-d7e2-1254-5ff9e4d0c128','dc829e46-c05c-117e-b109-5ff9e4341ced','7ea01596-83e7-624d-c792-5ff9e46dd493','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dcf63f55-9a20-a65c-638e-5ff9e54ec6b3','dd6f7dc1-04d2-2f02-9947-5ff9e5986a27','86748ca4-8574-a46f-0187-5ff9e5608ccd','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dd5c96b8-f5f4-f099-fcd8-5ff9e537109c','dda6efa1-780a-6742-b079-5ff9e5f76f64','dd01d891-146f-20e1-e32a-5ff9e5c54b91','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dffc92e7-3f47-e04f-6ca5-5ff9e4764556','e04105e6-9433-6ab9-84af-5ff9e4ab19d9','seed_chris_id','Users',0,1,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e0b8f16d-b700-14f4-6467-5ff9e5a328a8','e1233ffb-5b8e-de44-f0aa-5ff9e59442d1','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e122ae8f-aef7-199a-7fc4-5ff9e521feee','e17d7f14-90cb-fc50-a410-5ff9e5832ec3','e0ba2917-7017-6a73-1a45-5ff9e5f929a3','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e2040600-02b5-f5b1-db11-5ff9e5e4475a','e976043f-9429-7bd3-9ea7-5ff9e50c2eff','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e3b6cb5e-1296-7c8f-1518-5ff9e5e1fd2f','e43b605f-6a6b-d26d-1aaa-5ff9e53c9086','e37c09b4-4849-7a46-7d80-5ff9e5b88722','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e692ac49-90ba-6bea-1b62-5ff9e4388b27','e6ade887-945a-414f-174a-5ff9e4133128','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e7172f53-db74-92f0-b5cb-5ff9e51128e7','e771db99-a8ca-aef6-cc6a-5ff9e5ebc8ce','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e7556c40-7ba5-f7d9-1fc6-5ff9e5c5bd44','e7d273e1-6ecb-87d1-30ca-5ff9e5617868','e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('eaf09828-de5f-5634-70c3-5ff9e43bc83d','eb5167e4-3396-6cd6-9392-5ff9e496cbd0','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278','Accounts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ecb3c7d6-0397-bb7d-561e-5ff9e5f7f909','ed03d2a9-2753-f225-170c-5ff9e52f785f','ec51a991-ccf0-7665-d2c2-5ff9e579665d','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('eccd61c0-21cc-9af6-f26c-5ff9e4bebe70','ed3663fa-e184-945e-4379-5ff9e4baa904','seed_max_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ecf9f580-8281-0b48-3ef1-5ff9e570f116','ed657027-a524-ab55-8698-5ff9e5367650','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ee061640-11e1-1875-a878-5ff9e4b42aed','795708e0-35e1-5239-098a-5ff9e4a154d1','seed_sarah_id','Users',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('f15f3769-50e1-ce1a-25d2-5ff9e5f389cb','f1da3a7c-a2d1-6fd0-c212-5ff9e5b5eddb','f0f23ca0-57c9-160a-f717-5ff9e5cd3def','Contacts',1,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('fd900025-ad5a-53ca-0904-5ff9e491faf3','16fd092d-a17a-f189-36ad-5ff9e4f6d86c','a18dac90-9853-e440-c497-5ff9e42723b0','Accounts',0,0,'2021-01-09 17:06:33','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('13d73271-1b3b-9660-129e-5ff9e56d05a2','support.dev.section@example.edu','SUPPORT.DEV.SECTION@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('142de246-3450-9dfb-b69d-5ff9e5122de2','the.the@example.biz','THE.THE@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('14b9e81d-d6c1-a027-21fe-5ff9e4ee3476','info57@example.com','INFO57@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('169f372d-d42b-9b99-89bb-5ff9e4e0a7da','hr.im.the@example.info','HR.IM.THE@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('16fd092d-a17a-f189-36ad-5ff9e4f6d86c','support61@example.de','SUPPORT61@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('173bc169-0cdc-b8ed-2af8-5ff9e429471e','qa61@example.biz','QA61@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('18625d3e-f3b5-caf7-dcd0-5ff9e52ef894','phone63@example.de','PHONE63@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('18e6de0d-6ff4-40f4-c3bd-5ff9e4f5a316','support.phone.support@example.co.uk','SUPPORT.PHONE.SUPPORT@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1e30d970-477d-e6d7-27d7-5ff9e5f7ab43','im.section.phone@example.us','IM.SECTION.PHONE@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('1e4f8eed-4edb-5438-c0de-5ff9e55ff5d4','qa.the@example.tv','QA.THE@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('20163f9b-27d3-fd60-b81d-5ff9e499cdba','support.section@example.com','SUPPORT.SECTION@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('207f53d6-17de-b4e2-ba8c-5ff9e51f9485','beans.info@example.tw','BEANS.INFO@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('20bcec71-786e-fc29-9d2e-5ff9e5ec12a1','kid.beans.qa@example.de','KID.BEANS.QA@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2108246a-fc13-5106-633b-5ff9e5fda77b','info.qa.kid@example.tv','INFO.QA.KID@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('23e40fbd-12af-d29d-eae1-5ff9e5e0845a','qa.vegan@example.us','QA.VEGAN@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2488b88b-bd2c-ae97-e58e-5ff9e447497b','section78@example.tv','SECTION78@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('24f5f3d1-68af-8a37-7cb7-5ff9e5a8e101','section36@example.us','SECTION36@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('25068541-c827-75ef-f498-5ff9e4c5db15','phone.section.beans@example.name','PHONE.SECTION.BEANS@EXAMPLE.NAME',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2c312a11-168f-fa25-ddc3-5ff9e53d83db','support.section@example.net','SUPPORT.SECTION@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2e8b6e6c-d1f3-3ba9-5db7-5ff9e5f2042a','the91@example.us','THE91@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('2fe9599e-9f18-c5fc-8085-5ff9e4270368','jim@example.com','JIM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('36f4a5d9-56f2-985a-f948-5ff9e53c25ef','support41@example.tw','SUPPORT41@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3958cacd-9ffc-681e-5203-5ff9e4a77e78','alias.sally@example.com','ALIAS.SALLY@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3b85feff-ceb3-7f3d-b19d-5ff9e5e70541','section.phone@example.us','SECTION.PHONE@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('3bea6520-bbd7-c629-e5ff-5ff9e47162b5','section.im.hr@example.it','SECTION.IM.HR@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('403363bb-3678-6cd1-5a11-5ff9e41e55ae','section.phone.phone@example.org','SECTION.PHONE.PHONE@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('40494b78-265e-7a33-a6a4-5ff9e4a8d1dc','alias.will@example.com','ALIAS.WILL@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('40c95526-87f2-1b4d-e496-5ff9e4e02b2d','kid.phone.section@example.co.jp','KID.PHONE.SECTION@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('435d9205-7567-2268-537a-5ff9e4c0adfa','dev.sales.sugar@example.net','DEV.SALES.SUGAR@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('44281b13-453e-f290-f8d5-5ff9e541ee4c','section.support.support@example.edu','SECTION.SUPPORT.SUPPORT@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('45837559-652f-fb1a-6eb9-5ff9e516487e','vegan.im.section@example.tw','VEGAN.IM.SECTION@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('46d2098d-53c1-0df7-b4e1-5ff9e587e85b','vegan21@example.info','VEGAN21@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('47090764-4a17-13ec-5f88-5ff9e54facdd','the.hr@example.com','THE.HR@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('47443ad4-179e-175e-3756-5ff9e4ca454b','the78@example.us','THE78@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('47e9af49-9ed3-4f90-c66f-5ff9e55f09e8','support50@example.us','SUPPORT50@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4ae0ce8c-9278-02ca-d051-5ff9e5cec21d','vegan.kid.sugar@example.co.uk','VEGAN.KID.SUGAR@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('4c540dea-3817-4ef6-78cd-5ff9e4d81a5b','section18@example.co.jp','SECTION18@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('50c5ce22-c032-36cf-6089-5ff9e46ef71c','section.qa.the@example.it','SECTION.QA.THE@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('50df62c8-7b42-0626-38b3-5ff9e43eab24','alias.chris@example.com','ALIAS.CHRIS@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('52c60183-7667-f5dd-de9e-5ff9e5685234','beans.kid@example.co.uk','BEANS.KID@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('58b5f0dd-cd74-d66a-084c-5ff9e5e44d28','hr.section@example.co.uk','HR.SECTION@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5a680e35-b445-9ae6-77f8-5ff9e4d0ad81','reply.sally@example.com','REPLY.SALLY@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5c2de423-c418-ef1a-1cef-5ff9e509a555','info.hr@example.biz','INFO.HR@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5c414d10-9b04-7967-ea08-5ff9e5666bb0','sugar.im.vegan@example.it','SUGAR.IM.VEGAN@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('5d273767-4dea-a407-43c3-5ff9e5442bf3','dev69@example.tw','DEV69@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('60e30b92-f4c9-9ec8-1f8c-5ff9e4ec4a0c','the.the@example.it','THE.THE@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('61b20e3c-1742-11c5-5d89-5ff9e5039ab3','sugar71@example.co.uk','SUGAR71@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('62c810b9-a649-ba50-26b4-5ff9e5e849e0','qa.beans.phone@example.com','QA.BEANS.PHONE@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('650c9794-ebe3-d116-f3a5-5ff9e442d7a0','the98@example.co.jp','THE98@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('651402f9-56e8-146d-c87a-5ff9e52fdf16','phone.dev@example.net','PHONE.DEV@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('67808ded-feb4-aa68-9fd8-5ff9e401a249','support47@example.tv','SUPPORT47@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('678ff042-532c-e345-c038-5ff9e568a15d','beans.beans@example.com','BEANS.BEANS@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6792fc1c-57a5-9433-e2dd-5ff9e589ae45','qa31@example.info','QA31@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('69fb107f-03b8-e602-f52a-5ff9e4a0298b','section80@example.de','SECTION80@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6ac906aa-cead-5ed6-8424-5ff9e5a33762','im51@example.tw','IM51@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6ba2efc6-89c9-2945-268c-5ff9e40932dd','vegan.kid@example.cn','VEGAN.KID@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6be25388-7fb9-6489-5623-5ff9e4ea27b6','vegan.beans.kid@example.us','VEGAN.BEANS.KID@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6deffd02-c8b1-f935-80b2-5ff9e5a8d787','kid.section@example.de','KID.SECTION@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6dff0c20-e99b-4b4a-842e-5ff9e591ac69','sugar.beans.dev@example.it','SUGAR.BEANS.DEV@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6e6f47f0-d48b-8d21-93d9-5ff9e5033312','support.support.im@example.edu','SUPPORT.SUPPORT.IM@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('6f2ffb2f-f4ed-14b3-4575-5ff9e58ce879','sugar89@example.edu','SUGAR89@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('704b1003-cfc8-a919-5211-5ff9e54f083e','the48@example.us','THE48@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('72b5b987-2a8c-36b7-9665-5ff9e599727c','kid.hr.beans@example.com','KID.HR.BEANS@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('75fe4aae-b81f-0bc5-013c-5ff9e49e185c','reply.jim@example.com','REPLY.JIM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('77845df7-dce7-a360-0f68-5ff9e59af952','qa20@example.edu','QA20@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('77ad3d91-edc5-e67c-7554-5ff9e51a9e00','beans.phone.im@example.co.jp','BEANS.PHONE.IM@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('795708e0-35e1-5239-098a-5ff9e4a154d1','alias.sarah@example.com','ALIAS.SARAH@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7c1493fd-b17b-da69-adb4-5ff9e52ea115','hr.sugar.hr@example.tv','HR.SUGAR.HR@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7f31bbb0-56c9-fd6d-7e50-5ff9e48227d8','section.kid.info@example.tw','SECTION.KID.INFO@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('7ff32aad-4511-7bab-6f3f-5ff9e540e1b0','kid.sugar.kid@example.cn','KID.SUGAR.KID@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('82cc3e8d-7986-aca0-709b-5ff9e4784752','phone.kid@example.cn','PHONE.KID@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('84146e00-b14f-01d8-6da8-5ff9e5a90b1a','kid17@example.net','KID17@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('85d005fc-08ed-f3de-f4b6-5ff9e5802646','qa61@example.us','QA61@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('86d20a7c-ca99-fdaa-8cac-5ff9e472dd78','kid53@example.cn','KID53@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('872e50e6-b951-7dff-4408-5ff9e5c92899','dev.the.sugar@example.info','DEV.THE.SUGAR@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('892e7f89-21bb-f614-a007-5ff9e5bf7b19','the.vegan@example.tw','THE.VEGAN@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8a86a34b-1ace-aef1-30e1-5ff9e51aa126','vegan.sugar@example.org','VEGAN.SUGAR@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8bbfcdef-a3d7-73fe-b479-5ff9e5d1c82c','support25@example.net','SUPPORT25@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8cfc8470-0e6c-c098-9ed2-5ff9e4c8b84b','hr87@example.biz','HR87@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8d951280-0ddd-d015-7999-5ff9e561f9b8','qa.the@example.us','QA.THE@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('8e90635b-8d73-f284-da55-5ff9e4df8ea5','hr.phone.vegan@example.co.uk','HR.PHONE.VEGAN@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9113be86-f90b-8530-3661-5ff9e4cedd48','qa38@example.us','QA38@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('92643dd4-0437-d7f0-e779-5ff9e498e1ca','kid.dev.beans@example.co.uk','KID.DEV.BEANS@EXAMPLE.CO.UK',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('94ff646b-857e-1d5b-c1fd-5ff9e59c5604','qa23@example.net','QA23@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('966aaba8-c8c9-d83a-263c-5ff9e4186849','info61@example.edu','INFO61@EXAMPLE.EDU',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('97a22173-c856-f736-cc1a-5ff9e510f990','qa79@example.biz','QA79@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('99418b80-df42-b330-09e7-5ff9e4abfb44','tom@example.com','TOM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('99f6b1c6-0f41-96eb-0f16-5ff9e5c0e355','qa.support@example.tw','QA.SUPPORT@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9ec1781d-a875-5ac0-3ba1-5ff9e5ba1290','kid.hr@example.de','KID.HR@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9ef840dc-8421-b5c7-42f8-5ff9e50a595d','vegan28@example.cn','VEGAN28@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9f22efc7-d9be-6b00-19aa-5ff9e511c7e1','section91@example.info','SECTION91@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9fc2d791-4765-5647-f0be-5ff9e4ee219f','will@example.com','WILL@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('9fe5ab5c-9604-fd1d-09f4-5ff9e5a85eb2','sugar31@example.de','SUGAR31@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a0057665-8bd6-5b52-f78a-5ff9e45d646d','kid.qa@example.org','KID.QA@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a124010a-1c0b-48dd-bc32-5ff9e59192df','kid67@example.info','KID67@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a22b85a8-b332-44b1-2cb0-5ff9e436993d','vegan.hr.kid@example.biz','VEGAN.HR.KID@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a2905240-08e4-b5bd-661f-5ff9e4fe25cc','im.section@example.name','IM.SECTION@EXAMPLE.NAME',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a5b1d8bd-efab-303c-0254-5ff9e5575fc0','vegan.sugar@example.tv','VEGAN.SUGAR@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('a641a776-3aca-c9cf-f14f-5ff9e53ac127','dev71@example.com','DEV71@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('aa72707c-9c20-38c1-d648-5ff9e4b2ba72','sarah@example.com','SARAH@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ac0bf286-70e4-9bfd-c577-5ff9e5209391','kid.section@example.net','KID.SECTION@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ac739c99-ecfb-a439-0088-5ff9e4fecea4','info.section.info@example.net','INFO.SECTION.INFO@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('aea0bb44-cab2-17f1-7e4f-5ff9e44e8cf1','alias.jim@example.com','ALIAS.JIM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b1ff4b0e-2940-e7fb-3e58-5ff9e5594a19','info57@example.info','INFO57@EXAMPLE.INFO',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b4191026-a4ab-b51c-64b5-5ff9e4ccfa9f','reply.tom@example.com','REPLY.TOM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b73fac4c-ebf9-d40c-7dad-5ff9e58b4065','support81@example.cn','SUPPORT81@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('b7a21bc5-a800-7866-26b3-5ff9e5c37ef5','beans.support.section@example.net','BEANS.SUPPORT.SECTION@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('bd008604-baa2-2dea-e91d-5ff9e5d56e80','sales.support@example.com','SALES.SUPPORT@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('bd250f9d-b9d2-420e-0749-5ff9e410b756','qa.hr@example.us','QA.HR@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c52c4ac5-59bb-a346-e10c-5ff9e54456a4','support.the.dev@example.name','SUPPORT.THE.DEV@EXAMPLE.NAME',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c5b0335f-e3c2-088a-9d0d-5ff9e4a8fe4a','reply.sarah@example.com','REPLY.SARAH@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c5b10d08-4475-7713-0ebd-5ff9e5deee2d','sugar.support.sales@example.tw','SUGAR.SUPPORT.SALES@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c65c1023-fc4b-095b-3777-5ff9e451213b','vegan.hr.beans@example.cn','VEGAN.HR.BEANS@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c96b1a0f-2e20-624d-8b16-5ff9e4af16e9','chris@example.com','CHRIS@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('c9a72fbd-e845-dcb7-6ceb-5ff9e42801ec','sales.phone.kid@example.cn','SALES.PHONE.KID@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('cc118110-d0c4-dd10-e5a0-5ff9e4453f99','kid.vegan.info@example.com','KID.VEGAN.INFO@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('cf98a146-fb08-4e67-2514-5ff9e503e012','sugar.the.kid@example.com','SUGAR.THE.KID@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d0c5e560-168e-bc06-abd4-5ff9e528785a','beans.info@example.biz','BEANS.INFO@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d2745bc5-a28a-dfff-b4a9-5ff9e5ce470b','sales.kid.support@example.org','SALES.KID.SUPPORT@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d3a22a4a-931c-63c7-d19b-5ff9e4165f08','kid.kid@example.org','KID.KID@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d3aa9b77-e1a7-25aa-2055-5ff9e425b6be','sally@example.com','SALLY@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d3f4e514-eae9-4d60-b13a-5ff9e4e7279f','kid.qa@example.us','KID.QA@EXAMPLE.US',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d5930ad1-0bab-6198-bdbd-5ff9e50dea1e','info46@example.it','INFO46@EXAMPLE.IT',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d81a2935-ae1d-7f6c-4daa-5ff9e579d4e2','beans.beans@example.org','BEANS.BEANS@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('d9cd00ae-9b6c-8e9b-d1cc-5ff9e5ce2770','support51@example.co.jp','SUPPORT51@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('daafd482-4f09-e7c8-a65d-5ff9e5a903df','hr64@example.biz','HR64@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dac01bee-4964-271d-5b8d-5ff9e49ffaf1','reply.will@example.com','REPLY.WILL@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('db2d9b97-1c68-e464-6f16-5ff9e591f87a','sales.sales.qa@example.tv','SALES.SALES.QA@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dbac7fee-e097-e73a-704a-5ff9e58d53d4','support24@example.tv','SUPPORT24@EXAMPLE.TV',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dc829e46-c05c-117e-b109-5ff9e4341ced','the.qa.vegan@example.com','THE.QA.VEGAN@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dd6f7dc1-04d2-2f02-9947-5ff9e5986a27','im16@example.biz','IM16@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('dda6efa1-780a-6742-b079-5ff9e5f76f64','info.im@example.org','INFO.IM@EXAMPLE.ORG',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e04105e6-9433-6ab9-84af-5ff9e4ab19d9','reply.chris@example.com','REPLY.CHRIS@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e1233ffb-5b8e-de44-f0aa-5ff9e59442d1','sales.section.the@example.biz','SALES.SECTION.THE@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e17d7f14-90cb-fc50-a410-5ff9e5832ec3','hr29@example.net','HR29@EXAMPLE.NET',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e43b605f-6a6b-d26d-1aaa-5ff9e53c9086','support.support@example.tw','SUPPORT.SUPPORT@EXAMPLE.TW',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e6ade887-945a-414f-174a-5ff9e4133128','kid.section@example.co.jp','KID.SECTION@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e771db99-a8ca-aef6-cc6a-5ff9e5ebc8ce','beans.the@example.de','BEANS.THE@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e7d273e1-6ecb-87d1-30ca-5ff9e5617868','kid.im.sugar@example.cn','KID.IM.SUGAR@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('e976043f-9429-7bd3-9ea7-5ff9e50c2eff','info.phone.kid@example.de','INFO.PHONE.KID@EXAMPLE.DE',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('eb5167e4-3396-6cd6-9392-5ff9e496cbd0','kid27@example.com','KID27@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ed03d2a9-2753-f225-170c-5ff9e52f785f','dev97@example.biz','DEV97@EXAMPLE.BIZ',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ed3663fa-e184-945e-4379-5ff9e4baa904','alias.tom@example.com','ALIAS.TOM@EXAMPLE.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('ed657027-a524-ab55-8698-5ff9e5367650','the.sugar.section@example.cn','THE.SUGAR.SECTION@EXAMPLE.CN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0),('f1da3a7c-a2d1-6fd0-c212-5ff9e5b5eddb','beans.section@example.co.jp','BEANS.SECTION@EXAMPLE.CO.JP',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('6d5e9945-cb52-c40c-1cdd-5ff9e4ad6203','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),('8256f3c6-668a-f6a6-e24f-5ff9e495a695','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('92881031-fe59-5161-010a-5ff9e4e34ba1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),('bfd6b91c-6f3c-6237-d013-5ff9e4caebcc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('dc4df951-d0aa-68c9-c5e9-5ff9e44290a9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('e7c10dde-4610-8233-c476-5ff9e4e91a1b','2013-05-24 14:31:45','2021-01-09 17:06:33','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('1696f997-42db-1795-6b92-5ff9e5a6eb1c','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5',NULL,NULL),('176ed7a6-6c94-8933-b6f4-5ff9e51057dd','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f',NULL,NULL),('3c8e084f-5f19-e60e-8382-5ff9e5674b74','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0',NULL,NULL),('4a56077b-68dd-dd56-901f-5ff9e56c650f','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sarah_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd',NULL,NULL),('56597ba6-7977-553c-e8c7-5ff9e5ac78c0','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_chris_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9',NULL,NULL),('5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',NULL,NULL),('663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',NULL,NULL),('686bc32a-9865-1c32-2ae9-5ff9e5394f4b','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','6989fefe-cd69-611b-03d8-5ff9e4e3a083',NULL,NULL),('6f17a00d-af25-ae1e-4e54-5ff9e54c043d','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf',NULL,NULL),('850fb79b-6866-fb9a-27d6-5ff9e53bee8b','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',NULL,NULL),('8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_chris_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf',NULL,NULL),('8d2a26db-17cb-3886-6111-5ff9e59624da','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','e37c09b4-4849-7a46-7d80-5ff9e5b88722',NULL,NULL),('930757fb-1de5-09fd-fe7f-5ff9e5a90c15','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sally_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',NULL,NULL),('9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','Initial discussion','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',NULL,NULL),('987c1d13-0704-a523-4e87-5ff9e5c0ca9d','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','6119a10e-22af-9291-defa-5ff9e5a5d04f',NULL,NULL),('9f6c32c6-5598-8983-77a2-5ff9e56fc315','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',NULL,NULL),('a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','66d88013-82df-90bf-fdd3-5ff9e48a94c9',NULL,NULL),('ae81939f-6ef9-91b3-1232-5ff9e53ccec8','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',NULL,NULL),('b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f',NULL,NULL),('b811bcb2-62c1-a550-f87b-5ff9e5604115','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','bc78c90d-047f-84aa-f226-5ff9e4361490',NULL,NULL),('c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','66d88013-82df-90bf-fdd3-5ff9e48a94c9',NULL,NULL),('c8062565-0469-84ca-9dda-5ff9e5b002cb','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','91c89470-f34b-f69c-7e6b-5ff9e4861146',NULL,NULL),('d1035dde-dff6-9858-1d15-5ff9e5272ca9','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','e0776e3c-2b65-e7ef-1cda-5ff9e5373856',NULL,NULL),('da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','Initial discussion','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_max_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',NULL,NULL),('eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_will_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','17c08950-1669-c8b1-54c4-5ff9e59a14a8',NULL,NULL),('ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',0,'seed_sarah_id',NULL,NULL,'2021-01-09 17:06:33',NULL,'out','sent',NULL,NULL,'pick',NULL,'Accounts','9069cc03-e955-384b-fb50-5ff9e4f28398',NULL,NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
INSERT INTO `emails_beans` VALUES ('11b22542-b565-8a10-ab3d-5ff9e58c3b8e','850fb79b-6866-fb9a-27d6-5ff9e53bee8b','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Accounts','','2021-01-09 17:06:33',0),('14ef69c0-f0d3-1876-0b6e-5ff9e5d7c959','1696f997-42db-1795-6b92-5ff9e5a6eb1c','ec51a991-ccf0-7665-d2c2-5ff9e579665d','Contacts',NULL,'2021-01-09 17:06:33',0),('1e059e61-1507-d5d9-8085-5ff9e5252c6b','6f17a00d-af25-ae1e-4e54-5ff9e54c043d','13099e74-4d76-790c-d920-5ff9e5d8dfce','Contacts',NULL,'2021-01-09 17:06:33',0),('1ebbe252-f2f8-4397-4e0a-5ff9e58d6922','b811bcb2-62c1-a550-f87b-5ff9e5604115','bc78c90d-047f-84aa-f226-5ff9e4361490','Accounts','','2021-01-09 17:06:33',0),('20fb5b7c-e980-edc6-f034-5ff9e57f4428','176ed7a6-6c94-8933-b6f4-5ff9e51057dd','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f','Accounts','','2021-01-09 17:06:33',0),('27f1a4c9-2ec9-5d4e-126c-5ff9e524ba72','eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','Contacts',NULL,'2021-01-09 17:06:33',0),('2a0bbf5c-d51a-40ec-6a97-5ff9e5ba0348','9f6c32c6-5598-8983-77a2-5ff9e56fc315','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','Accounts','','2021-01-09 17:06:33',0),('2ca2d5fc-612b-8e60-133b-5ff9e56b33c9','663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','Contacts',NULL,'2021-01-09 17:06:33',0),('33479b06-9ba4-6a01-ff00-5ff9e5d3e0a8','3c8e084f-5f19-e60e-8382-5ff9e5674b74','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0','Accounts','','2021-01-09 17:06:33',0),('39440ec6-678d-d0d9-6276-5ff9e5c1b3ab','850fb79b-6866-fb9a-27d6-5ff9e53bee8b','99d14881-6332-db47-1114-5ff9e5866741','Contacts',NULL,'2021-01-09 17:06:33',0),('3a9f953a-f5fd-c3dd-fb09-5ff9e52c32cd','8d2a26db-17cb-3886-6111-5ff9e59624da','e37c09b4-4849-7a46-7d80-5ff9e5b88722','Accounts','','2021-01-09 17:06:33',0),('43804b2b-3464-33da-2a8a-5ff9e5689aa0','b811bcb2-62c1-a550-f87b-5ff9e5604115','cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','Contacts',NULL,'2021-01-09 17:06:33',0),('4400b5a7-06d6-b216-3d76-5ff9e57074b6','930757fb-1de5-09fd-fe7f-5ff9e5a90c15','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Accounts','','2021-01-09 17:06:33',0),('44bc5075-adea-4329-64e8-5ff9e5912fa2','56597ba6-7977-553c-e8c7-5ff9e5ac78c0','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9','Accounts','','2021-01-09 17:06:33',0),('4a6037aa-7618-a9c3-5bac-5ff9e5420045','4a56077b-68dd-dd56-901f-5ff9e56c650f','dd01d891-146f-20e1-e32a-5ff9e5c54b91','Contacts',NULL,'2021-01-09 17:06:33',0),('50c7e513-9209-4f4b-d57c-5ff9e5987ea0','c8062565-0469-84ca-9dda-5ff9e5b002cb','f0f23ca0-57c9-160a-f717-5ff9e5cd3def','Contacts',NULL,'2021-01-09 17:06:33',0),('50e7af66-fcde-9c42-4224-5ff9e5931988','ae81939f-6ef9-91b3-1232-5ff9e53ccec8','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','Accounts','','2021-01-09 17:06:33',0),('518afc05-ec9e-8e25-32e7-5ff9e53e5d97','8d2a26db-17cb-3886-6111-5ff9e59624da','6a088da8-3ef3-ae32-0436-5ff9e5741b98','Contacts',NULL,'2021-01-09 17:06:33',0),('5381f5f4-2cb5-cdba-830e-5ff9e54738ba','56597ba6-7977-553c-e8c7-5ff9e5ac78c0','f3d1c25c-981f-2052-331a-5ff9e5a38926','Contacts',NULL,'2021-01-09 17:06:33',0),('5c877e8e-51c8-be8d-de1e-5ff9e5d63344','b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f','Accounts','','2021-01-09 17:06:33',0),('5ce1024a-8615-238e-76be-5ff9e5e34ed6','c8062565-0469-84ca-9dda-5ff9e5b002cb','91c89470-f34b-f69c-7e6b-5ff9e4861146','Accounts','','2021-01-09 17:06:33',0),('5d609a9c-960d-a710-9754-5ff9e579cd3a','930757fb-1de5-09fd-fe7f-5ff9e5a90c15','bade0bdb-1482-2e88-3e34-5ff9e5562a29','Contacts',NULL,'2021-01-09 17:06:33',0),('5e00f312-6d3a-3978-b9f1-5ff9e5082d10','176ed7a6-6c94-8933-b6f4-5ff9e51057dd','bc2c5743-8675-1169-2652-5ff9e599af68','Contacts',NULL,'2021-01-09 17:06:33',0),('68ea0f2a-1237-e8a0-fce8-5ff9e5ef28f1','8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','Contacts',NULL,'2021-01-09 17:06:33',0),('69408b01-27a0-e936-e31b-5ff9e54ee722','9f6c32c6-5598-8983-77a2-5ff9e56fc315','89c7e668-991e-4dd5-7619-5ff9e5541756','Contacts',NULL,'2021-01-09 17:06:33',0),('6b12eb0a-2dda-cadf-4422-5ff9e5a3c79b','686bc32a-9865-1c32-2ae9-5ff9e5394f4b','6989fefe-cd69-611b-03d8-5ff9e4e3a083','Accounts','','2021-01-09 17:06:33',0),('6b35471a-1fef-2535-848b-5ff9e5e20c55','3c8e084f-5f19-e60e-8382-5ff9e5674b74','49faa0f9-a041-c118-5131-5ff9e5b033de','Contacts',NULL,'2021-01-09 17:06:33',0),('6e1ae4c7-01be-1b9f-7a22-5ff9e55b3b46','987c1d13-0704-a523-4e87-5ff9e5c0ca9d','6119a10e-22af-9291-defa-5ff9e5a5d04f','Accounts','','2021-01-09 17:06:33',0),('711d5589-c425-01cb-55cc-5ff9e5f27f2a','a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','66d88013-82df-90bf-fdd3-5ff9e48a94c9','Accounts','','2021-01-09 17:06:33',0),('762e0f8c-8e13-6495-d037-5ff9e58763f3','ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','Contacts',NULL,'2021-01-09 17:06:33',0),('79240125-f37d-6545-4b07-5ff9e5f3d9cb','b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','77145904-99e8-9624-c82d-5ff9e50ac392','Contacts',NULL,'2021-01-09 17:06:33',0),('7b02e3c1-c936-b3a0-33b7-5ff9e5c513ed','ae81939f-6ef9-91b3-1232-5ff9e53ccec8','202a0b4a-a2df-8cc4-a564-5ff9e57b369c','Contacts',NULL,'2021-01-09 17:06:33',0),('832006d3-06d1-f26c-086e-5ff9e51bc4c5','4a56077b-68dd-dd56-901f-5ff9e56c650f','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd','Accounts','','2021-01-09 17:06:33',0),('85e6583c-0e8d-0dd9-1db0-5ff9e5d920f0','d1035dde-dff6-9858-1d15-5ff9e5272ca9','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','Accounts','','2021-01-09 17:06:33',0),('872cc2e6-5b3b-5f02-a630-5ff9e5ad144b','9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','Accounts','','2021-01-09 17:06:33',0),('87d9bd96-ade0-9c7c-8305-5ff9e5359037','987c1d13-0704-a523-4e87-5ff9e5c0ca9d','61e3666b-66b4-7e09-1df1-5ff9e5659eed','Contacts',NULL,'2021-01-09 17:06:33',0),('8d59b62c-a89c-a284-3dfe-5ff9e536bbde','ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','9069cc03-e955-384b-fb50-5ff9e4f28398','Accounts','','2021-01-09 17:06:33',0),('8e309b04-2c79-b4da-1373-5ff9e570309f','c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','66d88013-82df-90bf-fdd3-5ff9e48a94c9','Accounts','','2021-01-09 17:06:33',0),('8e989c06-1b0b-a8cd-4484-5ff9e5fa2dd3','686bc32a-9865-1c32-2ae9-5ff9e5394f4b','6e523b23-29fe-8db1-e59b-5ff9e5401d2e','Contacts',NULL,'2021-01-09 17:06:33',0),('9af0cdda-acda-ada8-a4fe-5ff9e56d1770','c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','Contacts',NULL,'2021-01-09 17:06:33',0),('9f9784f1-0679-9663-4d38-5ff9e572e6df','9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','139ea344-eb2c-ca62-99e9-5ff9e53540b4','Contacts',NULL,'2021-01-09 17:06:33',0),('a834ded1-0fbf-b9ae-6494-5ff9e52dafa8','d1035dde-dff6-9858-1d15-5ff9e5272ca9','e0ba2917-7017-6a73-1a45-5ff9e5f929a3','Contacts',NULL,'2021-01-09 17:06:33',0),('b20a9a48-53c6-cc12-ba4f-5ff9e59e5186','a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','Contacts',NULL,'2021-01-09 17:06:33',0),('bd8057aa-8b8a-7db4-1fac-5ff9e5fbf916','da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','47209eba-76e0-8f0d-6f1d-5ff9e477e52b','Accounts','','2021-01-09 17:06:33',0),('c1dac39d-c50e-0b7e-bbb2-5ff9e5a098d3','5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42','Accounts','','2021-01-09 17:06:33',0),('d0d0a677-179e-ae96-1427-5ff9e5d3a34e','5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','a4a4b79f-2e72-44fe-4e16-5ff9e5162442','Contacts',NULL,'2021-01-09 17:06:33',0),('d7a51952-79f9-a2a5-de77-5ff9e52b2a97','8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf','Accounts','','2021-01-09 17:06:33',0),('d81ad6f9-8fba-3c61-a1d6-5ff9e5385141','6f17a00d-af25-ae1e-4e54-5ff9e54c043d','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf','Accounts','','2021-01-09 17:06:33',0),('e20e282e-b158-4fc5-477a-5ff9e5521f33','eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','17c08950-1669-c8b1-54c4-5ff9e59a14a8','Accounts','','2021-01-09 17:06:33',0),('e367f0d5-35b0-f662-9dc6-5ff9e5338b18','663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb','Accounts','','2021-01-09 17:06:33',0),('edf8d6f8-d809-29be-d531-5ff9e547457b','1696f997-42db-1795-6b92-5ff9e5a6eb1c','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5','Accounts','','2021-01-09 17:06:33',0),('f2787e42-6863-c66b-1ad7-5ff9e5e4e056','da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','6d33aad4-8175-e485-d04c-5ff9e57cbf86','Contacts',NULL,'2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('1118a4ea-414c-4747-905b-5ff9e545cca1','ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('122b85c8-6182-ff13-957a-5ff9e5092898','c8062565-0469-84ca-9dda-5ff9e5b002cb','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('1a3690bb-295c-a008-e758-5ff9e5961fb0','a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('1b33b225-7a2e-4626-d01b-5ff9e597cd0c','6f17a00d-af25-ae1e-4e54-5ff9e54c043d','to','13d73271-1b3b-9660-129e-5ff9e56d05a2',0),('216f4c50-1353-9b0b-ce3c-5ff9e523d913','da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('23c3830a-50d7-e775-66b7-5ff9e5654936','c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','to','207f53d6-17de-b4e2-ba8c-5ff9e51f9485',0),('247c0945-ab8b-bc44-f23e-5ff9e5bda08a','686bc32a-9865-1c32-2ae9-5ff9e5394f4b','to','6f2ffb2f-f4ed-14b3-4575-5ff9e58ce879',0),('2857f260-4fcc-3f7d-ce17-5ff9e5397736','d1035dde-dff6-9858-1d15-5ff9e5272ca9','to','e17d7f14-90cb-fc50-a410-5ff9e5832ec3',0),('31ae3434-346b-118a-4096-5ff9e51a1ea6','ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','to','e7d273e1-6ecb-87d1-30ca-5ff9e5617868',0),('32c40eb6-5642-3209-d19a-5ff9e5d56f1c','ae81939f-6ef9-91b3-1232-5ff9e53ccec8','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('3438ea17-97b9-e909-3bc8-5ff9e55c018e','1696f997-42db-1795-6b92-5ff9e5a6eb1c','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('3d5d46fb-a92c-c1ce-0d08-5ff9e50c9674','176ed7a6-6c94-8933-b6f4-5ff9e51057dd','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('420198c1-11e8-2292-dae2-5ff9e51e2fa2','9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','to','142de246-3450-9dfb-b69d-5ff9e5122de2',0),('485bd221-ed9c-fa40-9cec-5ff9e5d35c5d','a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','to','5c414d10-9b04-7967-ea08-5ff9e5666bb0',0),('4ee8fd30-d030-1a81-e835-5ff9e5b0d7f9','eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('538c0723-24b5-1028-4c0e-5ff9e589caea','d1035dde-dff6-9858-1d15-5ff9e5272ca9','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('5e40482e-a86c-6f0c-80c7-5ff9e541bfd9','c8062565-0469-84ca-9dda-5ff9e5b002cb','to','f1da3a7c-a2d1-6fd0-c212-5ff9e5b5eddb',0),('5f5e2821-d615-9df4-c3dc-5ff9e5da491b','1696f997-42db-1795-6b92-5ff9e5a6eb1c','to','ed03d2a9-2753-f225-170c-5ff9e52f785f',0),('5fc148d1-ee8b-c18a-73d4-5ff9e5ce1b42','da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','to','6dff0c20-e99b-4b4a-842e-5ff9e591ac69',0),('67a5db27-5940-5e28-474d-5ff9e5d2408d','ae81939f-6ef9-91b3-1232-5ff9e53ccec8','to','23e40fbd-12af-d29d-eae1-5ff9e5e0845a',0),('6a9708c8-41bd-981c-79b9-5ff9e5fb7a6e','4a56077b-68dd-dd56-901f-5ff9e56c650f','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('6ffd29e1-9e9f-586c-2206-5ff9e56f4c15','3c8e084f-5f19-e60e-8382-5ff9e5674b74','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('82b4f92e-6f93-dfc5-6663-5ff9e5b74881','176ed7a6-6c94-8933-b6f4-5ff9e51057dd','to','bd008604-baa2-2dea-e91d-5ff9e5d56e80',0),('858cc035-8910-b58a-276d-5ff9e5fb157f','663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('8b8ccc4d-5ed0-46fc-34dd-5ff9e533b78b','686bc32a-9865-1c32-2ae9-5ff9e5394f4b','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('9179a82d-e234-12ab-bbb5-5ff9e54efc1c','5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('922dfcc0-49d9-3284-b870-5ff9e5de574e','eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','to','94ff646b-857e-1d5b-c1fd-5ff9e59c5604',0),('94f97ea3-2e3a-1bdc-4830-5ff9e54da1cb','850fb79b-6866-fb9a-27d6-5ff9e53bee8b','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('98a1e000-3d5e-f7ad-5397-5ff9e55a8199','8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('9cc9a2c9-c114-e782-b49f-5ff9e5e34c19','56597ba6-7977-553c-e8c7-5ff9e5ac78c0','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('9ce00d5d-4a15-4060-03ef-5ff9e58b235c','b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','to','77ad3d91-edc5-e67c-7554-5ff9e51a9e00',0),('9dd10daf-0af7-af64-5b2a-5ff9e5654da3','4a56077b-68dd-dd56-901f-5ff9e56c650f','to','dda6efa1-780a-6742-b079-5ff9e5f76f64',0),('a2cf2f37-577c-216d-ced9-5ff9e545c676','850fb79b-6866-fb9a-27d6-5ff9e53bee8b','to','99f6b1c6-0f41-96eb-0f16-5ff9e5c0e355',0),('a651047d-42ea-dce2-d5a3-5ff9e57989f2','8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','to','b1ff4b0e-2940-e7fb-3e58-5ff9e5594a19',0),('aa16f097-aa96-296f-45a5-5ff9e5fba8a9','663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','to','6deffd02-c8b1-f935-80b2-5ff9e5a8d787',0),('aebabbae-b7a3-9acd-19bc-5ff9e538bba1','6f17a00d-af25-ae1e-4e54-5ff9e54c043d','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('b7e15ef5-7e89-eb3d-63b1-5ff9e5a9f639','987c1d13-0704-a523-4e87-5ff9e5c0ca9d','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('bc830625-9f13-7b6e-0e92-5ff9e5d1a8b3','930757fb-1de5-09fd-fe7f-5ff9e5a90c15','to','c5b10d08-4475-7713-0ebd-5ff9e5deee2d',0),('bec6a818-ff64-1045-03a6-5ff9e52c539d','3c8e084f-5f19-e60e-8382-5ff9e5674b74','to','4ae0ce8c-9278-02ca-d051-5ff9e5cec21d',0),('c545a144-9f08-3102-0539-5ff9e58d5e23','b811bcb2-62c1-a550-f87b-5ff9e5604115','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('cf8af1fb-cc03-ab24-aebf-5ff9e5d4ef23','9f6c32c6-5598-8983-77a2-5ff9e56fc315','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('d2e7497c-54f0-b707-67f0-5ff9e53c8d27','b811bcb2-62c1-a550-f87b-5ff9e5604115','to','cf98a146-fb08-4e67-2514-5ff9e503e012',0),('d379fffc-1b00-99eb-b42c-5ff9e53bbc7a','8d2a26db-17cb-3886-6111-5ff9e59624da','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('d54caaec-3d2c-ce54-f32d-5ff9e5b262a2','5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','to','a5b1d8bd-efab-303c-0254-5ff9e5575fc0',0),('d5a1f74c-ef57-5055-61ec-5ff9e508fd6f','b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('da05d084-4d2d-d3e1-c6aa-5ff9e5edb188','930757fb-1de5-09fd-fe7f-5ff9e5a90c15','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('dd98997c-4991-0d45-4cee-5ff9e57e70ec','9f6c32c6-5598-8983-77a2-5ff9e56fc315','to','8a86a34b-1ace-aef1-30e1-5ff9e51aa126',0),('dedfa1c7-e520-bbc1-2120-5ff9e5a66bc3','c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0),('e1241648-8ed6-8f51-0265-5ff9e51bc268','8d2a26db-17cb-3886-6111-5ff9e59624da','to','6ac906aa-cead-5ed6-8424-5ff9e5a33762',0),('e3a3a922-3344-3510-ca82-5ff9e5d600db','56597ba6-7977-553c-e8c7-5ff9e5ac78c0','to','85d005fc-08ed-f3de-f4b6-5ff9e5802646',0),('eca80644-7801-16f8-83aa-5ff9e549acc4','987c1d13-0704-a523-4e87-5ff9e5c0ca9d','to','62c810b9-a649-ba50-26b4-5ff9e5e849e0',0),('f24f87bc-c689-98f7-0745-5ff9e59f9b0c','9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','from','9fc2d791-4765-5647-f0be-5ff9e4ee219f',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('1696f997-42db-1795-6b92-5ff9e5a6eb1c','will@example.com','','dev97@example.biz','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('176ed7a6-6c94-8933-b6f4-5ff9e51057dd','will@example.com','','sales.support@example.com','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('3c8e084f-5f19-e60e-8382-5ff9e5674b74','will@example.com','','vegan.kid.sugar@example.co.uk','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('4a56077b-68dd-dd56-901f-5ff9e56c650f','will@example.com','','info.im@example.org','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('56597ba6-7977-553c-e8c7-5ff9e5ac78c0','will@example.com','','qa61@example.us','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('5e2085bf-d34c-6f3b-2819-5ff9e58cc5a9','will@example.com','','vegan.sugar@example.tv','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('663d2bf1-4b3f-f0e1-fa7b-5ff9e5976591','will@example.com','','kid.section@example.de','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('686bc32a-9865-1c32-2ae9-5ff9e5394f4b','will@example.com','','sugar89@example.edu','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('6f17a00d-af25-ae1e-4e54-5ff9e54c043d','will@example.com','','support.dev.section@example.edu','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('850fb79b-6866-fb9a-27d6-5ff9e53bee8b','will@example.com','','qa.support@example.tw','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('8b4896f2-e55a-8fc0-37ec-5ff9e563bb41','will@example.com','','info57@example.info','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('8d2a26db-17cb-3886-6111-5ff9e59624da','will@example.com','','im51@example.tw','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('930757fb-1de5-09fd-fe7f-5ff9e5a90c15','will@example.com','','sugar.support.sales@example.tw','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('9646f7e3-7f8a-ff7d-d0b7-5ff9e5f9f178','will@example.com','','the.the@example.biz','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('987c1d13-0704-a523-4e87-5ff9e5c0ca9d','will@example.com','','qa.beans.phone@example.com','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('9f6c32c6-5598-8983-77a2-5ff9e56fc315','will@example.com','','vegan.sugar@example.org','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('a2a60dd6-0d31-d804-40d2-5ff9e5b5e23f','will@example.com','','sugar.im.vegan@example.it','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('ae81939f-6ef9-91b3-1232-5ff9e53ccec8','will@example.com','','qa.vegan@example.us','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('b4d9acb4-2cbe-87c3-7067-5ff9e5c36cae','will@example.com','','beans.phone.im@example.co.jp','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('b811bcb2-62c1-a550-f87b-5ff9e5604115','will@example.com','','sugar.the.kid@example.com','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('c30dfcdf-a46f-d0a3-571b-5ff9e5b71fb6','will@example.com','','beans.info@example.tw','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('c8062565-0469-84ca-9dda-5ff9e5b002cb','will@example.com','','beans.section@example.co.jp','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('d1035dde-dff6-9858-1d15-5ff9e5272ca9','will@example.com','','hr29@example.net','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('da9364c4-c74b-0e41-0d0e-5ff9e5fc1307','will@example.com','','sugar.beans.dev@example.it','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('eac874a8-8d7e-45e3-0d99-5ff9e505ea2e','will@example.com','','qa23@example.net','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0),('ef4b10d9-2a51-afb8-b038-5ff9e5decbc2','will@example.com','','kid.im.sugar@example.cn','','','Meeting to discuss project plan and hash out the details of implementation','Meeting to discuss project plan and hash out the details of implementation','',0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2021-01-09 17:06:33',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2021-01-09 17:06:33',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES ('10c3a76e-bcb9-cd85-3140-5ff9e56989b1','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,30,'2021-01-26 14:15:00','2021-01-26 16:45:00','Accounts','Not Held','Sugar','6989fefe-cd69-611b-03d8-5ff9e4e3a083',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('248d50ac-7f4b-c97d-a295-5ff9e517d280','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2021-11-17 16:15:00','2021-11-17 17:15:00','Accounts','Not Held','Sugar','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2d504e52-2e9e-ede3-b9ee-5ff9e538bf24','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,30,'2021-04-21 17:15:00','2021-04-21 20:45:00','Accounts','Not Held','Sugar','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3f2b2d23-0e96-5b8b-ba1d-5ff9e59b09b2','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,30,'2021-07-16 17:45:00','2021-07-16 20:15:00','Accounts','Held','Sugar','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4347d2cc-c7c2-4d22-70fa-5ff9e52b41dc','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,45,'2021-08-27 12:30:00','2021-08-27 15:15:00','Accounts','Held','Sugar','e37c09b4-4849-7a46-7d80-5ff9e5b88722',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('44a12fd4-96c2-48f1-073c-5ff9e52fb89f','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,15,'2021-03-20 13:30:00','2021-03-20 15:45:00','Accounts','Planned','Sugar','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('474954fc-5154-3d93-24a5-5ff9e5b70a40','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,45,'2021-10-08 10:15:00','2021-10-08 14:00:00','Accounts','Held','Sugar','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4b545ac0-25e9-1c1a-a9b5-5ff9e5669d6f','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,30,'2022-01-05 18:00:00','2022-01-05 21:30:00','Accounts','Held','Sugar','6119a10e-22af-9291-defa-5ff9e5a5d04f',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('53a59a98-f06f-1272-4484-5ff9e56fc6fb','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,30,'2021-08-08 16:00:00','2021-08-08 19:30:00','Accounts','Held','Sugar','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5bcd9d5b-28b0-eac4-8b1c-5ff9e540745e','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,'2021-02-12 19:00:00','2021-02-12 22:00:00','Accounts','Held','Sugar','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('61bdd833-9da0-c62c-4dbd-5ff9e59b944e','Demo','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,45,'2021-02-25 08:00:00','2021-02-25 09:45:00','Accounts','Held','Sugar','91c89470-f34b-f69c-7e6b-5ff9e4861146',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('63eaa7cf-f4b0-a3f5-927d-5ff9e5b6a827','Review needs','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,'2021-04-19 10:30:00','2021-04-19 12:30:00','Accounts','Planned','Sugar','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('65498f78-4201-d490-565d-5ff9e553d17f','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_chris_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,30,'2022-01-05 19:45:00','2022-01-05 21:15:00','Accounts','Not Held','Sugar','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('739056e0-b71e-aa10-7eca-5ff9e55fcf03','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,45,'2021-04-03 06:30:00','2021-04-03 08:15:00','Accounts','Planned','Sugar','e0776e3c-2b65-e7ef-1cda-5ff9e5373856',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8c46f6d2-475d-abf4-8247-5ff9e5f57d26','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,30,'2021-04-18 06:45:00','2021-04-18 08:15:00','Accounts','Held','Sugar','66d88013-82df-90bf-fdd3-5ff9e48a94c9',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8de7050e-f285-a5d0-5110-5ff9e5395014','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,30,'2022-01-08 11:30:00','2022-01-08 12:00:00','Accounts','Not Held','Sugar','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('90999402-1608-ec1d-4e85-5ff9e5345585','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sarah_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,30,'2021-09-30 06:00:00','2021-09-30 07:30:00','Accounts','Not Held','Sugar','9069cc03-e955-384b-fb50-5ff9e4f28398',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('96b28d3f-f7f6-ec59-2357-5ff9e54604da','Discuss pricing','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,30,'2021-03-17 06:30:00','2021-03-17 09:00:00','Accounts','Not Held','Sugar','bc78c90d-047f-84aa-f226-5ff9e4361490',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('97afc85f-5d86-2552-e57a-5ff9e51ebe2d','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,30,'2021-09-12 13:15:00','2021-09-12 14:45:00','Accounts','Held','Sugar','17c08950-1669-c8b1-54c4-5ff9e59a14a8',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('a3a48bcb-5752-d87d-a216-5ff9e5291c13','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,15,'2021-07-20 13:00:00','2021-07-20 15:15:00','Accounts','Held','Sugar','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('b116eee2-1826-7afa-02fe-5ff9e5ec33fa','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_max_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,30,'2021-03-19 19:00:00','2021-03-19 22:30:00','Accounts','Planned','Sugar','66d88013-82df-90bf-fdd3-5ff9e48a94c9',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('db390d0f-b698-7c72-70de-5ff9e583d4e8','Follow-up on proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_will_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,30,'2021-10-27 14:45:00','2021-10-27 18:15:00','Accounts','Planned','Sugar','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('de008cb9-1df4-f265-bf7f-5ff9e551e2f3','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,15,'2021-01-31 15:45:00','2021-01-31 16:00:00','Accounts','Held','Sugar','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e0a60010-4099-8dcb-d60c-5ff9e5336b6d','Initial discussion','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sarah_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,15,'2021-02-15 09:30:00','2021-02-15 11:45:00','Accounts','Not Held','Sugar','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e1274bdf-3c80-a9d6-2b5d-5ff9e5362aa0','Introduce all players','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_sally_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,30,'2021-12-04 15:00:00','2021-12-04 15:30:00','Accounts','Not Held','Sugar','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f2cb41ee-9b56-9b86-8ec8-5ff9e5cbc0e8','Initial discussion','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Meeting to discuss project plan and hash out the details of implementation',0,'seed_chris_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,15,'2021-01-12 11:15:00','2021-01-12 14:30:00','Accounts','Held','Sugar','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
INSERT INTO `meetings_users` VALUES ('202c62b6-6383-8c14-6f75-5ff9e5fb9104','e0a60010-4099-8dcb-d60c-5ff9e5336b6d','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('37389f2c-2f3c-8375-e7ad-5ff9e5baa925','f2cb41ee-9b56-9b86-8ec8-5ff9e5cbc0e8','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('45fe3ee0-2f63-1db6-cd14-5ff9e546fdf7','248d50ac-7f4b-c97d-a295-5ff9e517d280','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('4d8d6581-6a01-c66f-2f80-5ff9e56bb4be','10c3a76e-bcb9-cd85-3140-5ff9e56989b1','seed_will_id','1','accept','2021-01-09 17:06:33',0),('60673313-a297-0d70-0e65-5ff9e5c4a563','2d504e52-2e9e-ede3-b9ee-5ff9e538bf24','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('6e261cdb-1a77-18ad-d608-5ff9e5bdc910','a3a48bcb-5752-d87d-a216-5ff9e5291c13','seed_will_id','1','accept','2021-01-09 17:06:33',0),('6fb1324c-b995-4db7-aa38-5ff9e5a6b57a','4b545ac0-25e9-1c1a-a9b5-5ff9e5669d6f','seed_max_id','1','accept','2021-01-09 17:06:33',0),('70bb0f7e-e132-a51e-993e-5ff9e54a6485','4347d2cc-c7c2-4d22-70fa-5ff9e52b41dc','seed_will_id','1','accept','2021-01-09 17:06:33',0),('73969f33-cfd1-da1d-0f18-5ff9e5ae1313','53a59a98-f06f-1272-4484-5ff9e56fc6fb','seed_will_id','1','accept','2021-01-09 17:06:33',0),('75290ffd-e423-7f74-2f0e-5ff9e581520f','e1274bdf-3c80-a9d6-2b5d-5ff9e5362aa0','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('752a5adc-013c-e753-ba65-5ff9e5322b22','63eaa7cf-f4b0-a3f5-927d-5ff9e5b6a827','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('7a271cfa-348b-b117-1c56-5ff9e5bdbd6e','474954fc-5154-3d93-24a5-5ff9e5b70a40','seed_will_id','1','accept','2021-01-09 17:06:33',0),('7de5bcde-c55f-7b8e-39dd-5ff9e559cce5','5bcd9d5b-28b0-eac4-8b1c-5ff9e540745e','seed_max_id','1','accept','2021-01-09 17:06:33',0),('7df191b0-541b-7656-a773-5ff9e5f7e5d7','65498f78-4201-d490-565d-5ff9e553d17f','seed_chris_id','1','accept','2021-01-09 17:06:33',0),('838642bb-e13c-14b4-c72e-5ff9e543e613','739056e0-b71e-aa10-7eca-5ff9e55fcf03','seed_will_id','1','accept','2021-01-09 17:06:33',0),('87321d5b-1e0b-d7bb-c32e-5ff9e56fd688','8c46f6d2-475d-abf4-8247-5ff9e5f57d26','seed_max_id','1','accept','2021-01-09 17:06:33',0),('89df36c5-ec76-5762-d40b-5ff9e5c610d2','90999402-1608-ec1d-4e85-5ff9e5345585','seed_sarah_id','1','accept','2021-01-09 17:06:33',0),('9349455b-0b3b-4f7c-f0ac-5ff9e578e99e','44a12fd4-96c2-48f1-073c-5ff9e52fb89f','seed_max_id','1','accept','2021-01-09 17:06:33',0),('9c0172f4-c41e-2a5e-a2c8-5ff9e5721d3c','3f2b2d23-0e96-5b8b-ba1d-5ff9e59b09b2','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('a67603cf-3b05-9d95-66b0-5ff9e56f1054','de008cb9-1df4-f265-bf7f-5ff9e551e2f3','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('a967aca1-b0a1-4d49-4bc6-5ff9e59b63a5','96b28d3f-f7f6-ec59-2357-5ff9e54604da','seed_will_id','1','accept','2021-01-09 17:06:33',0),('abe50bb0-cdd4-1343-7b3b-5ff9e5ec6301','61bdd833-9da0-c62c-4dbd-5ff9e59b944e','seed_max_id','1','accept','2021-01-09 17:06:33',0),('accfdf2c-4770-3dc7-9119-5ff9e5e8f0c5','97afc85f-5d86-2552-e57a-5ff9e51ebe2d','seed_will_id','1','accept','2021-01-09 17:06:33',0),('c9d37923-1672-8acd-9a8c-5ff9e5872403','b116eee2-1826-7afa-02fe-5ff9e5ec33fa','seed_max_id','1','accept','2021-01-09 17:06:33',0),('cbed1814-16ea-250c-7328-5ff9e5043e71','8de7050e-f285-a5d0-5110-5ff9e5395014','seed_sally_id','1','accept','2021-01-09 17:06:33',0),('eb4a8c21-ad9e-5474-6275-5ff9e5530778','db390d0f-b698-7c72-70de-5ff9e583d4e8','seed_will_id','1','accept','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES ('seed_will_id','11b306b8-af75-c3c9-4116-5ff9e5c0a0b1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','83789240-ef96-8047-7ea0-5ff9e50536b1',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_max_id','143db1d7-a05b-a4ee-9bc6-5ff9e41549d7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','8636dd93-aecd-acc3-7d25-5ff9e4661308',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_chris_id','167789ce-eb7d-4664-d1bf-5ff9e438802a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','95bfaf80-7d6e-8b84-03be-5ff9e415bbaf',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_sarah_id','17b0e937-5555-1dc8-3235-5ff9e4cf3e61','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_will_id','1fb60bd0-5ba1-a921-c1cc-5ff9e5b0c727','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','e0776e3c-2b65-e7ef-1cda-5ff9e5373856',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sally_id','210257f8-7af0-f47b-d539-5ff9e59b75e1','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','364aa9f0-760f-474e-d4bb-5ff9e53b6fd5',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_sarah_id','26a61469-5eea-1441-b795-5ff9e5dbe713','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','43a27b00-6987-92d0-6019-5ff9e551bc06',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','29d705f4-2e01-e6b9-c006-5ff9e541374d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_will_id','2f29c90d-c1de-02bd-272a-5ff9e48892d3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','bc78c90d-047f-84aa-f226-5ff9e4361490',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_will_id','369e3ad5-4450-20cf-f058-5ff9e5dcba8b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','e6da908e-865e-3abf-b4ec-5ff9e50b6db2',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_max_id','3f9d9ff0-a0b4-2eb5-4b08-5ff9e53e64f7','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','62956c44-79cd-b16e-b306-5ff9e5fa24a9',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_max_id','4036ffd9-1e6b-2dc2-fdaf-5ff9e5b6b8c9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','6119a10e-22af-9291-defa-5ff9e5a5d04f',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_chris_id','496074fb-91ed-2cc7-d858-5ff9e4b70637','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','1840c12c-603e-6c28-6ab4-5ff9e4f4c963',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sarah_id','4e04b6ba-391e-d2a5-835a-5ff9e516b52b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','9f43bb09-45cc-123c-bd41-5ff9e5d41008',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_max_id','4e87cb82-bd8b-e0b3-81f9-5ff9e414e01e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','91c89470-f34b-f69c-7e6b-5ff9e4861146',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_will_id','565e74e6-9f9a-f25f-688f-5ff9e4fe8d68','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','5f8b074e-5749-8be2-f46c-5ff9e5db0aba','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','a18dac90-9853-e440-c497-5ff9e42723b0',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_chris_id','6b3b44c3-5bfa-eab1-a1ec-5ff9e4d5d536','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','243c9004-e246-96f6-4e65-5ff9e47fd593',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_will_id','6c6f8022-a8e6-a0a6-fff9-5ff9e549e212','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','e37c09b4-4849-7a46-7d80-5ff9e5b88722',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_max_id','7322c3f6-7c3e-ea2b-13f7-5ff9e4ebf32e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','7ea01596-83e7-624d-c792-5ff9e46dd493',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','7d3f88d8-2a45-3002-e288-5ff9e5a61015','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','7b84c7a4-209b-9bf1-e11b-5ff9e52003bf',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_will_id','82e13a56-d00e-efa6-26c9-5ff9e521c600','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sarah_id','8788eeec-fd57-994c-8c69-5ff9e410c30f','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','9069cc03-e955-384b-fb50-5ff9e4f28398',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_chris_id','8b05538e-b1b1-a33a-0676-5ff9e5d9a1e9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_sarah_id','9b2fcfc5-6e2f-033f-81f7-5ff9e5120328','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','daf33abf-a900-a8b3-7f14-5ff9e50575a6',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sally_id','a0aa9f31-0bb4-7144-e5a8-5ff9e596587e','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','d4f9cd2a-ac5a-3666-f771-5ff9e58b606c',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_max_id','a2b8dcfe-b931-9668-8b13-5ff9e43a58f5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','66d88013-82df-90bf-fdd3-5ff9e48a94c9',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','a484cf44-dce0-8471-53b2-5ff9e42e8354','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','42a4f906-a97f-e814-95c4-5ff9e4f5f92a',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','a7b2c701-c5ef-3ece-b46b-5ff9e43f78db','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','eaaefee1-ec7c-ff95-62f6-5ff9e4caf278',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_chris_id','afec3788-8690-c5b8-8020-5ff9e422d118','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','169da36d-2dac-b3b9-590a-5ff9e43e180d',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_will_id','b638dcb1-0681-ae41-bf0f-5ff9e5f6b7e4','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','17c08950-1669-c8b1-54c4-5ff9e59a14a8',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_sarah_id','b749d983-a8a6-8aab-5f7b-5ff9e4d64dda','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','3b1771a5-c851-95b1-b53f-5ff9e4a844b0',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sally_id','b85fbedc-4506-5702-a4f5-5ff9e592033a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','6da60bc5-9fad-6583-e5b1-5ff9e55e9b42',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','c19110fb-d120-2f07-40f1-5ff9e45af492','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','be526ddc-bc43-eabe-6d25-5ff9e4852c8e',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_max_id','c3be7973-58b9-5969-bd54-5ff9e578d7d9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','da921383-3870-9526-247e-5ff9e5748b4e',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_sarah_id','c95a5794-ccc5-e722-e405-5ff9e5a423d9','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sarah_id','cce1f404-3a45-057a-9571-5ff9e502a4a5','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_chris_id','cd1b1a62-d040-2384-ed3b-5ff9e5907f8b','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','86748ca4-8574-a46f-0187-5ff9e5608ccd',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_max_id','d202f262-7b49-2c54-a0ed-5ff9e42dd12a','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','47209eba-76e0-8f0d-6f1d-5ff9e477e52b',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_will_id','d90817b6-bdda-4e1e-f035-5ff9e4db0a05','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','6989fefe-cd69-611b-03d8-5ff9e4e3a083',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_chris_id','e164cd17-662e-3504-d1f9-5ff9e5eef3cc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sarah_id','e2620b03-e5b2-80c4-35ea-5ff9e56d719d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','1d9384ea-662b-dcdb-d90b-5ff9e50458f3',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_max_id','e531afda-9929-32c9-30fe-5ff9e4037de3','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Call Information',NULL,NULL,'Accounts','8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6',NULL,0,0,'The initial sales call went well. Will follow up with contact in 3 days.',0),('seed_sally_id','e6e80bd8-a314-5376-9cc6-5ff9e52e1504','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','d92a4361-2f3c-dee4-d36c-5ff9e5860cfb',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_max_id','e6eef4e8-d0bc-4769-1a9f-5ff9e5164883','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_sarah_id','e85ced09-6c88-8a55-c926-5ff9e5b6684c','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','More Account Information',NULL,NULL,'Accounts','9721d66f-e546-f89e-0cd8-5ff9e5a0a814',NULL,0,0,'This account could turn into a 3,000-user opportunity.',0),('seed_chris_id','ec7f082a-aa07-d859-b58f-5ff9e51f1385','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','d76fac61-12db-f067-1527-5ff9e55e0b3a',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sarah_id','ed0aea5e-0182-9303-f8c9-5ff9e52c5fdc','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Met at SugarCon 2010',NULL,NULL,'Accounts','20068ea3-5a29-47c7-1dd6-5ff9e50c9c59',NULL,0,0,'Contact expressed interest in becoming a partner.',0),('seed_sally_id','ef9b50b2-f8c5-0514-6dc4-5ff9e537db80','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','76d15820-4e44-ea7a-eebc-5ff9e505aca5',NULL,0,0,'Contact\'s event registration fee was comped.',0),('seed_sally_id','f2d8c35c-8dce-0c19-b748-5ff9e4c9860d','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Attended CRM Exceleration Event in Asia',NULL,NULL,'Accounts','64613793-c9b7-a7c0-97c2-5ff9e4975faf',NULL,0,0,'Contact\'s event registration fee was comped.',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
INSERT INTO `opportunities` VALUES ('12104dfa-647a-6626-b8b5-5ff9e5f23208','Avery Software Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','',NULL,'Public Relations',25000,25000,'-99','2021-03-01',NULL,'Perception Analysis',10),('1b498193-0e32-7992-4df0-5ff9e59c7b1c','Jungle Systems Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','',NULL,'Conference',10000,10000,'-99','2021-07-09',NULL,'Negotiation/Review',40),('1e0c38d1-b445-999f-61a3-5ff9e4c9fe63','Tortoise Corp - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Public Relations',50000,50000,'-99','2021-08-08',NULL,'Prospecting',70),('1faaf5bb-c4e8-3ab2-0185-5ff9e5fad107','P Piper & Sons - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','New Business',NULL,'Direct Mail',50000,50000,'-99','2021-07-30',NULL,'Prospecting',40),('20c30464-bd37-ad79-0ed8-5ff9e4b5fdfe','Rubble Group Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Existing Business',NULL,'Trade Show',10000,10000,'-99','2021-11-04',NULL,'Prospecting',40),('2c28e910-47d9-dcb1-0aa3-5ff9e501e30c','Rubble Group Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Existing Business',NULL,'Word of mouth',10000,10000,'-99','2021-04-18',NULL,'Qualification',40),('360a7616-d74f-7bb7-c07c-5ff9e4ab12cf','RR. Talker Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','New Business',NULL,'Trade Show',50000,50000,'-99','2020-01-26',NULL,'Closed Won',10),('38784347-b71a-d670-7228-5ff9e50fac8f','Kaos Trading Ltd - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','',NULL,'Public Relations',25000,25000,'-99','2020-02-03',NULL,'Closed Won',10),('3ae6cc18-39d4-e062-8bab-5ff9e56c3c44','Airline Maintenance Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Existing Business',NULL,'Word of mouth',75000,75000,'-99','2021-09-18',NULL,'Qualification',60),('49131211-96aa-0082-d131-5ff9e4f26176','Tri-State Medical Corp - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Existing Business',NULL,'Public Relations',75000,75000,'-99','2021-08-26',NULL,'Qualification',70),('5196bebd-89a1-9243-03f2-5ff9e5a04614','Southern Realty - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','',NULL,'Employee',75000,75000,'-99','2022-01-04',NULL,'Prospecting',10),('551412fa-4594-f747-4d83-5ff9e567de5f','Gifted Holdings AG - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Existing Business',NULL,'Employee',75000,75000,'-99','2021-05-13',NULL,'Prospecting',60),('59ae8a84-e196-ffb4-e169-5ff9e5787a0d','Dirt Mining Ltd - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','',NULL,'Email',50000,50000,'-99','2021-05-03',NULL,'Qualification',70),('5d97f050-c3d8-582c-d39f-5ff9e44c3f03','Slender Broadband Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','New Business',NULL,'Trade Show',10000,10000,'-99','2021-10-05',NULL,'Qualification',60),('64e289ed-9824-e5f6-b8c0-5ff9e40a1d0d','Draft Diversified Energy Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','New Business',NULL,'Cold Call',10000,10000,'-99','2020-04-02',NULL,'Closed Lost',70),('6a008065-bacd-6516-656b-5ff9e5677ad2','Powder Suppliers - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Existing Business',NULL,'Cold Call',50000,50000,'-99','2021-09-04',NULL,'Qualification',10),('6a6c4199-d01e-e16e-611d-5ff9e5d81fa0','T-Squared Techs - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','New Business',NULL,'Existing Customer',10000,10000,'-99','2021-07-26',NULL,'Value Proposition',40),('6ec66b9a-4080-40cd-a66c-5ff9e55d53c4','International Art Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Cold Call',10000,10000,'-99','2021-11-04',NULL,'Proposal/Price Quote',70),('6ed7c6d6-ac79-cafe-7e67-5ff9e4263579','S Cane Sweeteners Ltd - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'',25000,25000,'-99','2021-04-12',NULL,'Qualification',70),('72ee954c-9d43-a577-4121-5ff9e4dfd6df','Spend Thrift Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','New Business',NULL,'Conference',25000,25000,'-99','2021-09-05',NULL,'Prospecting',10),('7a246200-3de4-5c93-d8b3-5ff9e5b792b8','Cloud Cover Trust - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Existing Business',NULL,'Conference',10000,10000,'-99','2021-05-12',NULL,'Proposal/Price Quote',10),('7a640393-459c-f450-8446-5ff9e50f3f4a','Trait Institute Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','New Business',NULL,'Trade Show',75000,75000,'-99','2020-05-28',NULL,'Closed Lost',60),('7c6e157c-0a87-3b0d-328e-5ff9e5ba53d7','Insight Marketing Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','New Business',NULL,'Word of mouth',10000,10000,'-99','2021-12-07',NULL,'Qualification',40),('7fa260a7-5492-98ca-690a-5ff9e4fb8804','Anytime Air Support Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','',NULL,'Cold Call',75000,75000,'-99','2021-05-20',NULL,'Value Proposition',10),('7ffe22e9-f885-8e5b-2429-5ff9e4bb8931','RR. Talker Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','',NULL,'Campaign',50000,50000,'-99','2021-09-27',NULL,'Perception Analysis',40),('811df0cc-bc07-4518-a821-5ff9e59adc20','Start Over Trust - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','',NULL,'Existing Customer',10000,10000,'-99','2020-12-01',NULL,'Closed Won',60),('864c3a4e-9956-3f48-e25e-5ff9e45f0694','Smallville Resources Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Partner',50000,50000,'-99','2021-10-11',NULL,'Prospecting',10),('88f318e8-7647-6e1c-7540-5ff9e48bab08','5D Investments - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','',NULL,'Self Generated',25000,25000,'-99','2020-08-02',NULL,'Closed Won',70),('8b780bbc-c1fd-5f25-06b2-5ff9e53975f5','Union Bank - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Existing Business',NULL,'Partner',10000,10000,'-99','2021-06-01',NULL,'Perception Analysis',70),('912e7348-ec6e-f9b5-05f6-5ff9e4696c22','White Cross Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','New Business',NULL,'Partner',10000,10000,'-99','2020-11-19',NULL,'Closed Lost',60),('9c1ce69a-f2fa-28e8-a524-5ff9e5cf22b1','Super Star Holdings Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Existing Business',NULL,'Campaign',10000,10000,'-99','2021-09-24',NULL,'Negotiation/Review',60),('a319e717-e6da-82fc-c934-5ff9e5fbd1b9','Nimble Technologies Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','',NULL,'Conference',10000,10000,'-99','2021-03-28',NULL,'Perception Analysis',10),('ab4e3a5a-9deb-c80b-a71c-5ff9e54469fb','Ink Conglomerate Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','New Business',NULL,'Email',75000,75000,'-99','2021-06-01',NULL,'Needs Analysis',10),('b09cf311-e133-3629-ebcc-5ff9e524ec51','A.G. Parr PLC - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','New Business',NULL,'Trade Show',50000,50000,'-99','2021-08-04',NULL,'Value Proposition',60),('c2505b43-369b-a85d-43c1-5ff9e5a8c8f3','EEE Endowments LTD - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','New Business',NULL,'Word of mouth',50000,50000,'-99','2022-01-06',NULL,'Id. Decision Makers',10),('c4611ef6-3b13-820c-97ec-5ff9e548a2fe','J.K.M. Corp (HA) - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','New Business',NULL,'Direct Mail',10000,10000,'-99','2020-08-18',NULL,'Closed Lost',10),('c48db5e2-f5af-df9a-bd20-5ff9e4678024','JBC Banking Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','New Business',NULL,'Trade Show',50000,50000,'-99','2021-11-11',NULL,'Negotiation/Review',10),('c9b86e7c-74f1-08f4-a4a2-5ff9e44028e7','NW Bridge Construction - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Existing Business',NULL,'Email',75000,75000,'-99','2021-04-24',NULL,'Proposal/Price Quote',60),('cc518da3-f588-0393-d558-5ff9e43dcf37','TJ O\'Rourke Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','',NULL,'',75000,75000,'-99','2021-07-28',NULL,'Negotiation/Review',60),('ce607cbd-9c2d-34f0-352d-5ff9e5af5a9d','JJ Resources Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Existing Business',NULL,'Other',75000,75000,'-99','2021-03-29',NULL,'Needs Analysis',40),('d0cd48b3-f7db-439b-3d59-5ff9e55efd08','Southern Realty - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','',NULL,'Existing Customer',25000,25000,'-99','2021-06-04',NULL,'Qualification',40),('d278656f-d901-09f7-b83d-5ff9e5c0edff','24/7 Couriers - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Existing Business',NULL,'Conference',50000,50000,'-99','2021-11-21',NULL,'Proposal/Price Quote',40),('d69f65e3-bc09-01d5-0ad2-5ff9e407c03f','Kringle Bell IncK.A. Tower & Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Existing Customer',75000,75000,'-99','2021-05-22',NULL,'Perception Analysis',70),('d7230614-70ca-1108-5e70-5ff9e466c9e6','Rhyme & Reason Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','New Business',NULL,'Other',10000,10000,'-99','2021-11-22',NULL,'Perception Analysis',70),('dcba4b9b-4782-d1bf-05c7-5ff9e5fdf9cc','First National S/B - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','',NULL,'Cold Call',75000,75000,'-99','2021-10-16',NULL,'Negotiation/Review',10),('e3e66489-cca9-c33c-ad99-5ff9e588bf50','DD Furniture Inc - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Employee',25000,25000,'-99','2020-12-12',NULL,'Closed Won',60),('e8507677-4065-97aa-885e-5ff9e56e03c2','Riviera Hotels - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Existing Business',NULL,'Partner',50000,50000,'-99','2021-07-02',NULL,'Perception Analysis',60),('e9097530-dbaa-f1d8-cb70-5ff9e4cb8a41','Green Tractor Group Limited - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Existing Business',NULL,'Email',10000,10000,'-99','2021-10-06',NULL,'Needs Analysis',60),('f2e4a50d-01bd-534e-2fa0-5ff9e5ec34d1','White Cross Co - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','',NULL,'Employee',10000,10000,'-99','2021-10-25',NULL,'Id. Decision Makers',10),('f3499a2f-40f4-11f7-464d-5ff9e40b4640','Powell Funding - 1000 units','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','New Business',NULL,'Trade Show',50000,50000,'-99','2020-10-10',NULL,'Closed Won',70);
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
INSERT INTO `opportunities_contacts` VALUES ('1e08ac81-cd3a-6afd-3c83-5ff9e5f073a0','77145904-99e8-9624-c82d-5ff9e50ac392','e9097530-dbaa-f1d8-cb70-5ff9e4cb8a41','Primary Decision Maker','2021-01-09 17:06:33',0),('1fea0bc3-0c03-fb52-67d0-5ff9e5b42e62','6a088da8-3ef3-ae32-0436-5ff9e5741b98','5196bebd-89a1-9243-03f2-5ff9e5a04614','Primary Decision Maker','2021-01-09 17:06:33',0),('246611aa-a55d-603c-864e-5ff9e58820ba','1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','5d97f050-c3d8-582c-d39f-5ff9e44c3f03','Primary Decision Maker','2021-01-09 17:06:33',0),('28748cc7-f4df-682a-a0cd-5ff9e5455daf','61e3666b-66b4-7e09-1df1-5ff9e5659eed','5d97f050-c3d8-582c-d39f-5ff9e44c3f03','Primary Decision Maker','2021-01-09 17:06:33',0),('2c7960af-389b-5e82-c768-5ff9e5e77078','89c7e668-991e-4dd5-7619-5ff9e5541756','8b780bbc-c1fd-5f25-06b2-5ff9e53975f5','Primary Decision Maker','2021-01-09 17:06:33',0),('4132a62c-a163-8424-0c16-5ff9e58b0092','b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','1e0c38d1-b445-999f-61a3-5ff9e4c9fe63','Primary Decision Maker','2021-01-09 17:06:33',0),('43320440-3230-7eef-f571-5ff9e5d14660','99d14881-6332-db47-1114-5ff9e5866741','dcba4b9b-4782-d1bf-05c7-5ff9e5fdf9cc','Primary Decision Maker','2021-01-09 17:06:33',0),('52b12b52-844a-7208-9819-5ff9e5c73ddd','e0ba2917-7017-6a73-1a45-5ff9e5f929a3','1e0c38d1-b445-999f-61a3-5ff9e4c9fe63','Primary Decision Maker','2021-01-09 17:06:33',0),('58e1fbd0-81f0-aef6-43aa-5ff9e535eb30','94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','c4611ef6-3b13-820c-97ec-5ff9e548a2fe','Primary Decision Maker','2021-01-09 17:06:33',0),('61b5b824-4248-1aa7-2d43-5ff9e536ae71','e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','551412fa-4594-f747-4d83-5ff9e567de5f','Primary Decision Maker','2021-01-09 17:06:33',0),('6511b50c-cadd-6219-c910-5ff9e570a9f1','bc2c5743-8675-1169-2652-5ff9e599af68','1faaf5bb-c4e8-3ab2-0185-5ff9e5fad107','Primary Decision Maker','2021-01-09 17:06:33',0),('78dfc508-b50d-dcc3-09c1-5ff9e5fd8a13','cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','cc518da3-f588-0393-d558-5ff9e43dcf37','Primary Decision Maker','2021-01-09 17:06:33',0),('94b488e1-cfe3-d515-109d-5ff9e5235c65','49faa0f9-a041-c118-5131-5ff9e5b033de','811df0cc-bc07-4518-a821-5ff9e59adc20','Primary Decision Maker','2021-01-09 17:06:33',0),('a55897bc-9015-0758-ed9b-5ff9e5c79acc','6d33aad4-8175-e485-d04c-5ff9e57cbf86','6a6c4199-d01e-e16e-611d-5ff9e5d81fa0','Primary Decision Maker','2021-01-09 17:06:33',0),('b1430cc4-31d2-cb19-5fa0-5ff9e5516b11','f0f23ca0-57c9-160a-f717-5ff9e5cd3def','d69f65e3-bc09-01d5-0ad2-5ff9e407c03f','Primary Decision Maker','2021-01-09 17:06:33',0),('b2ab011b-0d4a-38e6-9903-5ff9e5e8e633','ec51a991-ccf0-7665-d2c2-5ff9e579665d','864c3a4e-9956-3f48-e25e-5ff9e45f0694','Primary Decision Maker','2021-01-09 17:06:33',0),('b70d1965-a684-ae03-de30-5ff9e569f044','f3d1c25c-981f-2052-331a-5ff9e5a38926','c2505b43-369b-a85d-43c1-5ff9e5a8c8f3','Primary Decision Maker','2021-01-09 17:06:33',0),('c096f8a9-76e5-f7a2-19d0-5ff9e52b8e0d','bade0bdb-1482-2e88-3e34-5ff9e5562a29','c48db5e2-f5af-df9a-bd20-5ff9e4678024','Primary Decision Maker','2021-01-09 17:06:33',0),('c10ca707-9938-ba3a-09e6-5ff9e510e646','6e523b23-29fe-8db1-e59b-5ff9e5401d2e','360a7616-d74f-7bb7-c07c-5ff9e4ab12cf','Primary Decision Maker','2021-01-09 17:06:33',0),('c45f048e-f7fe-e3dc-7985-5ff9e5397c7a','5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','6a008065-bacd-6516-656b-5ff9e5677ad2','Primary Decision Maker','2021-01-09 17:06:33',0),('c8a85d6e-f415-260a-ba5b-5ff9e58874fd','6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','551412fa-4594-f747-4d83-5ff9e567de5f','Primary Decision Maker','2021-01-09 17:06:33',0),('c8ebaa01-6442-2a9d-fed4-5ff9e5995896','dd01d891-146f-20e1-e32a-5ff9e5c54b91','811df0cc-bc07-4518-a821-5ff9e59adc20','Primary Decision Maker','2021-01-09 17:06:33',0),('ccd905e5-ac0d-51bc-aaf2-5ff9e59b0c07','13099e74-4d76-790c-d920-5ff9e5d8dfce','d0cd48b3-f7db-439b-3d59-5ff9e55efd08','Primary Decision Maker','2021-01-09 17:06:33',0),('e2153904-7712-ee53-8a2c-5ff9e5192161','b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66','ab4e3a5a-9deb-c80b-a71c-5ff9e54469fb','Primary Decision Maker','2021-01-09 17:06:33',0),('e407011b-6b5f-3948-6f0d-5ff9e5f4dacf','139ea344-eb2c-ca62-99e9-5ff9e53540b4','f2e4a50d-01bd-534e-2fa0-5ff9e5ec34d1','Primary Decision Maker','2021-01-09 17:06:33',0),('ef794d8f-020c-5e3c-8b1c-5ff9e5163850','a4a4b79f-2e72-44fe-4e16-5ff9e5162442','d278656f-d901-09f7-b83d-5ff9e5c0edff','Primary Decision Maker','2021-01-09 17:06:33',0),('f2f7bd7e-2d9a-131e-9253-5ff9e50a2596','202a0b4a-a2df-8cc4-a564-5ff9e57b369c','6ec66b9a-4080-40cd-a66c-5ff9e55d53c4','Primary Decision Maker','2021-01-09 17:06:33',0);
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('1ea5edae-129a-062f-4b2d-5ff9e4b052bb','system','system','1',NULL,NULL,'SMTP','other','','25','','',1,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('100669a4-41e0-f58f-2d05-5ff9e4e7f962','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('106d20f7-3b31-fd91-ab19-5ff9e43c1701','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1088a482-fd71-7867-4baa-5ff9e4f93842','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('10fdc465-eee5-95cb-d4cf-5ff9e46881b0','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1198c6f6-e05e-bee0-4842-5ff9e471ef8b','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11f3cb86-23e1-91c0-1ec4-5ff9e400b3d9','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('12166f08-d06b-c11d-4d41-5ff9e403d7c5','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('1284f904-6ebc-acba-c417-5ff9e4eb31f6','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13e7ea15-e5b8-f03f-c82f-5ff9e404708a','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1490feb3-33de-38f7-0714-5ff9e48eed66','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14ad2528-9946-e4cc-189d-5ff9e4812c7d','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1594c439-aa8c-9e90-c03e-5ff9e4250e94','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('160a7fe6-3b3d-4517-4861-5ff9e49cd99e','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('16250671-762b-6992-eab8-5ff9e409429f','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('195e0492-ec14-f209-923c-5ff9e4c895a5','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1994ebeb-a016-dcb4-8394-5ff9e4380829','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a297f92-0666-bd8f-f251-5ff9e49ff1a4','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a42cf94-d8fc-2136-29d0-5ff9e4b7e4d8','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1aaf30c9-5358-fc19-faf4-5ff9e4e646d6','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1b08685a-8b35-043f-9326-5ff9e4a494eb','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b2585fe-2456-0066-0207-5ff9e43021c9','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b2a31e3-3a76-5566-da6d-5ff9e43828d8','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1b360b99-31b8-b386-966e-5ff9e40bd28e','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('1bd37941-21d6-469c-434b-5ff9e4fbf055','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('1c606b9f-1ab8-b738-6928-5ff9e4d59189','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ce5a8b2-3e6a-ee5e-1039-5ff9e4fc4559','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('1d20ba62-eadf-8fe4-3075-5ff9e4bf8536','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('1d9ff6f0-8ac7-703d-5109-5ff9e4422d71','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1de8d601-d07e-7bea-482f-5ff9e42e32d0','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e14b859-614c-5a3e-9e80-5ff9e49dded8','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('1e1ec7d8-8413-054a-f90b-5ff9e402a1e9','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e5df4b5-ac86-a3ae-1729-5ff9e46bdf42','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f050140-0edd-288a-6149-5ff9e4f47d03','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('1f5d9a21-7e46-0819-9427-5ff9e49fa5ed','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('1f908f5d-db22-41f6-e4b8-5ff9e4bd9e7c','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('1fa0e3f3-8fa2-f119-9ddb-5ff9e4fe63f5','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('1fcf0bf6-3d02-7c02-6473-5ff9e4229291','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2000c348-e995-4d12-ab41-5ff9e49a8fde','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('20376064-adf7-59dd-14f2-5ff9e4a26fc4','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('207ead85-fb92-785f-4e00-5ff9e4c353a4','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('20e09dd8-3e6c-241e-4883-5ff9e4608e62','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('217a8af1-0d2d-08eb-97b6-5ff9e4270871','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2259ec81-e0d2-4c71-98db-5ff9e4441e13','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('2327c9b9-cd42-b391-330e-5ff9e4ec828a','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('239222bc-0f1a-075c-d2b3-5ff9e41e6a26','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('23a3cb68-a185-b91e-d8fc-5ff9e41a1631','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('2479324a-0af1-485f-cb13-5ff9e419a2bc','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('269002db-dbae-c883-73a8-5ff9e47ad1f1','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('26f98251-2838-770c-d4ff-5ff9e4a06945','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('270f7550-faa0-e17e-7507-5ff9e4aab967','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('27259413-7d94-2a56-d94f-5ff9e4163a38','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27550fd4-56de-d0d9-5e95-5ff9e42295c9','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('27cf87a1-2a0b-ad6b-bb0a-5ff9e4d27244','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2840151f-18bc-914b-6b64-5ff9e4f65a06','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('288782fa-2053-307f-ba3f-5ff9e4187a0a','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('297e7173-445e-bf25-2bf1-5ff9e4bc75e8','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('29f3bf85-d0dd-5a73-6b50-5ff9e457977a','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('2a69f6a0-7774-66cf-6f7f-5ff9e4425f23','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2b7d8cea-ffbe-cf28-52a3-5ff9e4810ab6','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bb2ca0f-d237-f51a-4ca9-5ff9e438cbcd','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c970f95-839d-8fe7-09cd-5ff9e4cb6196','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d07eccd-ce0f-4c76-11db-5ff9e4fa27ed','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2d2cb9ff-d42b-75e6-877a-5ff9e4f43761','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('2d54b50c-ca22-4768-bc73-5ff9e4e1c75b','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2dab0afc-af93-26ce-a953-5ff9e42f42fa','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2eadc890-eb20-0e77-372c-5ff9e4aed6a1','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2eda66a2-2594-1288-aabe-5ff9e4df4a43','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f170fc7-e148-1f84-6197-5ff9e4c598a8','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f94a92e-7ffc-3294-2537-5ff9e4a26cb8','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2fee2221-a6bd-ccf9-3e87-5ff9e4df19e2','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30bc00d2-c33f-1b59-3cb5-5ff9e450c12b','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('31312ea6-0f8f-70a9-99ab-5ff9e412bca4','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('3135dd19-4005-f424-5e54-5ff9e41aef2b','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('31d463a7-dc2b-502f-6029-5ff9e4499882','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('32de52b3-11c4-1277-535c-5ff9e4c0b69a','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('33288879-e3e7-667c-af61-5ff9e4e6d248','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('338add76-6d89-0080-f259-5ff9e4527cb3','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34d2cd01-a98a-2a8b-c6c1-5ff9e48d9988','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('357d7692-0589-68b3-9f6c-5ff9e4e7ebd0','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35bd0fb2-b7d2-b59b-b88b-5ff9e4d29e35','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35d5ceb5-5b74-75f3-a01d-5ff9e43b530e','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('36504448-ad3c-782f-cd42-5ff9e4d8e7fb','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37155c1d-699e-087b-2243-5ff9e49baa8e','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('37a5b276-2d06-6703-bba6-5ff9e4e21e1d','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('37ae1d7a-bf19-95dc-3131-5ff9e4a54950','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('381e8d7a-092e-0c9f-43ff-5ff9e4a668fe','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38be74c0-62ea-5994-b968-5ff9e4ddd242','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('393c3dc5-58c5-59d8-1cd1-5ff9e49dacaf','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('394fd117-05e4-d98e-1e09-5ff9e4a67af7','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('395d886e-3ff0-aa76-84f2-5ff9e4b05d77','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('39e541c6-ea29-3d7b-d136-5ff9e4be190b','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('3a2deede-d285-636d-00bd-5ff9e40989af','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ab4d5cb-0488-c415-842e-5ff9e4435473','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('3b4979a7-cd10-23e0-0005-5ff9e4648cd9','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c3f59e2-f51d-25ed-91b3-5ff9e41e2f67','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c780459-af5e-9525-2e18-5ff9e4e53437','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cb72465-e0e3-4437-de66-5ff9e44e77cc','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ce74685-23d0-3e6e-5bba-5ff9e4ad3246','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d246601-5224-4c6c-510d-5ff9e4bb8cb2','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d5e5729-f423-7cb3-ebe2-5ff9e42ae22f','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d875f09-6d59-5704-8de4-5ff9e46475c1','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3da90c91-3ed0-2272-e927-5ff9e49e56cd','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e0a95bd-c904-381a-dbee-5ff9e4f1424f','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('3e142d14-f713-a684-e6bc-5ff9e4822090','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e6b8fd0-f14a-c012-922a-5ff9e4245057','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e8ebeff-a73c-93ae-941c-5ff9e4792dbd','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ef8d27d-3e23-72d2-b69e-5ff9e417335d','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('406d1763-9371-f3f1-fa57-5ff9e4ac5e1b','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('424e9f1f-c505-490c-21ad-5ff9e48901fe','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('431e346f-703b-bcf8-d294-5ff9e49a0ccf','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('434ef1fc-6a0c-8c86-2293-5ff9e44889f3','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('438d97af-9ea0-8593-9079-5ff9e4a03a41','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('440c27d1-6542-2043-2f26-5ff9e4f1033b','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('44982595-104d-22f0-305e-5ff9e4ad4297','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('457e86f4-4e17-0469-f98d-5ff9e452eb6b','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45f20e90-0e80-8bb5-bc23-5ff9e4327f2a','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('46aa18bc-4021-5093-8b55-5ff9e4e1cc1e','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('46ac0e54-36f2-87a4-dacb-5ff9e4025242','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46e30615-4c41-2165-6457-5ff9e497a213','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('476557ad-9c4e-83cc-eb12-5ff9e4d0b1df','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('47cbc7c3-784e-a3e4-6fad-5ff9e45ac01a','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4841a53c-669e-6e25-7e60-5ff9e47cc6e5','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('48f726a1-cf84-fd37-854d-5ff9e45f9231','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a34d347-bf6d-5e66-5b9f-5ff9e4bee98a','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a5722ae-d18d-656d-82b7-5ff9e492ac2f','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a6c2c38-d2ff-8b23-efc8-5ff9e4e7ac4d','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('4ac1c5cc-b3a6-4dc6-5994-5ff9e4abf819','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bfbb075-ee66-cd47-611a-5ff9e418b652','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('4c14e453-64e1-6a0a-7c2c-5ff9e4d04d93','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c641f11-cdf8-9bd6-c689-5ff9e463d498','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('4d1c3a1e-ddee-602c-014d-5ff9e47f59d4','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('4e116cca-30f5-279d-afdf-5ff9e447b668','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e11b60e-2805-1718-6280-5ff9e451460a','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e52908b-b858-101a-0896-5ff9e4426f05','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f1f0ff1-da92-2f8a-15d0-5ff9e43ce7f2','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('5096be39-1267-736c-98fc-5ff9e4232374','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50990292-5eb8-7e55-bbd8-5ff9e478dd95','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50e325c9-24bd-6f30-c791-5ff9e4b2521f','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('50fffc3a-06a9-017d-6cfa-5ff9e419d934','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51dd3279-864c-007d-d089-5ff9e48fa7f5','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('522a776a-2663-4fb5-23be-5ff9e4ff5ed7','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('536d0217-228d-48a0-1891-5ff9e464bc87','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('53da10e3-397e-3317-b285-5ff9e443a30e','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54fe021e-946c-aab1-ce60-5ff9e4bc0cd9','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('5559eb2c-c358-2312-2a02-5ff9e435c5c8','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56147aeb-2a80-aa1b-807e-5ff9e420eee7','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('56aee1a6-f973-8eae-9e8d-5ff9e4adb642','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('57a690ee-1828-ced3-dbb2-5ff9e452db42','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57dc9e82-3c72-537d-16e6-5ff9e4ff4061','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('586c6be9-5041-f564-e6d3-5ff9e423f8e2','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58c1c8c0-e36b-e04f-c377-5ff9e4c19368','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58fe65ea-3053-af57-2318-5ff9e4460489','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('592f1f79-ca77-557d-72f0-5ff9e4fe2bcb','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('59a338f3-4eb5-1733-ac9d-5ff9e40c1efd','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59b84e89-fe6f-3baa-59e5-5ff9e4d4c3db','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59c0d7c6-a126-ee76-7879-5ff9e4ca49f9','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('5a97d6ab-dd2e-35b1-144a-5ff9e479192a','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b180dd3-5440-26d5-8151-5ff9e4e56e4e','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('5be06335-415f-55fa-9c8c-5ff9e4e5c259','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e30aefc-bc14-f030-d009-5ff9e488e87e','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e7b7dfb-92eb-c0b8-e585-5ff9e416c314','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('5fd108ec-ee8a-7c13-7af9-5ff9e4f49530','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ffb385e-ec07-0e09-d894-5ff9e400b1de','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('605bdcbe-1a20-6a7d-42de-5ff9e42e560f','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('629bf5e9-0220-b7d5-a6eb-5ff9e4c4fbae','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('62fda936-ca6c-c5a8-d3db-5ff9e4c58733','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('630b9b80-3d08-b8b1-5bd0-5ff9e4610393','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('636d9702-da79-cd28-96a5-5ff9e4c94af3','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('63dcdb45-2d89-2413-1a03-5ff9e401acbb','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('647931c9-5e3d-b9f8-eb83-5ff9e4b1c29f','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('64c95242-21fb-e043-7657-5ff9e4165c70','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('657e7be7-badf-f163-c68e-5ff9e450fe86','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65c04054-b531-09c5-bfbd-5ff9e44a4513','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('65e6ffb0-f259-7253-ed93-5ff9e4295595','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('660098d0-97c2-7201-7a20-5ff9e4df0d2d','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('675448c8-f949-0fcd-a6a4-5ff9e411dfe1','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67729bd2-c79e-fc7d-5f19-5ff9e43b6b36','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('67caf4cc-3ca6-2d56-7637-5ff9e4f2a185','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69076685-ed3b-9259-2cb9-5ff9e47963eb','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69684107-9565-886f-5205-5ff9e493c9e6','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('6985d7a0-beab-4813-0299-5ff9e41bc3b2','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ac87f77-cfe4-14df-7b10-5ff9e4e2f41e','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6bc759c0-2bf7-3bd7-43bd-5ff9e4a2a530','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('6bdbae76-111e-483d-2226-5ff9e4177088','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c1867ee-5188-8e3d-662a-5ff9e4b1348a','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('6c803904-8ec7-78fc-b388-5ff9e4c5f983','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d3869b2-b322-c2a5-ec5f-5ff9e49fbc7e','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6d5ffb8d-e94a-a269-8a3f-5ff9e4e7c77b','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f28c90d-c74e-7063-82a4-5ff9e4870ea9','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f34002d-d0df-368b-182c-5ff9e4e67ef3','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('6f4664f8-ba33-407f-7fcb-5ff9e424c254','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('707c22b3-7436-6919-ce07-5ff9e4e3af8f','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('709d0aa5-fdee-7068-a3b3-5ff9e43c6a3f','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('717493b8-3d5b-118f-ee26-5ff9e414d069','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('719e1aa3-74b7-a7e6-2fcd-5ff9e4a47617','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7201a144-3301-f2b3-8caa-5ff9e4f403a7','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('7222d66b-198a-a988-c20d-5ff9e40c2ca0','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('72352736-74b9-772c-b8ba-5ff9e49b2c47','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73338c23-bcdb-2ea9-95e3-5ff9e4332567','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('739adbac-3575-9a92-ea74-5ff9e4f30e35','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74b182ba-dd6f-2ec3-8de6-5ff9e4d1c2c0','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74d32bff-30ff-7ee1-336c-5ff9e40cc0eb','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74f7be02-bbdc-4530-c546-5ff9e45a79ed','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('757f9e1d-a490-6364-1862-5ff9e40af9c3','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75a8ada6-53eb-4512-4159-5ff9e497d479','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('76a6dbd5-4d39-de78-c9e7-5ff9e4f4d997','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76ed0e91-970f-cfbf-7e4a-5ff9e4fedf56','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7813ede2-1ea3-f5f1-5d04-5ff9e4a1e428','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79026841-22d8-303f-d968-5ff9e4ca1978','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('795861f5-c466-f389-0186-5ff9e4eed7be','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79a91833-6ae5-f6d0-c4c1-5ff9e4b8aa0e','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('79ca58f3-e408-42c3-626a-5ff9e439a5b9','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a0aa4cc-28fb-1fa3-4037-5ff9e4df0cbf','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b06aabf-b8a7-0d66-0a4e-5ff9e4bcc76c','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b5812c9-6d50-398a-642c-5ff9e4b68dee','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b69b90f-8b4c-79a6-b7bc-5ff9e46bed73','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('7ca3e5e3-b8f0-4fcb-2221-5ff9e40e1c86','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('7cde1d48-97b9-4d8a-7324-5ff9e46dad6e','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e17a2f9-814f-aa66-3fcb-5ff9e4d22453','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7e19f31e-d100-600c-7fb0-5ff9e4966e7a','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('7e423031-2892-aee7-57e5-5ff9e4f44eee','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('7eaa3890-5437-a7df-f57c-5ff9e47cf8b8','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7eb74a4c-e130-60a1-19eb-5ff9e424eb02','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('7ee1d101-34bd-d985-de96-5ff9e4b49771','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f9a1b09-f7b5-b3c2-b76b-5ff9e4bd9cd6','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('7fed0aae-0958-6852-b065-5ff9e4705912','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('804ebcc2-ab99-5035-80f6-5ff9e4cf4d18','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('80a07bdf-32b7-b54d-e136-5ff9e43c433a','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('811b1630-77f3-f96f-2924-5ff9e49f0fea','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81959387-2514-6fac-3e42-5ff9e4d517f8','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8269da87-d007-d7dd-8e22-5ff9e4fe1fd7','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('826ca0bd-6489-96e2-6bfd-5ff9e41669b7','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('828236c1-be2a-a7bf-7f50-5ff9e49953bd','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('82a22deb-ab96-cc59-9b8f-5ff9e41f2e47','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82bebfbe-47ad-d734-faf3-5ff9e473ce03','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83782699-5997-6d6f-14fe-5ff9e45acfa1','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84b8871c-bf13-bd94-fc41-5ff9e413fb59','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8574698b-663a-9cea-567b-5ff9e4f8f893','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85a80790-c597-d502-a900-5ff9e4f36fbd','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('85d6924e-7089-8676-7b56-5ff9e4445726','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('85f1c07b-534e-bba4-c982-5ff9e43b2811','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8654a4a9-8917-02f4-f0a5-5ff9e45d0c91','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('866f5802-c21d-3f66-2654-5ff9e4518780','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86f95615-d4b6-8709-2fac-5ff9e453e3e6','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('873ff135-dd07-5039-b850-5ff9e4578749','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('87976044-d7f4-dbe0-19c1-5ff9e4c340bd','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('87d55089-c7ce-881e-5123-5ff9e4fd836f','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88051385-1848-cd13-2bd2-5ff9e433f754','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('886097ea-de14-2bd2-c99f-5ff9e46fdcc5','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a1c6451-c7fb-408e-5194-5ff9e44d2e46','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b44ae6b-5fad-fd3c-731c-5ff9e4d9a250','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('8c407955-f314-61c9-b7e3-5ff9e45ef8c3','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('8d40bb3b-4c77-b9e4-1fa9-5ff9e416399d','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('8dfb5bcc-5697-b67e-6b92-5ff9e42a7cea','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e47b575-e854-78a7-ebb7-5ff9e4521fee','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ec54b6e-74b3-345d-1ec8-5ff9e42b49e1','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f49a9fe-4cbd-78e9-9a83-5ff9e45a3c1d','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fef8ecd-a80c-48d5-3fc5-5ff9e465aad9','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90057d0e-1059-5c05-c35d-5ff9e4e6b7be','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('902df0bd-5830-3473-980e-5ff9e433320e','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('904d03ce-aef7-da2e-1d2f-5ff9e4924c20','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90742ac8-2b3e-8ae3-aae3-5ff9e43119bd','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90f56da1-89c9-52d8-5a43-5ff9e4d708d3','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9124191b-7c2e-747b-eb24-5ff9e4b506fb','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91d73ebe-1d8f-d46e-5c44-5ff9e42486e9','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9258548b-4b04-f786-fc6f-5ff9e4edec17','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('940ea078-8428-9235-4c5b-5ff9e4528e75','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94365346-b607-81b0-1998-5ff9e4a79cc1','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('948db139-6a5e-e2f2-93a6-5ff9e4c3f33e','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94d42d8a-9343-8ae8-c2ab-5ff9e4ad7039','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('9524751e-cfa1-6dbc-e894-5ff9e41fcc69','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('961ace8c-1887-e85d-b94a-5ff9e4a247c6','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96939f2d-c8a1-a997-a00a-5ff9e47e9633','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('970e2b76-2d1d-6cf1-71a3-5ff9e48cd914','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('989b6290-de78-251e-9ae6-5ff9e418bc8b','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('98ef3a2b-0d8b-cd32-49b4-5ff9e4ea7eae','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98ff2f72-43f7-dcaf-cd00-5ff9e4f03abe','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9903891f-a409-2cc0-18dc-5ff9e4cd5f02','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99ef5dda-1770-53ab-c568-5ff9e4b07a07','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('9ad28a76-3989-9628-0f31-5ff9e4ae39d9','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('9c1ad14e-bed8-9a30-f8f4-5ff9e41b057b','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9cbee85d-ad04-c84a-8545-5ff9e424f565','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9cc309a8-17b7-b1dd-8159-5ff9e40d4cc8','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d4680a4-0d3f-4fb1-26fb-5ff9e4ff8cfe','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d96103b-48eb-fb9a-43d8-5ff9e4417210','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9de82fb9-1363-0825-6c51-5ff9e49debdc','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9eb2400a-229a-7eaf-847b-5ff9e4f4087e','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ee931eb-dde5-3c16-d34d-5ff9e4bd622c','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('9fdaaa7c-b334-4819-ba75-5ff9e4889050','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('a053462c-f2b8-563f-4c50-5ff9e49ac8bf','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('a0b80228-85c9-f1d4-748f-5ff9e4c9115b','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('a146843e-1cae-0505-5a21-5ff9e4d0bc4b','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a203e2fd-8d78-cbf6-b637-5ff9e4db125d','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2130cad-5c23-e572-ba5d-5ff9e42417ae','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a26e7691-4e61-8806-463a-5ff9e4ed9e41','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('a27551e0-138c-3830-deae-5ff9e44b4d2e','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2811c60-17f3-7eb9-0993-5ff9e483c702','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('a2ce9823-e23f-b411-fb7a-5ff9e4d2eeed','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('a3342a09-f652-3266-7b3b-5ff9e48b6ef7','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4425e18-5342-f119-4c79-5ff9e46cc6d2','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a47815e2-0af4-ff61-0208-5ff9e48b5f73','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4958f5a-64cf-e1d8-7da8-5ff9e4befa29','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('a6000129-36bb-131c-0eb1-5ff9e4eed735','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('a69625c3-f299-9486-f240-5ff9e48b88ee','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7b496fe-274a-81ef-d9e5-5ff9e4a92bd1','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a81583a7-07ab-d75d-fc4e-5ff9e4a45d7c','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('a85cb000-513c-2a5e-7fcf-5ff9e48e0d41','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('a9daea95-663f-b5da-9985-5ff9e4b14a66','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa571ccf-7027-7067-a149-5ff9e416a588','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('ab4a56fc-55dd-d98f-27d2-5ff9e40c3ba7','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab81e498-2242-687a-dbbb-5ff9e49a5722','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad78d81e-9ac6-fca6-628d-5ff9e4923386','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ada15233-edf0-7f16-48ab-5ff9e427b478','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adef112b-6d53-fe61-9323-5ff9e4c83101','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ae4ebda2-1a4a-36b2-db9c-5ff9e47b098c','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('aecfe735-ddf7-2562-73bb-5ff9e4a085ed','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af727597-331f-2de6-b985-5ff9e429d86a','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afae35ab-5176-c058-d0fd-5ff9e4f061ee','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b00629b2-895d-a4e3-3ae3-5ff9e41e8a8f','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('b081b59d-93c8-1848-45c0-5ff9e48ca07e','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b14ff819-1278-6b77-a198-5ff9e4982406','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('b1e0e732-12b6-80cf-e87f-5ff9e4bfaaad','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('b23101c4-3382-212f-9663-5ff9e4452e61','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2451247-474d-88c8-2190-5ff9e4b4010d','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3d495db-7e84-ccd5-c919-5ff9e40d4d60','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b55e0f7e-a4e3-a1bc-e224-5ff9e458dbba','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5f9ffbc-d2be-da34-a6ef-5ff9e4df7a1e','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('b7d1138a-3d2f-a0ec-fccf-5ff9e459b84b','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7f6ebcd-f0d8-7a3d-4932-5ff9e480c745','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b80804da-0f87-ed5a-48fb-5ff9e4354912','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb2abd94-2cbb-533a-b886-5ff9e4ef763a','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb41048d-4d1f-9bb7-79e2-5ff9e438e6ab','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb821c4c-9bd3-92e8-a82d-5ff9e4c5c81f','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('bc08530d-e023-207f-2adc-5ff9e4b0d1db','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc0c351f-7d02-9404-dd04-5ff9e47001c5','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc1aa29e-5218-f72b-48f1-5ff9e41845d1','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('bcf7f9a4-31f8-001d-b20a-5ff9e4a41cad','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd9ed05a-1204-fcec-8c5e-5ff9e42bb8c0','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bda10697-cfc3-89e1-d763-5ff9e411a371','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdb4f20b-667a-9830-4de2-5ff9e4e399fd','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('be14064b-4440-64d2-c7ae-5ff9e45701ed','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('be3000d9-8501-dc33-261a-5ff9e41d0e9f','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be5c7968-6d99-9ca0-935d-5ff9e4c621b5','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be637199-e833-2378-86a6-5ff9e445f212','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('be98dcf6-c5e1-9622-b69f-5ff9e4c4f36d','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('bea45524-e1c1-9143-2a86-5ff9e46bc5d7','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('bfc66c6c-8b5d-f023-af9d-5ff9e4c29b75','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c03c0786-3762-e5e6-4cb5-5ff9e41c941b','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c05333ac-0bf2-6576-b2cb-5ff9e4b90353','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0c6cc57-c507-750d-2e00-5ff9e46bfd48','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c11f0f5a-e3c9-75a0-65ff-5ff9e40f5e87','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c159f11f-2db3-e376-7eaf-5ff9e4b9639f','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('c37acd1f-af25-8e18-d6aa-5ff9e409566d','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c386e2a8-64ea-ae99-a22c-5ff9e4cb4b44','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('c4de0667-6fef-9f7a-895d-5ff9e466f04c','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('c536b08b-a0af-f9b4-0e2b-5ff9e456aa4a','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('c57877bf-3bec-bc5d-76b4-5ff9e4169b7f','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5993d8c-512e-0453-94d8-5ff9e48eaa0b','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7809401-a37d-c8d9-d67d-5ff9e4b6313f','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7f85a9b-c7ba-470c-ee71-5ff9e4bbd3c8','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8a2d953-4621-241a-4a32-5ff9e4a33a26','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8d222d7-f600-ee68-9f17-5ff9e474ede1','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c99a0510-08d9-69e3-d305-5ff9e41c31df','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c9a96004-e9d9-60c6-3868-5ff9e45c8292','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c9bb0042-a5be-677b-f104-5ff9e459aaf5','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('c9ecf5ae-f980-7d90-7716-5ff9e4b91eba','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ca51190b-a9ed-1a9a-3e28-5ff9e4bf6386','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('cb0684da-2ec2-e78d-7f90-5ff9e4214110','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb55ba2a-ff04-fef0-adeb-5ff9e4a35e26','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('cb8cd4f4-466b-55b1-531f-5ff9e4cb9971','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbf1b032-07de-5956-1d09-5ff9e4e9526c','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('cc2c978a-c022-8fba-2405-5ff9e4f11b36','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('cc65bee5-1316-8f11-b7be-5ff9e4043bdd','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc81a720-07bf-5a73-cb98-5ff9e42e8064','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ccb624fc-3c35-7a61-b835-5ff9e40fd86a','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd3eff48-ad1d-2f69-c629-5ff9e4a44170','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('cd5aa231-81fe-5542-0599-5ff9e474ca19','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('cdd6880f-71c0-0ab1-deaf-5ff9e4cc36e4','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce30ed72-b1dc-27ed-69f1-5ff9e4ec34b9','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce67b63d-af1b-ea7d-4167-5ff9e4bfdd5b','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cf056dff-2115-2fd6-e7dc-5ff9e44e471b','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfdbfc4d-9424-f11a-16a6-5ff9e4b1a6da','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d10c0385-1b27-5b44-72b3-5ff9e4d4bc19','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('d122523f-edd0-ae4d-84ab-5ff9e4964d25','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('d1360311-71ca-e495-2d6a-5ff9e4170e6b','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('d1b60fcf-54c8-bc77-cba5-5ff9e411e736','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('d238072e-913f-e7d2-493c-5ff9e44f5d2a','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('d29cfc08-c310-d8b6-277d-5ff9e479be07','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('d2acd46c-3bf6-edd7-53c2-5ff9e4c89079','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2bae33a-347f-b95e-d5b2-5ff9e445ff18','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3097a79-d23a-9b6a-1b52-5ff9e46ea80b','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3a964fc-89ba-6e5b-e7d9-5ff9e473cbfe','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d43dad96-41ca-55fb-6de8-5ff9e4d52861','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4b3075b-cd82-ea03-8eb5-5ff9e431ec06','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('d4f52662-a2b6-fd89-0d46-5ff9e400e1b8','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d634a52a-1663-76cb-e08a-5ff9e40ec9cf','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('d64d9187-471c-ad27-e0bb-5ff9e4221fa7','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7483c97-c653-0ca3-5710-5ff9e4be92c2','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('d74d8f4c-e5f2-4611-b868-5ff9e4e0669f','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7d8e7fb-fed3-e36c-e1c9-5ff9e4b2338a','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7de983b-2dbf-4bbe-3cab-5ff9e4e29b07','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7ee1770-f077-476f-7715-5ff9e4b57d6c','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('d83fe0c8-2504-3837-3bb6-5ff9e423483c','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d890dc7d-a8f9-1fee-fe94-5ff9e4b1e83d','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8d661f4-a8a8-25d7-6260-5ff9e418e604','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('d9d69f3b-6d99-2a20-cbc1-5ff9e40a1dc3','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('da204aad-56b4-ca51-61f2-5ff9e4376fc7','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dae8b9fb-64dc-e629-608f-5ff9e4063870','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db64cf11-51f5-df89-49e6-5ff9e4b919af','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbd7d153-550a-7e25-1412-5ff9e4ccd4a4','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('dbf52806-1f50-ece5-ed2e-5ff9e4254c0d','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc871909-b386-20d1-8f76-5ff9e45da7a4','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcb270e7-cd6b-df7f-0cb4-5ff9e4536fde','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dce8aa9c-0a3a-7b42-9879-5ff9e4317083','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd41c0f6-b324-a42c-250a-5ff9e4b0c24b','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('deb74b9a-3261-3054-f0f0-5ff9e42f1f6e','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('dee5cba2-7eef-44bc-c141-5ff9e451f1a3','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df800071-6d70-863d-58bb-5ff9e480d7d1','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('e00cfc2f-d5cf-0782-3281-5ff9e4e6f411','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e03d7dac-4c89-f1b1-8118-5ff9e4af5bff','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e06529ef-a9a3-dbc9-db9c-5ff9e42977fd','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e09181bc-3237-ef02-c640-5ff9e4f589bc','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('e0f8d1e0-04b0-be4c-fd8c-5ff9e49429d6','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e19809cc-5c23-fc97-4437-5ff9e46cc229','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1ad0c3d-e1b2-953c-b330-5ff9e4ad1ff3','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e3d2870a-eede-432c-b9f1-5ff9e4170a71','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('e410d935-9644-48e7-733a-5ff9e49d6ffa','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('e4370ff4-ddb6-47ef-f464-5ff9e44dcd92','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('e47b0c07-8468-b8bb-65a5-5ff9e427b01b','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('e4bcfbb7-6344-41cd-a848-5ff9e413d84e','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('e571e878-6201-6646-a687-5ff9e4e6aaa7','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('e6191953-45de-7a78-a746-5ff9e498c78a','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e622a721-285d-593b-daa2-5ff9e4eb3a6d','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('e6368ec5-bc7a-8c8c-5875-5ff9e4eba00f','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('e69b1a6d-7496-d559-8856-5ff9e411e57c','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e76fdfc1-a260-b9af-6d7a-5ff9e4230a50','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('e7a23fdc-608d-eee7-3f7b-5ff9e4abb2ca','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e82909ec-35df-1e1b-1d35-5ff9e457edec','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e83502d1-1585-2e88-e867-5ff9e44d1608','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('e839baa3-4298-2aaa-8586-5ff9e4b9ae6d','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e8a6a184-5908-6f9b-c90f-5ff9e424dc74','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8f064b1-72bc-7e2b-e925-5ff9e48c1600','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('e959370d-7d06-fa48-12a4-5ff9e44dbd0a','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e965855f-0859-3a15-53de-5ff9e45d1311','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('eb1ad27e-d9f0-7564-7e1a-5ff9e43fea89','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('ebc9a73b-9774-28e3-8890-5ff9e4798dfe','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('ec850b94-0e58-abab-ff90-5ff9e42cf3f2','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ecb399dd-a975-31f9-87d4-5ff9e4115426','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ed251843-c4b6-fe15-62c1-5ff9e432a203','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('edf9222e-cd4d-2660-6c78-5ff9e4f71ce9','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ee3774bb-367e-85e0-3f7f-5ff9e41929f8','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('eea8b579-600c-1855-2b6a-5ff9e4f45639','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eec9f495-e254-57f2-3c48-5ff9e427d1b8','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('efdfcbe4-b08e-13b6-6fd8-5ff9e4f36b29','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0969dfb-74ad-2dc8-a0e3-5ff9e4e20a47','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('f248ff11-de0e-feac-48ef-5ff9e4918d61','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f263d9a4-aa6c-2d59-f018-5ff9e4091785','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('f2feeaea-df52-7b71-abd1-5ff9e42219d1','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f326ea03-efb4-5396-8062-5ff9e4224e8a','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('f3cb74d9-cce0-5c60-5110-5ff9e4e4b8c1','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f4bc053e-474f-49c7-0d89-5ff9e412e59a','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('156bc67a-52ae-c663-9b5a-5ff9e490afb5',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 08:45:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('16a7ddf1-5bf0-e1a6-9959-5ff9e42ebc6c',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 16:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('251aa7b6-ef9a-83e8-b6cd-5ff9e47e248c',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 15:45:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),('32dfd716-b57a-3394-2ab8-5ff9e4057352',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 16:45:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('431fadb7-58fd-3263-977e-5ff9e407b284',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 14:45:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('5344cf17-ef26-b523-26a1-5ff9e4152c43',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 16:45:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('63eeb0c8-13be-78e1-0018-5ff9e45df2b3',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 15:00:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('70c70ebf-6ae1-db4f-3b81-5ff9e44dc03f',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 12:00:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('bb188361-7bb2-0af3-0ba9-5ff9e4525626',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 16:15:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('d109823f-fa30-2ff6-116f-5ff9e47822cd',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 15:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('db9a625a-83be-4533-c36d-5ff9e435aeb5',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 14:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('e0cae68d-b163-a075-cd4d-5ff9e465d17c',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 18:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('ec6c78ae-a942-04d6-91d8-5ff9e4b43b4f',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 14:00:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('efc6a66d-9c49-8e69-2c96-5ff9e42c30c7',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 14:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('11a2c4fd-87d3-b34a-0be0-5ff9e595d9f3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e6dbbb5a-ce99-1c88-68b4-5ff9e530231b:Alex Largent]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Contacts','e6dbbb5a-ce99-1c88-68b4-5ff9e530231b',NULL,NULL),('12aa6b79-5552-787e-2bb2-5ff9e5269b95','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:12104dfa-647a-6626-b8b5-5ff9e5f23208:Avery Software Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','12104dfa-647a-6626-b8b5-5ff9e5f23208',NULL,NULL),('13807e47-5c27-355f-8ee6-5ff9e540554b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9:Having trouble adding new items] {SugarFeed.FOR} [Accounts:83789240-ef96-8047-7ea0-5ff9e50536b1:Start Over Trust]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','122d1b88-9ff3-ea0a-c0e2-5ff9e517fac9',NULL,NULL),('151c066f-c7cb-6416-0e75-5ff9e4d435bc','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:8aa976fa-fe1d-4a33-525f-5ff9e44c8c66:Need assistance with large customization] {SugarFeed.FOR} [Accounts:7ea01596-83e7-624d-c792-5ff9e46dd493:Tortoise Corp]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','8aa976fa-fe1d-4a33-525f-5ff9e44c8c66',NULL,NULL),('17172c25-6260-d0ad-5916-5ff9e5e66dad','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cf5d23f4-bc37-2202-2c49-5ff9e503bfb2:Tiffany Dessert]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','cf5d23f4-bc37-2202-2c49-5ff9e503bfb2',NULL,NULL),('1c03f811-cfa7-280a-0c9b-5ff9e5d3240b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:f0f23ca0-57c9-160a-f717-5ff9e5cd3def:Bryon Canady]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','f0f23ca0-57c9-160a-f717-5ff9e5cd3def',NULL,NULL),('1c11e368-1597-0094-8493-5ff9e5fbe142','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:1b498193-0e32-7992-4df0-5ff9e59c7b1c:Jungle Systems Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','1b498193-0e32-7992-4df0-5ff9e59c7b1c',NULL,NULL),('1c28d572-d987-e3c2-2c73-5ff9e52c91e0','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:1a71bfb6-d9e1-6844-f268-5ff9e5090fc3:Having trouble adding new items] {SugarFeed.FOR} [Accounts:59ea7d39-a11d-0f57-40fc-5ff9e58e5e6c:Airline Maintenance Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','1a71bfb6-d9e1-6844-f268-5ff9e5090fc3',NULL,NULL),('1d9e8d5d-bef0-bee4-182a-5ff9e5894c1e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:1bef94cc-3852-4257-c11a-5ff9e58e6a60:Warning message when using the wrong browser] {SugarFeed.FOR} [Accounts:49200dfd-a7ca-3b0d-a2a7-5ff9e5af297a:P Piper & Sons]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','1bef94cc-3852-4257-c11a-5ff9e58e6a60',NULL,NULL),('1dd0c106-44b1-f78f-ad23-5ff9e5323781','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66:Reva Pendley]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','b6d9ac41-ce07-09e0-e1eb-5ff9e5f2df66',NULL,NULL),('1ea0cf0d-a853-98a2-0c7e-5ff9e4af5514','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:1e0c38d1-b445-999f-61a3-5ff9e4c9fe63:Tortoise Corp - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','1e0c38d1-b445-999f-61a3-5ff9e4c9fe63',NULL,NULL),('2001ba5a-033c-d878-2d23-5ff9e50249b6','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:1faaf5bb-c4e8-3ab2-0185-5ff9e5fad107:P Piper & Sons - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','1faaf5bb-c4e8-3ab2-0185-5ff9e5fad107',NULL,NULL),('21614cd2-169e-3b6f-038c-5ff9e4429a67','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:20c30464-bd37-ad79-0ed8-5ff9e4b5fdfe:Rubble Group Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','20c30464-bd37-ad79-0ed8-5ff9e4b5fdfe',NULL,NULL),('2525d674-4178-aa39-289d-5ff9e520a655','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c:System not responding] {SugarFeed.FOR} [Accounts:e0776e3c-2b65-e7ef-1cda-5ff9e5373856:Powder Suppliers]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','248d56d4-cdcb-61c7-4ac3-5ff9e53b4b9c',NULL,NULL),('293cfe8c-98ac-9e42-9a06-5ff9e5915712','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:2843a451-eef3-5138-1288-5ff9e59d11b0:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:1d9384ea-662b-dcdb-d90b-5ff9e50458f3:Gifted Holdings AG]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','2843a451-eef3-5138-1288-5ff9e59d11b0',NULL,NULL),('2963effe-d4db-c952-9c55-5ff9e5eaebeb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:27b2c1e7-b000-c138-8029-5ff9e54afdff:Having trouble adding new items] {SugarFeed.FOR} [Accounts:d1df6e3c-e7db-646b-c5c8-5ff9e592c8cd:T-Squared Techs]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','27b2c1e7-b000-c138-8029-5ff9e54afdff',NULL,NULL),('2b2a18d8-3b96-5eda-388d-5ff9e4e01606','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:295d1a61-7e5b-7995-568b-5ff9e483abb1:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:3b1771a5-c851-95b1-b53f-5ff9e4a844b0:5D Investments]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','295d1a61-7e5b-7995-568b-5ff9e483abb1',NULL,NULL),('2cb4e41b-9610-358d-d787-5ff9e5bb3f67','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:2c28e910-47d9-dcb1-0aa3-5ff9e501e30c:Rubble Group Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','2c28e910-47d9-dcb1-0aa3-5ff9e501e30c',NULL,NULL),('30a9fd03-8b4d-128f-b6ef-5ff9e59df06f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:49faa0f9-a041-c118-5131-5ff9e5b033de:Domingo Thornhill]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','49faa0f9-a041-c118-5131-5ff9e5b033de',NULL,NULL),('32347374-5781-92f0-4b56-5ff9e49ba14c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:303cac90-c072-87c5-7daf-5ff9e4f9023f:Having trouble adding new items] {SugarFeed.FOR} [Accounts:47209eba-76e0-8f0d-6f1d-5ff9e477e52b:RR. Talker Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','303cac90-c072-87c5-7daf-5ff9e4f9023f',NULL,NULL),('335c6baa-3576-acc5-a32a-5ff9e57d4145','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:317ac7aa-4c8a-0846-952b-5ff9e59299d1:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:76d15820-4e44-ea7a-eebc-5ff9e505aca5:Insight Marketing Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','317ac7aa-4c8a-0846-952b-5ff9e59299d1',NULL,NULL),('369b0b7a-8da9-6d42-e329-5ff9e413021e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:360a7616-d74f-7bb7-c07c-5ff9e4ab12cf:RR. Talker Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','360a7616-d74f-7bb7-c07c-5ff9e4ab12cf',NULL,NULL),('3906e14e-e7ba-8535-5ed5-5ff9e5905476','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:38784347-b71a-d670-7228-5ff9e50fac8f:Kaos Trading Ltd - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','38784347-b71a-d670-7228-5ff9e50fac8f',NULL,NULL),('3b6b8191-79b5-a367-1cb1-5ff9e5f55615','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:3ae6cc18-39d4-e062-8bab-5ff9e56c3c44:Airline Maintenance Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','3ae6cc18-39d4-e062-8bab-5ff9e56c3c44',NULL,NULL),('3fc8b4f7-b771-196b-3b7e-5ff9e4b21011','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:3e35019c-dae9-d8c5-fe38-5ff9e49e1d94:Having trouble adding new items] {SugarFeed.FOR} [Accounts:42a4f906-a97f-e814-95c4-5ff9e4f5f92a:Draft Diversified Energy Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','3e35019c-dae9-d8c5-fe38-5ff9e49e1d94',NULL,NULL),('41a8a762-aeda-2e33-b3b7-5ff9e56424ba','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:40010517-c975-b3af-47a0-5ff9e5b6b765:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:43a27b00-6987-92d0-6019-5ff9e551bc06:Kaos Trading Ltd]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','40010517-c975-b3af-47a0-5ff9e5b6b765',NULL,NULL),('42efa56d-5b2f-edc3-56fa-5ff9e40c5a46','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:281c36ff-88dc-7890-07ac-5ff9e4be2230:Need assistance with large customization] {SugarFeed.FOR} [Accounts:243c9004-e246-96f6-4e65-5ff9e47fd593:JBC Banking Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','281c36ff-88dc-7890-07ac-5ff9e4be2230',NULL,NULL),('46f8616c-94ff-0374-8f51-5ff9e5f0dac8','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ec51a991-ccf0-7665-d2c2-5ff9e579665d:Charlene Brass]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','ec51a991-ccf0-7665-d2c2-5ff9e579665d',NULL,NULL),('473e72cc-4f34-74c4-65a0-5ff9e54ab83a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:4579be35-7bd4-c886-f636-5ff9e5712458:System not responding] {SugarFeed.FOR} [Accounts:44cb0ae2-8b4a-e40b-bfea-5ff9e5a3c27f:Super Star Holdings Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','4579be35-7bd4-c886-f636-5ff9e5712458',NULL,NULL),('48be7e05-43bf-3ee3-231e-5ff9e53ba272','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:47567bf4-1478-bb25-adf4-5ff9e5ef0cec:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:86748ca4-8574-a46f-0187-5ff9e5608ccd:Cloud Cover Trust]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','47567bf4-1478-bb25-adf4-5ff9e5ef0cec',NULL,NULL),('49950627-36aa-e866-16d6-5ff9e4949077','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:49131211-96aa-0082-d131-5ff9e4f26176:Tri-State Medical Corp - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','49131211-96aa-0082-d131-5ff9e4f26176',NULL,NULL),('4aa8df6f-0a50-9a33-f56f-5ff9e5d8965a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:495dcd43-abd0-5ae1-2166-5ff9e519997b:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:9721d66f-e546-f89e-0cd8-5ff9e5a0a814:24/7 Couriers]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','495dcd43-abd0-5ae1-2166-5ff9e519997b',NULL,NULL),('4accf9bd-86b6-93fa-7157-5ff9e44ec120','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:4a110fe2-5415-1018-73e1-5ff9e4bd14c4:System not responding] {SugarFeed.FOR} [Accounts:66d88013-82df-90bf-fdd3-5ff9e48a94c9:S Cane Sweeteners Ltd]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','4a110fe2-5415-1018-73e1-5ff9e4bd14c4',NULL,NULL),('4ad5f9bb-ceda-6046-1207-5ff9e5434181','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1fd25ee0-8068-0346-29b2-5ff9e5bc67f9:Giuseppe Alverez]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','1fd25ee0-8068-0346-29b2-5ff9e5bc67f9',NULL,NULL),('4b5d9b4e-7f75-a7cb-433a-5ff9e55bf880','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:49889432-c317-735e-ec16-5ff9e5a16b6f:Having trouble adding new items] {SugarFeed.FOR} [Accounts:da921383-3870-9526-247e-5ff9e5748b4e:International Art Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','49889432-c317-735e-ec16-5ff9e5a16b6f',NULL,NULL),('4c636aa2-3df8-dbb5-623b-5ff9e564f5c1','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bade0bdb-1482-2e88-3e34-5ff9e5562a29:Henry Holguin]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','bade0bdb-1482-2e88-3e34-5ff9e5562a29',NULL,NULL),('4dec7a2d-c274-5ee3-f4d2-5ff9e482e1c9','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:4bdb698d-b7a0-6c91-669c-5ff9e4935250:Having trouble adding new items] {SugarFeed.FOR} [Accounts:95bfaf80-7d6e-8b84-03be-5ff9e415bbaf:Anytime Air Support Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','4bdb698d-b7a0-6c91-669c-5ff9e4935250',NULL,NULL),('4fccc1f1-81c1-51d3-1655-5ff9e5587a3c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e:Need assistance with large customization] {SugarFeed.FOR} [Accounts:d76fac61-12db-f067-1527-5ff9e55e0b3a:Riviera Hotels]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','4e077bcf-c9e1-baaa-0145-5ff9e5f61e6e',NULL,NULL),('5228f712-67b6-c43f-8ab6-5ff9e5a59a2c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:5196bebd-89a1-9243-03f2-5ff9e5a04614:Southern Realty - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','5196bebd-89a1-9243-03f2-5ff9e5a04614',NULL,NULL),('52362cf9-14ea-b8a7-095e-5ff9e5562287','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:508b7ed4-907f-42df-f2b9-5ff9e5457e17:Need assistance with large customization] {SugarFeed.FOR} [Accounts:9f43bb09-45cc-123c-bd41-5ff9e5d41008:JJ Resources Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','508b7ed4-907f-42df-f2b9-5ff9e5457e17',NULL,NULL),('55917e5a-beaf-51d5-a8f6-5ff9e52df8f4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:551412fa-4594-f747-4d83-5ff9e567de5f:Gifted Holdings AG - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','551412fa-4594-f747-4d83-5ff9e567de5f',NULL,NULL),('57451f4e-a832-f735-8fd0-5ff9e460e6f5','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:54e66068-9ed3-38fe-8529-5ff9e4d46b7d:Having trouble adding new items] {SugarFeed.FOR} [Accounts:8636dd93-aecd-acc3-7d25-5ff9e4661308:Green Tractor Group Limited]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','54e66068-9ed3-38fe-8529-5ff9e4d46b7d',NULL,NULL),('584e7c39-4ac7-91bd-e641-5ff9e5f20889','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:f3d1c25c-981f-2052-331a-5ff9e5a38926:Jewell Severt]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Contacts','f3d1c25c-981f-2052-331a-5ff9e5a38926',NULL,NULL),('5a63a180-d5a6-87af-a437-5ff9e4457402','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:5898592a-fe28-e143-469f-5ff9e4fd7b98:Need assistance with large customization] {SugarFeed.FOR} [Accounts:91c89470-f34b-f69c-7e6b-5ff9e4861146:Smallville Resources Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','5898592a-fe28-e143-469f-5ff9e4fd7b98',NULL,NULL),('5a6b64b3-df1c-918f-4207-5ff9e54b3fc1','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:59ae8a84-e196-ffb4-e169-5ff9e5787a0d:Dirt Mining Ltd - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','59ae8a84-e196-ffb4-e169-5ff9e5787a0d',NULL,NULL),('5ba317fb-ff1f-fbf0-2851-5ff9e5dd9eb8','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:5a03945c-44ce-7836-14b7-5ff9e5a4b524:Warning message when using the wrong browser] {SugarFeed.FOR} [Accounts:d4f9cd2a-ac5a-3666-f771-5ff9e58b606c:White Cross Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','5a03945c-44ce-7836-14b7-5ff9e5a4b524',NULL,NULL),('5dd22f85-88d1-adf4-df24-5ff9e5f70b4f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:202a0b4a-a2df-8cc4-a564-5ff9e57b369c:Frank Ogrady]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','202a0b4a-a2df-8cc4-a564-5ff9e57b369c',NULL,NULL),('5e307acb-1a29-7ebe-b037-5ff9e4032423','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:5d97f050-c3d8-582c-d39f-5ff9e44c3f03:Slender Broadband Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','5d97f050-c3d8-582c-d39f-5ff9e44c3f03',NULL,NULL),('609ee45e-8b59-ee0b-783b-5ff9e5fca06b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:15588da5-4378-5cb5-2550-5ff9e5fc3ee9:System not responding] {SugarFeed.FOR} [Accounts:6119a10e-22af-9291-defa-5ff9e5a5d04f:Ink Conglomerate Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','15588da5-4378-5cb5-2550-5ff9e5fc3ee9',NULL,NULL),('6458d670-d1ad-4c0a-baef-5ff9e54f766f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:13099e74-4d76-790c-d920-5ff9e5d8dfce:Sondra Wirtz]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','13099e74-4d76-790c-d920-5ff9e5d8dfce',NULL,NULL),('64a27ccc-ad0a-1d1b-ed50-5ff9e42fb354','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa:Having trouble adding new items] {SugarFeed.FOR} [Accounts:1840c12c-603e-6c28-6ab4-5ff9e4f4c963:TJ O\'Rourke Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','62b74b51-45a6-1920-bcb8-5ff9e4e5c1aa',NULL,NULL),('656bf875-f7de-bb01-7fa5-5ff9e4420192','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:64e289ed-9824-e5f6-b8c0-5ff9e40a1d0d:Draft Diversified Energy Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','64e289ed-9824-e5f6-b8c0-5ff9e40a1d0d',NULL,NULL),('6784a743-652b-c983-badc-5ff9e567903e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:dd01d891-146f-20e1-e32a-5ff9e5c54b91:Elvis Guillot]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Contacts','dd01d891-146f-20e1-e32a-5ff9e5c54b91',NULL,NULL),('6a9dd287-a442-2e24-5713-5ff9e5331398','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6a008065-bacd-6516-656b-5ff9e5677ad2:Powder Suppliers - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','6a008065-bacd-6516-656b-5ff9e5677ad2',NULL,NULL),('6af2d051-2df7-bccf-e66d-5ff9e5f109b7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6a6c4199-d01e-e16e-611d-5ff9e5d81fa0:T-Squared Techs - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','6a6c4199-d01e-e16e-611d-5ff9e5d81fa0',NULL,NULL),('6cbcf8cd-bb12-48cf-77a1-5ff9e502149c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b:Having trouble adding new items] {SugarFeed.FOR} [Accounts:5b0602ef-bf2b-55c0-0cb6-5ff9e5bfa56f:Avery Software Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','6afaa09c-6bcf-c96b-78b5-5ff9e54a1f9b',NULL,NULL),('6dcceff9-c4b5-9aad-d297-5ff9e51157e2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:139ea344-eb2c-ca62-99e9-5ff9e53540b4:Kathi Cutright]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','139ea344-eb2c-ca62-99e9-5ff9e53540b4',NULL,NULL),('6f64bbec-ff81-583c-e54b-5ff9e4d7f295','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6ed7c6d6-ac79-cafe-7e67-5ff9e4263579:S Cane Sweeteners Ltd - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','6ed7c6d6-ac79-cafe-7e67-5ff9e4263579',NULL,NULL),('6f68e170-dd7c-222f-a75f-5ff9e5fdaf44','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6ec66b9a-4080-40cd-a66c-5ff9e55d53c4:International Art Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','6ec66b9a-4080-40cd-a66c-5ff9e55d53c4',NULL,NULL),('71fd83fd-7a8c-3dcf-0031-5ff9e4d90d52','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:36151157-2add-fc45-be50-5ff9e4462e62:Having trouble adding new items] {SugarFeed.FOR} [Accounts:169da36d-2dac-b3b9-590a-5ff9e43e180d:Rhyme & Reason Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','36151157-2add-fc45-be50-5ff9e4462e62',NULL,NULL),('73aa42f3-62df-c4e2-15ef-5ff9e48b5223','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:72ee954c-9d43-a577-4121-5ff9e4dfd6df:Spend Thrift Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','72ee954c-9d43-a577-4121-5ff9e4dfd6df',NULL,NULL),('7470e485-c8fe-9514-63c5-5ff9e592bbc7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:7380adc9-d189-2d77-e9f1-5ff9e5ecefd0:Need assistance with large customization] {SugarFeed.FOR} [Accounts:7219ac3d-dcff-0ec9-5f16-5ff9e5d3e780:Southern Realty]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','7380adc9-d189-2d77-e9f1-5ff9e5ecefd0',NULL,NULL),('776e046b-a389-1680-d15f-5ff9e5d106b0','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:75b3fc65-8d37-2016-47f4-5ff9e5d0f91b:System not responding] {SugarFeed.FOR} [Accounts:d92a4361-2f3c-dee4-d36c-5ff9e5860cfb:Union Bank]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','75b3fc65-8d37-2016-47f4-5ff9e5d0f91b',NULL,NULL),('7a4b0b70-21f6-94d5-f9ee-5ff9e4bd5f8e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:78bd7388-2d82-fa69-3d9c-5ff9e4d5af29:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:be526ddc-bc43-eabe-6d25-5ff9e4852c8e:Tri-State Medical Corp]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','78bd7388-2d82-fa69-3d9c-5ff9e4d5af29',NULL,NULL),('7acf8e13-a36b-e2d3-968d-5ff9e5e04ac4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:7a246200-3de4-5c93-d8b3-5ff9e5b792b8:Cloud Cover Trust - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','7a246200-3de4-5c93-d8b3-5ff9e5b792b8',NULL,NULL),('7aec7cab-94a6-4213-91b0-5ff9e5f05b6c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:7a640393-459c-f450-8446-5ff9e50f3f4a:Trait Institute Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','7a640393-459c-f450-8446-5ff9e50f3f4a',NULL,NULL),('7bdbe3bb-c54a-639f-fd30-5ff9e509ce0d','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:5b7cd41f-2ff7-c33b-c925-5ff9e57778f3:Phoebe Butcher]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','5b7cd41f-2ff7-c33b-c925-5ff9e57778f3',NULL,NULL),('7cf75eda-22ce-50c5-113c-5ff9e5e6cfae','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:7c6e157c-0a87-3b0d-328e-5ff9e5ba53d7:Insight Marketing Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','7c6e157c-0a87-3b0d-328e-5ff9e5ba53d7',NULL,NULL),('802317b6-3773-66b1-c8c1-5ff9e4b8212d','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:7fa260a7-5492-98ca-690a-5ff9e4fb8804:Anytime Air Support Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','7fa260a7-5492-98ca-690a-5ff9e4fb8804',NULL,NULL),('805985eb-262b-0f40-2f93-5ff9e42f6b8a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:7ffe22e9-f885-8e5b-2429-5ff9e4bb8931:RR. Talker Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','7ffe22e9-f885-8e5b-2429-5ff9e4bb8931',NULL,NULL),('81a2aab6-8017-86a8-d4c2-5ff9e54b4195','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:811df0cc-bc07-4518-a821-5ff9e59adc20:Start Over Trust - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','811df0cc-bc07-4518-a821-5ff9e59adc20',NULL,NULL),('8205f0be-747b-8aa4-d569-5ff9e4b5a1ac','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:80522de6-75a4-36eb-8bfc-5ff9e4146e6a:System not responding] {SugarFeed.FOR} [Accounts:bc78c90d-047f-84aa-f226-5ff9e4361490:Rubble Group Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','80522de6-75a4-36eb-8bfc-5ff9e4146e6a',NULL,NULL),('821e755b-c9f5-7a11-c308-5ff9e5917baf','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:80937667-2e36-9158-2b5e-5ff9e5770849:System not responding] {SugarFeed.FOR} [Accounts:2b8a0db2-f6d9-360b-db0e-5ff9e50cecb9:Rubble Group Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Cases','80937667-2e36-9158-2b5e-5ff9e5770849',NULL,NULL),('85cf74e0-92c9-1eed-a540-5ff9e5199c09','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:8460ce2f-3170-00ec-25a4-5ff9e5eefc92:Need assistance with large customization] {SugarFeed.FOR} [Accounts:7b84c7a4-209b-9bf1-e11b-5ff9e52003bf:Southern Realty]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','8460ce2f-3170-00ec-25a4-5ff9e5eefc92',NULL,NULL),('86cdf096-d0f6-66be-a4c6-5ff9e451ab9b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:864c3a4e-9956-3f48-e25e-5ff9e45f0694:Smallville Resources Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','864c3a4e-9956-3f48-e25e-5ff9e45f0694',NULL,NULL),('897a0ba9-9ef3-6cf0-6593-5ff9e422a7ff','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:88f318e8-7647-6e1c-7540-5ff9e48bab08:5D Investments - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','88f318e8-7647-6e1c-7540-5ff9e48bab08',NULL,NULL),('897d14c5-23ec-1b47-c7e4-5ff9e4d81232','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:87cd3d70-8901-527d-0ca9-5ff9e47d9613:System not responding] {SugarFeed.FOR} [Accounts:9069cc03-e955-384b-fb50-5ff9e4f28398:Powell Funding]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','87cd3d70-8901-527d-0ca9-5ff9e47d9613',NULL,NULL),('8a1b3e6a-9eb1-0089-7a3e-5ff9e5fc26c1','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6a088da8-3ef3-ae32-0436-5ff9e5741b98:Sherwood Cribb]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','6a088da8-3ef3-ae32-0436-5ff9e5741b98',NULL,NULL),('8acb146b-ce6b-1b00-b731-5ff9e5126060','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6d3aea3f-bced-0ef6-392b-5ff9e5b62b96:Marcus Derringer]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','6d3aea3f-bced-0ef6-392b-5ff9e5b62b96',NULL,NULL),('8bfa74f2-719b-3f7d-db8f-5ff9e52780f2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:8b780bbc-c1fd-5f25-06b2-5ff9e53975f5:Union Bank - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','8b780bbc-c1fd-5f25-06b2-5ff9e53975f5',NULL,NULL),('8d2b8613-7643-1b92-7452-5ff9e5ba9a10','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:8b9d17d5-881e-1fb6-17e1-5ff9e58bf013:Having trouble adding new items] {SugarFeed.FOR} [Accounts:e37c09b4-4849-7a46-7d80-5ff9e5b88722:First National S/B]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','8b9d17d5-881e-1fb6-17e1-5ff9e58bf013',NULL,NULL),('915877ac-ede9-8f83-c756-5ff9e47a29c7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:912e7348-ec6e-f9b5-05f6-5ff9e4696c22:White Cross Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','912e7348-ec6e-f9b5-05f6-5ff9e4696c22',NULL,NULL),('91753b7b-5435-a2b9-2233-5ff9e520e0f7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6e523b23-29fe-8db1-e59b-5ff9e5401d2e:Levi Gore]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','6e523b23-29fe-8db1-e59b-5ff9e5401d2e',NULL,NULL),('91ce2e81-b013-2687-3f47-5ff9e44d21a1','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:9140a01b-0cd7-b748-f5fb-5ff9e4426024:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:6989fefe-cd69-611b-03d8-5ff9e4e3a083:Spend Thrift Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','9140a01b-0cd7-b748-f5fb-5ff9e4426024',NULL,NULL),('922ceefe-c446-e02a-50b6-5ff9e481ad87','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:907af971-dd55-df4e-acc1-5ff9e4e6fdac:System not responding] {SugarFeed.FOR} [Accounts:d2db21ad-70f0-eebb-f299-5ff9e4bb3cb0:NW Bridge Construction]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','907af971-dd55-df4e-acc1-5ff9e4e6fdac',NULL,NULL),('96f4b8c6-4ace-b15e-ce59-5ff9e4f8b84c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:9565e394-6787-6c51-793e-5ff9e47d6a7a:Need assistance with large customization] {SugarFeed.FOR} [Accounts:eaaefee1-ec7c-ff95-62f6-5ff9e4caf278:Slender Broadband Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','9565e394-6787-6c51-793e-5ff9e47d6a7a',NULL,NULL),('9cd3f383-1bd5-4c02-4604-5ff9e56f70cd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:9c1ce69a-f2fa-28e8-a524-5ff9e5cf22b1:Super Star Holdings Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','9c1ce69a-f2fa-28e8-a524-5ff9e5cf22b1',NULL,NULL),('9e9c1642-9066-b6f5-6d72-5ff9e42dda7f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:9d19952c-f85a-ef0b-0701-5ff9e41cd69d:Need assistance with large customization] {SugarFeed.FOR} [Accounts:a18dac90-9853-e440-c497-5ff9e42723b0:Nimble Technologies Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','9d19952c-f85a-ef0b-0701-5ff9e41cd69d',NULL,NULL),('9f180df4-3dfc-4ef5-755f-5ff9e53d140f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e0ba2917-7017-6a73-1a45-5ff9e5f929a3:Ivy Yearby]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','e0ba2917-7017-6a73-1a45-5ff9e5f929a3',NULL,NULL),('a3c58aca-e0aa-978f-718f-5ff9e5ef2d32','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a319e717-e6da-82fc-c934-5ff9e5fbd1b9:Nimble Technologies Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','a319e717-e6da-82fc-c934-5ff9e5fbd1b9',NULL,NULL),('a8112011-5f01-0bdf-dc9a-5ff9e57c88bd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6d33aad4-8175-e485-d04c-5ff9e57cbf86:Demetrius Farner]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','6d33aad4-8175-e485-d04c-5ff9e57cbf86',NULL,NULL),('a8499029-47b2-416f-1b77-5ff9e58554af','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:61e3666b-66b4-7e09-1df1-5ff9e5659eed:Jackie Staples]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','61e3666b-66b4-7e09-1df1-5ff9e5659eed',NULL,NULL),('a9ce0e49-ac6c-1c2a-e6b5-5ff9e5519f9a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1:Willard Bartolome]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1',NULL,NULL),('ac0adb25-f28d-60f6-79ab-5ff9e52a75e4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ab4e3a5a-9deb-c80b-a71c-5ff9e54469fb:Ink Conglomerate Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','ab4e3a5a-9deb-c80b-a71c-5ff9e54469fb',NULL,NULL),('b12daa7f-8f15-edbe-7e5d-5ff9e523fe4e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:af8f5e96-7035-21a2-6c8b-5ff9e567f8b9:Having trouble adding new items] {SugarFeed.FOR} [Accounts:daf33abf-a900-a8b3-7f14-5ff9e50575a6:Jungle Systems Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','af8f5e96-7035-21a2-6c8b-5ff9e567f8b9',NULL,NULL),('b14c42c0-04d8-9f4f-1dc4-5ff9e5277c28','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:b09cf311-e133-3629-ebcc-5ff9e524ec51:A.G. Parr PLC - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','b09cf311-e133-3629-ebcc-5ff9e524ec51',NULL,NULL),('b2cd178f-3c39-c988-927a-5ff9e5ec8b78','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:89c7e668-991e-4dd5-7619-5ff9e5541756:Denny Amaro]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Contacts','89c7e668-991e-4dd5-7619-5ff9e5541756',NULL,NULL),('b66e7e88-ffba-a829-d12d-5ff9e549d3d2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:77145904-99e8-9624-c82d-5ff9e50ac392:Karina Schroder]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Contacts','77145904-99e8-9624-c82d-5ff9e50ac392',NULL,NULL),('be81d75c-257f-bfe9-8502-5ff9e4322b99','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:bd1e1e81-7707-beb4-0412-5ff9e4ef309a:System not responding] {SugarFeed.FOR} [Accounts:23efd7e1-fccf-2005-72f1-5ff9e4d3bd9b:RR. Talker Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','bd1e1e81-7707-beb4-0412-5ff9e4ef309a',NULL,NULL),('c2dd2a59-2ab3-4dce-1797-5ff9e519ef5e','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:c2505b43-369b-a85d-43c1-5ff9e5a8c8f3:EEE Endowments LTD - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','c2505b43-369b-a85d-43c1-5ff9e5a8c8f3',NULL,NULL),('c4ed0a27-47c3-84df-7e4a-5ff9e5e61af2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:c4611ef6-3b13-820c-97ec-5ff9e548a2fe:J.K.M. Corp (HA) - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','c4611ef6-3b13-820c-97ec-5ff9e548a2fe',NULL,NULL),('c5197be6-1f95-83f3-3611-5ff9e4530c60','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:c48db5e2-f5af-df9a-bd20-5ff9e4678024:JBC Banking Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','c48db5e2-f5af-df9a-bd20-5ff9e4678024',NULL,NULL),('c55a8245-87d6-4a1f-3b5c-5ff9e55d1c0f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:a4a4b79f-2e72-44fe-4e16-5ff9e5162442:Terry Petree]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','a4a4b79f-2e72-44fe-4e16-5ff9e5162442',NULL,NULL),('c9953499-32ea-48cc-1840-5ff9e5c20df9','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:c83dfd9d-639b-5257-84a3-5ff9e5f3696c:Need assistance with large customization] {SugarFeed.FOR} [Accounts:6da60bc5-9fad-6583-e5b1-5ff9e55e9b42:Dirt Mining Ltd]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','c83dfd9d-639b-5257-84a3-5ff9e5f3696c',NULL,NULL),('c9e472fa-56ab-9b86-02f0-5ff9e4b31cdb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:c9b86e7c-74f1-08f4-a4a2-5ff9e44028e7:NW Bridge Construction - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','c9b86e7c-74f1-08f4-a4a2-5ff9e44028e7',NULL,NULL),('ccd82f01-db78-d7e6-bda0-5ff9e44b7d95','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:cc518da3-f588-0393-d558-5ff9e43dcf37:TJ O\'Rourke Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','cc518da3-f588-0393-d558-5ff9e43dcf37',NULL,NULL),('cee3e988-5e5b-b3c2-013f-5ff9e5bb9431','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ce607cbd-9c2d-34f0-352d-5ff9e5af5a9d:JJ Resources Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','ce607cbd-9c2d-34f0-352d-5ff9e5af5a9d',NULL,NULL),('d120d972-b1d7-3690-705d-5ff9e56f29f3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d0cd48b3-f7db-439b-3d59-5ff9e55efd08:Southern Realty - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','d0cd48b3-f7db-439b-3d59-5ff9e55efd08',NULL,NULL),('d2fe91c1-2688-f292-f6ec-5ff9e5cb5f36','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d278656f-d901-09f7-b83d-5ff9e5c0edff:24/7 Couriers - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','d278656f-d901-09f7-b83d-5ff9e5c0edff',NULL,NULL),('d45096ce-acc3-fb37-a477-5ff9e59a59a4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:d29c6fbf-3fff-96ac-7994-5ff9e5712fbb:Warning message when using the wrong browser] {SugarFeed.FOR} [Accounts:62956c44-79cd-b16e-b306-5ff9e5fa24a9:DD Furniture Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','d29c6fbf-3fff-96ac-7994-5ff9e5712fbb',NULL,NULL),('d6460725-d759-3167-a00e-5ff9e56beebd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:bd000392-a0f1-3a55-10bb-5ff9e53062c0:Warning message when using the wrong browser] {SugarFeed.FOR} [Accounts:e6da908e-865e-3abf-b4ec-5ff9e50b6db2:J.K.M. Corp (HA)]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','bd000392-a0f1-3a55-10bb-5ff9e53062c0',NULL,NULL),('d6b8ae72-cda9-0f04-d01e-5ff9e58a7a44','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b:Becky Trexler]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Contacts','b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b',NULL,NULL),('d7278e4b-f381-daae-68ad-5ff9e4ed95eb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d69f65e3-bc09-01d5-0ad2-5ff9e407c03f:Kringle Bell IncK.A. Tower & Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','d69f65e3-bc09-01d5-0ad2-5ff9e407c03f',NULL,NULL),('da15f521-6a61-e735-ab12-5ff9e53f7beb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bc2c5743-8675-1169-2652-5ff9e599af68:Del Tune]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','bc2c5743-8675-1169-2652-5ff9e599af68',NULL,NULL),('dcdb3365-9198-f6b3-7db0-5ff9e5f5f1e3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:dcba4b9b-4782-d1bf-05c7-5ff9e5fdf9cc:First National S/B - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $75,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Opportunities','dcba4b9b-4782-d1bf-05c7-5ff9e5fdf9cc',NULL,NULL),('df700c8e-41c4-8256-1928-5ff9e4d4c1d7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d7230614-70ca-1108-5e70-5ff9e466c9e6:Rhyme & Reason Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','d7230614-70ca-1108-5e70-5ff9e466c9e6',NULL,NULL),('e472c65f-4010-24cf-af7f-5ff9e576d8b7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:e3e66489-cca9-c33c-ad99-5ff9e588bf50:DD Furniture Inc - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $25,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','e3e66489-cca9-c33c-ad99-5ff9e588bf50',NULL,NULL),('e6306eca-d394-b033-84d2-5ff9e5afb141','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:99d14881-6332-db47-1114-5ff9e5866741:Marquita Lambdin]','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Contacts','99d14881-6332-db47-1114-5ff9e5866741',NULL,NULL),('e8d4cab4-9170-cbae-c132-5ff9e5e854ef','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:e8507677-4065-97aa-885e-5ff9e56e03c2:Riviera Hotels - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Opportunities','e8507677-4065-97aa-885e-5ff9e56e03c2',NULL,NULL),('e96d7d53-68c1-9486-130d-5ff9e482bad3','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:e9097530-dbaa-f1d8-cb70-5ff9e4cb8a41:Green Tractor Group Limited - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Opportunities','e9097530-dbaa-f1d8-cb70-5ff9e4cb8a41',NULL,NULL),('ec235a2d-403d-7f53-2b88-5ff9e591b37f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:bccd19ef-decf-3fe1-d523-5ff9e587e6a0:Having trouble adding new items] {SugarFeed.FOR} [Accounts:20068ea3-5a29-47c7-1dd6-5ff9e50c9c59:Trait Institute Inc]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Cases','bccd19ef-decf-3fe1-d523-5ff9e587e6a0',NULL,NULL),('ec248426-78f0-89cb-18f9-5ff9e4fc3655','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:ea49298e-f772-350a-b81e-5ff9e4f0f9e3:Need assistance with large customization] {SugarFeed.FOR} [Accounts:64613793-c9b7-a7c0-97c2-5ff9e4975faf:White Cross Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','ea49298e-f772-350a-b81e-5ff9e4f0f9e3',NULL,NULL),('eec613ba-6ac2-9a96-f3c5-5ff9e41bd6ba','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e:Need to purchase additional licenses] {SugarFeed.FOR} [Accounts:8e5a946b-d5ba-50bf-fb55-5ff9e4c2f6a6:Kringle Bell IncK.A. Tower & Co]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Cases','ed0ec54e-150b-ee4e-3ae1-5ff9e498f21e',NULL,NULL),('f09b14d8-4b61-5a73-1db2-5ff9e565f006','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82:System not responding] {SugarFeed.FOR} [Accounts:364aa9f0-760f-474e-d4bb-5ff9e53b6fd5:EEE Endowments LTD]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Cases','ef1286fe-6568-ef3f-a4dd-5ff9e5a66a82',NULL,NULL),('f0d73b5f-b906-27ac-a355-5ff9e5fbf214','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:ef5d400e-05a5-bfde-f86b-5ff9e589fc7d:Warning message when using the wrong browser] {SugarFeed.FOR} [Accounts:17c08950-1669-c8b1-54c4-5ff9e59a14a8:A.G. Parr PLC]: ','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Cases','ef5d400e-05a5-bfde-f86b-5ff9e589fc7d',NULL,NULL),('f37f4228-6ad3-5771-fa28-5ff9e570f267','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:f2e4a50d-01bd-534e-2fa0-5ff9e5ec34d1:White Cross Co - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $10,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Opportunities','f2e4a50d-01bd-534e-2fa0-5ff9e5ec34d1',NULL,NULL),('f4170eff-8d10-ee36-1772-5ff9e4b2b281','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:f3499a2f-40f4-11f7-464d-5ff9e40b4640:Powell Funding - 1000 units] {SugarFeed.WITH} [Accounts::] {SugarFeed.FOR_AMOUNT} $50,000.00','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Opportunities','f3499a2f-40f4-11f7-464d-5ff9e40b4640',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('1a3680bf-cf97-bc64-36b5-5ff9e59b61e9','Send proposal','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','In Progress',0,'2021-01-13 07:30:00',0,NULL,NULL,NULL,'f0f23ca0-57c9-160a-f717-5ff9e5cd3def','Low'),('1be30aa4-6f24-c367-f25c-5ff9e59f9397','Send literature','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Deferred',0,'2021-10-16 15:45:00',0,NULL,'Accounts','e6da908e-865e-3abf-b4ec-5ff9e50b6db2','202a0b4a-a2df-8cc4-a564-5ff9e57b369c','Medium'),('1d6d75d9-0768-4070-8719-5ff9e5abf05e','Ship product','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Pending Input',0,'2021-05-25 06:15:00',0,NULL,NULL,NULL,'5b7cd41f-2ff7-c33b-c925-5ff9e57778f3','High'),('1da4a153-a3fa-c5cb-a7d5-5ff9e589a925','Send local user group information','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','In Progress',0,'2021-01-30 12:00:00',0,NULL,NULL,NULL,'13099e74-4d76-790c-d920-5ff9e5d8dfce','Medium'),('254238f7-9171-8015-0941-5ff9e574ffd9','Send contract','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Completed',0,'2021-04-29 14:15:00',0,NULL,NULL,NULL,'6a088da8-3ef3-ae32-0436-5ff9e5741b98','Medium'),('26f17174-392b-9b16-e89a-5ff9e5222128','Send quote','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Not Started',0,'2021-08-18 09:15:00',0,NULL,NULL,NULL,'139ea344-eb2c-ca62-99e9-5ff9e53540b4','High'),('36a30ce6-a2b2-3934-c07e-5ff9e57f167f','Arrange reference call','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','In Progress',0,'2021-11-27 11:30:00',0,NULL,NULL,NULL,'6d3aea3f-bced-0ef6-392b-5ff9e5b62b96','High'),('38f3633e-f9b6-ab29-ac03-5ff9e59e7068','Call to schedule meeting','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Deferred',0,'2021-04-11 19:00:00',0,NULL,NULL,NULL,'61e3666b-66b4-7e09-1df1-5ff9e5659eed','High'),('3b058da1-93f0-50b8-be87-5ff9e54b566d','Send local user group information','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Not Started',0,'2021-11-13 13:15:00',0,NULL,NULL,NULL,'89c7e668-991e-4dd5-7619-5ff9e5541756','High'),('4271d1e6-dab2-0780-7979-5ff9e5b8b0c0','Schedule training','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Not Started',0,'2021-09-27 19:00:00',0,NULL,NULL,NULL,'1fd25ee0-8068-0346-29b2-5ff9e5bc67f9','Medium'),('4ee9eeb1-03bd-a4e3-7c98-5ff9e562e229','Ship product','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','In Progress',0,'2021-07-17 17:30:00',0,NULL,NULL,NULL,'b152c3a3-2cad-6dbd-b5e1-5ff9e52ab34b','Medium'),('51ad34cd-ddda-7c39-eac0-5ff9e59cb92a','Schedule training','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Pending Input',0,'2021-05-01 11:00:00',0,NULL,NULL,NULL,'99d14881-6332-db47-1114-5ff9e5866741','Medium'),('5f700281-20b0-ab39-d023-5ff9e5d38855','Get demo feedback','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Completed',0,'2021-05-19 08:45:00',0,NULL,NULL,NULL,'77145904-99e8-9624-c82d-5ff9e50ac392','Low'),('614725a5-940b-5a97-d25e-5ff9e572a697','Arrange introduction','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Deferred',0,'2021-12-26 17:30:00',0,NULL,'Accounts','e0776e3c-2b65-e7ef-1cda-5ff9e5373856','e0ba2917-7017-6a73-1a45-5ff9e5f929a3','Medium'),('785abe7e-2d3c-6742-6c21-5ff9e5fd78df','Send contract','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Not Started',0,'2021-09-01 17:00:00',0,NULL,NULL,NULL,'bc2c5743-8675-1169-2652-5ff9e599af68','Medium'),('7d181345-bdaa-cf9c-86d8-5ff9e5e16f6b','Arrange reference call','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Pending Input',0,'2021-06-15 07:30:00',0,NULL,NULL,NULL,'e6dbbb5a-ce99-1c88-68b4-5ff9e530231b','High'),('84f9f54f-720e-9636-a46f-5ff9e52631aa','Arrange reference call','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Completed',0,'2021-10-02 08:30:00',0,NULL,NULL,NULL,'94b66b7e-0aee-25f5-9db1-5ff9e5ed2bf1','Medium'),('871af4d1-8802-1d09-fb04-5ff9e524db5e','Close out support request','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Not Started',0,'2022-01-03 16:15:00',0,NULL,NULL,NULL,'cf5d23f4-bc37-2202-2c49-5ff9e503bfb2','Medium'),('99850441-a4b8-330a-f40a-5ff9e5903f5e','Send quote','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Pending Input',0,'2021-10-14 07:30:00',0,NULL,NULL,NULL,'a4a4b79f-2e72-44fe-4e16-5ff9e5162442','Low'),('a31e0d93-bde8-3d20-e5ff-5ff9e56f74e9','Arrange introduction','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Deferred',0,'2021-02-09 11:00:00',0,NULL,NULL,NULL,'49faa0f9-a041-c118-5131-5ff9e5b033de','Low'),('c3b30e55-6c1c-8941-8d18-5ff9e5f98438','Setup evaluation','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','In Progress',0,'2021-09-09 09:00:00',0,NULL,NULL,NULL,'ec51a991-ccf0-7665-d2c2-5ff9e579665d','High'),('ce951aac-8a88-c60b-b535-5ff9e5fd873b','Send local user group information','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sally_id','Pending Input',0,'2021-06-09 19:45:00',0,NULL,NULL,NULL,'bade0bdb-1482-2e88-3e34-5ff9e5562a29','Low'),('cf616544-77d0-ac60-c4a9-5ff9e5d57383','Send a letter','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_will_id','Pending Input',0,'2021-01-20 19:30:00',0,NULL,NULL,NULL,'6e523b23-29fe-8db1-e59b-5ff9e5401d2e','High'),('d76872a3-8851-9bbd-d305-5ff9e5666baa','Add to mailing list','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_sarah_id','Completed',0,'2021-08-14 09:30:00',0,NULL,NULL,NULL,'dd01d891-146f-20e1-e32a-5ff9e5c54b91','Medium'),('debaa84a-3f87-7758-4f15-5ff9e5a571c4','Send quote','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_max_id','Pending Input',0,'2021-01-20 06:30:00',0,NULL,NULL,NULL,'6d33aad4-8175-e485-d04c-5ff9e57cbf86','Low'),('e346a98e-1b72-f254-1b4b-5ff9e5d79c9c','Send local user group information','2021-01-09 17:06:33','2021-01-09 17:06:33','1','1',NULL,0,'seed_chris_id','Completed',0,'2021-10-02 17:45:00',0,NULL,NULL,NULL,'f3d1c25c-981f-2052-331a-5ff9e5a38926','Medium');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('2eac35fe-378e-6101-63cf-5ffc43c527e1','Home',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImM4YzgzODc2LTIxOTUtYmQ0YS00N2Y2LTVmZmM0Mzc5NjdkZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImM4ZTNhYmE4LWQwZTEtYzMxYi00YWMzLTVmZmM0M2Y3ZTk2MCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImM4ZjliZjFmLWVkMjItMGNmYS1lOTE5LTVmZmM0M2YxZGFlMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImM5MGNhNjI4LTQyNTQtYmMwYy1hZGYwLTVmZmM0MzJlZjQ5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzkyYjQ3MjQtMGFjMi1jMWYzLTczMjEtNWZmYzQzNWQ4M2FiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzkzYzJiODktMmZiZC1jMDI5LTlmNTEtNWZmYzQzNmVlMDAxIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJjOGUzYWJhOC1kMGUxLWMzMWItNGFjMy01ZmZjNDNmN2U5NjAiO2k6MTtzOjM2OiJjOGY5YmYxZi1lZDIyLTBjZmEtZTkxOS01ZmZjNDNmMWRhZTAiO2k6MjtzOjM2OiJjOTBjYTYyOC00MjU0LWJjMGMtYWRmMC01ZmZjNDMyZWY0OTciO2k6MztzOjM2OiJjOTJiNDcyNC0wYWMyLWMxZjMtNzMyMS01ZmZjNDM1ZDgzYWIiO2k6NDtzOjM2OiJjOTNjMmI4OS0yZmJkLWMwMjktOWY1MS01ZmZjNDM2ZWUwMDEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImM4YzgzODc2LTIxOTUtYmQ0YS00N2Y2LTVmZmM0Mzc5NjdkZSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('313c0b9a-59b1-7234-b26d-5ff9e4f341ce','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sarah_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiMmI3N2Y4NWEtMWY5MC0zMGYyLTQ3MTItNWZmOWUwYzg0ZjM4IjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('3cf9889e-81e5-5438-82de-5ff9e4b7a31f','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_will_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiY2Y1ZDBhMGYtMmUyMC02MjRkLThiMTYtNWZmOWUwYWYxNmU5IjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('4cca05fd-82b7-cf10-7bf1-5ff9e477366c','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_max_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('5d1c5fb2-d09b-9c78-b2c3-5ffc4329afc2','Home2_CALL',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6a11a8c5-47f7-6354-6ba4-5ff9e4339503','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sarah_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('6c4cb991-f8c1-2a7c-498d-5ffc438cc392','Home2_MEETING',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6f0a809f-43aa-f2e0-64dd-5ff9e4d8e8e6','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_will_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('7be3885a-1f90-30f2-4712-5ff9e4c84f38','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sally_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiMmI0NGE1ZmQtODJiNy1jZjEwLTdiZjEtNWZmOWUwNzczNjZjIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('7cf14cf9-ad81-54a6-5536-5ffc43183e14','Home2_OPPORTUNITY',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('84344d85-cd23-3c54-3d2d-5ff9e463fad5','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_chris_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiYzYxMzZjYWMtNzJkZC03ODRjLTU1NDEtNWZmOWUwYjkxOTBmIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('8c0f431c-5af9-08cb-9345-5ffc43c15993','Home2_ACCOUNT',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9a22fb14-c650-6ee9-8445-5ffc430ecfcd','Home2_LEAD',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9b11f1f1-344c-6141-2d72-5ff9e4bcba0b','global',0,'2021-01-09 17:06:33','2021-01-11 11:14:41','1','YToyMzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjY3YTlkMWM3LTgzMjUtNDQ2My1lNGU3LTVmZjlkZjhkNGQ4OCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO30='),('a05ffd74-be6f-1518-bfce-5ff9e46eb95e','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_chris_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('a9f3e1b3-0742-0964-f9ba-5ffc43762fdb','Home2_LEAD_c93c2b89-2fbd-c029-9f51-5ffc436ee001',0,'2021-01-11 12:25:59','2021-01-11 12:25:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aacdcd86-b9ba-375b-d77e-5ffc43cc8ada','Home2_SUGARFEED',0,'2021-01-11 12:25:54','2021-01-11 12:25:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b1851f9e-f74d-7826-7a15-5ff9e402a790','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sally_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('b7d8eba8-5972-6fff-3b26-5ff9e494e567','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('b8120a1b-c073-e132-8107-5ff9e4e9a5b9','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_jim_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiOTlkMjRiNDQtY2FiMi0xN2YxLTdlNGYtNWZmOWUwNGU4Y2YxIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('bf4e7a4b-5c52-146f-394c-5ff9e41265ec','global',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_max_id','YToyMzp7czo4OiJtYXhfdGFicyI7czoxOiI3IjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiODRjZmQ2NTAtOWEwNi1iYzljLWFiM2ItNWZmOWUwMzQ1YWI5IjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvQ29sb21ibyI7czoyOiJ1dCI7czoxOiIxIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MToiMSI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjE7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDt9'),('d690b44f-7e58-0b9f-62d1-5ff9e45a292b','GoogleSync',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_jim_id','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$2y$10$m1yYs7rY5lCf3w.8MkqXsu.Zpy8AgWYdX/P0F.0nHAXQIe5NSx0/q',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,NULL,0,NULL,NULL),('seed_chris_id','chris','$2y$10$VWaz7yGxT.w7hMCCqOHzSuuWHDMW3oUQUh4BZqHYVaF8AhS6oLLFW',0,NULL,NULL,1,'Chris','Olliver',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Senior Account Rep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'seed_will_id',0,NULL,NULL),('seed_jim_id','jim','$2y$10$xbMejiqCZYJcWfi52OKg8.bB9H0FioWGYE5HFV/HRPMbYq7LCUISi',0,NULL,NULL,1,'Jim','Brennan',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','VP Sales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,NULL,0,NULL,NULL),('seed_max_id','max','$2y$10$zKDwOEd7VQUdp2.msFHpGelkg8fUxqTJ2c.rt1SVEvTybv6ZlBuRS',0,NULL,NULL,1,'Max','Jensen',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Account Rep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'seed_sarah_id',0,NULL,NULL),('seed_sally_id','sally','$2y$10$2yAdWnjo8MvnlGDxyDJSEeVQ4O80C4Ux73If4MFAW4uXBSu8WbfB.',0,NULL,NULL,1,'Sally','Bronsen',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Senior Account Rep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'seed_sarah_id',0,NULL,NULL),('seed_sarah_id','sarah','$2y$10$O.bO7nW0EOXxtbflUv.NkeM9qH.ZtUV0L5qpgAuy/r4ykrgennO5.',0,NULL,NULL,1,'Sarah','Smith',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Sales Manager West',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'seed_jim_id',0,NULL,NULL),('seed_will_id','will','$2y$10$bDkOwQbINZx6WpCNP1qt3uK91BT4eVI6ghMJ79OueIUocMTAiCoGq',0,NULL,NULL,1,'Will','Westin',0,0,1,NULL,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','1','Sales Manager East',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'seed_jim_id',0,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('71271fe6-5cdd-d1d0-b446-5ff9e4c35f02',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sally_id','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= :VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nFREEBUSY:20210112T154500Z/20210112T161500Z\nX-FREEBUSY-ID:36efa2a5-36ca-0533-d596-5ff9e4216e21\nX-FREEBUSY-TYPE:Call\nFREEBUSY:20210214T163000Z/20210214T170000Z\nX-FREEBUSY-ID:29c3fd63-f841-f842-d0f0-5ff9e521682c\nX-FREEBUSY-TYPE:Call\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('7894dd33-e6c5-4e29-8490-5ff9e4b9be5e',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_chris_id','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= :VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('970e894a-771c-3b0f-4aa3-5ff9e46a1e8e',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','1','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=Administrator:VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('a7e00f7f-0ee7-cf1e-a72e-5ff9e42b3456',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_will_id','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= :VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('d57cccdf-8737-d206-f49e-5ff9e401926d',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_sarah_id','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= :VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nFREEBUSY:20210122T151500Z/20210122T154500Z\nX-FREEBUSY-ID:3723f065-ad96-cd43-c4af-5ff9e5880a9b\nX-FREEBUSY-TYPE:Call\nFREEBUSY:20210216T114500Z/20210216T121500Z\nX-FREEBUSY-ID:c89ba27e-4e68-df7c-22ae-5ff9e45db418\nX-FREEBUSY-TYPE:Call\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n'),('d627122f-e6af-2c71-1425-5ff9e4ba8a37',0,'2021-01-09 17:06:33','2021-01-09 17:06:33','seed_max_id','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN= :VFREEBUSY\nDTSTART:2021-01-07 18:30:00\nDTEND:2021-03-07 18:30:00\nFREEBUSY:20210206T121500Z/20210206T124500Z\nX-FREEBUSY-ID:2d048389-7983-36f3-8367-5ff9e491a0b2\nX-FREEBUSY-TYPE:Call\nDTSTAMP:2021-01-09 17:06:33\nEND:VFREEBUSY\nEND:VCALENDAR\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-12 13:37:48
