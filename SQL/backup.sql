/*
SQLyog Community v9.63 
MySQL - 5.1.54-community : Database - mis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mis`;

/*Table structure for table `bank_master` */

DROP TABLE IF EXISTS `bank_master`;

CREATE TABLE `bank_master` (
  `bankID` int(10) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`bankID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `bank_master` */

insert  into `bank_master`(`bankID`,`bankName`) values (1,'Allahabad Bank'),(2,'Allahabad UP Gramin Bank'),(3,'Andhra Bank'),(4,'Andhra Pradesh Grameena Vikas Bank'),(5,'Andhra Pragathi Grameena Bank'),(6,'Arunachal Pradesh Rural Bank'),(7,'Aryavart Gramin Bank'),(8,'Assam Gramin Vikash Bank'),(9,'Axis Bank'),(10,'Baitarani Gramya Bank'),(11,'Ballia –Etawah Gramin Bank'),(12,'Bangiya Gramin Vikash Bank'),(13,'Bank of Baroda'),(14,'Bank of India'),(15,'Bank of Maharashtra'),(16,'Baroda Gujarat Gramin Bank'),(17,'Baroda Rajasthan Gramin Bank'),(18,'Baroda Uttar Pradesh Gramin Bank'),(19,'Bhartiya Mahila Bank'),(20,'Bihar Kshetriya Gramin Bank'),(21,'Canara Bank'),(22,'Catholic Syrian Bank'),(23,'Cauvery Kalpatharu Grameena Bank'),(24,'Central Bank of India'),(25,'Chaitanya Godavari Grameena Bank'),(26,'Chhattisgarh Gramin Bank'),(27,'Chikmagalur-Kodagu Grameena Bank'),(28,'City Union Bank'),(29,'Corporation Bank'),(30,'Deccan Grameena Bank'),(31,'Dena Bank'),(32,'Dena Gujarat Gramin Bank'),(33,'Development Credit Bank'),(34,'Dhanlaxmi Bank'),(35,'Durg-Rajnandgaon Gramin Bank'),(36,'Ellaquai Dehati Bank'),(37,'Federal Bank'),(38,'Gurgaon Gramin Bank'),(39,'Hadoti Kshetriya Gramin Bank'),(40,'Haryana Gramin Bank'),(41,'HDFC Bank'),(42,'Himachal Gramin Bank'),(43,'ICICI Bank'),(44,'IDBI Bank'),(45,'Indian Bank'),(46,'Indian Overseas Bank'),(47,'IndusInd Bank'),(48,'ING Vysya Bank'),(49,'Jaipur Thar Gramin Bank'),(50,'Jhabua Dhar Kshetriya Gramin Bank'),(51,'Jharkhand Gramin Bank'),(52,'Kalinga Gramya Bank'),(53,'Karnataka Bank'),(54,'Karnataka Vikas Grameena Bank'),(55,'Karur Vysya Bank'),(56,'Kashi Gomti Samyut Gramin Bank'),(57,'Kerala Gramin Bank'),(58,'Kotak Mahindra Bank'),(59,'Krishna Grameena Bank'),(60,'Kshetriya Kisan Gramin Bank'),(61,'Lakshmi Vilas Bank'),(62,'Langpi Dehangi Rural Bank'),(63,'Madhumalti Building Gupte Marg'),(64,'Madhya Bharat Gramin Bank'),(65,'Madhya Bihar Gramin Bank'),(66,'Mahakaushal Kshetriya Gramin Bank'),(67,'Maharashtra Gramin Bank'),(68,'Malwa Gramin Bank'),(69,'Manipur Rural Bank'),(70,'Marwar Ganganagar Bikaner Gramin Bank'),(71,'Meghalaya Rural Bank'),(72,'Mewar Anchalik Gramin Bank'),(73,'Mizoram Rural Bank'),(74,'Nagaland Rural Bank'),(75,'Nainital Bank'),(76,'Narmada Malwa Gramin Bank'),(77,'Neelachal Gramya Bank'),(78,'Oriental Bank of Commerce'),(79,'Pallavan Grama Bank'),(80,'Pandyan Grama Bank'),(81,'Parvatiya Gramin Bank'),(82,'Paschim Banga Gramin Bank'),(83,'Pragathi Gramin Bank'),(84,'Prathama Bank'),(85,'Puduvai Bharathiar Grama Bank'),(86,'Pune District Central Cooperative Bank Ltd.'),(87,'Punjab & Sind Bank'),(88,'Punjab Gramin Bank'),(89,'Punjab National Bank'),(90,'Purvanchal Gramin Bank'),(91,'Rajasthan Gramin Bank'),(92,'Rewa-Sidhi Gramin Bank'),(93,'Rushikulya Gramya Bank'),(94,'Samastipur Kshetriya Gramin Bank'),(95,'Saptagiri Grameena Bank'),(96,'Sarva UP Gramin Bank'),(97,'Satpura Narmada Kshetriya'),(98,'Saurashtra Gramin Bank'),(99,'Sharda Gramin Bank'),(100,'Shreyas Gramin Bank'),(101,'South Indian Bank'),(102,'State Bank of Bikaner & Jaipur'),(103,'State Bank of Hyderabad'),(104,'State Bank of India'),(105,'State Bank of Mysore'),(106,'State Bank of Patiala'),(107,'State Bank of Travancore'),(108,'Surguja Kshetriya Gramin Bank'),(109,'Sutlej Kshetriya Gramin Bank'),(110,'Syndicate Bank'),(111,'Tamilnadu Mercantile Bank'),(112,'Tripura Gramin Bank'),(113,'UCO Bank'),(114,'Union Bank of India'),(115,'United Bank of India'),(116,'UP Agro Corporation Bank'),(117,'Utkal Gramya Bank'),(118,'Uttar Banga Kshetriya Gramin Bank'),(119,'Uttar Bihar Gramin Bank'),(120,'Uttrakhand Gramin Bank'),(121,'Vananchal Gramin Bank'),(122,'Vidharbha Kshetriya Gramin Bank'),(123,'Vijaya Bank'),(124,'Visveshvaraya Grameena Bank'),(125,'Wainganga Krishna Gramin Bank'),(126,'YES Bank');

/*Table structure for table `brokeragedetail` */

DROP TABLE IF EXISTS `brokeragedetail`;

CREATE TABLE `brokeragedetail` (
  `pcid` int(11) NOT NULL,
  `insuranceCompanyName` varchar(50) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `shareofCompany` double DEFAULT NULL,
  KEY `pcid` (`pcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `brokeragedetail` */

insert  into `brokeragedetail`(`pcid`,`insuranceCompanyName`,`percentage`,`amount`,`shareofCompany`) values (1,'2',100,10000,NULL),(2,'1',6,6,NULL),(3,'1',1,1,NULL),(4,'1',1,1,NULL),(5,'1',7,7,NULL),(8,'1',8,8,NULL),(9,'1',7,7,NULL),(10,'1',8,8,NULL),(11,'1',5,5,NULL),(12,'1',5,5,NULL),(13,'1',5,5,NULL),(14,'1',0,0,NULL),(15,'1',9,9,NULL),(15,'1',9,9,NULL),(15,'1',9,9,NULL),(15,'1',9,9,NULL),(15,'1',9,9,NULL),(16,'1',121,121,NULL),(16,'1',10,10,NULL),(16,'1',0,0,NULL),(16,'1',0,0,NULL),(16,'1',0,0,NULL),(17,'1',8,134123,NULL),(17,'1',0,0,NULL),(17,'1',0,0,NULL),(17,'1',0,0,NULL),(17,'1',0,0,NULL),(18,'1',15,1000,NULL),(18,'2',85,25000,NULL),(18,'1',0,0,NULL),(18,'1',0,0,NULL),(18,'1',0,0,NULL),(19,'1',10,100,NULL),(19,'1',14,562,NULL),(19,'1',10,412,NULL),(19,'1',10,740,NULL),(19,'1',50,820,NULL),(20,'1',100,2500,NULL),(20,'1',0,0,NULL),(20,'1',0,0,NULL),(20,'1',0,0,NULL),(20,'1',0,0,NULL),(21,'1',12,1.19988,NULL),(21,'1',12,0.13332,NULL),(21,'1',12,0,NULL),(21,'1',12,0,NULL),(21,'1',12,0,NULL),(23,'1',12,1468.86408,60),(23,'1',12,244.81068,10),(23,'1',12,734.43204,30),(23,'1',12,0,10),(23,'1',12,0,10),(25,'1',12,2.52,100),(25,'1',12,0,10),(25,'1',12,0,10),(25,'1',12,0,10),(25,'1',12,0,10),(26,'1',12,2.4132,100),(26,'1',12,0,10),(26,'1',12,0,10),(26,'1',12,0,10),(26,'1',12,0,10),(27,'1',12,25.2012,100),(27,'1',12,0,10),(27,'1',12,0,10),(27,'1',12,0,10),(27,'1',12,0,10),(28,'1',12,3.6012,100),(28,'1',12,0,10),(28,'1',12,0,10),(28,'1',12,0,10),(28,'1',12,0,10),(29,'1',12,1.44,100),(29,'1',12,0,10),(29,'1',12,0,10),(29,'1',12,0,10),(29,'1',12,0,10),(30,'1',12,3.72,100),(30,'1',12,0,10),(30,'1',12,0,10),(30,'1',12,0,10),(30,'1',12,0,10),(31,'1',12,0.36012,10),(31,'1',12,3.24108,90),(31,'1',12,0,10),(31,'1',12,0,10),(31,'1',12,0,10);

/*Table structure for table `businessdetail` */

DROP TABLE IF EXISTS `businessdetail`;

CREATE TABLE `businessdetail` (
  `businessdetailID` int(12) NOT NULL AUTO_INCREMENT,
  `chequeNo` varchar(50) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `chequeAmount` double DEFAULT NULL,
  `clientID` int(11) DEFAULT NULL,
  `isBusinessDone` tinyint(1) DEFAULT NULL COMMENT '1- done 0-notdone',
  PRIMARY KEY (`businessdetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `businessdetail` */

insert  into `businessdetail`(`businessdetailID`,`chequeNo`,`chequeDate`,`chequeAmount`,`clientID`,`isBusinessDone`) values (29,'25000','2014-05-15',5656565,1,1),(30,'25000','2014-05-06',121212,15,1);

/*Table structure for table `claimdetail` */

DROP TABLE IF EXISTS `claimdetail`;

CREATE TABLE `claimdetail` (
  `claimID` int(20) NOT NULL AUTO_INCREMENT,
  `claimantName` varchar(100) DEFAULT NULL,
  `claimAddress` varchar(100) DEFAULT NULL,
  `areaOfClaim` varchar(100) DEFAULT NULL,
  `taluka` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `landLineNo` varchar(100) DEFAULT NULL,
  `mobileNo1` varchar(100) DEFAULT NULL,
  `mobileNo2` varchar(100) DEFAULT NULL,
  `typeOfQuery` varchar(100) DEFAULT NULL,
  `podDetail` varchar(100) DEFAULT NULL,
  `DateOfIntimation` date DEFAULT NULL,
  `namerOfPortFolioDirector` varchar(100) DEFAULT NULL,
  `namerOfInvestigator` varchar(100) DEFAULT NULL,
  `DateOfAppointmentOfInvestigator` date DEFAULT NULL,
  `DataEnter` varchar(100) DEFAULT NULL,
  `schemeName` varchar(100) DEFAULT NULL,
  `typeOfClaim` varchar(100) DEFAULT NULL,
  `claimIntimationAmount` double DEFAULT NULL,
  `StatusOfClaim` varchar(100) DEFAULT NULL,
  `timeLeftToSubmit` varchar(100) DEFAULT NULL,
  `dateOfQuerySend` date DEFAULT NULL,
  `dateOfDocumentRecevied` date DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `dateOfIssueCheque` date DEFAULT NULL,
  `dateOfDispatchCheqe` date DEFAULT NULL,
  `DispatchAddress` varchar(100) DEFAULT NULL,
  `podNo` int(20) DEFAULT NULL,
  PRIMARY KEY (`claimID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `claimdetail` */

/*Table structure for table `client_detail` */

DROP TABLE IF EXISTS `client_detail`;

CREATE TABLE `client_detail` (
  `clientID` int(11) NOT NULL AUTO_INCREMENT,
  `insuredName` varchar(50) NOT NULL,
  `address` varchar(80) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `contactPerson` varchar(50) DEFAULT NULL,
  `officeNo` varchar(12) DEFAULT NULL,
  `faxNo` varchar(12) DEFAULT NULL,
  `mobileNo` varchar(12) DEFAULT NULL,
  `rmName` varchar(50) DEFAULT NULL,
  `emailId` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`clientID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `client_detail` */

insert  into `client_detail`(`clientID`,`insuredName`,`address`,`pincode`,`contactPerson`,`officeNo`,`faxNo`,`mobileNo`,`rmName`,`emailId`) values (1,'netxs','gota','98787','nirav','8989898989','6767676767','8989898989','nirav','nirav90up@gmai.com'),(2,'Nishit','Ahmedabad','360007','raj','0792333505','0792555601','99998041464','Rehman','nisit@gmail.com'),(3,'nvivvv','1','1','1','1','1','01','10','10'),(4,'nnnn','n','n','n','n','n','n','n','n'),(5,'mind','1','111111','1','9898989898','9898989898','9898989898','q','nirav90up@gmai.com'),(8,'birla','m','m','m','m','m','m','m','m'),(9,'tatta','m','m','m','mm','m','m','m','m'),(10,'cadl','gota road','360007','m','h','0792555601','123413434','nisit','nisit@gmail.com'),(11,'monish.co','Ahmedabad','360007','raj','0792333505','0792555601','99998041464','vijay','nisit@gmail.com'),(12,'brvb','Ahmedabad','360007','raj','0792333505','0792555601','99998041464','vijay','nisit@gmail.com'),(13,'cccccc','Ahmedabad','360007','raj','0792333505','1','99998041464','vijay','nisit@gmail.com'),(14,'nbbbb','Ahmedabad','360007','raj','7923335055','7925556015','9999804146','vijay','nirav90up@gmai.com'),(15,'test1','Ahmedabad','360007','raj','9233350524','9274321933','8905221921','patel rajan sureshbhai','nisit@gmail.com'),(16,'test2','12','360007','raj','0792333505','0792555601','5465656655','patel rajan sureshbhai','nisit@gmail.com'),(17,'alcon','Ahmedabad','360007','raj','0792333505','0792555601','1234134348','manan','134134'),(18,'alcon india','Ahmedabad','360007','raj','0792333505','0792555601','1234134344','manan','nisit@gmail.com'),(19,'Abc','Ahmedabad','360007','Raj','0792333505','0792555601','9998041464','manan','test@gmail.com'),(20,'alcon india a','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail,com'),(21,'EProc','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail,com'),(23,'eprocurment','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail,com'),(25,'BME','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail,com'),(26,'BMEEE','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail,com'),(27,'collectoCafe','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail.com'),(28,'Birla D','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail.com'),(29,'VREEE','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail.com'),(30,'asterMartin','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail.com'),(31,'AUR','ahmedabad','380061','nisit','7878787887','7878787887','7878787887','patel rajan sureshbhai','nirav90up@gmail.com');

/*Table structure for table `coinsurancedetail` */

DROP TABLE IF EXISTS `coinsurancedetail`;

CREATE TABLE `coinsurancedetail` (
  `pcid` int(11) NOT NULL,
  `CompanyName` varchar(20) DEFAULT NULL,
  `shareOfCompany` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `coinsurancedetail` */

insert  into `coinsurancedetail`(`pcid`,`CompanyName`,`shareOfCompany`) values (1,'3','100'),(2,'1','5'),(3,'1','1'),(4,'1','1'),(5,'1','7'),(8,'1','8'),(9,'1','7'),(10,'1','8'),(11,'1','5'),(12,'1','5'),(13,'1','5'),(14,NULL,'100'),(15,NULL,'9'),(16,NULL,'21'),(17,NULL,'8'),(18,NULL,'10'),(19,NULL,'10'),(20,NULL,'100'),(21,NULL,'90'),(23,NULL,'60'),(25,NULL,'100'),(26,NULL,'100'),(27,NULL,'100'),(28,NULL,'100'),(29,NULL,'100'),(30,NULL,'100'),(31,NULL,'10');

/*Table structure for table `hypothicationdetail` */

DROP TABLE IF EXISTS `hypothicationdetail`;

CREATE TABLE `hypothicationdetail` (
  `pcid` int(11) NOT NULL,
  `NameOfBank` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hypothicationdetail` */

insert  into `hypothicationdetail`(`pcid`,`NameOfBank`,`city`,`Branch`) values (1,'3','ahmedabad','4'),(2,'1','1','1'),(3,'1','1','1'),(4,'1','1','1'),(5,'1','1','1'),(8,'1','1','1'),(9,'1','1','1'),(10,'1','1','1'),(11,'1','1','1'),(12,'1','1','1'),(13,'1','1','1'),(14,NULL,NULL,NULL),(15,NULL,NULL,NULL),(16,NULL,NULL,NULL),(17,NULL,NULL,NULL),(18,NULL,NULL,NULL),(19,NULL,NULL,NULL),(20,NULL,NULL,NULL),(21,NULL,NULL,NULL),(23,NULL,NULL,NULL),(25,NULL,NULL,NULL),(26,NULL,NULL,NULL),(27,NULL,NULL,NULL),(28,NULL,NULL,NULL),(29,NULL,NULL,NULL),(30,NULL,NULL,NULL),(31,NULL,NULL,NULL);

/*Table structure for table `insurancecompany_master` */

DROP TABLE IF EXISTS `insurancecompany_master`;

CREATE TABLE `insurancecompany_master` (
  `companyID` int(10) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `insurancecompany_master` */

insert  into `insurancecompany_master`(`companyID`,`companyName`) values (1,'Bajaj Allianz General Insurance Co. Ltd.'),(2,'ICICI Lombard General Insurance Co. Ltd. '),(3,'IFFCO Tokio General Insurance Co. Ltd.'),(4,'National Insurance Co. Ltd.'),(5,'The New India Assurance Co. Ltd. '),(6,'The Oriental Insurance Co. Ltd.'),(7,'United India Insurance Co. Ltd.'),(8,'Reliance General Insurance Co. Ltd.'),(9,'Royal Sundaram Alliance Insurance Co. Ltd'),(10,'Tata AIG General Insurance Co. Ltd.'),(11,'Cholamandalam MS General Insurance Co. Ltd.'),(12,'HDFC ERGO General Insurance Co. Ltd. '),(13,'Export Credit Guarantee Corporation of India Ltd.'),(14,'Agriculture Insurance Co. of India Ltd.'),(15,'Star Health and Allied Insurance Company Limited'),(16,'Apollo Munich Health Insurance Company Limited'),(17,'Future Generali India Insurance Company Limited'),(18,'Universal Sompo General Insurance Co. Ltd. '),(19,'Shriram General Insurance Company Limited.'),(20,'Bharti AXA General Insurance Company Limited'),(21,'Raheja QBE General Insurance Company Limited.'),(22,'SBI General Insurance Company Limited'),(23,'Max Bupa Health Insurance Company Ltd.'),(24,'L&T General Insurance Company Limited'),(25,'Religare Health Insurance Company Limited'),(26,'Magma HDI General Insurance Company Limited'),(27,'Liberty Videocon General Insurance Company Limited.'),(28,'Cigna TTK Health Insurance Company Ltd.');

/*Table structure for table `insurancecompanydetail` */

DROP TABLE IF EXISTS `insurancecompanydetail`;

CREATE TABLE `insurancecompanydetail` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) NOT NULL,
  PRIMARY KEY (`companyID`,`companyName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `insurancecompanydetail` */

insert  into `insurancecompanydetail`(`companyID`,`companyName`) values (1,'Birla'),(2,'Axis'),(3,'relince');

/*Table structure for table `paymentdetail` */

DROP TABLE IF EXISTS `paymentdetail`;

CREATE TABLE `paymentdetail` (
  `pcid` int(11) NOT NULL,
  `modeOfPayment` varchar(50) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `chequeOrDDNo` varchar(50) DEFAULT NULL,
  `chequeOrDDDate` varchar(20) DEFAULT NULL,
  `chequeOrDDAmount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paymentdetail` */

insert  into `paymentdetail`(`pcid`,`modeOfPayment`,`bankName`,`chequeOrDDNo`,`chequeOrDDDate`,`chequeOrDDAmount`) values (1,'2','1','100','100','100'),(2,'1','1','56','5','6'),(3,'1','1','1','1','1'),(4,'1','1','1','1','1'),(5,'1','1','7','7','7'),(8,'1','1','8','8','8'),(9,'1','1','7','7','7'),(10,'1','1','8','8','8'),(11,'1','1','5','5','5'),(12,'1','1','5','5','5'),(13,'1','1','5','5','5'),(14,'1','1','56','11/06/2013','13241234'),(15,'1','1','9','11/26/2013','9'),(16,'1','1','8','11/19/2013','13241234'),(17,'2','1','1341234','12/18/2013','13241234'),(18,'2','3','15455555','',''),(19,'1','1','213232652','12/19/2013','2315615626'),(20,'1','2','48845545456','02/17/2014','25000'),(21,'1','1','48845545456','03/19/2014','25000'),(23,'1','1','1471255522','03/14/2014','25000'),(25,'1','1','1471255522','03/12/2014','25000'),(26,'1','Andhra Bank','48845545456','03/19/2014','25000'),(27,'1','Allahabad Bank','48845545456','03/12/2014','25000'),(28,'cheque','Baroda Rajasthan Gramin Bank','48845545456','04/10/2014','25000'),(29,'cheque','Allahabad Bank','1471255522','04/08/2014','25000'),(30,'cheque','Andhra Pradesh Grameena Vikas Bank','1471255522','04/09/2014','25000'),(31,'cheque','Allahabad Bank','1471255522','04/15/2014','25000');

/*Table structure for table `policy_detail` */

DROP TABLE IF EXISTS `policy_detail`;

CREATE TABLE `policy_detail` (
  `policyDetailID` int(12) NOT NULL AUTO_INCREMENT,
  `clientID` int(12) DEFAULT NULL,
  `policyName` varchar(150) DEFAULT NULL,
  `insuranceCompanyName` varchar(150) DEFAULT NULL,
  `branchOfCompany` varchar(150) DEFAULT NULL,
  `referPerson` varchar(25) DEFAULT NULL,
  `dateOfInward` date DEFAULT NULL,
  `riskStartDate` date DEFAULT NULL,
  `riskEndDate` date DEFAULT NULL,
  `policyNo` varchar(25) DEFAULT NULL,
  `expiryPolicyNo` varchar(25) DEFAULT NULL,
  `riskLocation` varchar(25) DEFAULT NULL,
  `riskAddress` varchar(52) DEFAULT NULL,
  `riskPincode` varchar(12) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`policyDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `policy_detail` */

insert  into `policy_detail`(`policyDetailID`,`clientID`,`policyName`,`insuranceCompanyName`,`branchOfCompany`,`referPerson`,`dateOfInward`,`riskStartDate`,`riskEndDate`,`policyNo`,`expiryPolicyNo`,`riskLocation`,`riskAddress`,`riskPincode`,`city`,`state`,`country`) values (1,1,'credit insurance','AXA','ahmedabad','nirav','2013-10-23','2013-10-08','2013-10-10','7878787878787','78787887877','ahemdabad','ahmedabad','380025','ahmedabad','guajrat','India'),(2,2,'Motor Comprehensive ','Bharti','ahmedabad','payal','2013-10-25','2013-10-31','2013-10-24','44556656','98989899','Ahmedabad','A','600456','A','A','A'),(3,3,'Credit Insurance','1','1','1','2013-10-09','2013-10-15','2013-10-04','22222222','5555','1','1','1','1','1','1'),(4,4,'Credit Insurance','n','n','n','2013-10-01','2013-10-28','2013-10-14','n','n','n','n','n','n','n','n'),(5,5,'Credit Insurance','1','1','1','2013-11-28','2013-11-21','2013-11-26','q','q','q','q','q','q','q','q'),(9,9,'Motor Comprehensive','m','m','m','2013-11-13','2013-11-13','2013-11-07','m','m','mm','m','m','mm','m',''),(10,10,'Motor  Transit Insurance        ','AXA','ahmedabad','h','2013-11-20','2013-11-21','2013-10-30','12341324134','h','Ahmedabad','h','h','h','h','h'),(11,11,'Credit Insurance','Bharti','ahmedabad','payal','2013-11-21','2014-11-21','2013-11-21','121212','1212','m','m','m','m','m','m'),(12,12,'Credit Insurance','Bharti','ahmedabad','payal','2013-11-21','2014-11-12','2013-11-14','44556656','98989899','n','n','n','n','n','n'),(13,13,'Burglary Insurance','Bharti','ahmedabad','payal','2013-11-21','2015-11-18','2013-11-21','44556656','13134134134','nnnn','nnnn','nnn','nnnn','nnn','nnnn'),(14,14,'Credit Insurance','4','4','4','2013-11-21','2014-11-06','2013-11-06','asdfasdf','dfasdf',NULL,NULL,NULL,NULL,NULL,NULL),(15,15,'Workman Compentation','1','1','1','2013-11-28','2014-11-28','2013-11-05','hh','98989899','Ahmedabad','134134','600456','A','A','A'),(16,16,'Credit Insurance','1','4','3','2013-11-29','2014-11-06','2013-11-05','44556656','98989899',NULL,NULL,NULL,NULL,NULL,NULL),(17,17,'Credit Insurance','2','3','3','2013-12-11','2015-01-01','2013-12-10','12341324134','13134134134',NULL,NULL,NULL,NULL,NULL,NULL),(18,18,'Burglary Insurance','3','3','3','2013-12-18','2014-01-22','2013-12-10','12341324134','13134134134','Unit 1, Unit 2, Unit 3, U','134134, , , , ','1341324, , ,','A, , , , ','h, , , , ','h, , , , '),(19,19,'Motor Comprehensive','1','1','1','2013-12-18','2013-12-27','2013-12-03','PNO12345656','PNO12345655',NULL,NULL,NULL,NULL,NULL,NULL),(20,20,'Credit Insurance','2','2','2','2014-02-27','2014-03-27','2014-02-25','788787474877','7878747877787877',NULL,NULL,NULL,NULL,NULL,NULL),(21,21,'Burglary Insurance','1','1','1','2014-03-14','2015-03-19','2014-03-13','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','qw, , , , ','fff, , , , ','ff, , , , ','fff, , , , ','fff, , , , '),(23,23,'Burglary Insurance','3','2','3','2014-03-13','2015-03-19','2014-03-12','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','asdf, , , , ','dfasd, , , ,','sdfasdf, , , , ','asdfasdf, , , , ','asdfasd, , , , '),(25,25,'Burglary Insurance','2','2','2','2014-03-28','2015-03-26','2014-03-04','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','wewe, , , , ','232323, , , ','wewe, , , , ','wewe, , , , ','wewe, , , , '),(26,26,'Burglary Insurance','ICICI Lombard General Ins','IFFCOTokio General Insur','2','2014-03-28','2015-03-26','2014-03-20','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','q, , , , ','380061, , , ','q, , , , ','q, , , , ','q, , , , '),(27,27,'Burglary Insurance','IFFCOTokio General Insurance Co. Ltd.','IFFCOTokio General Insurance Co. Ltd.','3','2014-03-27','2015-03-25','2014-03-25','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','gota, , , , ','380061, , , ','ahmedabad, , , , ','gujarat, , , , ','india, , , , '),(28,28,'Burglary Insurance','BajajAllianz General Insurance Co. Ltd.','BajajAllianz General Insurance Co. Ltd.','1','2014-04-02','2017-04-06','2014-04-01','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','yyyy, , , , ','989898, , , ','yyyy, , , , ','yyy, , , , ','yyy, , , , '),(29,29,'Burglary Insurance','ICICI Lombard General Insurance Co. Ltd.','IFFCOTokio General Insurance Co. Ltd.','3','2014-04-03','2015-06-03','2014-04-01','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','qwqw, , , , ','101010, , , ','qw, , , , ','qwqq, , , , ','qwq, , , , '),(30,30,'Burglary Insurance','ICICI Lombard General Insurance Co. Ltd.','IFFCOTokio General Insurance Co. Ltd.','2','2016-04-06','2017-03-30','2014-04-01','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','q, , , , ','38001, , , ,','q, , , , ','q, , , , ','q, , , , '),(31,31,'Burglary Insurance','IFFCOTokio General Insurance Co. Ltd.','IFFCOTokio General Insurance Co. Ltd.','3','2014-04-09','2019-05-01','2014-04-02','788787474877','7878747877787877','Unit 1, Unit 2, Unit 3, U','q, , , , ','989898, , , ','q, , , , ','q, , , , ','q, , , , ');

/*Table structure for table `policy_master` */

DROP TABLE IF EXISTS `policy_master`;

CREATE TABLE `policy_master` (
  `policyID` int(11) NOT NULL AUTO_INCREMENT,
  `policyName` varchar(50) DEFAULT NULL,
  `rowNum` int(10) DEFAULT NULL,
  PRIMARY KEY (`policyID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `policy_master` */

insert  into `policy_master`(`policyID`,`policyName`,`rowNum`) values (1,'fire',NULL),(2,'life      ',NULL),(3,'Motor Comprehensive',NULL),(4,'motor act only         ',NULL),(5,'Motor Trade Plate         ',NULL),(6,'Motor  Transit Insurance         ',NULL),(7,'Fire Insurance         ',NULL),(8,'Marine Open Inland         ',NULL),(9,'Marine Open Export         ',NULL),(10,'Marine Stop         ',NULL),(11,'Marine Open Import         ',NULL),(12,'Marine Specific Inland         ',NULL),(13,'Marine Specific Export         ',NULL),(14,'Marine Specific Import         ',NULL),(15,'Fire Long Term          ',NULL),(16,'Burglary Insurance         ',4),(17,'Money Insurance         ',NULL),(18,'Special  Contigency         ',NULL),(19,'Marine Hull Insurance         ',NULL),(20,'Public Liability         ',NULL),(21,'Port Liability          ',NULL),(22,'Industrial Act Liability         ',NULL),(23,'None Industrial Liability         ',NULL),(24,'Public Liability Act Only         ',NULL),(25,'Professional Indemnity         ',NULL),(26,'directors And Officers Liabilty         ',NULL),(27,'Export Credit Guarantee         ',NULL),(28,'Credit Insurance         ',NULL),(29,'Event & Media Liabilty         ',NULL),(30,'Workman Compentation         ',NULL),(31,'Individual Mediclaim         ',NULL),(32,'Individual Personal Acciedent         ',NULL),(33,'Group Mediclaim         ',NULL),(34,'Group Personal Acciedent         ',NULL),(35,'Industrial All Risk         ',NULL),(36,'Erriction All Risk         ',NULL),(37,'Construction All Risk         ',NULL),(38,'Electronic Equipment         ',NULL),(39,'Portable Electonic Equipment         ',NULL),(40,'Machinary Breakdown         ',NULL),(41,'Machinary Loss Of Profit         ',NULL),(42,'Fire Loss Of Profit         ',NULL),(43,'Boiler Plant Policy         ',NULL),(44,'Civil  Engineering  Completed  Risks         ',NULL),(45,'Contractor Plant And Machinery         ',NULL),(46,'Deterioration Of Stocks        ',NULL);

/*Table structure for table `policyclient` */

DROP TABLE IF EXISTS `policyclient`;

CREATE TABLE `policyclient` (
  `pcID` int(11) NOT NULL AUTO_INCREMENT,
  `policyID` int(11) DEFAULT NULL,
  `clientID` int(11) DEFAULT NULL,
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `policyclient` */

insert  into `policyclient`(`pcID`,`policyID`,`clientID`) values (1,28,1),(2,3,2),(3,28,3),(4,28,4),(5,28,5),(8,3,8),(9,3,9),(10,6,10),(11,28,11),(12,28,12),(13,16,13),(14,28,14),(15,30,15),(16,28,16),(17,28,17),(18,16,18),(19,3,19),(20,28,20),(21,16,21),(23,16,23),(25,16,25),(26,16,26),(27,16,27),(28,16,28),(29,16,29),(30,16,30),(31,16,31);

/*Table structure for table `sum_insured_detail` */

DROP TABLE IF EXISTS `sum_insured_detail`;

CREATE TABLE `sum_insured_detail` (
  `sum_insured_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `pcid` int(11) DEFAULT NULL,
  `particulars` varchar(50) DEFAULT NULL,
  `SumInsINR` int(10) DEFAULT NULL,
  `policyRate` double DEFAULT NULL,
  `totalPremiumPaid` double DEFAULT NULL,
  `serviceTax` double DEFAULT NULL,
  `stampDuty` int(10) DEFAULT NULL,
  `tpPremium` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `premiumBeforeTerroAndTax` double DEFAULT NULL,
  `terrorismPremium` double DEFAULT NULL,
  `premiumNetOfServiceTax` double DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `premiumPayable` double DEFAULT NULL,
  `dateOfBirth` varchar(50) DEFAULT NULL,
  `ownDamagePremium` double DEFAULT NULL,
  `brokerage` double DEFAULT NULL,
  `premiumEligibleForBrokerage` double DEFAULT NULL,
  `brokerageAmount` double DEFAULT NULL,
  `renewalDate` varchar(25) DEFAULT NULL,
  `noOfWorkers` int(10) DEFAULT NULL,
  `salaryPM` int(10) DEFAULT NULL,
  `totalSumInsuredPerAnnum` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  PRIMARY KEY (`sum_insured_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

/*Data for the table `sum_insured_detail` */

insert  into `sum_insured_detail`(`sum_insured_detail_id`,`pcid`,`particulars`,`SumInsINR`,`policyRate`,`totalPremiumPaid`,`serviceTax`,`stampDuty`,`tpPremium`,`discount`,`premiumBeforeTerroAndTax`,`terrorismPremium`,`premiumNetOfServiceTax`,`number`,`premiumPayable`,`dateOfBirth`,`ownDamagePremium`,`brokerage`,`premiumEligibleForBrokerage`,`brokerageAmount`,`renewalDate`,`noOfWorkers`,`salaryPM`,`totalSumInsuredPerAnnum`,`rate`) values (1,1,NULL,10,0,NULL,10,0,10,100,10,10,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(2,1,NULL,10,0,NULL,10,0,10,10,10,10,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(3,2,NULL,0,0,NULL,11,0,11,1,0,0,0,0,0,NULL,1,0,0,0,'0',NULL,0,0,0),(4,2,NULL,0,0,NULL,66,0,6,0,0,0,0,0,0,NULL,6,0,0,0,'0',NULL,0,0,0),(5,3,NULL,1,0,NULL,1,0,1,1,1,1,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(6,3,NULL,1,0,NULL,1,0,1,1,1,1,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(7,4,NULL,1,0,NULL,1,0,1,1,1,1,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(8,4,NULL,1,0,NULL,1,0,1,1,1,1,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(9,5,NULL,7,0,NULL,7,0,7,7,7,7,7,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(10,5,NULL,7,0,NULL,7,0,7,7,7,7,7,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(11,5,NULL,7,0,NULL,7,0,7,7,7,7,7,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(12,5,NULL,7,0,NULL,7,0,7,7,7,7,7,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(13,5,NULL,7,0,NULL,7,0,7,7,7,7,7,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(14,8,NULL,0,0,8,8,0,8,8,0,0,0,0,0,NULL,8,0,0,0,'0',NULL,0,0,0),(15,8,NULL,0,0,8,8,0,8,0,0,0,0,0,0,NULL,8,0,0,0,'0',NULL,0,0,0),(16,9,NULL,0,0,7,7,0,7,7,0,0,0,0,0,NULL,7,0,0,0,'0',NULL,0,0,0),(17,9,NULL,0,0,77,7,0,7,0,0,0,0,0,0,NULL,7,0,0,0,'0',NULL,0,0,0),(18,10,NULL,0,0,8,8,0,8,8,2555,0,0,0,0,NULL,8,0,0,0,'0',NULL,0,0,0),(19,10,NULL,0,0,8,8,0,8,0,25,0,0,0,0,NULL,8,0,0,0,'0',NULL,0,0,0),(20,11,NULL,2,0,2,2,0,0,2,2,2,2,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(21,11,NULL,2,0,2,2,0,0,2,2,2,2,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(22,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(23,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(24,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(25,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(26,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(27,12,NULL,5,0,5,5,0,0,5,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(28,12,NULL,5,0,5,0,0,0,0,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(29,12,NULL,5,0,5,0,0,0,0,5,5,5,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(30,12,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(31,12,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(32,13,NULL,5,5,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(33,13,NULL,5,5,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(34,13,NULL,55,5,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(35,13,NULL,5,5,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(36,13,NULL,5,0,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(37,13,NULL,5,0,5,5,5,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(38,13,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(39,13,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(40,13,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(41,13,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(42,14,NULL,100,0,13,12,0,0,10,10,100,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(43,14,NULL,400,0,6,12,0,0,10,40,10,40,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(44,14,NULL,100,0,121,12,0,0,10,10,1000,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(45,14,NULL,600,0,10,10,0,0,101,12,101,12,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(46,14,NULL,10,0,24,12,0,0,0,100,100,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(47,14,NULL,100,0,132,12,0,0,100,1000,100,1000,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(48,14,NULL,1000,0,24,12,0,0,0,100,100,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(49,14,NULL,100,0,100,0,0,0,0,100,0,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(50,14,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(51,14,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(52,15,NULL,0,0,1,1,0,0,1,0,0,0,10,0,NULL,0,0,0,0,'0',NULL,0,10,10),(53,15,NULL,0,0,1,1,0,0,1,0,0,0,1,0,NULL,0,0,0,0,'0',NULL,0,1,1),(54,15,NULL,0,0,1,1,0,0,1,0,0,0,1,0,NULL,0,0,0,0,'0',NULL,0,1,1),(55,15,NULL,0,0,1,0,0,0,0,0,0,0,1,0,NULL,0,0,0,0,'0',NULL,0,1,0),(56,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(57,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(58,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(59,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(60,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(61,15,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(62,16,NULL,10,0,1,12,0,0,10,1,12,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(63,16,NULL,12,0,3,12,0,0,121,14,12,14,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(64,16,NULL,12,0,150026,12,0,0,134123,16094,1234123,16094,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(65,16,NULL,34,0,24,12,0,0,1,1,101,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(66,16,NULL,1,0,24,12,0,0,100,100,100,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(67,16,NULL,100,0,24,12,0,0,10,100,100,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(68,16,NULL,100,0,41,0,0,0,0,100,1447,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(69,16,NULL,152,0,0,0,0,0,0,14,0,14,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(70,16,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(71,16,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(72,17,NULL,1234,0,148106,12,0,0,8,98,1234123,98,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(73,17,NULL,1234,0,148106,12,0,0,8,98,1234123,98,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(74,17,NULL,1234,0,160949,12,0,0,1,12,1341234,12,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(75,17,NULL,1324123,0,8,8,0,0,8,13413,1324123,13413,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(76,17,NULL,1234,0,149704,12,0,0,4,13413,1234123,13413,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(77,17,NULL,1324123,0,149704,12,0,0,1,13413,1234123,13413,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(78,17,NULL,1234,0,164189,12,0,0,0,134123,1234123,134123,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(79,17,NULL,1234,0,8,0,0,0,0,134123,1234123,134123,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(80,17,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(81,17,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(82,18,NULL,1234,7,104.065206,10.685206,7,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(83,18,NULL,100,10,21.247,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(84,18,NULL,100,10,21.237,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(85,18,NULL,1434,0,146.549206,13.159206,27,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(86,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(87,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(88,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(89,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(90,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(91,18,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(92,19,NULL,0,0,337.11,37.11,0,200,10,0,0,0,0,0,NULL,100,0,0,0,'0',NULL,0,0,0),(93,19,NULL,0,0,337.11,37.11,0,200,0,0,0,0,0,0,NULL,100,0,0,0,'0',NULL,0,0,0),(94,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(95,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(96,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(97,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(98,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(99,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(100,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(101,19,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(102,20,NULL,100,0,2,12,0,0,10,10,12,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(103,20,NULL,100,0,13,12,0,0,10,101,10,101,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(104,20,NULL,10,0,12,12,0,0,10,1,100,1,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(105,20,NULL,100,0,2,12,0,0,10,10,233,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(106,20,NULL,10,0,2,12,0,0,1000,10,10,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(107,20,NULL,1000,0,134,12,0,0,0,10,10,10,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(108,20,NULL,14,0,0,0,0,0,0,100,1111,100,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(109,20,NULL,111,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(110,20,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(111,20,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(112,21,NULL,100,10,21.237,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(113,21,NULL,10,10,2.1237,0.1237,1,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(114,21,NULL,11,1,14.123607,0.013607,14,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(115,21,NULL,121,0,37.484307,1.374307,25,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(116,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(117,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(118,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(119,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(120,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(121,21,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(132,23,NULL,80000,12,10799.52,1187.52,12,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(133,23,NULL,89999,12,12147.825156,1335.945156,12,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(134,23,NULL,100,1,11.1337,0.1237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(135,23,NULL,170099,0,22958.478856,2523.588856,34,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(136,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(137,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(138,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(139,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(140,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(141,23,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(152,25,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(153,25,NULL,10,10,11.1237,0.1237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(154,25,NULL,100,10,21.237,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(155,25,NULL,210,0,143.5977,2.5977,120,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(156,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(157,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(158,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(159,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(160,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(161,25,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(162,26,NULL,100,10,21.247,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(163,26,NULL,10,1,100.11237,0.01237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(164,26,NULL,100,10,21.237,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(165,26,NULL,210,0,142.59637,2.48637,120,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(166,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(167,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(168,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(169,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(170,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(171,26,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(172,27,NULL,1000,10,1112.38,12.37,1000,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(173,27,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(174,27,NULL,1000,10,212.37,12.37,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(175,27,NULL,2100,0,1435.987,25.977,1200,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(176,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(177,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(178,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(179,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(180,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(181,27,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(182,28,NULL,100,10,111.247,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(183,28,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(184,28,NULL,100,10,21.237,1.237,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(185,28,NULL,300,0,243.721,3.711,210,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(186,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(187,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(188,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(189,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(190,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(191,28,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(192,30,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(193,30,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(194,30,NULL,110,10,22.3607,1.3607,10,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(195,30,NULL,310,0,244.8347,3.8347,210,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(196,31,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(197,31,NULL,100,10,111.247,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(198,31,NULL,100,10,111.237,1.237,100,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0),(199,31,NULL,300,0,333.721,3.711,300,0,0,0,0,0,0,0,NULL,0,0,0,0,'0',NULL,0,0,0);

/*Table structure for table `suminsureparamaster` */

DROP TABLE IF EXISTS `suminsureparamaster`;

CREATE TABLE `suminsureparamaster` (
  `paramID` varchar(40) DEFAULT NULL,
  `paramName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suminsureparamaster` */

insert  into `suminsureparamaster`(`paramID`,`paramName`) values ('P1','particulars'),('P2','sumInsINR'),('P3','policyRate'),('P4','serviceTax'),('P5','StampDuty'),('P6','discount'),('P7','premiumBeforeTerroAndTax'),('P8','terrorismPremium'),('P9','premiumNetOfServiceTax'),('P10','number'),('P11','premiumPayable'),('P12','dateOfBirth'),('P13','ownDamagePremium'),('P14','tpPremium'),('P15','premiumEligibleForBrokerage'),('P16','brokerage'),('P17','brokerageAmount'),('P18','renewalDate'),('P19','noOfWorkers'),('P20','salaryPM'),('P21','totalSumInsuredPerAnnum'),('P22','rate'),('P23','totalPremiumePaid');

/*Table structure for table `suminsurerelation` */

DROP TABLE IF EXISTS `suminsurerelation`;

CREATE TABLE `suminsurerelation` (
  `policyName` varchar(500) DEFAULT NULL,
  `parameter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suminsurerelation` */

insert  into `suminsurerelation`(`policyName`,`parameter`) values ('Burglary Insurance         ','P1:P3:P9:P4:P5:P23');

/*Table structure for table `target_detail` */

DROP TABLE IF EXISTS `target_detail`;

CREATE TABLE `target_detail` (
  `targetID` bigint(20) NOT NULL AUTO_INCREMENT,
  `userDetailID` bigint(20) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `reportingManager` varchar(60) DEFAULT NULL,
  `deskNo` varchar(20) DEFAULT NULL,
  `January` bigint(15) DEFAULT NULL,
  `February` bigint(15) DEFAULT NULL,
  `March` bigint(15) DEFAULT NULL,
  `April` bigint(15) DEFAULT NULL,
  `May` bigint(15) DEFAULT NULL,
  `June` bigint(15) DEFAULT NULL,
  `July` bigint(15) DEFAULT NULL,
  `August` bigint(15) DEFAULT NULL,
  `September` bigint(15) DEFAULT NULL,
  `October` bigint(15) DEFAULT NULL,
  `November` bigint(15) DEFAULT NULL,
  `December` bigint(20) DEFAULT NULL,
  `totalAmount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`targetID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `target_detail` */

insert  into `target_detail`(`targetID`,`userDetailID`,`name`,`reportingManager`,`deskNo`,`January`,`February`,`March`,`April`,`May`,`June`,`July`,`August`,`September`,`October`,`November`,`December`,`totalAmount`) values (1,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,0,'nirav',NULL,'565665',5,5,5,5,5,5,5,5,5,5,5,5,5),(5,0,'nirav',NULL,'565665',6,6,6,6,6,6,6,6,6,6,6,6,6),(6,0,'nirav',NULL,'nirav',8,8,8,8,8,8,8,8,8,8,8,8,8),(7,0,'nirav',NULL,'nirav',8,8,8,8,8,8,8,8,8,8,8,8,8),(8,0,'pratik','nisit','565665',8,8,8,8,8,8,8,8,8,8,8,8,8),(9,0,'demod','nisit','2323423',1,1,0,1,1,1,1,1,1,1,1,1,1),(10,0,'demod','nisit','800000',800000,800000,800000,800000,800000,800000,800000,800000,1,800000,800000,800000,80000000),(11,0,'vijay','nisit','1212121212',100,100,100,100,100,100,100,100,100,100,100,100,100),(12,0,'patel rajan sureshbhai','jitu bhai','100',101,100,100,100,100,100,100,100,100,100,110,100,100),(13,0,'manan','nisit','787878877778',100,100,100,100,100,100,100,100,100,100,100,100,1200);

/*Table structure for table `userauthentication` */

DROP TABLE IF EXISTS `userauthentication`;

CREATE TABLE `userauthentication` (
  `userAuthID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `userType` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userTypeID` int(10) DEFAULT NULL,
  PRIMARY KEY (`userAuthID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `userauthentication` */

insert  into `userauthentication`(`userAuthID`,`username`,`userType`,`password`,`userTypeID`) values (1,'admin','admin','admin',1),(2,'qwqw','manager','qwqw',NULL),(3,'qwqw','manager','qwqw',NULL),(4,'qwqw','manager','qwqw',NULL),(5,'qwqw','manager','qwqw',NULL),(6,'fw','awdf','adsf',NULL),(8,'fw','awdf','adsf',NULL);

/*Table structure for table `userdetail` */

DROP TABLE IF EXISTS `userdetail`;

CREATE TABLE `userdetail` (
  `userDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL COMMENT '2:Corporate Officer 3:Zonal Officer 4:Regional Managers 5:Branch Managers 6:Relationship Manager',
  `phone` varchar(15) DEFAULT NULL,
  `branchName` varchar(60) DEFAULT NULL,
  `reportingManager` varchar(60) DEFAULT NULL,
  `deskNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userDetailID`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `userdetail` */

insert  into `userdetail`(`userDetailID`,`name`,`email`,`username`,`password`,`userType`,`phone`,`branchName`,`reportingManager`,`deskNo`) values (9,'nirav','nirav90up@gmail.com','admin','admin','admin','918905221921',NULL,NULL,NULL),(33,'patel rajan sureshbhai','rajan@gmail.com','rajan','test','6','8905221921','ahmedabad','jitu bhai','12121212111'),(34,'patel mohit sureshbhai','mohit@gmail.com','mohit1212','mohit','4','9898989898','baroda','rajan','1101011011010'),(35,'nisit','nisit@yahoo.com','nisit','test','5','898989989','baroda','mohit','dfasdfasd'),(36,'pratik','pratik@patel.com','pratik','test','3','3123123123','baroda','nisit','2312312'),(38,'prajapati nimesh','nimesh@gmail.com','nimesh','test','5','88989','ahmedabad','patel mohit sureshbhai','1212121212'),(39,'prajapati umesh yadav','yadav@gmail.com','yadav','test','6','32323233','baroda','prajapati nimesh','412341234'),(41,'vijay','vijay@gmail.com','vijay','test','6','77777777777','ahmedabad','nisit','13413413412341234'),(42,'manan','manan@gmail.com','manan','test','6','898988888','ahmedabad','nisit','88878788788');

/* Procedure structure for procedure `usp_BrokrageInsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_BrokrageInsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_BrokrageInsert`(
    
	IN pcid INT,
	IN insuranceCompanyName VARCHAR(50) , 
	IN percentage DOUBLE, 
	IN amount DOUBLE,
	IN shareOfCompany DOUBLE
	
    )
BEGIN
	INSERT INTO `brokeragedetail` 
	(
	`pcid`, 
	`insuranceCompanyName`, 
	`percentage`, 
	`amount`,
	`shareofCompany`
	)
	VALUES
	(
	pcid, 
	insuranceCompanyName, 
	percentage, 
	amount,
	shareOfCompany
	);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insert`(IN clientName VARCHAR(50) )
BEGIN
		
		
			SELECT * FROM  client_detail;
		
		INSERT INTO client_detail(clientName)VALUES(clientName);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_insertClaim` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_insertClaim` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insertClaim`(
 
IN	claimantName varchar(100), 
IN	claimAddress varchar(200), 
IN	areaOfClaim  varchar(100), 
IN	taluka varchar(100), 
IN	district varchar(100), 
IN	pincode varchar(100), 
IN	landLineNo varchar(100), 
IN	mobileNo1 varchar(100), 
IN	mobileNo2 varchar(100), 
IN	typeOfQuery varchar(100), 
IN	podDetail varchar(100), 
IN	DateOfIntimation Date, 
IN	namerOfPortFolioDirector varchar(100), 
IN	namerOfInvestigator varchar(100), 
IN	DateOfAppointmentOfInvestigator Date, 
IN	DataEnter varchar(100), 
IN	schemeName varchar(100), 
IN	typeOfClaim varchar(100), 
IN	claimIntimationAmount double, 
IN	StatusOfClaim varchar(100), 
IN	timeLeftToSubmit varchar(100), 
IN	dateOfQuerySend date, 
IN	dateOfDocumentRecevied date, 
IN	remarks varchar(100), 
IN	dateOfIssueCheque date, 
IN	dateOfDispatchCheqe date, 
IN	DispatchAddress varchar(100), 
IN	podNo int
    )
BEGIN
INSERT INTO `mis`.`claimdetail` 
	(
	`claimID`, 
	`claimantName`, 
	`claimAddress`, 
	`areaOfClaim`, 
	`taluka`, 
	`district`, 
	`pincode`, 
	`landLineNo`, 
	`mobileNo1`, 
	`mobileNo2`, 
	`typeOfQuery`, 
	`podDetail`, 
	`DateOfIntimation`, 
	`namerOfPortFolioDirector`, 
	`namerOfInvestigator`, 
	`DateOfAppointmentOfInvestigator`, 
	`DataEnter`, 
	`schemeName`, 
	`typeOfClaim`, 
	`claimIntimationAmount`, 
	`StatusOfClaim`, 
	`timeLeftToSubmit`, 
	`dateOfQuerySend`, 
	`dateOfDocumentRecevied`, 
	`remarks`, 
	`dateOfIssueCheque`, 
	`dateOfDispatchCheqe`, 
	`DispatchAddress`, 
	`podNo`
	)
	VALUES
	(
	
	claimID, 
	claimantName, 
	claimAddress, 
	areaOfClaim, 
	taluka, 
	district, 
	pincode, 
	landLineNo, 
	mobileNo1, 
	mobileNo2, 
	typeOfQuery, 
	podDetail, 
	DateOfIntimation, 
	namerOfPortFolioDirector, 
	namerOfInvestigator, 
	DateOfAppointmentOfInvestigator, 
	DataEnter, 
	schemeName, 
	typeOfClaim, 
	claimIntimationAmount, 
	StatusOfClaim, 
	timeLeftToSubmit, 
	dateOfQuerySend, 
	dateOfDocumentRecevied, 
	remarks, 
	dateOfIssueCheque, 
	dateOfDispatchCheqe, 
	DispatchAddress, 
	podNo
	);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_insertClientAndPolicyDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_insertClientAndPolicyDetail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_insertClientAndPolicyDetail`(
IN insuredName1 VARCHAR(50),
IN address VARCHAR(50),
IN pincode VARCHAR(50),
IN contactPerson VARCHAR(50),
IN officeNo VARCHAR(50),
IN faxNo VARCHAR(50),
IN mobileNo VARCHAR(50),
IN RmName VARCHAR(50),
IN email VARCHAR(50),
IN  policyName1 VARCHAR(50),
IN  insuranceCompanyName VARCHAR(50),
IN  branchOfCompany VARCHAR(50),
IN  referPerson VARCHAR(50),
IN  dateOfInward VARCHAR(50),
IN  riskStartDate VARCHAR(50),
IN  riskEndDate VARCHAR(50),
IN  policyNo VARCHAR(50),
IN  expiryPolicyNo VARCHAR(50),
IN  riskLocation VARCHAR(50),
IN  riskAddress VARCHAR(50),
IN  riskPincode VARCHAR(50),
IN  city VARCHAR(50),
IN  state VARCHAR(50),
IN  country VARCHAR(50),
OUT pcid1 INT
)
BEGIN
	
	declare clientID1 INT ;
	declare	policyID1 INT ;
	
	INSERT INTO `mis`.`client_detail` 
	( 
	`insuredName`, 
	`address`, 
	`pincode`, 
	`contactPerson`, 
	`officeNo`, 
	`faxNo`, 
	`mobileNo`, 
	`rmName`, 
	`emailId`
	)
	VALUES
	(
	insuredName1, 
	address, 
	pincode, 
	contactPerson, 
	officeNo, 
	faxNo, 
	mobileNo, 
	rmName, 
	email
	);
	
	
	
	
	
	SELECT  clientID into clientID1 FROM client_detail WHERE insuredName= insuredName1 limit 0,1;	
	INSERT INTO `mis`.`policy_detail` 
	(
	`clientID`,
	`policyName`, 
	`insuranceCompanyName`, 
	`branchOfCompany`, 
	`referPerson`, 
	`dateOfInward`, 
	`riskStartDate`, 
	`riskEndDate`, 
	`policyNo`, 
	`expiryPolicyNo`, 
	`riskLocation`, 
	`riskAddress`, 
	`riskPincode`,
	`city`,
	`state`,
	`country`
	
	)
	VALUES
	(
	clientID1,
	policyName1, 
	insuranceCompanyName, 
	branchOfCompany, 
	referPerson, 
	dateOfInward , 
	riskStartDate, 
	riskEndDate, 
	policyNo, 
	expiryPolicyNo, 
	riskLocation, 
	riskAddress, 
	riskPincode,
	city,
	state,
	country
	);
	
	SELECT  policyID into policyID1  FROM policy_master WHERE policyName=policyName1 LIMIT 0,1;
	
	
	INSERT INTO `mis`.`policyclient` 
	(
	`policyID`, 
	`clientID`
	)
	VALUES
	(
	policyID1, 
	clientID1
	);
	
	set pcid1 = (SELECT distinct pcID FROM policyclient WHERE (policyID = policyID1 AND clientID =clientID1) limit 0,1); 	
	
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_otherPolicyDataInsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_otherPolicyDataInsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_otherPolicyDataInsert`(
    
	IN pcid INT, 
	in NameOfBank varchar(50),
	IN city VARCHAR(50),
	IN Branch VARCHAR(50), 
	IN CompanyName VARCHAR(50), 
	IN shareOfCompany double, 
	IN modeOfPayment VARCHAR(50), 
	IN bankName VARCHAR(50), 
	IN chequeOrDDNo VARCHAR(50), 
	IN chequeOrDDDate VARCHAR(50), 
	IN chequeOrDDAmount VARCHAR(50) 
	
    )
BEGIN
    
	
	
	INSERT INTO `hypothicationdetail` 
	(
	`pcid`, 
	`NameOfBank`, 
	`city`, 
	`Branch`
	)
	VALUES
	(
	pcid, 
	NameOfBank, 
	city, 
	Branch
	);
	
	INSERT INTO `coinsurancedetail` 
	(`pcid`, 
	`CompanyName`, 
	`shareOfCompany`
	)
	VALUES
	(
	pcid, 
	CompanyName, 
	shareOfCompany
	);
	
	
	INSERT INTO `paymentdetail` 
	(`pcid`, 
	`modeOfPayment`, 
	`bankName`, 
	`chequeOrDDNo`, 
	`chequeOrDDDate`, 
	`chequeOrDDAmount`
	)
	VALUES
	(
	pcid, 
	modeOfPayment, 
	bankName, 
	chequeOrDDNo, 
	chequeOrDDDate, 
	chequeOrDDAmount
	);
	
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_policyClientList` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_policyClientList` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_policyClientList`(
	
	in clientID1 int
    
    
    )
BEGIN
	select * from policy_detail where  clientID=clientID1;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_policyDataShow` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_policyDataShow` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_policyDataShow`(
	in pcID1 int
)
BEGIN
	select * from policyclient,hypothicationdetail,coinsurancedetail,paymentdetail,brokeragedetail where
	
	policyclient.pcID=hypothicationdetail.pcID	
	AND	
	hypothicationdetail.pcID=coinsurancedetail.pcID	
	AND	
	coinsurancedetail.pcID=paymentdetail.pcID
	and 
	paymentdetail.pcID=brokeragedetail.pcID	
	AND	
	policyclient.pcID=pcID1; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_setTarget` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_setTarget` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_setTarget`(
    
	  
	IN userDetailID INT ,
	IN name2 varchar(50) ,
	IN deskNo   	VARCHAR(50) ,		
	IN January INT,	
	IN February	INT,	
	IN March		INT,	
	IN April		INT,	
	IN May		INT ,	
	IN June		INT ,	
	IN July		INT ,	
	IN August	INT ,		
	IN September	INT ,	
	IN October	INT ,		
	IN November	INT ,	
	IN December	INT,
	IN totalAmount	INT
	
    )
BEGIN
	DECLARE reportingName VARCHAR(50);
	DECLARE rmanager VARCHAR(50);
	DECLARE userID INT;
	
	SELECT userDetailID INTO userID FROM userdetail WHERE NAME=name2;		
	
	SELECT reportingManager INTO reportingName FROM userdetail WHERE NAME=name2 ;		
	
INSERT INTO `mis`.`target_detail` 
	(
	
	`userDetailID`, 
	`name`, 
	`reportingManager`, 
	`deskNo`, 
	`January`, 
	`February`, 
	`March`, 
	`April`, 
	`May`, 
	`June`, 
	`July`, 
	`August`, 
	`September`, 
	`October`, 
	`November`, 
	`December`, 
	`totalAmount`
	)
	VALUES
	(
	
	userID, 
	name2, 
	reportingName, 
	deskNo, 
	January, 
	February, 
	March, 
	April, 
	May, 
	June,
	July, 
	August, 
	September, 
	October, 
	November, 
	December, 
	totalAmount
	);
	
	
		
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_SumInsuredInsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_SumInsuredInsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_SumInsuredInsert`(
	
	IN pcid INT , 
	IN particulars VARCHAR(50), 
	IN SumInsINR INT, 
	IN policyRate DOUBLE, 
	IN premiumeST VARCHAR(50), 
	IN serviceTax DOUBLE, 
	IN stampDuty INT, 
	IN tpPremium DOUBLE, 
	IN discount DOUBLE, 
	IN premiumBeforeTerroAndTax DOUBLE, 
	IN terrorismPremium DOUBLE, 
	IN premiumNetOfServiceTax DOUBLE, 
	IN number INT, 
	IN premiumPayable DOUBLE, 
	IN dateOfBirth VARCHAR(25), 
	IN ownDamagePremium DOUBLE, 
	IN brokerage DOUBLE, 
	IN premiumEligibleForBrokerage DOUBLE, 
	IN brokerageAmount DOUBLE, 
	IN renewalDate VARCHAR(25), 
	IN noOfWorkers INT, 
	IN salaryPM INT, 
	IN totalSumInsuredPerAnnum DOUBLE, 
	IN rate DOUBLE 
	
    )
BEGIN
    
    
    
INSERT INTO `mis`.`sum_insured_detail` 
	(
	`pcid`, 
	`particulars`, 
	`SumInsINR`, 
	`policyRate`, 
	`totalPremiumPaid`, 
	`serviceTax`, 
	`stampDuty`, 
	`tpPremium`, 
	`discount`, 
	`premiumBeforeTerroAndTax`, 
	`terrorismPremium`, 
	`premiumNetOfServiceTax`, 
	`number`, 
	`premiumPayable`, 
	`dateOfBirth`, 
	`ownDamagePremium`, 
	`brokerage`, 
	`premiumEligibleForBrokerage`, 
	`brokerageAmount`, 
	`renewalDate`, 
	`noOfWorkers`, 
	`salaryPM`, 
	`totalSumInsuredPerAnnum`, 
	`rate`
	)
	VALUES
	(
	pcid, 
	particulars, 
	SumInsINR, 
	policyRate, 
	premiumeST, 
	serviceTax, 
	stampDuty, 
	tpPremium, 
	discount, 
	premiumBeforeTerroAndTax, 
	terrorismPremium, 
	premiumNetOfServiceTax, 
	number, 
	premiumPayable, 
	dateOfBirth, 
	ownDamagePremium, 
	brokerage, 
	premiumEligibleForBrokerage, 
	brokerageAmount, 
	renewalDate, 
	noOfWorkers, 
	salaryPM, 
	totalSumInsuredPerAnnum, 
	rate
	);
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_TargetAchive` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_TargetAchive` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_TargetAchive`(
	
	in month varchar(10)
    )
BEGIN
	declare s varchar(20);
	DECLARE clientID1 INT ;
	DECLARE	policyID1 INT ;
	DECLARE policyName1 VARCHAR(20);
	
	
	set @s := CONCAT('-', MONTH, '-');
	
	SELECT  * FROM policy_detail WHERE dateOfInward LIKE CONCAT('%', @s , '%');
	
	SELECT  * FROM policy_detail WHERE dateOfInward LIKE CONCAT('%', @s , '%');
	
	SELECT  * FROM policy_master WHERE policyName=policyName1 LIMIT 0,1;	
	
	select * from policyclient where policyID = policyID1 ANd clientID=clientID1 LIMIT 0,1;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_updateClientAndPolicyDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_updateClientAndPolicyDetail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_updateClientAndPolicyDetail`(
INOUT insuredName1 VARCHAR(50), 
IN address VARCHAR(50), 
IN pincode VARCHAR(50), 
IN contactPerson VARCHAR(50), 
IN officeNo VARCHAR(50), 
IN faxNo VARCHAR(50), 
IN mobileNo VARCHAR(50),
IN RmName VARCHAR(50),
IN email VARCHAR(50),
INOUT policyName VARCHAR(50),
 IN insuranceCompanyName VARCHAR(50),
  IN branchOfCompany VARCHAR(50),
   IN referPerson VARCHAR(50), 
   IN dateOfInward VARCHAR(50),
    IN riskStartDate VARCHAR(50),
     IN riskEndDate VARCHAR(50), 
     IN policyNo VARCHAR(50), 
     IN expiryPolicyNo VARCHAR(50), 
     IN riskLocation VARCHAR(50),
      IN riskAddress VARCHAR(50), 
      IN riskPincode VARCHAR(50), 
      OUT pcid1 INT , 
      OUT clientID1 INT,
      OUT policyID1 INT
       )
BEGIN
declare clientID1 INT;
	declare	policyID1 INT ;
	SELECT  clientID INTO clientID1  FROM client_detail WHERE client_detail.insuredName=insuredName1 limit 0,1;	
	
UPDATE `mis`.`client_detail`
	SET
		`insuredName` = insuredName,
		`address` = address,
		`pincode` = pincode,
		`contactPerson` = contactPerson,
		`officeNo` = officeNo,
		`faxNo` = faxNo,
		`mobileNo` = mobileNo,
		`rmName` = rmName,
		`emailId` = email
	WHERE 
		client_detail.clientID = clientID1;
UPDATE `mis`.`policy_detail`
	SET
	
	`insuranceCompanyName` = insuranceCompanyName,
	`branchOfCompany` = branchOfCompany,
	`referPerson` = referPerson,
	`dateOfInward` = dateOfInward,
	`riskStartDate` = riskStartDate,
	`riskEndDate` = riskEndDate,
	`policyNo` = policyNo,
	`expiryPolicyNo` = expiryPolicyNo,
	`riskLocation` = riskLocation ,
	`riskAddress` = riskAddress,
	`riskPincode` = riskPincode
WHERE 
	clientID = clientID1 
AND
	policyName = policyName;
	
	SELECT  policyID INTO policyID1 FROM policy_master WHERE policy_master.policyName=policyName LIMIT 0, 1;
	
	SELECT  pcID INTO pcid1 FROM policyclient WHERE (policyclient.policyID=policyID1 AND policyclient.clientID=clientID1) LIMIT 0, 1; 	
END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_updateOtherPolicyDataInsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_updateOtherPolicyDataInsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_updateOtherPolicyDataInsert`(
    
	IN pcid INT, 
	IN insuranceCompanyName VARCHAR(50) , 
	IN percentage double, 
	in amount double,
	in NameOfBank varchar(50),
	IN city VARCHAR(50),
	IN Branch VARCHAR(50), 
	IN CompanyName VARCHAR(50), 
	IN shareOfCompany double, 
	IN modeOfPayment VARCHAR(50), 
	IN bankName VARCHAR(50), 
	IN chequeOrDDNo VARCHAR(50), 
	IN chequeOrDDDate VARCHAR(50), 
	IN chequeOrDDAmount VARCHAR(50) 
	
    )
BEGIN
    
	UPDATE `mis`.`brokeragedetail`
	SET
		
		`insuranceCompanyName` = insuranceCompanyName,
		`percentage` = percentage,
		`amount` = amount
	WHERE 
		`pcid` = pcid;
	UPDATE `mis`.`hypothicationdetail`
	SET
		
		`NameOfBank` = NameOfBank,
		`city` = city,
		`Branch` = Branch
	WHERE 
		`pcid` = pcid;
	UPDATE `mis`.`coinsurancedetail`
	SET
		
		`CompanyName` = CompanyName,
		`shareOfCompany` = shareOfCompany
	WHERE 
		`pcid` = pcid;
	
	UPDATE `mis`.`paymentdetail`
	SET
		
		`modeOfPayment` = modeOfPayment,
		`bankName` = bankName,
		`chequeOrDDNo` = chequeOrDDNo,
		`chequeOrDDDate` = chequeOrDDDate,
		`chequeOrDDAmount` = chequeOrDDAmount
	WHERE 
		`pcid` = pcid;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usp_updateSumInsuredInsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `usp_updateSumInsuredInsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_updateSumInsuredInsert`(
	in pcid int, 
	in particulars varchar(50) , 
	in SumInsINR VARCHAR(50), 
	in policyRate VARCHAR(50) , 
	in premiumeST VARCHAR(50), 
	in serviceTax VARCHAR(50), 
	in stampDuty VARCHAR(50), 
	in totalPremiume VARCHAR(50)
     
    )
BEGIN
    
UPDATE `mis`.`sum_insured_detail`
	SET
		
		`particulars` = particulars,
		`SumInsINR` = SumInsINR,
		`policyRate` = policyRate,
		`premiumeST` = premiumeST,
		`serviceTax` = serviceTax,
		`stampDuty` = stampDuty,
		`totalPremiume` = totalPremiume
	WHERE
		`pcid`=pcid ;
 END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
