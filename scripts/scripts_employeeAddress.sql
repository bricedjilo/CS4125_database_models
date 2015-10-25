BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE employeeAddress';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

create table employeeAddress(
	per_id			number NOT NULL, 
	street			varchar(100) NOT NULL,
	city			varchar(100) NOT NULL, 
	zip_code		number NOT NULL,
	state			varchar(20) NOT NULL,
	primary key (per_id, zip_code),
	foreign key (per_id) references person
		on delete cascade
);

INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (1,'Ap #762-6503 Nec St.','Klabbeek','42206','Donec');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (2,'177-7439 Vestibulum Ave','Lebach','42515','molestie');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (3,'Ap #119-3597 Vel Rd.','Bolzano/Bozen','98075','In');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (4,'Ap #995-8581 In Av.','Charters Towers','58645','lobortis,');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (5,'4113 Nunc Street','Arrah','11350','ornare.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (6,'P.O. Box 657, 7033 Vel Rd.','Aalbeke','55014','eget');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (7,'P.O. Box 566, 450 Maecenas Street','Zwijnaarde','10725','nulla.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (8,'6857 Diam Av.','Baiso','92417','pellentesque');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (9,'P.O. Box 325, 994 Orci Avenue','Tilly','62436','lacus');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (10,'P.O. Box 454, 4727 Mauris Street','Lockerbie','16133','porttitor');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (11,'P.O. Box 165, 2925 Massa. Avenue','Uitkerke','90672','Nam');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (12,'809-1443 Nullam Av.','Cuxhaven','84852','mus.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (13,'3508 Eu Av.','Steenhuffel','61469','elit');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (14,'329-4017 Arcu. Ave','Montpellier','13950','et');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (15,'P.O. Box 896, 5875 Pharetra. Street','Innisfail','48166','purus.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (16,'628-5728 Orci. Rd.','Tongerlo','95442','dignissim.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (17,'365-9358 Donec Rd.','Verrebroek','43914','erat,');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (18,'3796 Tincidunt Street','Irricana','90098','cursus');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (19,'Ap #236-5686 Nec Rd.','Rudiano','83109','ornare');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (20,'P.O. Box 686, 6212 Semper St.','Duisburg','62347','egestas.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (21,'275-3155 Iaculis Street','Maser','64402','feugiat');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (22,'P.O. Box 548, 1236 Lacus. Av.','Medemblik','22348','elit');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (23,'P.O. Box 885, 7074 Vivamus Avenue','Tramonti di Sopra','57393','molestie');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (24,'8661 Ornare, St.','Beveren','30096','nibh.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (25,'Ap #168-4513 Velit. St.','Loupoigne','56994','neque');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (26,'Ap #891-8224 Dolor Avenue','Idaho Falls','38893','parturient');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (27,'9605 Pulvinar Avenue','Baltasound','77485','eleifend');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (28,'Ap #991-8801 Montes, Rd.','Casper','39628','semper.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (29,'2224 Amet, Rd.','Fairbanks','57762','non');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (30,'995-4309 Odio St.','Gonars','49616','pretium');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (31,'Ap #286-8111 Lorem, St.','Boneffe','32118','aliquet,');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (32,'2603 Malesuada Rd.','Haddington','55563','blandit');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (33,'Ap #774-5449 Congue, St.','Benestare','21504','blandit');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (34,'P.O. Box 715, 2326 Turpis Rd.','Rae-Edzo','86353','dui.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (35,'2106 Placerat, Road','Montgomery','30792','et,');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (36,'678-1824 Adipiscing Av.','Saint-Lô','22412','quam');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (37,'Ap #175-6500 Auctor, Rd.','Bamberg','41344','Fusce');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (38,'8775 Sit Ave','Flint','73901','ultrices.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (39,'P.O. Box 311, 1728 Quis Ave','Belo Horizonte','15512','amet');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (40,'458-1595 A Avenue','Baidyabati','60618','ac,');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (41,'7243 Id, Road','Sant''Eusanio Forconese','64032','arcu.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (42,'Ap #712-124 Nunc Ave','Siracusa','85431','cursus');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (43,'P.O. Box 489, 722 Donec Avenue','Wageningen','11000','In');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (44,'P.O. Box 920, 6209 Tincidunt Avenue','Gijzelbrechtegem','63950','vitae');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (45,'7111 Enim Road','Orhangazi','92665','Cras');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (46,'6805 Ultricies Road','Kidwelly','38851','dui');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (47,'176-5073 Nam Av.','Kailua','45810','sollicitudin');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (48,'P.O. Box 348, 289 Ipsum Street','Beho','98790','vulputate');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (49,'109 Ligula Ave','Hartlepool','47319','Fusce');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (50,'268-1887 Auctor Street','Aklavik','55395','velit.');
INSERT INTO employeeAddress (per_id,street,city,zip_code,state) VALUES (51,'106-2363 Aliquam Rd.','Dijon','42681','amet');

