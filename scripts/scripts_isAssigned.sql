BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE isAssigned';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE isAssigned(
	project_id		number NOT NULL,
	comp_id			number NOT NULL,
	job_code		varchar(10) NOT NULL,
	primary key (project_id,job_code),
	foreign key (comp_id) references company on delete cascade,
	foreign key (job_code) references job on delete cascade,
	foreign key (project_id) references project on delete cascade
);

INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,44,'IRC6B2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,44,'YNR2A0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (11,43,'DRC4G5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (11,43,'IOV5Q0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (11,43,'AMX3Y5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (11,43,'WUX9V0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,1,'YVC0O4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,1,'IAE5G4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (2,30,'VAE6D9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (2,30,'TJW7W5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (3,42,'GHG9A0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (3,42,'KXD6V9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (40,4,'GDA8L5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (40,4,'RMU5F0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,5,'BPQ8Q8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,6,'UED0P8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,6,'NIJ2Z3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,6,'NLA2S0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,6,'EII3J9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (33,7,'ENK3M2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,8,'SWL1K1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,8,'RDG8E0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,8,'KPI1X5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,8,'QON9E9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (31,9,'VGD9R2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (31,9,'MTI4C6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (31,9,'HCO8X4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (31,9,'UOY8B8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (41,10,'HPY8C5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (29,11,'MLS2P4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (8,12,'CXZ8T8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (27,13,'EYE3H6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (27,13,'JFO2P3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (27,13,'YYP8D5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (27,13,'SFS9S2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (27,13,'SSL6N8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (2,15,'BIR0P3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (2,15,'VVF0W0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,16,'TTK0V7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,16,'VCH6S1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (41,17,'ZGE8I9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (41,17,'WRM5O3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (45,18,'IRA1D2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (5,19,'XJD7R2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (5,19,'NXC4M5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (5,19,'KJL5S1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (5,19,'TEP5E8');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (5,19,'MSO8H4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (20,20,'ZIC5P2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (20,20,'CEI3G1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (6,21,'ZEE2X7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (6,21,'LWX7F6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,22,'LKE4Y3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,22,'KME9G4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,22,'XMT4L7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (13,23,'MFQ8K6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (6,24,'ZEE2X7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,25,'FKU6S0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,25,'JFQ8D7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,25,'OUL2W1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (51,26,'DQR3Z7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (41,28,'GML0N4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (41,28,'QBE6I2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,29,'GNR8A4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (34,30,'VAE6D9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (34,30,'TJW7W5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (13,31,'ZYN7Z7');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (13,31,'HWD7W5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (13,31,'UGI9K1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (24,32,'PIQ1C0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (13,33,'HTR1L5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (35,34,'WUZ2Y4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (14,36,'DFN7N2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (15,37,'CRB6J2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (15,37,'RIA6O3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (7,38,'PKK2F4');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,39,'GOJ2S0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (1,39,'EOQ1I0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,40,'VRP6B2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,40,'FDO7F1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,40,'RMX0R6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,40,'MDE1H5');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (16,40,'ECQ5Z6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (23,45,'MUV9Z1');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (23,45,'ZSR1I0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (23,45,'ZHJ3X9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (23,45,'TOD7M0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (25,46,'UYA6B2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (25,46,'CPA0O2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (25,46,'ARE8M6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (43,47,'VDC1V2');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (49,48,'TJH3H9');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (49,48,'DWL8D6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (49,48,'DTT5R6');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (22,49,'QXJ3A0');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (10,50,'BHC6F3');
INSERT INTO isAssigned (project_id,comp_id,job_code) VALUES (10,50,'VJB1E3');
