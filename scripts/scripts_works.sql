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

INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (47,'FDO7F1','Jul 16, 2012','May 2, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (45,'RMU5F0','Sep 12, 2015','Dec 13, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (30,'GHG9A0','Aug 26, 2010','Nov 10, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (51,'YYP8D5','Jan 28, 2013','Feb 13, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (16,'EOQ1I0','Oct 10, 2010','Jan 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (12,'DWL8D6','Jun 7, 2015','Dec 15, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (13,'FKU6S0','Mar 22, 2013','Aug 25, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (33,'QBE6I2','Apr 19, 2011','Dec 2, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (14,'KPI1X5','Aug 6, 2013','May 18, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (33,'KXD6V9','Mar 20, 2011','Nov 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (43,'KME9G4','Nov 12, 2011','Aug 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (41,'QXJ3A0','Jul 19, 2012','Apr 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (27,'BIR0P3','Jun 28, 2015','Oct 14, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (6,'OUL2W1','Oct 28, 2012','Jan 28, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (34,'GML0N4','Jun 10, 2015','Feb 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (35,'DRC4G5','Feb 25, 2011','Jul 16, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (12,'VVF0W0','Sep 10, 2010','May 29, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (44,'ECQ5Z6','Feb 4, 2010','Nov 2, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (1,'AMX3Y5','Jul 15, 2011','Apr 18, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (3,'KPI1X5','Mar 1, 2015','Mar 18, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (28,'YVC0O4','May 15, 2012','May 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (10,'CRB6J2','Jun 17, 2013','Feb 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (37,'VGD9R2','Nov 14, 2010','Jun 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (37,'DQR3Z7','Jan 11, 2012','Jul 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (1,'IRA1D2','Jun 13, 2015','Sep 21, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (25,'GNR8A4','Jan 23, 2014','Oct 25, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (29,'MDE1H5','Feb 11, 2013','Apr 19, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (7,'TEP5E8','Sep 13, 2011','Jul 31, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (4,'IAE5G4','Jan 20, 2013','Nov 8, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (44,'RIA6O3','Dec 15, 2014','Aug 22, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (10,'VVF0W0','Mar 2, 2015','Dec 26, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (2,'SSL6N8','Aug 24, 2014','Sep 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (4,'SDE4I9','May 8, 2012','Aug 29, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (42,'HCO8X4','May 28, 2013','Jul 3, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (4,'JGZ0C8','Nov 15, 2011','Oct 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (6,'DRC4G5','Mar 12, 2015','Apr 9, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (35,'ECQ5Z6','Apr 16, 2011','Nov 13, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (22,'VJB1E3','May 13, 2012','Aug 18, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (4,'FKU6S0','Jul 21, 2015','May 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (18,'ZSR1I0','Jul 9, 2010','Oct 4, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (17,'PIQ1C0','Mar 11, 2015','May 8, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (16,'BHC6F3','May 17, 2012','May 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (26,'HWD7W5','Mar 4, 2015','Sep 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (19,'UYA6B2','May 14, 2012','May 20, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (40,'EOQ1I0','Jul 21, 2010','Sep 10, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (17,'FDO7F1','Apr 23, 2011','Oct 16, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (14,'MUV9Z1','Nov 26, 2014','Aug 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (50,'SSL6N8','Dec 10, 2014','Jun 24, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (31,'SDE4I9','May 7, 2010','Jul 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (23,'AMX3Y5','Feb 1, 2013','Jul 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (30,'MFQ8K6','Oct 28, 2010','Jan 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (23,'ZIC5P2','Sep 12, 2010','Jan 24, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (46,'TJW7W5','Nov 8, 2012','Feb 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (40,'JFQ8D7','Mar 31, 2015','Jan 2, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (44,'MFQ8K6','Nov 28, 2014','Mar 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (2,'PKK2F4','Jan 22, 2013','Jan 28, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (18,'WRM5O3','Jul 3, 2014','May 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (49,'TOD7M0','Sep 17, 2011','Oct 27, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (50,'VZW6B5','Dec 26, 2011','Apr 20, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (15,'RGA9I2','Nov 16, 2014','Apr 15, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (35,'BIR0P3','Dec 29, 2010','Jan 6, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (49,'KJL5S1','Nov 7, 2013','May 12, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (9,'KJL5S1','Mar 9, 2012','Dec 4, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (30,'PKK2F4','Jul 30, 2010','May 24, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (12,'EYE3H6','Aug 8, 2013','Jan 12, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (1,'ZHJ3X9','Jun 3, 2011','Jul 21, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (23,'CEI3G1','Mar 29, 2012','Jan 19, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (22,'DTT5R6','Aug 17, 2013','Feb 16, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (46,'QXJ3A0','Dec 30, 2010','Oct 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (28,'DRC4G5','Aug 9, 2011','Mar 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (12,'UGI9K1','Sep 23, 2014','Jan 2, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (44,'JEA7G5','Nov 15, 2014','May 28, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (32,'CEI3G1','Oct 13, 2011','Dec 31, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (47,'PIQ1C0','Mar 9, 2012','Dec 14, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (40,'BIR0P3','May 8, 2013','Dec 25, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (3,'QON9E9','Nov 29, 2015','Jan 16, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (5,'TTK0V7','Jul 3, 2010','Feb 5, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (43,'BIR0P3','Jan 20, 2013','Nov 28, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (30,'MUV9Z1','Sep 30, 2012','Mar 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (25,'RMU5F0','Dec 8, 2011','Oct 16, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (44,'VCH6S1','Sep 9, 2011','Jul 20, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (5,'LWX7F6','Jul 18, 2011','Aug 15, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (13,'KME9G4','Jul 12, 2012','Jun 21, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (1,'GNR8A4','Jan 31, 2011','May 6, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (20,'MFQ8K6','Jan 14, 2011','Oct 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (20,'VAE6D9','Mar 7, 2010','Jan 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (16,'LWX7F6','Oct 29, 2015','Mar 5, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (42,'TJW7W5','Apr 21, 2010','Sep 25, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (15,'ZEE2X7','Feb 9, 2014','Dec 4, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (48,'UED0P8','Jul 15, 2010','Sep 24, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (2,'RGA9I2','Sep 29, 2012','Jun 13, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (8,'EYE3H6','Mar 1, 2014','Mar 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (48,'MLS2P4','Oct 20, 2011','Feb 17, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (26,'VVF0W0','Oct 9, 2015','Oct 4, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (5,'RIA6O3','Aug 16, 2012','Sep 11, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (24,'TJH3H9','Jul 28, 2012','Oct 1, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (41,'LWX7F6','Jan 20, 2010','May 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (27,'XJD7R2','Feb 18, 2014','Feb 24, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (11,'VJB1E3','Aug 1, 2014','Nov 30, 2017');
INSERT INTO works (per_id,job_code,start_date,end_date) VALUES (30,'RGA9I2','Apr 23, 2011','Aug 10, 2017');
