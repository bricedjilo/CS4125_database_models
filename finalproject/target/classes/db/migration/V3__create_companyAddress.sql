BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE companyAddress CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE companyAddress PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/
create table companyAddress(
	comp_id		number NOT NULL, 
	street		varchar(100) NOT NULL,
	city		varchar(100) NOT NULL,
	zip_code	varchar(10) NOT NULL,
	primary key (comp_id, zip_code),
	foreign key (comp_id) references company
		on delete cascade
);

INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (1,'3912 Ipsum St.','Santomenna','38187');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (2,'340-7588 Ac, St.','Nashville','62045');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (3,'Ap #496-2466 Scelerisque Ave','Coventry','85265');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (4,'752-5738 Non, St.','Ribeirão das Neves','97794');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (5,'8381 Pede St.','Broechem','61023');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (6,'666-7908 Quis St.','Gjoa Haven','88737');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (7,'422-5805 Mauris St.','Asti','16483');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (8,'P.O. Box 798, 2141 Nunc Street','Venlo','86916');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (9,'7372 Ullamcorper. St.','Avelgem','49255');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (10,'Ap #664-7677 Egestas St.','Auckland','10651');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (11,'6097 Interdum Road','Anantapur','26871');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (12,'P.O. Box 742, 3378 Pede St.','Middelkerke','34692');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (13,'3525 Sed St.','Vlezenbeek','71778');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (14,'Ap #189-2673 Ipsum. Rd.','Roccamena','71984');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (15,'Ap #779-2015 Arcu Street','Bal�tre','18160');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (16,'3494 Amet, Avenue','Holman','52775');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (17,'1871 At, Av.','Greenlaw','79388');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (18,'496-6238 Gravida St.','Louvain-la-Neuve','88081');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (19,'2499 Aliquet St.','Malkajgiri','86092');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (20,'P.O. Box 251, 296 Et Rd.','Saint Andr?','71119');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (21,'P.O. Box 567, 3032 Etiam Rd.','Malahide','17629');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (22,'P.O. Box 455, 7587 Ultrices Ave','Goiânia','95265');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (23,'Ap #536-9513 At Rd.','Crowsnest Pass','17874');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (24,'5904 Vulputate Avenue','Grand Falls','99077');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (25,'Ap #950-192 Sem Road','V�lklingen','28930');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (26,'8712 Arcu Road','Kingston-on-Thames','69109');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (27,'918-3788 Non, Rd.','Orangeville','32675');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (28,'P.O. Box 929, 3859 Tempor Ave','Guna','94811');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (29,'P.O. Box 234, 3690 Nibh. Ave','Llangefni','72543');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (30,'P.O. Box 393, 2063 Porttitor Ave','Cornwall','68175');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (31,'P.O. Box 588, 6685 Aenean St.','Halesowen','64373');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (32,'957-2765 Donec St.','Windsor','94862');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (33,'8915 Ipsum Av.','Saint-Étienne-du-Rouvray','21568');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (34,'P.O. Box 558, 5029 Turpis Ave','Tresigallo','64001');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (35,'2769 Diam Rd.','Biez','53237');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (36,'P.O. Box 889, 5641 Pellentesque St.','Gualdo Cattaneo','16841');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (37,'Ap #279-3520 Vitae Avenue','Mores','86992');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (38,'Ap #182-5606 Facilisis St.','White Rock','50137');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (39,'195-5592 Cras St.','Muridke','62712');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (40,'Ap #981-7391 A St.','Hamilton','37633');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (41,'Ap #313-8953 Libero Avenue','Essex','73317');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (42,'7593 Aenean Rd.','North Barrackpur','24376');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (43,'P.O. Box 568, 6451 Mus. Ave','Posina','69652');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (44,'6343 Quis Street','Machynlleth','37756');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (45,'5310 Rutrum. Street','Sherborne','26277');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (46,'845-406 Sit Rd.','Jasper','23777');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (47,'Ap #480-8288 Eu, St.','Granada','98816');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (48,'Ap #745-491 Donec St.','Leverkusen','45435');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (49,'188-9863 Quisque Av.','Cleveland','38214');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (50,'9062 Pharetra Rd.','Sens','26555');
INSERT INTO companyAddress (comp_id,street,city,zip_code) VALUES (51,'1689 Orci, Rd.','Wiesbaden','67811');