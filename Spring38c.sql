CREATE DATABASE `springsh`;
USE `springsh`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `login` VALUES (1,'admin','admin@gmail.com','admin'),
(2,'new','new@gmail.com','123');

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `member` VALUES (1,'munna','munia@gmail.com','123'),
(2,'munia','munia@gmail.com','123'),(3,'munna','reazus@ymail.com','123');

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `orders` VALUES (1,'PHONE','8000','4','0'),
(2,'SOAP','200','5','800'),(4,'SOAP','200','5','0'),
(5,'RICE','2500','4','7500'),(6,'PEN','10','4','0');

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) DEFAULT NULL,
  `price` int(45) DEFAULT NULL,
  PRIMARY KEY (`pid`)
);

INSERT INTO `product` VALUES (1,'LUX',100),(2,'SOAP',200),
(5,'PHONE',8000),(6,'RICE',2500),(7,'PEN',10),
(8,'PENCIL',10);

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `purchase` VALUES (1,1,'01969037346',8000,32000,'4'),
(2,2,'01712671542',200,1000,'5'),(3,3,'01902086552',100,400,'4'),
(4,1,'011223344556',8000,32000,'4'),(5,4,'01454545',200,1000,'5'),
(6,4,'0145454887',200,1000,'5'),(7,5,'4545454545',2500,10000,'4');
