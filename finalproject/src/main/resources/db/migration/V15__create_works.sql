BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE works CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE works PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE works (
	per_id 		number NOT NULL,
	job_code 	varchar(10) NOT NULL,
	comp_id		number NOT NULL,
	start_date 	varchar(20) NOT NULL,
	end_date	varchar(20) NOT NULL,
	PRIMARY KEY (per_id,job_code,comp_id,start_date),
	foreign key (per_id) references person on delete cascade,
	foreign key (job_code,comp_id) references jobs on delete cascade
);

INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'LKE4Y3',22,
to_date('08-24-2016','MM-DD-YYYY'),to_date('04-12-2017', 'MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'HTR1L5',33,
to_date('06-28-2015','MM-DD-YYYY'),to_date('08-23-2016', 'MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'JEA7G5',2,
to_date('07-07-2012','MM-DD-YYYY'),to_date('06-27-2015', 'MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'DRC4G5',43,
to_date('04-25-2015','MM-DD-YYYY'),to_date('07-06-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (18,'TEP5E8',19,
to_date('12-25-2014','MM-DD-YYYY'),to_date('03-01-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'WUX9V0',43,
to_date('09-02-2013','MM-DD-YYYY'),to_date('09-08-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'RMU5F0',4,
to_date('12-04-2012','MM-DD-YYYY'),to_date('09-01-2013','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'SFS9S2',13,
to_date('12-07-2010','MM-DD-YYYY'),to_date('12-03-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (12,'YNR2A0',44,
to_date('08-27-2010','MM-DD-YYYY'),to_date('01-02-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (9,'GDA8L5',4,
to_date('08-28-2014','MM-DD-YYYY'),to_date('12-21-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (9,'LKE4Y3',22,
to_date('06-25-2013','MM-DD-YYYY'),to_date('08-27-2014','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'IAE5G4',1,
to_date('07-27-2014','MM-DD-YYYY'),to_date('05-24-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'QXJ3A0',49,
to_date('05-26-2014','MM-DD-YYYY'),to_date('07-26-2014','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'NXC4M5',19,
to_date('09-20-2013','MM-DD-YYYY'),to_date('05-25-2014','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'BHC6F3',50,
to_date('10-08-2011','MM-DD-YYYY'),to_date('09-20-2013','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'SDE4I9',2,
to_date('02-10-2010','MM-DD-YYYY'),to_date('10-07-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'HWD7W5',31,
to_date('12-18-2008','MM-DD-YYYY'),to_date('02-01-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (46,'OUL2W1',25,
to_date('11-25-2011','MM-DD-YYYY'),to_date('11-03-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (50,'ARE8M6',46,
to_date('03-09-2010','MM-DD-YYYY'),to_date('05-10-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (44,'KPI1X5',8,
to_date('01-21-2011','MM-DD-YYYY'),to_date('01-26-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (44,'JFO2P3',13,
to_date('07-28-2014','MM-DD-YYYY'),to_date('01-20-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (48,'TJW7W5',30,
to_date('06-03-2011','MM-DD-YYYY'),to_date('05-13-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (48,'TOD7M0',45,
to_date('06-15-2009','MM-DD-YYYY'),to_date('06-02-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (17,'TTK0V7',16,
to_date('04-08-2014','MM-DD-YYYY'),to_date('06-14-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'GNR8A4',29,
to_date('10-20-2011','MM-DD-YYYY'),to_date('04-23-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'JGZ0C8',2,
to_date('06-24-2011','MM-DD-YYYY'),to_date('10-10-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'IRC6B2',44,
to_date('02-08-2012','MM-DD-YYYY'),to_date('06-20-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'MTI4C6',9,
to_date('12-22-2010','MM-DD-YYYY'),to_date('02-06-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'RMX0R6',40,
to_date('12-29-2007','MM-DD-YYYY'),to_date('12-20-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (41,'IOV5Q0',43,
to_date('10-28-2012','MM-DD-YYYY'),to_date('10-06-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'DFN7N2',36,
to_date('08-09-2011','MM-DD-YYYY'),to_date('03-14-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'JFO2P3',13,
to_date('03-03-2015','MM-DD-YYYY'),to_date('08-01-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'MUV9Z1',45,
to_date('07-12-2011','MM-DD-YYYY'),to_date('03-01-2015','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (5,'UGI9K1',31,
to_date('08-06-2012','MM-DD-YYYY'),to_date('06-02-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (5,'BPQ8Q8',5,
to_date('08-15-2011','MM-DD-YYYY'),to_date('08-04-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'BHC6F3',50,
to_date('09-15-2010','MM-DD-YYYY'),to_date('01-12-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'VVF0W0',15,
to_date('01-08-2003','MM-DD-YYYY'),to_date('09-01-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'CEI3G1',20,
to_date('04-16-2000','MM-DD-YYYY'),to_date('01-02-2003','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'RMU5F0',4,
to_date('04-20-1995','MM-DD-YYYY'),to_date('04-01-2000','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (10,'GOJ2S0',39,
to_date('09-30-2012','MM-DD-YYYY'),to_date('09-27-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (10,'HTR1L5',33,
to_date('01-25-2007','MM-DD-YYYY'),to_date('09-15-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (7,'VAE6D9',30,
to_date('06-27-2012','MM-DD-YYYY'),to_date('05-03-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (7,'PIQ1C0',32,
to_date('11-26-2006','MM-DD-YYYY'),to_date('07-20-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'ZGE8I9',17,
to_date('03-11-2011','MM-DD-YYYY'),to_date('11-22-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'RIA6O3',37,
to_date('01-26-2005','MM-DD-YYYY'),to_date('03-11-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'DQR3Z7',26,
to_date('06-25-2004','MM-DD-YYYY'),to_date('01-06-2005','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'RGA9I2',2,
to_date('04-14-2015','MM-DD-YYYY'),to_date('07-04-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'IOV5Q0',43,
to_date('03-13-2012','MM-DD-YYYY'),to_date('04-14-2015','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'MUV9Z1',45,
to_date('04-14-2011','MM-DD-YYYY'),to_date('03-03-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (4,'LWX7F6',21,
to_date('11-12-2015','MM-DD-YYYY'),to_date('07-14-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (31,'RGA9I2',2,
to_date('03-12-2012','MM-DD-YYYY'),to_date('08-20-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (31,'DTT5R6',48,
to_date('09-26-2011','MM-DD-YYYY'),to_date('03-01-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'CRB6J2',37,
to_date('09-19-2012','MM-DD-YYYY'),to_date('05-16-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'IRA1D2',18,
to_date('05-10-2010','MM-DD-YYYY'),to_date('09-01-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'ENK3M2',7,
to_date('07-14-2011','MM-DD-YYYY'),to_date('05-01-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'XJD7R2',19,
to_date('03-17-2005','MM-DD-YYYY'),to_date('07-01-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'FDO7F1',40,
to_date('08-11-2012','MM-DD-YYYY'),to_date('11-08-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'KXD6V9',42,
to_date('08-07-2010','MM-DD-YYYY'),to_date('08-08-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'ENK3M2',7,
to_date('03-29-2001','MM-DD-YYYY'),to_date('08-01-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (47,'UOY8B8',9,
to_date('01-13-2012','MM-DD-YYYY'),to_date('05-30-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (47,'GML0N4',28,
to_date('05-19-2010','MM-DD-YYYY'),to_date('06-13-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (19,'JFQ8D7',25,
to_date('07-15-2015','MM-DD-YYYY'),to_date('04-11-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (33,'DWL8D6',48,
to_date('03-20-2010','MM-DD-YYYY'),to_date('10-13-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (33,'XMT4L7',22,
to_date('06-09-2002','MM-DD-YYYY'),to_date('03-10-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (34,'BIR0P3',15,
to_date('07-16-2015','MM-DD-YYYY'),to_date('12-05-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (21,'LKE4Y3',22,
to_date('02-20-2011','MM-DD-YYYY'),to_date('05-18-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (21,'XMT4L7',22,
to_date('07-27-2004','MM-DD-YYYY'),to_date('02-02-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'JFQ8D7',25,
to_date('09-06-2011','MM-DD-YYYY'),to_date('08-06-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'TEP5E8',19,
to_date('02-06-2002','MM-DD-YYYY'),to_date('09-01-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'LKE4Y3',22,
to_date('08-12-1997','MM-DD-YYYY'),to_date('01-21-2002','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'DTT5R6',48,
to_date('06-13-2011','MM-DD-YYYY'),to_date('07-18-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'GNR8A4',29,
to_date('08-26-2014','MM-DD-YYYY'),to_date('06-03-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'YVC0O4',1,
to_date('11-22-2010','MM-DD-YYYY'),to_date('08-20-2013','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (42,'LKE4Y3',22,
to_date('12-25-2014','MM-DD-YYYY'),to_date('01-19-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'JGZ0C8',2,
to_date('08-03-2014','MM-DD-YYYY'),to_date('02-09-2015','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'GHG9A0',42,
to_date('04-22-2010','MM-DD-YYYY'),to_date('08-01-2014','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'WID8Z3',2,
to_date('05-16-2001','MM-DD-YYYY'),to_date('04-21-2003','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (39,'ZYN7Z7',31,
to_date('08-02-2012','MM-DD-YYYY'),to_date('01-06-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (39,'DQR3Z7',26,
to_date('02-05-2011','MM-DD-YYYY'),to_date('08-01-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (15,'UGI9K1',31,
to_date('01-06-2014','MM-DD-YYYY'),to_date('05-05-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (8,'UOY8B8',9,
to_date('08-16-2011','MM-DD-YYYY'),to_date('08-21-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'KJL5S1',19,
to_date('08-08-2015','MM-DD-YYYY'),to_date('10-21-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'VZW6B5',3,
to_date('10-08-2011','MM-DD-YYYY'),to_date('10-01-2015','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'EII3J9',6,
to_date('02-10-2008','MM-DD-YYYY'),to_date('10-01-2011','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (6,'VCH6S1',16,
to_date('07-07-2012','MM-DD-YYYY'),to_date('11-21-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (26,'TOD7M0',45,
to_date('04-28-2013','MM-DD-YYYY'),to_date('08-18-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (22,'NIJ2Z3',6,
to_date('02-20-2010','MM-DD-YYYY'),to_date('08-01-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'MDE1H5',40,
to_date('01-09-2015','MM-DD-YYYY'),to_date('05-16-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'UED0P8',6,
to_date('10-08-2010','MM-DD-YYYY'),to_date('12-03-2014','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'MSO8H4',19,
to_date('12-05-2002','MM-DD-YYYY'),to_date('03-18-2009','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'MUV9Z1',45,
to_date('06-09-2012','MM-DD-YYYY'),to_date('05-08-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'YNR2A0',44,
to_date('09-08-2010','MM-DD-YYYY'),to_date('06-02-2012','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'VVF0W0',15,
to_date('12-29-2002','MM-DD-YYYY'),to_date('08-13-2010','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (29,'GOJ2S0',39,
to_date('06-04-2015','MM-DD-YYYY'),to_date('08-29-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (35,'GDA8L5',4,
to_date('01-17-2015','MM-DD-YYYY'),to_date('02-20-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (20,'VJB1E3',50,
to_date('01-26-2011','MM-DD-YYYY'),to_date('07-20-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (30,'DWL8D6',48,
to_date('07-09-2010','MM-DD-YYYY'),to_date('05-30-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (3,'VAE6D9',30,
to_date('12-25-2015','MM-DD-YYYY'),to_date('09-23-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (36,'QBE6I2',28,
to_date('07-28-2014','MM-DD-YYYY'),to_date('10-28-2017','MM-DD-YYYY'));
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (36,'RDG8E0',8,
to_date('04-10-2011','MM-DD-YYYY'),to_date('03-06-2014','MM-DD-YYYY'));
