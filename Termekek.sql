/* Termék, PC, Laptop és Nyomtató táblaadatok */ 
CREATE TABLE `F_Termek` (
  `gyarto` char(1) DEFAULT NULL,
  `modell` int(11) NOT NULL,
  `tipus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`modell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE `F_PC` (
  `modell` int(11) NOT NULL,
  `sebesseg` float(3,2) DEFAULT NULL,
  `memoria` smallint(6) DEFAULT NULL,
  `merevlemez` smallint(6) DEFAULT NULL,
  `ar` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`modell`),
  CONSTRAINT `Termek_pk` FOREIGN KEY (`modell`) REFERENCES `F_Termek` (`modell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `F_Laptop` (
  `modell` int(11) NOT NULL,
  `sebesseg` float(3,2) DEFAULT NULL,
  `memoria` smallint(6) DEFAULT NULL,
  `merevlemez` tinyint(3) unsigned DEFAULT NULL,
  `kepernyo` float(3,1) DEFAULT NULL,
  `ar` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`modell`),
  CONSTRAINT `Termek_lp_pk` FOREIGN KEY (`modell`) REFERENCES `F_Termek` (`modell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `F_Nyomtato` (
  `modell` int(11) NOT NULL,
  `szines` enum('igen','nem') DEFAULT 'nem',
  `tipus` varchar(12) DEFAULT NULL,
  `ar` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`modell`),
  CONSTRAINT `Termek_ny_pk` FOREIGN KEY (`modell`) REFERENCES `F_Termek` (`modell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `F_Termek` VALUES
('A',1001,'pc'),
('A',1002,'pc'),
('A',1003,'pc'),
('A',2004,'laptop'),
('A',2005,'laptop'),
('A',2006,'laptop'),
('B',1004,'pc'),
('B',1005,'pc'),
('B',1006,'pc'),
('B',2007,'laptop'),
('C',1007,'pc'),
('D',1008,'pc'),
('D',1009,'pc'),
('D',1010,'pc'),
('D',3004,'nyomtato'),
('D',3005,'nyomtato'),
('E',1011,'pc'),
('E',1012,'pc'),
('E',1013,'pc'),
('E',2001,'laptop'),
('E',2002,'laptop'),
('E',2003,'laptop'),
('E',3001,'nyomtato'),
('E',3002,'nyomtato'),
('E',3003,'nyomtato'),
('F',2008,'laptop'),
('F',2009,'laptop'),
('G',2010,'laptop'),
('H',3006,'nyomtato'),
('H',3007,'nyomtato');

INSERT INTO `F_PC` VALUES
(1001,2.66,1024,250,2114),
(1002,2.10,512,250,995),
(1003,1.42,512,80,478),
(1004,2.80,1024,250,649),
(1005,3.20,512,250,630),
(1006,3.20,1024,320,1049),
(1007,2.20,1024,200,510),
(1008,2.20,2048,250,770),
(1009,2.00,1024,250,650),
(1010,2.80,2048,300,770),
(1011,1.86,2048,160,959),
(1012,2.80,1024,160,649),
(1013,3.06,512,80,529);

INSERT INTO `F_Laptop` VALUES
(2001,2.00,2048,240,20.1,3673),
(2002,1.73,1024,80,17.0,949),
(2003,1.80,512,60,15.4,549),
(2004,2.00,512,60,13.3,1150),
(2005,2.16,1024,120,17.0,2500),
(2006,2.00,2048,80,15.4,1700),
(2007,1.83,1024,120,13.3,1429),
(2008,1.60,1024,100,15.4,900),
(2009,1.60,512,80,14.1,680),
(2010,2.00,2048,160,15.4,2300);

INSERT INTO `F_Nyomtato` VALUES
(3001,'igen','tintasugaras',99),
(3002,'nem','lézer',239),
(3003,'igen','lézer',899),
(3004,'igen','tintasugaras',120),
(3005,'nem','lézer',120),
(3006,'igen','tintasugaras',100),
(3007,'igen','lézer',200);
