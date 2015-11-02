BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE jobs CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE jobs PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE jobs (
	job_code 	varchar(10) NOT NULL,
	comp_id 	number NOT NULL,
	job_type 	varchar(20) NOT NULL,
	pay_rate	number NOT NULL,
	pay_type 	varchar(20) NOT NULL,
	pos_code 	varchar(10) NOT NULL,
	PRIMARY KEY (job_code,comp_id),
	foreign key (comp_id) references company on delete cascade,
	foreign key (pos_code) references jobProfile on delete cascade
);

INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('IRC6B2',44,'part-time',80,'wage','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('DRC4G5',43,'full-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VGD9R2',9,'full-time',70000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('SDE4I9',2,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('TJH3H9',48,'part-time',90,'wage','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('GOJ2S0',39,'full-time',70000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MLS2P4',11,'part-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('IOV5Q0',43,'part-time',50000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MTI4C6',9,'full-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('EYE3H6',13,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('UED0P8',6,'full-time',50000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VZW6B5',3,'part-time',90000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('PIQ1C0',32,'full-time',60000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('DFN7N2',36,'full-time',50,'wage','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('CRB6J2',37,'full-time',70000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('WUZ2Y4',34,'full-time',70000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VAE6D9',30,'full-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MUV9Z1',45,'part-time',60000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('IRA1D2',18,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('GHG9A0',42,'full-time',50,'wage','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('UYA6B2',46,'part-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('EOQ1I0',39,'full-time',50000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('HCO8X4',9,'full-time',50000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZSR1I0',45,'full-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('BHC6F3',50,'full-time',70000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('BPQ8Q8',5,'part-time',100000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZYN7Z7',31,'part-time',70000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('XJD7R2',19,'full-time',90000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('LKE4Y3',22,'full-time',90000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('PKK2F4',38,'full-time',90000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('SWL1K1',8,'part-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('KME9G4',22,'full-time',80000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('UOY8B8',9,'part-time',80000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('CXZ8T8',12,'full-time',90000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('HWD7W5',31,'part-time',50,'wage','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('TTK0V7',16,'full-time',50000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('RDG8E0',8,'full-time',70000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VRP6B2',40,'part-time',50000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('XMT4L7',22,'part-time',90000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('JFO2P3',13,'full-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZEE2X7',21,'part-time',60000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('YVC0O4',1,'full-time',40,'wage','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('GML0N4',28,'full-time',60000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZIC5P2',20,'full-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('YYP8D5',13,'full-time',90000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ENK3M2',7,'part-time',70000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('RIA6O3',37,'part-time',60,'wage','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('NIJ2Z3',6,'part-time',90000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('TJW7W5',30,'full-time',100000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('DQR3Z7',26,'part-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('IAE5G4',1,'full-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('SFS9S2',13,'part-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZHJ3X9',45,'part-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('NLA2S0',6,'full-time',80,'wage','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('NXC4M5',19,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('GDA8L5',4,'full-time',90000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('GNR8A4',29,'part-time',70000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('UGI9K1',31,'part-time',90000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('KJL5S1',19,'full-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('LWX7F6',21,'full-time',90000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('JEA7G5',2,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('RGA9I2',2,'part-time',100,'wage','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('CEI3G1',20,'full-time',90000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('DWL8D6',48,'full-time',50000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VCH6S1',16,'part-time',100,'wage','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('HTR1L5',33,'part-time',70000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('FDO7F1',40,'full-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VDC1V2',47,'full-time',50000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('HPY8C5',10,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('KPI1X5',8,'full-time',90000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('RMU5F0',4,'full-time',80000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('BIR0P3',15,'full-time',70000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('JGZ0C8',2,'part-time',70,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('QBE6I2',28,'full-time',60000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('FKU6S0',25,'part-time',60000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('QXJ3A0',49,'full-time',60000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('RMX0R6',40,'part-time',50000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('DTT5R6',48,'part-time',80000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('QON9E9',8,'full-time',80000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('TEP5E8',19,'part-time',90000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('SSL6N8',13,'full-time',30,'wage','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('JFQ8D7',25,'part-time',50000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VVF0W0',15,'full-time',90000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('EII3J9',6,'full-time',50000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MSO8H4',19,'part-time',50000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('AMX3Y5',43,'part-time',100000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('OUL2W1',25,'full-time',80000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('TOD7M0',45,'part-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('CPA0O2',46,'part-time',50,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ZGE8I9',17,'part-time',100000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('WRM5O3',17,'full-time',60000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('VJB1E3',50,'part-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MDE1H5',40,'full-time',60000,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('YNR2A0',44,'part-time',70000,'salary'.'U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ARE8M6',46,'full-time',80000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('ECQ5Z6',40,'full-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('WUX9V0',43,'full-time',50000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('WID8Z3',2,'full-time',50000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('MFQ8K6',23,'full-time',60,'wage','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type,pos_code) VALUES ('KXD6V9',42,'full-time',70000,'salary','F5G8Y8');
