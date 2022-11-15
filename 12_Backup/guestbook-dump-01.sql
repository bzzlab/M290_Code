-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: guestBookDB
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Create admin and set password
drop user if exists 'adminGuestBookDB'@'localhost';
create user 'adminGuestBookDB'@'localhost' identified WITH mysql_native_password by 'hello';
-- drop & create database
drop database if exists `guestBookDB`;
CREATE DATABASE `guestBookDB` /*!40100 DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci */;
-- set privileges for db admin
GRANT all privileges ON guestBookDB.* TO 'adminGuestBookDB'@'localhost';

-- set default db
use guestBookDB;


--
-- Table structure for table `benutzer`
--

DROP TABLE IF EXISTS `benutzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benutzer` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `vorname` varchar(255) DEFAULT NULL,
  `nachname` varchar(255) DEFAULT NULL,
  `adresse1` varchar(255) DEFAULT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `postleitzahl` varchar(20) DEFAULT NULL,
  `stadt` varchar(255) DEFAULT NULL,
  `land` varchar(100) DEFAULT NULL,
  `telefon` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `datum` varchar(255) DEFAULT NULL,
  `FK_login` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_login` (`FK_login`),
  CONSTRAINT `benutzer_ibfk_1` FOREIGN KEY (`FK_login`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzer`
--

