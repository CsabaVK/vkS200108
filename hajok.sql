 /*A hajó osztályokat tartalmazó tábla*/
 CREATE TABLE `$Hajo_osztalyok`(
	`osztaly` varchar(30),
	`tipus` enum('hh', 'hc') COMMENT 'hh=hadihajó, hc=hadicirkáló',
	`orszag` varchar(30),
	`agyuk_szama` tinyint,
	`kaliber` tinyint COMMENT 'Az ágyú átmérője Inch-ben',
	`vizkiszoritas` smallint UNSIGNED COMMENT 'Tonna',
	CONSTRAINT `$Hajo_osztalyok_pk` primary key(`osztaly`)
 )DEFAULT CHARSET = utf8 COMMENT 'A halyóosztályokat tartalmazó tábla';

/*A hajókat tartalmazó tábla*/
CREATE TABLE `$Hajok`(
	`nev` varchar(30) primary key,	
	`osztaly` varchar(30) NOT NULL,
	`felavatva` smallint,
	CONSTRAINT `$Hajo_osztalyok_fk_1` FOREIGN KEY(`osztaly`) REFERENCES `$Hajo_osztalyok`(`osztaly`)
)DEFAULT CHARSET = utf8 COMMENT 'A halyókat tartalmazó tábla';
 
/*A csatákat tartalmazó tábla*/
CREATE TABLE `$Csatak`(
	`nev` varchar(30),
	`datum` date,
	CONSTRAINT `$Csatak_pk` PRIMARY KEY(`nev`)
)DEFAULT CHARSET = utf8 COMMENT 'A csatákat tartalmazó tábla';

/*A csaták eredményeit tartalmazó tábla*/
CREATE TABLE `$Kimenetelek`(
	`hajo` varchar(30),
	`csata` varchar(30),
	`eredmeny` enum('ép','elsűlyedt', 'megsérült') COMMENT 'Csak ép, elsűlyedt v. megsérült érték kerülhet ebbe az attribútumba!',
	CONSTRAINT `$Kimenetelek_pk` PRIMARY KEY(`hajo`,`csata`)
)DEFAULT CHARSET = utf8 COMMENT 'A csatákat tartalmazó tábla';



/*Adatok*/

INSERT INTO `$Hajo_osztalyok` VALUES
('Bismarch','hh','Németország',8,15,42000),
('Iowa','hh','USA',9,16,46000),
('Kongo','hc','Japán',8,14,32000),
('North Carolina','hh','USA',9,16,37000),
('Renown','hc','Nagy-Britannia',6,15,32000),
('Revenge','hh','Nagy-Britannia',8,15,29000),
('Tenessee','hh','USA',12,14,32000),
('Yamato','hh','Japám',9,18,65000);

INSERT INTO  `$Hajok` VALUES
('California','Tenessee',1921),
('Haruna','Kongo',1915),
('Hiei','Kongo',1914),
('Iowa','Iowa',1943),
('Kirishima','Kongo',1915),
('Kongo','Kongo',1913),
('Missuri','Iowa',1944),
('Musashi','Yamato',1942),
('New Jersey','Iowa',1943),
('North Carolina','North Carolina',1941),
('Ramillies','Revenge',1917),
('Renown','Renown',1916),
('Repulse','Renown',1916),
('Resolution','Revenge',1916),
('Revenge','Revenge',1916),
('Royal Oak','Revenge',1916),
('Royal Sovereign','Revenge',1916),
('Tenessee','Tenessee',1920),
('Washington','North Carolina',1941),
('Wisconsin','Iowa',1944),
('Yamato','Yamato',1941);

INSERT INTO  `$Csatak` VALUES
('Denmark Strait', '1941-05-24'),
('Guadalcanal','1942-11-15'),
('North Cape','1943-12-26'),
('Suriago Strait','1944-10-25');

INSERT INTO  `$Kimenetelek` VALUES
('Arizona','Pearl Habor','elsülyedt'),
('Biscmark','Denmark Strait','elsülyedt'),
('California','Suriago Strait','ép'),
('Duke of York','North Cape','ép'),
('Fuso','Suriago Strait','elsülyedt'),
('Hood','Denmark Strait','elsülyedt'),
('King George V','Denmark Strait','ép'),
('Kirishima','Guadalcanal','elsülyedt'),
('Prince of Wales','Denmark Strait','megsérült'),
('Rodney','Denmark Strait','ép'),
('Scharnhorst','North Cape','elsülyedt'),
('South Dakota','Guadalcanal','megsérült'),
('Tenessee','Suriago Strait','ép'),
('Washington','Guadalcanal','ép'),
('West Virginia','Suriago Strait','ép'),
('Yamashira','Suriago Strait','elsülyedt');
