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
	foreign key (pos_code) references company on delete cascade
);

INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('IRC6B2',44,'part-time',80,'wage','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('DRC4G5',43,'full-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VGD9R2',9,'full-time',70000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('SDE4I9',2,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('TJH3H9',48,'part-time',90,'wage','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('GOJ2S0',39,'full-time',70000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MLS2P4',11,'part-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('IOV5Q0',43,'part-time',50000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MTI4C6',9,'full-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('EYE3H6',13,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('UED0P8',6,'full-time',50000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VZW6B5',3,'part-time',90000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('PIQ1C0',32,'full-time',60000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('DFN7N2',36,'full-time',50,'wage','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('CRB6J2',37,'full-time',70000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('WUZ2Y4',34,'full-time',70000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VAE6D9',30,'full-time',60000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MUV9Z1',45,'part-time',60000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('IRA1D2',18,'part-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('GHG9A0',42,'full-time',50,'wage','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('UYA6B2',46,'part-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('EOQ1I0',39,'full-time',50000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('HCO8X4',9,'full-time',50000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZSR1I0',45,'full-time',80000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('BHC6F3',50,'full-time',70000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('BPQ8Q8',5,'part-time',100000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZYN7Z7',31,'part-time',70000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('XJD7R2',19,'full-time',90000,'salary','N7K9I8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('LKE4Y3',22,'full-time',90000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('PKK2F4',38,'full-time',90000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('SWL1K1',8,'part-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('KME9G4',22,'full-time',80000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('UOY8B8',9,'part-time',80000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('CXZ8T8',12,'full-time',90000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('HWD7W5',31,'part-time',50,'wage','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('TTK0V7',16,'full-time',50000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('RDG8E0',8,'full-time',70000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VRP6B2',40,'part-time',50000,'salary','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('XMT4L7',22,'part-time',90000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('JFO2P3',13,'full-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZEE2X7',21,'part-time',60000,'salary','M4A3B3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('YVC0O4',1,'full-time',40,'wage','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('GML0N4',28,'full-time',60000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZIC5P2',20,'full-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('YYP8D5',13,'full-time',90000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ENK3M2',7,'part-time',70000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('RIA6O3',37,'part-time',60,'wage','S1N9T4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('NIJ2Z3',6,'part-time',90000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('TJW7W5',30,'full-time',100000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('DQR3Z7',26,'part-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('IAE5G4',1,'full-time',100000,'salary','B7N1R7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('SFS9S2',13,'part-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZHJ3X9',45,'part-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('NLA2S0',6,'full-time',80,'wage','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('NXC4M5',19,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('GDA8L5',4,'full-time',90000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('GNR8A4',29,'part-time',70000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('UGI9K1',31,'part-time',90000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('KJL5S1',19,'full-time',80000,'salary','K4A0M4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('LWX7F6',21,'full-time',90000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('JEA7G5',2,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('RGA9I2',2,'part-time',100,'wage','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('CEI3G1',20,'full-time',90000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('DWL8D6',48,'full-time',50000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VCH6S1',16,'part-time',100,'wage','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('HTR1L5',33,'part-time',70000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('FDO7F1',40,'full-time',60000,'salary','U1S5D5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VDC1V2',47,'full-time',50000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('HPY8C5',10,'full-time',100000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('KPI1X5',8,'full-time',90000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('RMU5F0',4,'full-time',80000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('BIR0P3',15,'full-time',70000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('JGZ0C8',2,'part-time',70,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('QBE6I2',28,'full-time',60000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('FKU6S0',25,'part-time',60000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('QXJ3A0',49,'full-time',60000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('RMX0R6',40,'part-time',50000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('DTT5R6',48,'part-time',80000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('QON9E9',8,'full-time',80000,'salary','A6A3H7');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('TEP5E8',19,'part-time',90000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('SSL6N8',13,'full-time',30,'wage','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('JFQ8D7',25,'part-time',50000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VVF0W0',15,'full-time',90000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('EII3J9',6,'full-time',50000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MSO8H4',19,'part-time',50000,'salary','U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('AMX3Y5',43,'part-time',100000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('OUL2W1',25,'full-time',80000,'salary','U5J6F3');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('TOD7M0',45,'part-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('CPA0O2',46,'part-time',50,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ZGE8I9',17,'part-time',100000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('WRM5O3',17,'full-time',60000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('VJB1E3',50,'part-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MDE1H5',40,'full-time',60000,'wage','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('YNR2A0',44,'part-time',70000,'salary'.'U4N9E4');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ARE8M6',46,'full-time',80000,'salary','F5G8Y8');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('ECQ5Z6',40,'full-time',80000,'salary','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('WUX9V0',43,'full-time',50000,'salary','Y8H7C0');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('WID8Z3',2,'full-time',50000,'salary','A2G7P5');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('MFQ8K6',23,'full-time',60,'wage','J3B5W2');
INSERT INTO jobs (job_code,comp_id,job_type,pay_rate,pay_type) VALUES ('KXD6V9',42,'full-time',70000,'salary','F5G8Y8');
