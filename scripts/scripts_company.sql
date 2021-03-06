BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE company CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE company PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

create table company(
	comp_id			number NOT NULL,
	name			varchar(100) NOT NULL,	
	primary_sector	varchar(100) NOT NULL,
	website			varchar(100) NOT NULL,
	primary key (comp_id)
);

create sequence company_seq start with 1 increment by 1 nomaxvalue;
create trigger company_trigger
before insert on company
for each row
	begin
	 select company_seq.nextval into :new.comp_id from dual;
	end;
/

INSERT INTO company (comp_id,name,primary_sector,website) VALUES (1,'Placerat Orci Lacus Company','tourism','a mi');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (2,'Enim Nisl Elementum LLP','entertainment','senectus et');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (3,'Fringilla Ornare Placerat Corporation','tourism','gravida. Praesent');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (4,'Ornare Placerat Orci Industries','oil','ullamcorper, velit');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (5,'Donec Felis Orci Incorporated','technology','Donec non');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (6,'Elementum Purus Accumsan Associates','mining','mi, ac');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (7,'Libero Et Company','entertainment','semper auctor.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (8,'Mauris Ut Mi PC','technology','molestie arcu.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (9,'Vestibulum Ante LLC','education','diam nunc,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (10,'Auctor LLC','service','et malesuada');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (11,'Sem Associates','mining','posuere cubilia');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (12,'Mollis Dui In LLC','tourism','Duis cursus,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (13,'Et Malesuada Corporation','mining','vulputate eu,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (14,'Nulla Facilisi Sed Ltd','service','nec tempus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (15,'Augue Ut Limited','education','pretium et,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (16,'Pede Et Risus LLC','oil','aliquet. Proin');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (17,'Gravida Molestie Arcu Institute','mining','nostra, per');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (18,'Non Consulting','mining','semper auctor.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (19,'Tempus Lorem Foundation','entertainment','diam. Pellentesque');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (20,'Quisque Libero Lacus LLC','education','sed, sapien.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (21,'Semper Auctor LLP','technology','mollis. Duis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (22,'Montes Nascetur Ridiculus Institute','mining','cubilia Curae;');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (23,'Dui Augue Industries','oil','semper rutrum.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (24,'Parturient Montes Nascetur Inc.','oil','luctus lobortis.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (25,'Venenatis A Industries','oil','Suspendisse aliquet');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (26,'Nullam Ut LLC','mining','fames ac');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (27,'Malesuada Industries','mining','ornare tortor');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (28,'At LLC','oil','velit. Aliquam');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (29,'Dolor Egestas Incorporated','tourism','diam. Proin');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (30,'Facilisis Consulting','tourism','ac, eleifend');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (31,'Tristique Institute','tourism','a, aliquet');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (32,'Egestas Foundation','tourism','Proin sed');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (33,'Non Lacinia At Limited','oil','vulputate ullamcorper');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (34,'Adipiscing Institute','education','nec ante');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (35,'Ultrices Posuere Corp.','entertainment','Donec egestas.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (36,'Eget Magna Associates','technology','tristique senectus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (37,'Mollis Institute','service','montes, nascetur');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (38,'Mi Ac Mattis PC','technology','rhoncus. Donec');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (39,'Vivamus Rhoncus Donec Consulting','tourism','sagittis placerat.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (40,'Adipiscing Foundation','oil','mauris. Integer');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (41,'Urna Suscipit Nonummy LLC','oil','eget ipsum.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (42,'Aliquam LLP','tourism','neque. Morbi');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (43,'Eu Ultrices LLP','technology','vel est');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (44,'Odio Tristique Pharetra Limited','oil','risus. Donec');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (45,'Donec PC','service','lobortis ultrices.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (46,'Fringilla Mi Institute','entertainment','lobortis augue');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (47,'Non Sapien Corporation','technology','In ornare');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (48,'Nascetur Ridiculus Mus Inc.','technology','ut nisi');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (49,'Nec Tempus Mauris Incorporated','technology','fringilla, porttitor');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (50,'Fringilla Euismod Enim LLP','tourism','enim non');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (51,'Sed Id Risus Inc.','entertainment','fermentum risus,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (52,'Proin Vel Consulting','tourism','ante bibendum');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (53,'Non Feugiat LLC','education','Etiam vestibulum');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (54,'Sit Amet Ornare Institute','service','consectetuer adipiscing');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (55,'Faucibus LLP','service','tortor. Nunc');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (56,'Adipiscing Elit Curabitur Company','education','sed libero.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (57,'Mollis Phasellus Libero Consulting','service','at, velit.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (58,'Suspendisse Industries','oil','Nulla interdum.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (59,'Odio Semper Cursus Associates','service','ac mattis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (60,'Orci Limited','entertainment','sollicitudin adipiscing');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (61,'Vel Convallis In Consulting','education','sapien, cursus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (62,'Amet Diam Eu LLP','tourism','netus et');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (63,'Nulla PC','education','Nullam scelerisque');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (64,'Etiam Vestibulum Massa Company','technology','quis urna.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (65,'Non Sollicitudin A Limited','mining','mollis lectus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (66,'Sem Ut Cursus Foundation','technology','Donec luctus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (67,'Nulla Limited','service','et magnis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (68,'Orci In Consequat Associates','service','ac mattis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (69,'Penatibus Et Corp.','service','ligula eu');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (70,'In Tempus Institute','education','lacus. Aliquam');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (71,'Semper Et Lacinia Foundation','technology','dolor. Donec');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (72,'Ornare Limited','mining','Curabitur egestas');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (73,'Sociis Natoque Penatibus Corporation','tourism','Morbi metus.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (74,'Sem Magna Nec LLP','tourism','dui quis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (75,'Dignissim LLC','mining','enim non');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (76,'Nunc Laoreet Lectus Associates','service','sapien imperdiet');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (77,'Fusce Mollis Duis LLP','tourism','magna a');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (78,'Sed Turpis Nec Limited','technology','risus quis');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (79,'Congue Company','oil','velit. Sed');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (80,'Et Magna Inc.','mining','mauris blandit');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (81,'Ut Associates','service','elit pede,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (82,'Lacinia Vitae Company','technology','pede. Praesent');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (83,'Aliquam Arcu Company','mining','Curabitur massa.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (84,'Primis In Faucibus Corp.','oil','lectus, a');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (85,'Parturient Montes Associates','service','ligula tortor,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (86,'Est Mauris Rhoncus Industries','mining','nulla ante,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (87,'Bibendum Industries','technology','tincidunt pede');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (88,'Lectus Sit Amet Incorporated','oil','interdum libero');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (89,'Donec Egestas Aliquam Corporation','education','massa. Vestibulum');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (90,'Molestie Orci Tincidunt LLC','oil','sapien, cursus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (91,'Varius Orci Associates','entertainment','volutpat ornare,');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (92,'Ut Sagittis Lobortis Corporation','tourism','neque. Sed');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (93,'Arcu Industries','tourism','tellus faucibus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (94,'Penatibus Et Magnis Industries','mining','erat volutpat.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (95,'Egestas Blandit LLP','tourism','luctus. Curabitur');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (96,'Consectetuer Foundation','technology','augue ac');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (97,'Est Ac Facilisis Ltd','oil','lobortis tellus');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (98,'Ante Incorporated','oil','nec ante.');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (99,'Eu Lacus Corporation','oil','amet diam');
INSERT INTO company (comp_id,name,primary_sector,website) VALUES (100,'Nunc Sed Pede Institute','tourism','nulla. Integer');
