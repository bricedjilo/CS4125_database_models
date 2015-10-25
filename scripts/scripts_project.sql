BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE project';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

create table project(
	comp_id			number NOT NULL, 
	project_id		number NOT NULL, ,
	title			varchar(100) NOT NULL,
	budget_code		number NOT NULL,
	director		varchar(100) NOT NULL,
	start_date		varchar(100) NOT NULL,
	end_date		varchar(100) NOT NULL,
	primary key (comp_id, speciality_name),
	foreign key (comp_id) references company
		on delete cascade
);

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (1,22,'pede','KJX91QHC1ZC','Riley, Caldwell Y.','12-04-12','26-02-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (2,30,'Suspendisse','LGW00MQK0IW','Talley, Porter O.','08-09-12','24-01-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (3,42,'lobortis,','GJJ40XGM6ZA','Pope, Austin C.','09-06-13','25-01-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (4,40,'odio','WTM07HQO4TK','Mcgowan, Zephania R.','28-02-12','07-08-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (5,16,'Duis','LQV59NTG6XT','Bradley, Yael M.','24-09-13','11-10-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (6,1,'ut,','URB38YZW4XJ','Shelton, Kyle M.','30-08-12','21-01-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (7,33,'ultricies','WJC10UHL8NN','Riddle, Vivien K.','27-06-13','02-09-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (8,43,'lacus','HKR15DAX3NU','Boone, Brennan M.','26-08-13','15-08-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (9,31,'Morbi','MZD69DTF3HL','Pruitt, Orla P.','15-01-13','26-09-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (10,41,'egestas,','FDT89KGR9RI','Martin, Shafira Z.','01-07-12','01-10-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (11,29,'elementum,','MXX72GFH7DM','Byrd, Sara Z.','30-01-13','29-08-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (12,8,'libero.','WJT15NGP2JP','Travis, Julian U.','27-11-11','17-05-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (13,27,'sit','AQS25YQG3JS','Erickson, Quin E.','14-01-13','02-04-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (14,14,'Sed','TQY73MUA8KJ','Dawson, Quail W.','01-07-13','31-10-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (15,2,'metus','XNS09BZJ6TZ','Strickland, Gloria W.','22-01-13','28-03-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (16,22,'dictum.','BYP89UDD6EK','Whitfield, Ronan Z.','26-07-12','20-02-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (17,41,'feugiat.','BXO05MVZ0IQ','Mckinney, Ora J.','25-01-12','04-11-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (18,45,'Etiam','ZUG90DXQ9FX','Watkins, Alyssa L.','25-08-12','01-12-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (19,5,'neque','DZG82QMI1NU','Kirby, Ivor C.','18-11-11','27-01-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (20,20,'nec,','JTY03WON9QG','Coleman, Ciara Q.','15-07-12','25-03-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (21,6,'Cras','BTE03ZRN6RA','Jefferson, Iona O.','30-01-12','13-07-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (22,16,'euismod','PSU83LVE6EC','Tyler, Erica P.','23-10-12','05-11-13');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (23,13,'velit','ZWM04AXO3NN','Evans, Stuart N.','16-10-12','31-07-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (24,6,'molestie','YED81FXY6JE','Wilkins, Kennedy O.','15-12-12','12-07-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (25,43,'morbi','AOG48BHM3KU','Villarreal, Britanni F.','04-01-12','21-02-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (26,51,'fermentum','BHP11ZWT4XH','Crosby, Kelly C.','16-05-13','13-03-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (27,47,'risus','QOQ52NBV7EG','Vaughan, Bianca F.','16-07-12','14-06-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (28,41,'elit','OAR43AWL4JN','Santana, Cruz P.','21-02-12','16-10-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (29,22,'velit.','BZY06CJQ8HM','Sloan, Rinah E.','21-08-13','02-04-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (30,34,'Nullam','LUC58WGS8ZU','Thornton, Amal G.','21-10-12','12-07-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (31,13,'non,','MBW02OTL8HZ','Hayden, Ashton A.','10-12-11','14-02-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (32,24,'fames','IQP64YDF1MP','Forbes, Ria V.','15-06-13','03-07-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (33,13,'nulla.','AME81RZU2SL','Britt, Tallulah O.','12-12-12','09-11-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (34,35,'porttitor','UVV43GNH6NC','Wallace, May T.','26-05-13','12-04-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (35,24,'molestie','HBV39ZME1NR','Hayes, Veda J.','20-04-12','29-07-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (36,14,'Quisque','OBL25ZKR3QV','Kane, Cyrus N.','30-12-11','27-11-13');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (37,15,'ac','MXH06YHX6AR','Foster, Barbara K.','09-09-12','29-04-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (38,7,'nisl.','WVN48SWU9AR','Sweeney, Ahmed W.','11-01-13','07-02-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (39,1,'aliquet','RBC67RGR6ZI','Roach, Jolie R.','02-12-11','11-12-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (40,16,'ridiculus','BVY17CKZ2KE','Goff, Hanae Y.','19-01-12','03-03-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (41,22,'auctor','KZG51ROV5JJ','Gates, John U.','30-07-12','20-01-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (42,6,'luctus','QCD65RGQ3DO','Cantrell, Dorian Z.','07-02-12','12-10-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (43,11,'non,','RUQ29VUX4PB','Delaney, Lenore H.','05-10-13','20-10-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (44,16,'Sed','LMH73OIK4WN','Weeks, Barclay D.','15-08-13','23-04-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (45,23,'ante','UHL94ZQZ5GD','Kennedy, Ian S.','14-08-12','06-04-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (46,25,'amet,','RIE83SMM9IR','Patton, Isadora F.','14-09-12','10-03-14');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (47,43,'auctor','ZVY84FTK4LK','Dunn, Cara A.','12-05-13','16-12-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (48,49,'Donec','IKM26SRH1JB','Lynch, Robin Y.','12-03-12','25-06-16');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (49,22,'lectus','JIE36HLL0RR','Dalton, Isabelle F.','19-04-12','01-05-17');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (50,10,'aliquet','QNA65NMK1GM','Lott, Althea L.','25-11-12','11-03-15');
INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) VALUES (51,2,'lectus','SBB57QLF4KD','Burgess, Grady T.','10-03-12','15-06-15');
