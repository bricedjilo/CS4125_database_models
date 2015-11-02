BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE works CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE works PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE works (
	per_id 		number NOT NULL,
	job_code 	varchar(10) NOT NULL,
	start_date 	varchar(20) NOT NULL,
	comp_id		number NOT NULL,
	end_date	varchar(20) NOT NULL,
	PRIMARY KEY (per_id,job_code,start_date),
	foreign key (per_id) references person on delete cascade,
	foreign key (job_code) references jobs on delete cascade
);

INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (8,'WUZ2Y4','Apr 21, 2014',38,'Nov 3, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (21,'EYE3H6','Oct 12, 2010',47,'May 18, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (10,'HTR1L5','Jul 7, 2011',4,'May 22, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'ZIC5P2','Feb 1, 2014',25,'Dec 31, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (29,'XMT4L7','Aug 29, 2011',3,'Jan 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (19,'WUX9V0','Jul 5, 2010',16,'Jun 24, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (12,'KPI1X5','Mar 7, 2012',15,'Mar 15, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (39,'VGD9R2','Jan 23, 2012',21,'Sep 24, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (29,'VAE6D9','Oct 20, 2015',8,'Apr 7, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (43,'GDA8L5','Dec 12, 2014',38,'Aug 7, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (36,'VCH6S1','May 1, 2010',40,'Dec 4, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (31,'UOY8B8','Jan 20, 2010',5,'Apr 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (45,'VZW6B5','Jun 11, 2015',46,'Jun 13, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (9,'TOD7M0','Sep 22, 2012',12,'Nov 17, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (4,'MFQ8K6','Apr 14, 2014',20,'May 15, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (27,'IAE5G4','Aug 28, 2014',6,'Feb 1, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (39,'JFO2P3','Jan 29, 2015',34,'Apr 5, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (38,'QBE6I2','Oct 30, 2013',38,'Apr 17, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'JEA7G5','Feb 14, 2012',20,'May 12, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'MTI4C6','May 12, 2013',25,'Jun 28, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (25,'JGZ0C8','Mar 1, 2012',21,'Jun 9, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (26,'CRB6J2','Apr 25, 2014',43,'May 4, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (22,'EOQ1I0','Aug 21, 2015',44,'Apr 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (17,'GOJ2S0','Dec 26, 2015',11,'Nov 20, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (25,'ZHJ3X9','Jan 24, 2015',35,'Jan 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'EOQ1I0','Dec 23, 2010',47,'Sep 11, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (22,'GOJ2S0','Jul 22, 2012',18,'Jun 9, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (42,'GOJ2S0','Apr 14, 2010',23,'Apr 10, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'OUL2W1','Jan 3, 2013',41,'Jan 10, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (46,'UED0P8','Aug 17, 2010',11,'Feb 23, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (31,'KPI1X5','Nov 27, 2013',34,'Jun 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (14,'DWL8D6','Jan 21, 2014',12,'Feb 28, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (19,'HWD7W5','Mar 16, 2011',50,'Oct 18, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (21,'YNR2A0','Feb 5, 2011',48,'Sep 4, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (8,'GML0N4','Nov 5, 2010',51,'Jul 5, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (23,'VRP6B2','Mar 3, 2010',28,'Jun 1, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (32,'VGD9R2','Jul 1, 2011',1,'Apr 2, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (33,'DWL8D6','Mar 21, 2012',30,'May 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (26,'BHC6F3','Dec 26, 2010',46,'Jan 31, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (2,'YNR2A0','Apr 17, 2012',15,'Dec 30, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (12,'PKK2F4','Jun 4, 2014',39,'Apr 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (51,'KXD6V9','May 26, 2015',8,'Jun 3, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (47,'VRP6B2','May 17, 2014',22,'Apr 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (33,'DRC4G5','Apr 20, 2013',47,'Nov 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (14,'ARE8M6','Oct 26, 2015',22,'Sep 18, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (13,'RGA9I2','Sep 1, 2013',5,'Mar 18, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (16,'UED0P8','Jun 27, 2012',36,'Aug 26, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (8,'GDA8L5','Sep 4, 2013',36,'Oct 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (40,'YNR2A0','Aug 21, 2010',16,'Mar 27, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (8,'LKE4Y3','May 1, 2015',16,'Sep 7, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (48,'GNR8A4','Oct 3, 2015',17,'Sep 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (34,'AMX3Y5','Aug 19, 2013',8,'Jun 28, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (14,'TJH3H9','Aug 5, 2014',34,'Dec 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (9,'MLS2P4','Apr 6, 2012',7,'Jul 22, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (31,'QXJ3A0','Jul 16, 2012',37,'Oct 5, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'VJB1E3','Nov 29, 2014',45,'Apr 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (29,'VAE6D9','Jul 28, 2012',39,'Mar 30, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (43,'PKK2F4','Jan 12, 2012',43,'Feb 10, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'QBE6I2','Jul 28, 2011',24,'Jan 27, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (4,'TEP5E8','Oct 26, 2015',48,'Apr 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (37,'VAE6D9','Dec 29, 2014',41,'Jun 20, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (43,'PKK2F4','Sep 16, 2010',6,'Apr 9, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (21,'NLA2S0','Apr 8, 2011',3,'May 7, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (33,'IRC6B2','Oct 9, 2011',2,'Sep 19, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (37,'EOQ1I0','Sep 21, 2013',49,'Apr 16, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (12,'NLA2S0','May 28, 2010',1,'Jul 25, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (17,'WUX9V0','May 16, 2015',48,'Aug 25, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (45,'JFO2P3','Jul 31, 2011',1,'Oct 3, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'LWX7F6','Feb 4, 2012',17,'Apr 19, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (33,'VCH6S1','Mar 29, 2011',3,'Jan 30, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'DRC4G5','Apr 5, 2010',23,'Mar 1, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (20,'ZHJ3X9','Sep 23, 2014',31,'Mar 23, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (20,'NXC4M5','Apr 7, 2013',21,'Oct 10, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (46,'QON9E9','May 20, 2010',23,'Dec 13, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (15,'JEA7G5','Feb 13, 2015',10,'Oct 8, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (3,'XJD7R2','Jun 25, 2012',40,'Jun 3, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (12,'VCH6S1','Mar 12, 2015',40,'Nov 30, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (18,'WID8Z3','Nov 7, 2015',35,'Mar 5, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (46,'IAE5G4','Sep 15, 2015',47,'Apr 9, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (22,'MDE1H5','Feb 21, 2010',17,'Oct 23, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'HTR1L5','May 2, 2015',5,'Mar 6, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (50,'UED0P8','Feb 11, 2011',6,'Apr 30, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (8,'EOQ1I0','Feb 20, 2015',41,'Mar 10, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (35,'MDE1H5','Nov 21, 2011',15,'Oct 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (9,'WRM5O3','Jun 5, 2014',27,'Jun 3, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (12,'WUX9V0','Feb 9, 2015',20,'Aug 28, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (38,'HTR1L5','Mar 2, 2015',4,'Nov 4, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (18,'MSO8H4','Apr 17, 2012',23,'Oct 31, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (22,'JGZ0C8','Nov 20, 2010',13,'Nov 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (14,'JFQ8D7','Feb 24, 2015',46,'Mar 15, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (39,'HCO8X4','Mar 4, 2013',28,'Oct 4, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (27,'KXD6V9','Jul 5, 2014',5,'Aug 11, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'ZIC5P2','Jul 22, 2011',23,'Feb 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (28,'VDC1V2','Mar 28, 2012',13,'Jan 14, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (33,'DRC4G5','Mar 25, 2011',51,'Jun 19, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (7,'GDA8L5','Mar 17, 2011',8,'Aug 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (42,'SFS9S2','Mar 26, 2010',35,'Aug 21, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (32,'NXC4M5','Aug 1, 2011',23,'Jun 1, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (49,'AMX3Y5','Sep 4, 2011',14,'Nov 26, 2017');
INSERT INTO works (per_id,job_code,start_date,comp_id,end_date) VALUES (5,'XMT4L7','Jul 11, 2012',16,'Jul 11, 2017');
