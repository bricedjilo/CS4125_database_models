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

INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'LKE4Y3',22,'Aug 24, 2015','Apr 12, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (18,'TEP5E8',19,'Dec 25, 2014','Mar 1, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'RMU5F0',4,'Dec 4, 2012','Mar 17, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (12,'YNR2A0',44,'Aug 27, 2010','Jan 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (9,'LKE4Y3',22,'Jun 25, 2013','Oct 24, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'QXJ3A0',49,'May 26, 2014','Jun 6, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (46,'OUL2W1',25,'Nov 25, 2011','Nov 3, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'IAE5G4',1,'Jul 27, 2014','May 24, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (44,'JFO2P3',13,'Jul 28, 2014','Dec 16, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (48,'TOD7M0',45,'Jul 15, 2013','Jul 16, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (17,'TTK0V7',16,'Apr 8, 2014','Jun 14, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'IRC6B2',44,'Feb 8, 2012','Nov 13, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (41,'IOV5Q0',43,'Oct 28, 2012','Oct 6, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'MUV9Z1',45,'Jul 12, 2015','Aug 28, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (5,'BPQ8Q8',5,'Aug 15, 2012','Nov 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'JGZ0C8',2,'Jun 24, 2011','Mar 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'BHC6F3',50,'Sep 15, 2010','Jan 12, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (10,'HTR1L5',33,'Jan 25, 2014','Apr 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (7,'PIQ1C0',32,'Nov 26, 2015','Feb 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'RIA6O3',37,'Jan 26, 2015','Sep 22, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'HTR1L5',33,'Jun 28, 2013','May 19, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (9,'GDA8L5',4,'Aug 28, 2014','Dec 21, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'JFO2P3',13,'Mar 3, 2015','Jan 4, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'IOV5Q0',43,'Mar 13, 2012','Jun 3, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (4,'LWX7F6',21,'Nov 12, 2015','Jul 14, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (31,'DTT5R6',48,'Sep 26, 2011','Oct 23, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'IRA1D2',18,'May 10, 2015','Apr 28, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'KXD6V9',42,'Aug 7, 2010','Feb 11, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (47,'GML0N4',28,'May 19, 2010','Apr 16, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (19,'JFQ8D7',25,'Jul 15, 2015','Apr 11, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (33,'XMT4L7',22,'Jun 9, 2010','Dec 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'FDO7F1',40,'Aug 11, 2012','Nov 8, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (34,'BIR0P3',15,'Jul 16, 2015','Dec 5, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (21,'LKE4Y3',22,'Feb 20, 2011','May 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'VVF0W0',15,'Jan 8, 2010','Sep 25, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'MUV9Z1',45,'Apr 14, 2011','Oct 28, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (33,'DWL8D6',48,'Mar 20, 2010','Oct 13, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'JEA7G5',2,'Jul 7, 2010','Dec 10, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'GNR8A4',29,'Oct 20, 2011','Apr 23, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'LKE4Y3',22,'Aug 12, 2014','Jun 21, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'GNR8A4',29,'Aug 26, 2014','Feb 19, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (42,'LKE4Y3',22,'Dec 25, 2014','Jan 19, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'ZGE8I9',17,'Mar 11, 2011','Nov 22, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'GHG9A0',42,'Apr 22, 2015','Feb 26, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'CEI3G1',20,'Apr 16, 2015','Mar 15, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (39,'DQR3Z7',26,'Feb 5, 2011','Oct 8, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (15,'UGI9K1',31,'Jan 6, 2014','May 5, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'WUX9V0',43,'Sep 2, 2013','Sep 8, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (16,'RGA9I2',2,'Apr 14, 2015','Jul 4, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (8,'UOY8B8',9,'Aug 16, 2011','Aug 21, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (39,'ZYN7Z7',31,'Aug 2, 2012','Jan 6, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'EII3J9',6,'Feb 10, 2015','Dec 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'NXC4M5',19,'Sep 20, 2013','Dec 9, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (6,'VCH6S1',16,'Jul 7, 2012','Nov 21, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (10,'GOJ2S0',39,'Sep 30, 2012','Sep 27, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (26,'TOD7M0',45,'Apr 28, 2013','Aug 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'CRB6J2',37,'Sep 19, 2012','May 16, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'KJL5S1',19,'Oct 8, 2015','Oct 21, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (50,'ARE8M6',46,'Mar 9, 2010','May 10, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'JGZ0C8',2,'Aug 3, 2014','Feb 9, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (25,'VZW6B5',3,'Oct 8, 2011','Sep 19, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'BHC6F3',50,'Oct 8, 2011','Jan 23, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'TEP5E8',19,'Feb 6, 2012','Aug 13, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'ENK3M2',7,'Jul 14, 2011','Jun 5, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (49,'WID8Z3',2,'May 16, 2011','Feb 14, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (22,'NIJ2Z3',6,'Feb 20, 2010','Aug 1, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'YVC0O4',1,'Nov 22, 2014','Oct 19, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'MTI4C6',9,'Dec 22, 2010','Mar 24, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (47,'UOY8B8',9,'Jan 13, 2012','May 30, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (7,'VAE6D9',30,'Jul 27, 2012','May 3, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'UED0P8',6,'Apr 8, 2010','Dec 3, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (28,'DTT5R6',48,'Jun 13, 2011','Jul 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'SDE4I9',2,'Feb 10, 2010','Jul 29, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'MSO8H4',19,'Dec 5, 2012','Mar 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (37,'SFS9S2',13,'Dec 7, 2010','Oct 11, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'VVF0W0',15,'Dec 29, 2013','Aug 13, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (48,'TJW7W5',30,'Jun 3, 2011','May 13, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (29,'GOJ2S0',39,'Jun 4, 2015','Aug 29, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (35,'GDA8L5',4,'Jan 17, 2015','Feb 20, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'YNR2A0',44,'Sep 8, 2012','Nov 29, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (14,'DRC4G5',43,'Apr 25, 2015','Oct 27, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (51,'HWD7W5',31,'Dec 18, 2011','Dec 1, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (1,'JFQ8D7',25,'Sep 6, 2011','Aug 6, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (23,'MDE1H5',40,'Jan 9, 2015','May 16, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (45,'MUV9Z1',45,'Jun 9, 2012','May 8, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (20,'VJB1E3',50,'Jan 26, 2011','Jul 20, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (44,'KPI1X5',8,'Jan 21, 2011','Jan 26, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (5,'UGI9K1',31,'Aug 6, 2012','Jun 2, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (2,'RMX0R6',40,'Dec 29, 2011','Jul 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (30,'DWL8D6',48,'Jul 9, 2010','May 30, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (31,'RGA9I2',2,'Mar 12, 2012','Aug 20, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (3,'VAE6D9',30,'Dec 25, 2015','Sep 23, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (11,'RMU5F0',4,'Apr 20, 2015','Oct 10, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (21,'XMT4L7',22,'Jul 27, 2015','Aug 3, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (32,'DQR3Z7',26,'Jun 25, 2014','Apr 18, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (36,'QBE6I2',28,'Jul 28, 2014','Oct 28, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (36,'RDG8E0',8,'Apr 10, 2011','Mar 6, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (43,'DFN7N2',36,'Aug 9, 2011','Mar 14, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (40,'ENK3M2',7,'Mar 29, 2014','Dec 11, 2017');
INSERT INTO works (per_id,job_code,comp_id,start_date,end_date) VALUES (13,'XJD7R2',19,'Mar 17, 2015','May 4, 2017');
