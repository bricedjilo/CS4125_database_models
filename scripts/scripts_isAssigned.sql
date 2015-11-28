BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE isAssigned CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE isAssigned PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE isAssigned (
	comp_id 		number NOT NULL,
	project_id 		number NOT NULL,
	job_code 		varchar(10) NOT NULL,
	primary key (comp_id,project_id,job_code),
	foreign key (job_code,comp_id) references jobs on delete cascade,
	foreign key (project_id) references project on delete cascade	
);

INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (1,1,'YVC0O4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (1,1,'IAE5G4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (1,52,'YVC0O4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,2,'SDE4I9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,2,'WID8Z3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,2,'RGA9I2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,53,'SDE4I9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,53,'JEA7G5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (2,53,'JGZ0C8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (3,3,'VZW6B5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (4,4,'GDA8L5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (4,54,'GDA8L5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (4,54,'RMU5F0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (5,5,'BPQ8Q8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (5,55,'BPQ8Q8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (6,6,'UED0P8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (6,6,'NIJ2Z3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (6,6,'NLA2S0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (6,6,'EII3J9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (7,7,'ENK3M2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (7,57,'ENK3M2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (8,8,'SWL1K1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (8,8,'RDG8E0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (8,8,'KPI1X5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (8,8,'QON9E9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (9,9,'VGD9R2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (9,9,'UOY8B8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (9,59,'VGD9R2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (9,59,'MTI4C6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (9,59,'HCO8X4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (10,10,'HPY8C5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (10,60,'HPY8C5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (11,11,'MLS2P4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (12,12,'CXZ8T8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (12,62,'CXZ8T8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (12,63,'CXZ8T8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (13,13,'EYE3H6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (13,13,'JFO2P3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (13,13,'YYP8D5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (13,13,'SFS9S2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (13,13,'SSL6N8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (15,15,'BIR0P3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (15,15,'VVF0W0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (16,16,'TTK0V7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (16,16,'VCH6S1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (17,67,'ZGE8I9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (17,17,'WRM5O3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (18,18,'IRA1D2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,19,'XJD7R2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,19,'TEP5E8');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,19,'MSO8H4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,68,'XJD7R2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,68,'NXC4M5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (19,68,'KJL5S1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (20,20,'ZIC5P2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (20,20,'CEI3G1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (21,21,'ZEE2X7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (21,21,'LWX7F6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (22,22,'LKE4Y3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (22,22,'XMT4L7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (22,69,'LKE4Y3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (22,69,'KME9G4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (23,23,'MFQ8K6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (25,25,'FKU6S0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (25,25,'OUL2W1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (25,70,'FKU6S0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (25,70,'JFQ8D7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (26,26,'DQR3Z7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (28,28,'GML0N4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (28,28,'QBE6I2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (29,29,'GNR8A4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (29,71,'GNR8A4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (29,72,'GNR8A4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (30,30,'VAE6D9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (30,30,'TJW7W5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (31,31,'ZYN7Z7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (31,31,'HWD7W5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (31,31,'UGI9K1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (32,32,'PIQ1C0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (33,33,'HTR1L5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (34,34,'WUZ2Y4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (36,36,'DFN7N2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (37,37,'CRB6J2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (37,37,'RIA6O3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (38,38,'PKK2F4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (39,39,'GOJ2S0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (39,39,'EOQ1I0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (40,40,'VRP6B2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (40,40,'FDO7F1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (40,40,'RMX0R6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (40,40,'MDE1H5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (40,40,'ECQ5Z6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (42,42,'GHG9A0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (42,42,'KXD6V9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (43,43,'DRC4G5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (43,43,'IOV5Q0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (43,43,'AMX3Y5');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (43,43,'WUX9V0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (44,44,'IRC6B2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (44,44,'YNR2A0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (45,45,'MUV9Z1');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (45,45,'ZSR1I0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (45,45,'ZHJ3X9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (45,45,'TOD7M0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (46,46,'UYA6B2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (46,46,'CPA0O2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (46,46,'ARE8M6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (47,47,'VDC1V2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (47,75,'VDC1V2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (48,48,'TJH3H9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (48,48,'DWL8D6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (48,48,'DTT5R6');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (49,49,'QXJ3A0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (50,50,'BHC6F3');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (50,76,'VJB1E3');

/*
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (51,51,'ZEE2X7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (51,77,'ZEE2X7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (51,78,'ZEE2X7');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (14,14,'RMU5F0');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (24,24,'QON9E9');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (27,27,'HCO8X4');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (35,35,'SFS9S2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (35,73,'SFS9S2');
INSERT INTO isAssigned (comp_id,project_id,job_code) VALUES (41,41,'ZGE8I9');
*/
