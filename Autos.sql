/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 10.1.28-MariaDB : Database - ecs-8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecs-8` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ecs-8`;

/*Table structure for table `autos` */

DROP TABLE IF EXISTS `autos`;

CREATE TABLE `autos` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Marca` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `autos` */

insert  into `autos`(`Id`,`Marca`) values 
(1,'Peugeot'),
(2,'Fiat'),
(3,'Chevrolet'),
(4,'Ford');

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` text,
  `Apellido` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `pacientes` */

insert  into `pacientes`(`Id`,`Nombre`,`Apellido`) values 
(1,'Adan','Grosso\r\n'),
(2,'Flor ','Farru'),
(4,'Luciano','Peco');

/*Table structure for table `turnos` */

DROP TABLE IF EXISTS `turnos`;

CREATE TABLE `turnos` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha` text,
  `PacienteId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Fk_Pacientes` (`PacienteId`),
  CONSTRAINT `Fk_Pacientes` FOREIGN KEY (`PacienteId`) REFERENCES `pacientes` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `turnos` */

insert  into `turnos`(`Id`,`Fecha`,`PacienteId`) values 
(1,'2023-10-05\r\n',1),
(2,'2023-10-10\r\n',1),
(3,'2023-11-21',1),
(4,'2023-12-12\r\n',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
