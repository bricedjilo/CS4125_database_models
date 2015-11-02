BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE works CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE works PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE works (
	per_id 		number NOT NULL,
	job_code 	varchar(10) NOT NULL,
	start_date 	DATE
	comp_id		number NOT NULL,
	job_type	varchar(20) NOT NULL,
	end_date	DATE
	PRIMARY KEY (per_id,job_code,start_date),
	foreign key (per_id,job_code) references company on delete cascade
);

INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (27,'IRA1D2','Mar 16, 2010',8,'full-time','Aug 11, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (16,'ECQ5Z6','Dec 16, 2010',22,'full-time','Oct 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (14,'HCO8X4','Jan 4, 2010',2,'full-time','Sep 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (35,'NLA2S0','Feb 10, 2010',29,'part-time','Oct 8, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (41,'BHC6F3','Jul 7, 2014',21,'full-time','Mar 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (35,'VAE6D9','May 19, 2011',33,'full-time','Feb 28, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (42,'SSL6N8','Jun 28, 2011',26,'part-time','Feb 25, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (22,'LKE4Y3','Jul 22, 2012',17,'part-time','Jan 26, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (40,'RGA9I2','Aug 31, 2013',40,'part-time','Jun 6, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (38,'GHG9A0','Aug 17, 2011',45,'full-time','Oct 31, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (16,'DQR3Z7','Feb 27, 2013',19,'full-time','Oct 27, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (50,'XMT4L7','Apr 30, 2014',26,'full-time','Jun 27, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (48,'XJD7R2','Apr 29, 2010',36,'full-time','Oct 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (15,'GNR8A4','Mar 10, 2010',20,'part-time','Mar 30, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (37,'SSL6N8','Apr 3, 2013',32,'part-time','Nov 30, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (30,'YNR2A0','Sep 29, 2011',8,'full-time','Nov 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (37,'HCO8X4','Aug 4, 2014',8,'part-time','Feb 23, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (34,'UOY8B8','May 11, 2013',40,'part-time','Aug 8, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (44,'WUZ2Y4','Feb 6, 2013',27,'full-time','Apr 12, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (51,'CRB6J2','Aug 24, 2014',9,'part-time','Oct 9, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (24,'WID8Z3','Sep 21, 2013',49,'part-time','Sep 7, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (46,'WUX9V0','Mar 14, 2012',49,'full-time','Jul 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (27,'WID8Z3','Nov 14, 2015',7,'part-time','Aug 18, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (35,'VGD9R2','Oct 5, 2012',47,'part-time','Aug 12, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (49,'PIQ1C0','Apr 8, 2013',23,'part-time','Jun 15, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (29,'ZEE2X7','Jun 26, 2013',38,'full-time','Oct 31, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (34,'YVC0O4','Sep 20, 2010',38,'full-time','Jul 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (21,'TJH3H9','Oct 4, 2011',20,'part-time','Jul 7, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (14,'ZYN7Z7','Nov 11, 2011',47,'full-time','Sep 23, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (20,'RIA6O3','Sep 9, 2014',11,'part-time','Oct 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (39,'NIJ2Z3','Apr 5, 2011',39,'part-time','Sep 26, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (43,'ZEE2X7','Apr 22, 2011',36,'part-time','Jul 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (28,'HTR1L5','Aug 21, 2010',35,'part-time','Sep 12, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (33,'GHG9A0','Sep 6, 2010',44,'full-time','Nov 16, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (14,'LWX7F6','Feb 7, 2011',12,'full-time','Feb 18, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (36,'SFS9S2','Aug 28, 2014',24,'full-time','Feb 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (31,'YNR2A0','Oct 16, 2014',32,'full-time','Apr 7, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (39,'EYE3H6','Sep 2, 2014',27,'part-time','Apr 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (6,'RMU5F0','Oct 14, 2015',3,'part-time','Apr 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (14,'BHC6F3','Aug 1, 2015',25,'full-time','Jan 30, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (5,'EII3J9','Dec 20, 2011',17,'full-time','Aug 29, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (23,'QBE6I2','Feb 11, 2013',29,'part-time','Aug 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (30,'GOJ2S0','Oct 31, 2013',7,'full-time','Jul 27, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (33,'IRC6B2','Sep 29, 2013',45,'part-time','Jul 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (25,'TJH3H9','Dec 9, 2015',44,'part-time','Aug 26, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (33,'VDC1V2','Jul 17, 2010',3,'full-time','Apr 29, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (13,'TJH3H9','Sep 4, 2012',4,'part-time','Jan 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (16,'LKE4Y3','Feb 4, 2014',29,'full-time','Mar 28, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (33,'IRA1D2','Oct 18, 2011',22,'full-time','Mar 9, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (6,'GDA8L5','Dec 14, 2010',36,'full-time','Oct 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (16,'SDE4I9','Jul 15, 2010',36,'part-time','Jun 25, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (35,'WUZ2Y4','Dec 25, 2013',15,'part-time','Oct 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (17,'KME9G4','Oct 6, 2013',10,'full-time','Aug 11, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (38,'UOY8B8','Jul 4, 2014',46,'part-time','May 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (34,'NLA2S0','Oct 28, 2015',3,'full-time','May 25, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (1,'VGD9R2','Jan 14, 2010',25,'full-time','Apr 29, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (4,'MSO8H4','Aug 7, 2012',34,'full-time','Sep 12, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (8,'GNR8A4','Oct 11, 2011',15,'part-time','Jul 15, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (10,'IRA1D2','Aug 6, 2010',46,'full-time','Jul 24, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (25,'CPA0O2','Jan 30, 2015',36,'part-time','Mar 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (21,'GNR8A4','May 27, 2012',38,'full-time','May 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (31,'GOJ2S0','Aug 5, 2012',50,'part-time','Oct 14, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (41,'DWL8D6','Mar 2, 2013',47,'part-time','Aug 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (25,'DWL8D6','Dec 20, 2012',42,'part-time','May 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (41,'VGD9R2','Aug 20, 2010',22,'part-time','Jan 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (14,'HPY8C5','Apr 20, 2010',29,'full-time','Feb 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (4,'UOY8B8','Oct 8, 2013',1,'part-time','Jul 10, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (22,'WID8Z3','Apr 25, 2011',33,'full-time','Jan 20, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (27,'AMX3Y5','Dec 18, 2011',34,'full-time','Jun 15, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (27,'MSO8H4','Nov 25, 2011',48,'part-time','Mar 25, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (44,'HWD7W5','Aug 28, 2015',18,'full-time','Jun 29, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (46,'GHG9A0','May 30, 2012',33,'part-time','Sep 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (19,'DWL8D6','Mar 25, 2015',17,'full-time','Jul 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (48,'CPA0O2','Oct 29, 2014',38,'full-time','Aug 9, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (9,'IRC6B2','Aug 8, 2011',49,'full-time','Oct 1, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (16,'FKU6S0','Feb 8, 2013',34,'full-time','Oct 13, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (39,'KPI1X5','Feb 6, 2015',5,'part-time','Jan 30, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (5,'ENK3M2','Jan 15, 2011',23,'full-time','Mar 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (2,'GHG9A0','Nov 14, 2011',21,'full-time','Dec 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (26,'UED0P8','Jul 12, 2011',29,'full-time','Sep 22, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (10,'CPA0O2','Mar 10, 2010',16,'full-time','Jul 30, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (39,'KXD6V9','Jun 11, 2011',17,'part-time','Apr 9, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (51,'KME9G4','Apr 25, 2010',19,'part-time','Jan 8, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (44,'MDE1H5','Jun 19, 2011',29,'part-time','May 7, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (30,'RMX0R6','May 15, 2013',22,'part-time','Jan 27, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (35,'WUZ2Y4','Nov 16, 2012',43,'full-time','Feb 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (24,'VZW6B5','Jan 28, 2010',37,'full-time','Sep 23, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (24,'DTT5R6','Dec 30, 2013',45,'part-time','Nov 21, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (38,'DQR3Z7','Jul 5, 2010',36,'full-time','May 3, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (1,'JGZ0C8','Jul 31, 2010',3,'part-time','Feb 19, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (38,'HTR1L5','Feb 14, 2012',31,'full-time','Jan 4, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (40,'WID8Z3','Jan 21, 2014',10,'part-time','Jan 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (43,'PKK2F4','Jan 21, 2013',34,'full-time','Dec 10, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (7,'DWL8D6','Nov 8, 2014',41,'full-time','Nov 28, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (32,'WRM5O3','Oct 3, 2011',24,'full-time','Mar 15, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (38,'YVC0O4','Nov 19, 2010',51,'full-time','Oct 19, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (33,'RMU5F0','Oct 16, 2014',41,'full-time','Mar 24, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (32,'VCH6S1','Apr 1, 2010',5,'part-time','Mar 18, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (13,'PIQ1C0','Jul 28, 2014',51,'full-time','May 5, 2017');
INSERT INTO job (per_id,job_code,start_date,comp_id,job_type,end_date) VALUES (11,'WUZ2Y4','Jun 2, 2010',48,'part-time','Sep 16, 2017');
