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
	primary key (comp_id, project_id),
	foreign key (comp_id) references company
		on delete cascade
);

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (1,22,'pede','KJX91QHC1ZC','Riley, Caldwell Y.', 
TO_DATE('2012-DEC-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-DEC-26 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (2,30,'Suspendisse','LGW00MQK0IW','Talley, Porter O.',
TO_DATE('2012-SEP-08 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-JAN-24 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (3,42,'lobortis,','GJJ40XGM6ZA','Pope, Austin C.',
TO_DATE('2013-JUN-09 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-JAN-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (4,40,'odio','WTM07HQO4TK','Mcgowan, Zephania R.',
TO_DATE('2012-FEB-28 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-AUG-07 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (5,16,'Duis','LQV59NTG6XT','Bradley, Yael M.',
TO_DATE('2013-SEP-24 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-OCT-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (6,1,'ut,','URB38YZW4XJ','Shelton, Kyle M.',
TO_DATE('2012-AUG-30 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-JAN-21 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (7,33,'ultricies','WJC10UHL8NN','Riddle, Vivien K.',
TO_DATE('2013-JUN-27 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-SEP-02 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (8,43,'lacus','HKR15DAX3NU','Boone, Brennan M.',
TO_DATE('2013-AUG-26 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-AUG-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (9,31,'Morbi','MZD69DTF3HL','Pruitt, Orla P.',
TO_DATE('2013-JAN-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-SEP-26 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (10,41,'egestas,','FDT89KGR9RI','Martin, Shafira Z.',
TO_DATE('2012-JUL-01 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-OCT-01 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (11,29,'elementum,','MXX72GFH7DM','Byrd, Sara Z.',
TO_DATE('2013-JAN-30 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-AUG-29 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (12,8,'libero.','WJT15NGP2JP','Travis, Julian U.',
TO_DATE('2011-NOV-27 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-MAY-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (13,27,'sit','AQS25YQG3JS','Erickson, Quin E.',
TO_DATE('2013-JAN-14 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-APR-02 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (14,14,'Sed','TQY73MUA8KJ','Dawson, Quail W.',
TO_DATE('2013-JUL-01 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-OCT-31 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (15,2,'metus','XNS09BZJ6TZ','Strickland, Gloria W.',
TO_DATE('2013-JAN-22 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-MAR-28 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));


INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (16,22,'dictum.','BYP89UDD6EK','Whitfield, Ronan Z.',
TO_DATE('2012-JUL-26 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-FEB-20 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (17,41,'feugiat.','BXO05MVZ0IQ','Mckinney, Ora J.',
TO_DATE('2012-JAN-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-NOV-04 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (18,45,'Etiam','ZUG90DXQ9FX','Watkins, Alyssa L.',
TO_DATE('2012-AUG-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-DEC-01 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (19,5,'neque','DZG82QMI1NU','Kirby, Ivor C.',
TO_DATE('2011-NOV-18 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-JAN-27 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (20,20,'nec,','JTY03WON9QG','Coleman, Ciara Q.',
TO_DATE('2012-JUL-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-MAR-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (21,6,'Cras','BTE03ZRN6RA','Jefferson, Iona O.',
TO_DATE('2012-JAN-30 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-JUL-13 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (22,16,'euismod','PSU83LVE6EC','Tyler, Erica P.',
TO_DATE('2012-OCT-23 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2013-NOV-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (23,13,'velit','ZWM04AXO3NN','Evans, Stuart N.',
TO_DATE('2012-OCT-16 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-JUL-31 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (24,6,'molestie','YED81FXY6JE','Wilkins, Kennedy O.',
TO_DATE('2012-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-JUL-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (25,43,'morbi','AOG48BHM3KU','Villarreal, Britanni F.',
TO_DATE('2012-JAN-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-FEB-21 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (26,51,'fermentum','BHP11ZWT4XH','Crosby, Kelly C.',
TO_DATE('2013-MAY-16 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-MAR-13 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (27,47,'risus','QOQ52NBV7EG','Vaughan, Bianca F.',
TO_DATE('2012-JUL-16 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-JUN-14 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (28,41,'elit','OAR43AWL4JN','Santana, Cruz P.',
TO_DATE('2012-FEB-21 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-OCT-16 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (29,22,'velit.','BZY06CJQ8HM','Sloan, Rinah E.',
TO_DATE('2013-AUG-21 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-APR-02 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (30,34,'Nullam','LUC58WGS8ZU','Thornton, Amal G.',
TO_DATE('2012-OCT-21 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-JUL-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (31,13,'non,','MBW02OTL8HZ','Hayden, Ashton A.',
TO_DATE('2011-DEC-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-FEB-14 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (32,24,'fames','IQP64YDF1MP','Forbes, Ria V.',
TO_DATE('2013-JUN-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-JUL-03 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (33,13,'nulla.','AME81RZU2SL','Britt, Tallulah O.',
TO_DATE('2012-DEC-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-NOV-09 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (34,35,'porttitor','UVV43GNH6NC','Wallace, May T.',
TO_DATE('2013-MAY-26 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-APR-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (35,24,'molestie','HBV39ZME1NR','Hayes, Veda J.',
TO_DATE('2012-APR-20 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-JUL-29 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (36,14,'Quisque','OBL25ZKR3QV','Kane, Cyrus N.',
TO_DATE('2011-DEC-30 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2013-NOV-27 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (37,15,'ac','MXH06YHX6AR','Foster, Barbara K.',
TO_DATE('2012-SEP-09 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-APR-29 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (38,7,'nisl.','WVN48SWU9AR','Sweeney, Ahmed W.',
TO_DATE('2013-JAN-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-FEB-07 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (39,1,'aliquet','RBC67RGR6ZI','Roach, Jolie R.',
TO_DATE('2011-DEC-02 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (40,16,'ridiculus','BVY17CKZ2KE','Goff, Hanae Y.',
TO_DATE('2012-JAN-19 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-MAR-03 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (41,22,'auctor','KZG51ROV5JJ','Gates, John U.',
TO_DATE('2012-JUL-30 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-JAN-20 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (42,6,'luctus','QCD65RGQ3DO','Cantrell, Dorian Z.',
TO_DATE('2012-FEB-07 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-OCT-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (43,11,'non,','RUQ29VUX4PB','Delaney, Lenore H.',
TO_DATE('2013-OCT-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-OCT-20 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (44,16,'Sed','LMH73OIK4WN','Weeks, Barclay D.',
TO_DATE('2013-AUG-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-APR-23 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (45,23,'ante','UHL94ZQZ5GD','Kennedy, Ian S.',
TO_DATE('2012-AUG-14 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-APR-06 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (46,25,'amet,','RIE83SMM9IR','Patton, Isadora F.',
TO_DATE('2012-SEP-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2014-MAR-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (47,43,'auctor','ZVY84FTK4LK','Dunn, Cara A.',
TO_DATE('2013-MAY-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-DEC-16 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (48,49,'Donec','IKM26SRH1JB','Lynch, Robin Y.',
TO_DATE('2012-MAR-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2016-JUN-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (49,22,'lectus','JIE36HLL0RR','Dalton, Isabelle F.',
TO_DATE('2012-APR-19 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2017-MAY-01 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (50,10,'aliquet','QNA65NMK1GM','Lott, Althea L.',
TO_DATE('2012-NOV-25 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-MAR-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));

INSERT INTO project (comp_id,project_id,title,budget_code,director,start_date,end_date) 
VALUES (51,2,'lectus','SBB57QLF4KD','Burgess, Grady T.',
TO_DATE('2012-MAR-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 
TO_DATE('2015-JUN-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'));
