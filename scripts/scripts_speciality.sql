BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE speciality';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

create table speciality(
	comp_id				number NOT NULL, 
	speciality_name		varchar(100) NOT NULL,
	primary key (comp_id, speciality_name),
	foreign key (comp_id) references company
		on delete cascade
);

INSERT INTO speciality (comp_id,speciality_name) VALUES (1,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (2,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (3,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (4,'transportation');
INSERT INTO speciality (comp_id,speciality_name) VALUES (5,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (6,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (7,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (8,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (9,'transportation');
INSERT INTO speciality (comp_id,speciality_name) VALUES (10,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (11,'software');
INSERT INTO speciality (comp_id,speciality_name) VALUES (12,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (13,'software');
INSERT INTO speciality (comp_id,speciality_name) VALUES (14,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (15,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (16,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (17,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (18,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (19,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (20,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (21,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (22,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (23,'transportation');
INSERT INTO speciality (comp_id,speciality_name) VALUES (24,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (25,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (26,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (27,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (28,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (29,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (30,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (31,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (32,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (33,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (34,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (35,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (36,'transportation');
INSERT INTO speciality (comp_id,speciality_name) VALUES (37,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (38,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (39,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (40,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (41,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (42,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (43,'logistics service');
INSERT INTO speciality (comp_id,speciality_name) VALUES (44,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (45,'electronics');
INSERT INTO speciality (comp_id,speciality_name) VALUES (46,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (47,'IT consulting');
INSERT INTO speciality (comp_id,speciality_name) VALUES (48,'construction');
INSERT INTO speciality (comp_id,speciality_name) VALUES (49,'computer hardware');
INSERT INTO speciality (comp_id,speciality_name) VALUES (50,'basic materials');
INSERT INTO speciality (comp_id,speciality_name) VALUES (51,'computer hardware');