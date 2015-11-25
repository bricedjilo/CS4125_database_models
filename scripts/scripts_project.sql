BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE project';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE project(
	comp_id			number NOT NULL, 
	project_id		number NOT NULL,
	title			varchar(100) NOT NULL,
	budget_code		varchar(100) NOT NULL,
	director		varchar(100) NOT NULL,
	start_date		DATE NOT NULL,
	end_date		DATE NOT NULL,
	primary key (project_id),
	foreign key (comp_id) references company
		on delete cascade
);

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (1,1,'pede','KJX91QHC1ZC','Riley, Caldwell Y.', 
to_date('12-12-2012','MM-DD-YYYY'), to_date('12-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (1,2,'peduis','KJX91QHC1AA','Richard, Armel Y.', 
to_date('12-10-2013','MM-DD-YYYY'), to_date('12-26-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (1,3,'Alpeduis','KJX91QHC1AB','Romel, Alder C.', 
to_date('10-10-2013','MM-DD-YYYY'), to_date('12-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (2,4,'Suspendisse','LGW00MQK0AA','Talley, Porter O.',
to_date('10-10-2011','MM-DD-YYYY'), to_date('12-26-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (2,5,'Aluspendisse','LGW00MQK0AB','Talley, Robert O.',
to_date('09-10-2014','MM-DD-YYYY'), to_date('12-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (3,6,'Rolobortis,','GJJ40XGM6AA','Pope, Austin C.',
to_date('01-11-2014','MM-DD-YYYY'), to_date('12-06-2015','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (3,7,'Plobortis,','GJJ40XGM6AA','Romuel, Stand C.',
to_date('09-10-2012','MM-DD-YYYY'), to_date('12-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (3,8,'bortis,','GJJ40XGM6AA','Pope, Austin C.',
to_date('03-10-2014','MM-DD-YYYY'), to_date('05-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (4,9,'odio','WTM07HQO4AA','Mcgowan, Zephania R.',
to_date('06-08-2014','MM-DD-YYYY'), to_date('05-26-2015','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (4,10,'Rodiopolis','WTM07HQO4AB','Jenkins, Donalds B.',
to_date('03-10-2014','MM-DD-YYYY'), to_date('05-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (5,11,'Aduis','LQV59NTG6AB','Bradley, Yael M.',
to_date('02-04-2015','MM-DD-YYYY'), to_date('01-26-2017','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (5,12,'Alerius','LQV59NTG6XT','Madison, Hugue M.',
to_date('03-10-2014','MM-DD-YYYY'), to_date('05-26-2018','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (6,13,'uth,','URB38YZW4XJ','Shelton, Kyle M.',
to_date('03-10-2011','MM-DD-YYYY'), to_date('05-26-2013','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (6,14,'pederinos','KJX91QHC1AC','Jon, Bailey Y.', 
to_date('07-10-2014','MM-DD-YYYY'), to_date('05-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (7,15,'pultricies','WJC10UHL8AA','Riddle, Vivien K.',
to_date('02-10-2010','MM-DD-YYYY'), to_date('05-26-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (7,18,'Bulterices','WJC10UHL8NN','Riddle, Vivien K.',
to_date('07-10-2014','MM-DD-YYYY'), to_date('05-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (8,19,'placus','HKR15DAX3AA','Boone, Brennan M.',
to_date('01-10-2015','MM-DD-YYYY'), to_date('02-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (8,20,'Belle','HKR15DAX3NU','Roger, Ben M.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('03-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (9,21,'Morbi','MZD69DTF3AA','Pruitt, Orla P.',
to_date('06-10-2012','MM-DD-YYYY'), to_date('02-26-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (9,22,'orbit','MZD69DTF3HL','Pruitt, Orla P.',
to_date('01-10-2014','MM-DD-YYYY'), to_date('02-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (10,23,'egestas,','FDT89KGR9AA','Martin, Shafira Z.',
to_date('05-10-2013','MM-DD-YYYY'), to_date('01-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (10,24,'megastas,','FDT89KGR9RI','Martin, Shafira Z.',
to_date('07-10-2014','MM-DD-YYYY'), to_date('02-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (11,25,'elementum,','MXX72GFH7AA','Byrd, Sara Z.',
to_date('07-10-2014','MM-DD-YYYY'), to_date('02-26-2015','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (11,26,'elementum,','MXX72GFH7DM','Byrd, Sara Z.',
to_date('07-10-2014','MM-DD-YYYY'), to_date('02-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (12,27,'libero.','WJT15NGP2AA','Travis, Julian U.',
to_date('01-10-2014','MM-DD-YYYY'), to_date('02-20-2015','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (12,28,'liberom.','WJT15NGP2AB','Travis, Julian U.',
to_date('03-10-2013','MM-DD-YYYY'), to_date('02-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (12,29,'liberal','WJT15NGP2AC','Travis, Julian U.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (13,30,'sit','AQS25YQG3JS','Erickson, Quin E.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (14,31,'Sed','TQY73MUA8KJ','Dawson, Quail W.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (15,32,'metus','XNS09BZJ6TZ','Strickland, Gloria W.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));


INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (16,33,'dictum.','BYP89UDD6EK','Whitfield, Ronan Z.',
to_date('04-10-2014','MM-DD-YYYY'), to_date('06-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (17,34,'feugiat.','BXO05MVZ0IQ','Mckinney, Ora J.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (17,35,'feugiatos.','BXO05MVZ0IQ','Mckinney, Ora J.',
to_date('04-10-2015','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (18,36,'Etiam','ZUG90DXQ9FX','Watkins, Alyssa L.',
to_date('07-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (19,37,'neque','DZG82QMI1NU','Kirby, Ivor C.',
to_date('03-10-2014','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (19,38,'neque','DZG82QMI1AB','Kirby, Ivor C.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (20,39,'nec,','JTY03WON9QG','Coleman, Ciara Q.',
to_date('04-10-2013','MM-DD-YYYY'), to_date('01-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (21,40,'Cras','BTE03ZRN6RA','Jefferson, Iona O.',
to_date('01-10-2015','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (22,41,'euismod','PSU83LVE6EC','Tyler, Erica P.',
to_date('02-10-2014','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (22,42,'euismod','PSU83LVE6AB','Tyler, Eugene P.',
to_date('03-10-2015','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (23,43,'velit','ZWM04AXO3NN','Evans, Stuart N.',
to_date('01-10-2015','MM-DD-YYYY'), to_date('03-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (24,44,'molestie','YED81FXY6JE','Wilkins, Kennedy O.',
to_date('02-05-2011','MM-DD-YYYY'), to_date('01-03-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (25,45,'morbi','AOG48BHM3KU','Villarreal, Britanni F.',
to_date('05-10-2013','MM-DD-YYYY'), to_date('06-26-2015','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (25,46,'morbi','AOG48BHM3AB','Villarreal, Britanni F.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (26,47,'fermentum','BHP11ZWT4XH','Crosby, Kelly C.',
to_date('04-10-2013','MM-DD-YYYY'), to_date('04-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (27,48,'risus','QOQ52NBV7EG','Vaughan, Bianca F.',
to_date('01-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (28,49,'elit','OAR43AWL4JN','Santana, Cruz P.',
to_date('03-06-2013','MM-DD-YYYY'), to_date('12-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (29,50,'velita.','BZY06CJQ8HM','Sloan, Rinah E.',
to_date('02-10-2013','MM-DD-YYYY'), to_date('04-20-2013','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (29,51,'velita2.','BZY06CJQ8AB','Sloan, Amel E.',
to_date('04-10-2012','MM-DD-YYYY'), to_date('06-26-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (29,52,'ovelita.','BZY06CJQ8AA','Regina, Robert E.',
to_date('05-07-2013','MM-DD-YYYY'), to_date('01-26-2014','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (30,53,'Nullam','LUC58WGS8ZU','Thornton, Amal G.',
to_date('01-09-2010','MM-DD-YYYY'), to_date('04-20-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (31,54,'non,','MBW02OTL8HZ','Hayden, Ashton A.',
to_date('06-20-2013','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (32,55,'fames','IQP64YDF1MP','Forbes, Ria V.',
to_date('02-04-2013','MM-DD-YYYY'), to_date('04-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (33,56,'nulla.','AME81RZU2SL','Britt, Tallulah O.',
to_date('05-10-2013','MM-DD-YYYY'), to_date('08-20-2014','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (34,57,'porttitor','UVV43GNH6NC','Wallace, May T.',
to_date('06-10-2013','MM-DD-YYYY'), to_date('04-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (35,58,'molestie','HBV39ZME1NR','Kenny, Bell J.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (35,59,'molestie2','HBV39ZME1AA','Hayes, Veda J.',
to_date('03-03-2013','MM-DD-YYYY'), to_date('07-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (36,60,'Quisque','OBL25ZKR3QV','Kane, Cyrus N.',
to_date('08-11-2013','MM-DD-YYYY'), to_date('07-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (37,61,'ac','MXH06YHX6AR','Foster, Barbara K.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (38,62,'nisl.','WVN48SWU9AR','Sweeney, Ahmed W.',
to_date('03-10-2010','MM-DD-YYYY'), to_date('06-29-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (39,63,'aliquet','RBC67RGR6ZI','Roach, Jolie R.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (40,64,'ridiculus','BVY17CKZ2KE','Goff, Hanae Y.',
to_date('01-03-2013','MM-DD-YYYY'), to_date('05-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (41,65,'auctor','KZG51ROV5AA','Gates, John U.',
to_date('08-09-2013','MM-DD-YYYY'), to_date('05-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (41,66,'auctor','KZG51ROV5JJ','Gates, John U.',
to_date('05-09-2013','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (42,67,'luctusa','QCD65RGQ3DO','Cantrell, Dorian Z.',
to_date('03-10-2013','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (43,68,'non,','RUQ29VUX4PB','Delaney, Lenore H.',
to_date('04-10-2012','MM-DD-YYYY'), to_date('06-26-2017','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (44,69,'Sed','LMH73OIK4WN','Weeks, Barclay D.',
to_date('04-11-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (45,70,'ante','UHL94ZQZ5GD','Kennedy, Ian S.',
to_date('09-10-2013','MM-DD-YYYY'), to_date('08-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (46,71,'amet,','RIE83SMM9IR','Patton, Isadora F.',
to_date('05-10-2013','MM-DD-YYYY'), to_date('09-26-2014','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (47,72,'auctor','ZVY84FTK4LK','Dunn, Cara A.',
to_date('03-10-2013','MM-DD-YYYY'), to_date('04-26-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (47,73,'auctor','ZVY84FTK4AB','Dunn, Cara A.',
to_date('03-09-2013','MM-DD-YYYY'), to_date('05-26-2015','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (48,74,'Donec','IKM26SRH1JB','Lynch, Robin Y.',
to_date('07-10-2013','MM-DD-YYYY'), to_date('06-26-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (49,75,'lectus','JIE36HLL0RR','Dalton, Isabelle F.',
to_date('02-10-2013','MM-DD-YYYY'), to_date('01-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (50,76,'aliquet','QNA65NMK1GM','Lott, Althea L.',
to_date('05-10-2013','MM-DD-YYYY'), to_date('01-23-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (50,77,'aliquet','QNA65NMK1GM','Lott, Althea L.',
to_date('03-03-2013','MM-DD-YYYY'), to_date('01-20-2016','MM-DD-YYYY'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (51,78,'lectuso','SBB57QLF4KD','Burgess, Grady T.',
to_date('01-10-2013','MM-DD-YYYY'), to_date('03-20-2014','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (51,79,'lectuso','SBB57QLF4KD','Burgess, Grady T.',
to_date('02-04-2013','MM-DD-YYYY'), to_date('01-27-2016','MM-DD-YYYY'));
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (51,80,'lectuso','SBB57QLF4KD','Burgess, Grady T.',
to_date('01-10-2013','MM-DD-YYYY'), to_date('05-26-2015','MM-DD-YYYY'));