LOCK TABLES `benutzer` WRITE;
/*!40000 ALTER TABLE `benutzer` DISABLE KEYS */;
INSERT INTO `benutzer` VALUES (1879,'Kylie','Waller','1222 Ornare St.','Ap #765-1183 Mauris Road','2631','Muzzafarabad','Falkland Islands','(030086) 701330','(036226) 289162','2019-10-31 03:19:22',1),(1880,'Wesley','Rosario','735-4317 Montes, St.','Ap #879-1948 Porttitor Ave','25894','Richmond','Western Sahara','(031543) 684520','(0813) 94358793','2020-08-05 03:56:52',2),(1881,'Rose','Romero','134-4549 Vitae Rd.','8241 Id, Rd.','16371','Lancaster','Cook Islands','(09480) 4115847','(08351) 1611442','2020-09-26 22:38:40',3),(1882,'Hedwig','Chambers','P.O. Box 661, 4383 Urna Rd.','P.O. Box 465, 9164 Ornare Rd.','14230','Catanzaro','Russian Federation','(02018) 9810910','(067) 35633802','2019-03-28 12:57:46',4),(1883,'Ramona','Michael','4744 Id Ave','P.O. Box 996, 7383 Egestas Rd.','948735','Mocoa','Timor-Leste','(031500) 284114','(0488) 93868746','2020-03-03 08:32:58',5),(1884,'Chester','Shelton','Ap #803-8553 Quam Street','P.O. Box 607, 5568 Suspendisse Street','02204','Doetinchem','Bahamas','(027) 85415954','(034847) 633459','2019-11-05 18:03:01',6),(1885,'Jasmine','Daugherty','P.O. Box 475, 9248 Non Street','Ap #662-5756 Auctor St.','50406','Saint-Denis-Bovesse','Czech Republic','(022) 04157343','(037) 48432956','2019-07-16 21:56:32',7),(1886,'Beatrice','Cooley','587-2528 Et Street','P.O. Box 790, 4096 Dictum St.','47749','Watson Lake','Tokelau','(032074) 098786','(038745) 612065','2020-08-01 04:10:40',8),(1887,'Dieter','Shaffer','8485 Cursus Rd.','531-6089 Aliquet St.','Z2452','Nederokkerzeel','Åland Islands','(0042) 58119617','(030699) 569943','2020-04-23 22:12:55',9),(1888,'Isaac','Wilson','P.O. Box 571, 5521 Aliquet St.','Ap #374-2291 Sem, Road','37432','Kirkby Lonsdale','Ethiopia','(039206) 639950','(033114) 209756','2020-03-23 19:29:28',10),(1889,'Cynthia','Molina','Ap #838-1802 Lectus. Road','Ap #726-2231 Semper St.','8810','Nashville','Brunei','(02538) 7264305','(034) 32204633','2020-11-13 22:59:34',11),(1890,'Dean','Hunter','P.O. Box 820, 6520 Montes, Street','Ap #551-227 Vestibulum, Avenue','391171','Stamford','Malta','(033) 08657743','(0732) 77248618','2019-04-03 11:46:16',12),(1891,'Amir','Chaney','461-5848 Cum Road','Ap #128-8995 Ac Street','Z1179','Clermont-Ferrand','Fiji','(07810) 7932318','(036313) 718786','2019-11-24 23:01:10',13),(1892,'Illiana','Diaz','P.O. Box 252, 2951 Sed Rd.','7795 Tincidunt Avenue','6152','Ozherelye','Iceland','(0102) 85531316','(0540) 68974567','2020-03-28 23:22:02',14),(1893,'Xenos','Joseph','499 Aliquam Rd.','P.O. Box 622, 4016 Pulvinar St.','8666','Leeuwarden','Bosnia and Herzegovina','(07975) 5076108','(035279) 560072','2020-09-13 15:42:57',15),(1894,'Aristotle','Slater','Ap #583-6295 Mauris Street','654-6439 Non, Street','177775','Perpignan','Suriname','(0677) 17664850','(06740) 2219209','2020-10-28 03:23:07',16),(1895,'Axel','Harrington','Ap #875-897 Velit. Street','386-8249 Ut Street','27589','Santo Stefano Quisquina','Nauru','(032286) 723642','(070) 28558686','2020-03-31 16:59:40',17),(1896,'Haviva','William','Ap #779-4459 Felis Avenue','Ap #532-3165 Libero Street','10437','Pike Creek','Rwanda','(07854) 6994242','(036626) 083334','2019-12-24 14:42:46',18),(1897,'Sigourney','Marsh','Ap #158-4836 Ut Rd.','865-1536 Sed Street','92289','Lorient','Switzerland','(025) 18628651','(084) 40552655','2020-04-21 04:17:46',19),(1898,'Gretchen','Pollard','Ap #443-412 Accumsan Rd.','Ap #794-3003 A Rd.','6796','Fundación','Viet Nam','(034225) 687484','(01794) 4903271','2019-05-18 23:31:34',20),(1899,'Knox','Leach','Ap #457-2492 Non Avenue','503 Fringilla Road','57821','Jodoigne','Isle of Man','(04467) 5173783','(03024) 2336807','2020-12-19 09:52:27',21),(1900,'Kylee','Cervantes','635-2847 Lorem, Street','P.O. Box 723, 9902 Augue Road','113230','Gignod','Christmas Island','(00961) 6727952','(032) 33416008','2019-08-11 02:05:18',22),(1901,'Damian','Hooper','Ap #960-4759 Ipsum. Rd.','P.O. Box 546, 6760 Arcu St.','82430','Midlands','Kyrgyzstan','(01747) 2394783','(032004) 966002','2020-07-07 21:49:40',23),(1902,'Neve','Donaldson','9067 Mollis. Rd.','959-2870 Felis St.','731040','Huesca','Saint Lucia','(061) 93100025','(09654) 4477374','2020-12-01 22:44:29',24),(1903,'Giacomo','Carr','8084 Parturient Ave','731-6048 Velit. Road','77813','Thuillies','Malaysia','(045) 23032607','(033886) 103938','2020-01-19 03:49:06',25),(1904,'Silas','Dudley','Ap #988-1992 Luctus Avenue','3972 Vel, Rd.','DL83 8WN','Sint-Pieters-Kapelle','Virgin Islands, British','(0384) 39818801','(038744) 651665','2021-01-11 01:30:53',26),(1905,'Erasmus','Atkins','1384 At Ave','573-6541 Sodales Rd.','6256','Duluth','Nigeria','(0449) 75959516','(0678) 73937287','2020-12-02 11:45:45',27),(1906,'Kadeem','Daniels','6748 Mi Ave','Ap #368-3458 Quis, Ave','83603','Emden','Turks and Caicos Islands','(0822) 12853032','(0982) 98662301','2020-07-23 15:44:33',28),(1907,'Charity','Hayes','2343 Ante Street','P.O. Box 535, 4909 Dolor, Avenue','57-972','Gubbio','Kazakhstan','(0659) 99646959','(0658) 80261805','2019-12-11 09:35:08',29),(1908,'Robin','Hale','5003 In Ave','P.O. Box 572, 2335 Non, Ave','LH7M 8QT','North Barrackpur','Germany','(0258) 87649054','(07819) 6490223','2020-07-05 23:43:12',30),(1909,'Madaline','Dillard','Ap #771-2824 Molestie Road','Ap #509-9611 Curabitur St.','2287','Naperville','Thailand','(084) 81163502','(014) 62980671','2021-01-01 22:32:01',31),(1910,'Fulton','Farmer','Ap #406-1302 Eu, Avenue','712-6849 Congue. Ave','25293','Newmarket','Tonga','(036229) 101469','(029) 39730349','2019-11-30 18:34:04',32),(1911,'Baker','Hess','9933 Tortor. Street','4636 Amet, St.','26094','Macduff','Bermuda','(081) 19499820','(0124) 61580446','2020-02-25 01:34:16',33),(1912,'Kaden','Dunn','Ap #284-3101 Tristique St.','P.O. Box 624, 1909 Et, St.','873204','Koblenz','Swaziland','(0428) 01195484','(050) 68581411','2020-12-02 08:22:56',34),(1913,'Baxter','Burnett','1126 Urna. Road','223-9761 Condimentum Avenue','9364','Retie','Ecuador','(08381) 3189096','(02495) 7311606','2020-09-02 02:12:59',35),(1914,'Perry','Leon','Ap #962-5453 Turpis Road','305-930 Augue Street','30955','Villarrica','Samoa','(039048) 770862','(035896) 051117','2020-11-05 21:31:19',36),(1915,'Martha','Morrow','795-8974 Et St.','940-4981 Erat Rd.','17184','Gespeg','Congo (Brazzaville)','(0566) 86312393','(035053) 593564','2020-12-08 10:40:52',37),(1916,'Leslie','Fuller','Ap #210-4410 Tristique Avenue','766-6052 Eget Ave','32072','İskenderun','Senegal','(04496) 9780257','(0300) 95596975','2020-08-12 16:29:58',38),(1917,'Zenia','Merrill','P.O. Box 542, 1200 Proin Rd.','533-5202 Phasellus Avenue','5211 PH','Ludwigsburg','Guadeloupe','(033141) 631912','(035332) 443638','2021-02-05 11:01:26',39),(1918,'Naomi','Dyer','Ap #674-6436 Lorem Rd.','6682 Non Street','905438','Stamford','French Guiana','(0838) 27811063','(0819) 30539853','2021-01-16 06:07:28',40),(1919,'Luke','Mack','P.O. Box 670, 3580 Suspendisse Rd.','999-2495 Sem Av.','58280','College','Iceland','(0487) 10203489','(05758) 7014789','2020-04-29 06:43:16',41),(1920,'Jorden','Oconnor','Ap #366-7796 Fringilla St.','3064 Dui. Avenue','914422','Buckley','Myanmar','(089) 41239635','(032063) 585278','2019-06-26 16:35:24',42),(1921,'Nigel','Daugherty','7253 At, Street','7214 Pede St.','2952 RV','Hay River','Papua New Guinea','(0404) 24931857','(034463) 711163','2019-03-08 15:40:30',43),(1922,'Cherokee','Navarro','P.O. Box 799, 5882 Diam Avenue','979-6696 Elit, Avenue','19132','Bissegem','Canada','(064) 86347241','(037734) 480462','2020-01-30 13:58:47',44),(1923,'Ishmael','Hickman','377-6367 Tincidunt St.','Ap #506-2261 Iaculis, Av.','0915','Borlänge','Virgin Islands, British','(061) 62769241','(05896) 7169460','2020-01-21 04:39:27',45),(1924,'Nell','Cooley','Ap #317-6844 Sed St.','3159 Placerat, Ave','379580','Gimhae','Macao','(0391) 45058626','(072) 81583364','2020-11-15 08:55:48',46),(1925,'Brittany','Houston','P.O. Box 315, 9333 Mi. Avenue','P.O. Box 755, 4273 Sit Avenue','3190','Mobile','Antigua and Barbuda','(033715) 678209','(0017) 74082750','2019-07-22 14:30:54',47),(1926,'Nora','Moss','965-9378 Urna St.','5519 Ultrices, Street','5127','Isle-aux-Coudres','Liberia','(033857) 696958','(0429) 12551102','2019-11-08 10:05:30',48),(1927,'Joan','Strong','P.O. Box 534, 6758 Eu St.','444-5902 Proin Street','3564','Aizwal','Cape Verde','(037645) 368904','(06235) 9022845','2020-08-16 20:16:51',49),(1928,'Naomi','Lang','Ap #661-419 Integer Avenue','884-8456 Rutrum Street','210583','Champlain','Botswana','(034356) 307036','(0820) 76944071','2021-02-06 21:13:48',50),(1929,'Colleen','Hurley','P.O. Box 470, 5892 Vel, St.','5977 Consequat Av.','35251','Lachine','Bosnia and Herzegovina','(0313) 77274272','(01789) 0925986','2019-07-06 02:57:38',51),(1930,'Ross','Meyer','P.O. Box 835, 7096 Nunc Av.','5298 Quam. Street','6406','Maidenhead','Afghanistan','(034002) 011184','(0513) 86463252','2020-06-30 17:11:47',52),(1931,'Aileen','Lara','596-3835 Non, Street','Ap #926-8118 Mi Avenue','40725','Sint-Agatha-Berchem','Rwanda','(03128) 6339472','(0754) 00001333','2019-07-18 03:55:00',53),(1932,'Stephanie','Newman','5624 Ornare Rd.','1805 Purus St.','3779','Juneau','Niger','(021) 95369690','(0896) 99744537','2020-02-12 18:06:19',54),(1933,'Inez','Chambers','380-9344 Auctor Rd.','Ap #421-3243 Molestie. St.','T5G 5A1','Volgograd','Falkland Islands','(08865) 3522517','(0356) 45389163','2019-09-09 11:49:51',55),(1934,'Robert','Lewis','567-8363 Sed Street','587-4088 Aliquam Ave','L7W 9P4','Salamanca','Tuvalu','(035300) 226151','(0952) 24761342','2020-06-19 19:33:21',56),(1935,'Shaeleigh','Travis','2843 Luctus St.','P.O. Box 807, 5211 Parturient Rd.','4879','Columbia','Saint Kitts and Nevis','(07914) 4014637','(0322) 51595146','2020-11-17 10:17:28',57),(1936,'Christen','Garcia','991-6989 Nunc Av.','815-3421 Cursus Avenue','53386','Purulia','Indonesia','(039875) 647581','(00627) 7411547','2019-07-01 02:32:39',58),(1937,'Merritt','Buchanan','Ap #246-5423 Quis St.','7798 Eget, Avenue','712301','Eckernförde','Virgin Islands, United States','(0900) 13975109','(046) 74969387','2020-03-14 14:01:39',59),(1938,'Lareina','Morse','P.O. Box 197, 4943 Sociis Ave','649-8595 Velit Avenue','36152-619','Strombeek-Bever','Oman','(0994) 19456861','(038535) 196611','2020-10-28 06:29:14',60),(1939,'Sigourney','Summers','P.O. Box 334, 1718 Magnis Ave','Ap #936-6786 Metus Ave','838952','Castres','Latvia','(02626) 5753253','(038082) 722985','2021-02-07 14:10:09',61),(1940,'Chloe','Stuart','8157 Sit Rd.','9018 Quis Av.','18368','Harlech','Chad','(08491) 4583321','(036059) 812308','2019-04-01 04:23:03',62),(1941,'Deacon','Cain','P.O. Box 617, 9832 Natoque Avenue','Ap #924-390 Integer Road','60216','Muno','San Marino','(035200) 206662','(052) 09419601','2021-02-10 14:28:10',63),(1942,'Nita','Fleming','884-3635 Nunc Av.','P.O. Box 280, 9930 Phasellus Rd.','18578','Surazh','Burkina Faso','(001) 40635281','(08736) 1917893','2019-03-07 06:17:38',64),(1943,'Mikayla','Prince','P.O. Box 453, 5220 Vitae Rd.','1748 Tristique Av.','285450','Brentwood','Macao','(0901) 33640073','(038490) 193846','2019-06-26 01:18:23',65),(1944,'Kuame','Potts','P.O. Box 206, 4744 Lorem Street','1512 Tellus Rd.','3428','Gallicchio','Cape Verde','(0496) 03155331','(052) 51544975','2019-09-16 21:44:48',66),(1945,'Cameron','Holt','P.O. Box 966, 9677 Pellentesque Ave','5798 Consequat, St.','36472','Delicias','Guatemala','(041) 06426143','(034572) 174702','2019-07-10 08:02:45',67),(1946,'Graiden','Nunez','5440 Eu Rd.','Ap #648-3033 Neque. Rd.','3040','Saint John','Sudan','(03153) 9464272','(0533) 47596928','2019-10-26 12:19:32',68),(1947,'Ulric','Gibson','P.O. Box 280, 3307 Tortor Ave','P.O. Box 259, 8830 Auctor Rd.','1197','Bonvicino','Solomon Islands','(005) 10439047','(037170) 938808','2019-09-25 03:04:21',69),(1948,'Deborah','Dale','P.O. Box 907, 6915 Proin St.','3317 Consectetuer Ave','470577','Montleban','Barbados','(054) 62996510','(03774) 1759621','2020-06-09 21:12:53',70),(1949,'Kareem','Joseph','Ap #294-1226 Magna, Road','Ap #935-149 Ultricies Rd.','29464-14347','Marchihue','Luxembourg','(033486) 518581','(01793) 9415381','2019-06-18 18:25:41',71),(1950,'Steven','Willis','8403 Nulla Street','Ap #926-322 Mattis Av.','72001','Rivière-du-Loup','Congo, the Democratic Republic of the','(08915) 7160735','(0824) 82967777','2019-11-12 00:33:56',72),(1951,'Scarlett','Mitchell','Ap #126-7667 Lacus. Avenue','P.O. Box 254, 6989 Fames Ave','2617','San Piero a Sieve','Equatorial Guinea','(051) 74339964','(0861) 74741957','2019-11-22 10:06:58',73),(1952,'Mannix','Vincent','9180 Consectetuer St.','386-7086 Non Rd.','83981-680','Stamford','Indonesia','(0201) 74604696','(039064) 722707','2020-07-12 17:04:30',74),(1953,'Jameson','Miller','P.O. Box 264, 222 Ipsum. Rd.','Ap #473-4975 Ut Rd.','41517','Monteu Roero','Singapore','(0698) 55237649','(039549) 989330','2019-06-25 23:05:05',75),(1954,'Ciara','Anderson','Ap #385-6705 Ipsum Road','572-9489 Eget St.','51878','Cellara','Central African Republic','(0398) 37843360','(0944) 97708338','2019-08-18 15:21:57',76),(1955,'Hu','Gamble','Ap #615-7392 Nam Rd.','142 Tincidunt Av.','01625','Acireale','Ireland','(0768) 29776407','(03301) 7982902','2020-10-21 08:02:40',77),(1956,'Scarlett','Hill','P.O. Box 716, 3650 Mattis. St.','559-3112 Pede. Rd.','J3J 8G1','Peñalolén','Antarctica','(030186) 212865','(0132) 95403371','2020-08-16 19:32:01',78),(1957,'Emma','Henry','374-3712 Rutrum Street','P.O. Box 807, 571 Egestas St.','46629','Coquimbo','Ireland','(028) 61419318','(050) 52303164','2020-09-25 17:01:58',79),(1958,'Keith','Peck','460-1136 Turpis Road','6985 Mi Street','91962','Tanjungbalai','Kiribati','(0007) 80203250','(039572) 594590','2020-10-26 14:52:54',80),(1959,'Kellie','Lawrence','325-4341 Scelerisque St.','5447 Aenean Rd.','3338','Talagante','Bolivia','(09487) 3518168','(039467) 377128','2020-09-13 17:30:22',81),(1960,'Hayes','Nixon','Ap #715-4775 Ipsum Rd.','Ap #402-3326 Sed Avenue','986417','Wood Buffalo','Liechtenstein','(031) 56142693','(0691) 96454876','2020-12-08 18:12:48',82),(1961,'Maryam','Goff','8943 Duis Avenue','879-2743 Sapien. Street','06355','Jhang','Andorra','(04469) 6322900','(02758) 8756172','2020-02-03 09:16:58',83),(1962,'Denton','Chambers','222-4188 Velit Rd.','Ap #212-263 Dapibus Avenue','519018','Oranienburg','Niue','(075) 60754579','(030912) 275876','2019-11-30 04:54:58',84),(1963,'Bevis','Jacobson','P.O. Box 285, 9944 Pede Rd.','Ap #529-6360 Fusce Rd.','978765','Luton','Germany','(018) 34247668','(079) 89793922','2021-02-12 16:27:07',85),(1964,'Wynne','Sanders','Ap #361-4136 Amet, St.','P.O. Box 755, 4493 Purus Street','TO90 5LM','Pietracatella','Argentina','(0343) 83189674','(07355) 0388226','2021-01-09 04:10:31',86),(1965,'Ronan','Hampton','857-6364 Vitae, Road','158-3820 Pede. Rd.','5921','Musson','Togo','(0708) 43264175','(031974) 787290','2020-12-01 10:03:19',87),(1966,'Xenos','Pitts','998-7001 Mollis Road','7316 Risus. Ave','05694','Genappe','Tokelau','(035749) 599576','(0270) 31652538','2020-03-26 13:11:47',88),(1967,'Zia','Dorsey','6066 Dui. Rd.','P.O. Box 937, 8883 Ante Av.','Z8639','Istmina','Papua New Guinea','(091) 42195053','(015) 34894949','2020-11-25 18:25:11',89),(1968,'Joseph','Underwood','5837 Amet, Road','Ap #594-5245 Pretium St.','11214','Tiarno di Sopra','Japan','(035408) 228745','(038800) 546702','2019-11-29 23:52:30',90),(1969,'Shannon','Harding','P.O. Box 741, 7457 Sem Rd.','Ap #249-5914 Eu Road','15794','Raigarh','Oman','(036213) 121262','(039948) 287148','2019-06-25 06:29:20',91),(1970,'Ciara','Santos','5599 Ut Rd.','Ap #620-8645 Ante Av.','390106','Fort Worth','Libya','(080) 70654372','(047) 92892541','2019-11-10 09:37:00',92),(1971,'Bruce','Mejia','545-4350 Consectetuer Street','680-9681 Non Street','80262','Goderich','Marshall Islands','(05912) 9515125','(0325) 29688342','2021-01-17 17:37:25',93),(1972,'Holmes','Collins','314-1317 Risus. Av.','P.O. Box 196, 1756 Pretium Av.','60889','Port Moody','Andorra','(0504) 90282341','(022) 43226728','2020-07-03 12:56:27',94),(1973,'Oren','Kidd','195-3486 Mauris Road','6703 Orci, Avenue','29-881','Port Alice','Falkland Islands','(038) 77890733','(087) 23386558','2019-06-30 13:30:29',95),(1974,'Jeremy','Cantu','P.O. Box 699, 6814 Pellentesque Av.','324-630 Fames Rd.','127824','Toronto','Venezuela','(0980) 68356495','(036194) 921378','2021-01-04 04:50:24',96),(1975,'Mari','Koch','3767 Integer Rd.','1942 Proin Rd.','552072','Yeosu','Zambia','(018) 68810813','(039712) 854304','2020-12-18 07:57:16',97),(1976,'Xerxes','Wilkerson','P.O. Box 917, 6958 Nunc Road','P.O. Box 727, 9407 Ultrices St.','50014-45267','Olmen','Ireland','(0429) 81987434','(07974) 5218756','2019-10-28 20:49:49',98),(1977,'Randall','Norris','260-3404 Ornare, Avenue','P.O. Box 753, 1077 Mauris St.','25894','Richmond','Western Sahara','(08437) 0938448','(047) 12645596','2019-08-16 14:21:05',99),(1978,'Kathleen','Phillips','928-7284 Iaculis Street','P.O. Box 536, 2751 Eleifend. Road','25894','Richmond','Western Sahara','(00701) 2933546','(077) 13480442','2019-05-30 16:43:26',100);
/*!40000 ALTER TABLE `benutzer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eintrag`
--

DROP TABLE IF EXISTS `eintrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eintrag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(50) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `FK_login` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_login` (`FK_login`),
  CONSTRAINT `eintrag_ibfk_1` FOREIGN KEY (`FK_login`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eintrag`
--

LOCK TABLES `eintrag` WRITE;
/*!40000 ALTER TABLE `eintrag` DISABLE KEYS */;
INSERT INTO `eintrag` VALUES (16,'Tolles Restaurant','Das beste Chicken Curry ...','2021-10-26',1),(17,'Naja Restaurant','Hab schon besser gegessen ...','2021-10-26',2),(18,'Nettes Restaurant','Die Bedienung war sehr aufmerksam ...','2021-10-26',10),(19,'Exquisites Restaurant','Das beste Curry ...','2021-10-27',12);
/*!40000 ALTER TABLE `eintrag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'vitae.purus.gravida@Cumsociisnatoque.co.uk','hello'),(2,'non.lobortis@turpis.net','hello'),(3,'nascetur.ridiculus@acorci.org','hello'),(4,'fermentum.convallis@duinecurna.com','hello'),(5,'venenatis.vel@acliberonec.co.uk','hello'),(6,'Fusce.feugiat@semperegestasurna.com','hello'),(7,'Duis@pede.org','hello'),(8,'blandit@felisNullatempor.co.uk','hello'),(9,'nec@elitdictumeu.ca','hello'),(10,'Sed@morbitristique.org','hello'),(11,'blandit.Nam@ipsum.net','hello'),(12,'Cras@volutpatnunc.edu','hello'),(13,'vehicula.et.rutrum@utnisi.com','hello'),(14,'congue.turpis.In@lectus.net','hello'),(15,'condimentum.eget.volutpat@Donecnibh.org','hello'),(16,'tortor.Nunc@ac.edu','hello'),(17,'lorem.ut@vitaedolorDonec.com','hello'),(18,'lobortis.ultrices@conubianostraper.ca','hello'),(19,'Aenean.egestas.hendrerit@lacinia.org','hello'),(20,'tellus.Suspendisse.sed@ac.org','hello'),(21,'nec.urna.et@necquamCurabitur.edu','hello'),(22,'Fusce.mollis.Duis@blanditviverra.com','hello'),(23,'eu.neque@urnasuscipitnonummy.net','hello'),(24,'nulla.Donec@in.net','hello'),(25,'a.aliquet.vel@ligula.co.uk','hello'),(26,'Suspendisse@adipiscing.org','hello'),(27,'cursus.et.magna@dolorDonecfringilla.net','hello'),(28,'et.magnis@vitaealiquameros.com','hello'),(29,'neque.Nullam@pede.ca','hello'),(30,'mattis@ligulaNullamenim.com','hello'),(31,'mauris.erat@in.co.uk','hello'),(32,'mattis@aenim.org','hello'),(33,'lobortis.ultrices.Vivamus@eutellus.co.uk','hello'),(34,'mi.lacinia@Fuscefeugiat.net','hello'),(35,'sed.dui.Fusce@Integereu.ca','hello'),(36,'Nulla.facilisis@massaQuisque.com','hello'),(37,'egestas.blandit.Nam@luctus.ca','hello'),(38,'enim.Curabitur@orci.net','hello'),(39,'rutrum@congue.co.uk','hello'),(40,'tellus.Phasellus.elit@sodalesatvelit.co.uk','hello'),(41,'Nunc.laoreet.lectus@ridiculusmus.org','hello'),(42,'mauris.id@nisi.edu','hello'),(43,'est@enimcommodohendrerit.org','hello'),(44,'elit.elit@adipiscingligula.ca','hello'),(45,'consectetuer@semper.com','hello'),(46,'in.tempus@Crasinterdum.ca','hello'),(47,'velit@neceleifend.ca','hello'),(48,'Phasellus.libero@eu.net','hello'),(49,'in.aliquet@vel.com','hello'),(50,'convallis@feugiatnonlobortis.net','hello'),(51,'vel@nisi.com','hello'),(52,'augue@Pellentesqueultricies.net','hello'),(53,'nec.metus.facilisis@nibhsit.com','hello'),(54,'quis.tristique.ac@odioAliquamvulputate.net','hello'),(55,'augue.eu@mauris.edu','hello'),(56,'nulla.at.sem@arcuvelquam.edu','hello'),(57,'erat.in@dolorFusce.net','hello'),(58,'egestas.Aliquam@ullamcorperviverraMaecenas.co.uk','hello'),(59,'eu.neque@conguea.ca','hello'),(60,'Nunc.sed@Nunccommodoauctor.net','hello'),(61,'ut.dolor@scelerisque.edu','hello'),(62,'sit.amet.consectetuer@idnunc.com','hello'),(63,'dictum.mi.ac@quistristique.ca','hello'),(64,'quam@aliquamerosturpis.net','hello'),(65,'diam.dictum@dignissimpharetra.edu','hello'),(66,'Fusce.fermentum.fermentum@senectus.org','hello'),(67,'eros.Nam.consequat@porttitor.ca','hello'),(68,'Nunc.ut@Fuscefermentum.ca','hello'),(69,'molestie@adipiscingenim.net','hello'),(70,'Mauris.blandit.enim@Etiamvestibulummassa.co.uk','hello'),(71,'montes.nascetur@rhoncus.org','hello'),(72,'natoque.penatibus.et@eudui.co.uk','hello'),(73,'Duis.mi@Quisqueornaretortor.ca','hello'),(74,'imperdiet.erat.nonummy@cursusdiamat.edu','hello'),(75,'at.augue@Fusce.net','hello'),(76,'Nulla@ornareelitelit.org','hello'),(77,'Aliquam@ligulaNullamenim.net','hello'),(78,'habitant@disparturientmontes.co.uk','hello'),(79,'sed.turpis@cursus.co.uk','hello'),(80,'rutrum.urna@dictum.co.uk','hello'),(81,'fames@acmetus.co.uk','hello'),(82,'urna.suscipit@vel.com','hello'),(83,'fermentum@elit.com','hello'),(84,'eleifend@nonummyultricies.org','hello'),(85,'augue.eu.tellus@acfeugiatnon.edu','hello'),(86,'neque@turpisegestasAliquam.edu','hello'),(87,'Nunc.sed@Donec.co.uk','hello'),(88,'sed.sapien.Nunc@non.edu','hello'),(89,'est@sitamet.co.uk','hello'),(90,'ultrices.iaculis.odio@diamPellentesquehabitant.org','hello'),(91,'Mauris.non@montesnasceturridiculus.edu','hello'),(92,'eget.magna.Suspendisse@loremluctusut.edu','hello'),(93,'dapibus@eu.edu','hello'),(94,'lectus.ante.dictum@acnullaIn.edu','hello'),(95,'mauris.aliquam.eu@musAeneaneget.com','hello'),(96,'magnis.dis.parturient@orcisem.edu','hello'),(97,'Nulla@lacusUtnec.ca','hello'),(98,'Pellentesque.habitant.morbi@per.org','hello'),(99,'pellentesque.massa@lectus.org','hello'),(100,'Donec.non.justo@arcuVivamus.co.uk','hello');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-10 11:39:00
