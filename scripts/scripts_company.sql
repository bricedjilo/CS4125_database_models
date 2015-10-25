BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE company';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

create table company(
	comp_id		number NOT NULL, 
	primary_sector	varchar(100) NOT NULL,
	website			varchar(100) NOT NULL,
	primary key (comp_id)
);

INSERT INTO company (comp_id,primary_sector,website) VALUES (1,'education','vel');
INSERT INTO company (comp_id,primary_sector,website) VALUES (2,'mining','eu');
INSERT INTO company (comp_id,primary_sector,website) VALUES (3,'entertainment','diam');
INSERT INTO company (comp_id,primary_sector,website) VALUES (4,'technology','risus');
INSERT INTO company (comp_id,primary_sector,website) VALUES (5,'mining','elementum,');
INSERT INTO company (comp_id,primary_sector,website) VALUES (6,'technology','quis');
INSERT INTO company (comp_id,primary_sector,website) VALUES (7,'tourism','amet');
INSERT INTO company (comp_id,primary_sector,website) VALUES (8,'service','accumsan');
INSERT INTO company (comp_id,primary_sector,website) VALUES (9,'mining','eget');
INSERT INTO company (comp_id,primary_sector,website) VALUES (10,'education','urna');
INSERT INTO company (comp_id,primary_sector,website) VALUES (11,'tourism','ut');
INSERT INTO company (comp_id,primary_sector,website) VALUES (12,'mining','urna');
INSERT INTO company (comp_id,primary_sector,website) VALUES (13,'education','cubilia');
INSERT INTO company (comp_id,primary_sector,website) VALUES (14,'service','arcu');
INSERT INTO company (comp_id,primary_sector,website) VALUES (15,'oil','erat.');
INSERT INTO company (comp_id,primary_sector,website) VALUES (16,'mining','molestie');
INSERT INTO company (comp_id,primary_sector,website) VALUES (17,'tourism','eu');
INSERT INTO company (comp_id,primary_sector,website) VALUES (18,'tourism','convallis');
INSERT INTO company (comp_id,primary_sector,website) VALUES (19,'service','Cras');
INSERT INTO company (comp_id,primary_sector,website) VALUES (20,'service','In');
INSERT INTO company (comp_id,primary_sector,website) VALUES (21,'oil','amet');
INSERT INTO company (comp_id,primary_sector,website) VALUES (22,'service','tristique');
INSERT INTO company (comp_id,primary_sector,website) VALUES (23,'entertainment','id');
INSERT INTO company (comp_id,primary_sector,website) VALUES (24,'oil','velit');
INSERT INTO company (comp_id,primary_sector,website) VALUES (25,'entertainment','purus.');
INSERT INTO company (comp_id,primary_sector,website) VALUES (26,'education','aliquam');
INSERT INTO company (comp_id,primary_sector,website) VALUES (27,'technology','elementum,');
INSERT INTO company (comp_id,primary_sector,website) VALUES (28,'service','orci,');
INSERT INTO company (comp_id,primary_sector,website) VALUES (29,'entertainment','interdum');
INSERT INTO company (comp_id,primary_sector,website) VALUES (30,'technology','lorem,');
INSERT INTO company (comp_id,primary_sector,website) VALUES (31,'education','odio');
INSERT INTO company (comp_id,primary_sector,website) VALUES (32,'technology','malesuada');
INSERT INTO company (comp_id,primary_sector,website) VALUES (33,'tourism','faucibus');
INSERT INTO company (comp_id,primary_sector,website) VALUES (34,'tourism','egestas');
INSERT INTO company (comp_id,primary_sector,website) VALUES (35,'service','rhoncus');
INSERT INTO company (comp_id,primary_sector,website) VALUES (36,'education','libero.');
INSERT INTO company (comp_id,primary_sector,website) VALUES (37,'service','pede,');
INSERT INTO company (comp_id,primary_sector,website) VALUES (38,'technology','Fusce');
INSERT INTO company (comp_id,primary_sector,website) VALUES (39,'tourism','dignissim');
INSERT INTO company (comp_id,primary_sector,website) VALUES (40,'education','ut');
INSERT INTO company (comp_id,primary_sector,website) VALUES (41,'entertainment','quis');
INSERT INTO company (comp_id,primary_sector,website) VALUES (42,'oil','nunc');
INSERT INTO company (comp_id,primary_sector,website) VALUES (43,'mining','tempor');
INSERT INTO company (comp_id,primary_sector,website) VALUES (44,'technology','libero.');
INSERT INTO company (comp_id,primary_sector,website) VALUES (45,'mining','tellus');
INSERT INTO company (comp_id,primary_sector,website) VALUES (46,'entertainment','non');
INSERT INTO company (comp_id,primary_sector,website) VALUES (47,'tourism','nunc');
INSERT INTO company (comp_id,primary_sector,website) VALUES (48,'mining','semper');
INSERT INTO company (comp_id,primary_sector,website) VALUES (49,'tourism','ipsum');
INSERT INTO company (comp_id,primary_sector,website) VALUES (50,'oil','dolor');
INSERT INTO company (comp_id,primary_sector,website) VALUES (51,'oil','pellentesque.');