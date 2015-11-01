BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE requiredSkill CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE requiredSkill PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE requiredSkill (
  pos_code 		varchar(10) NOT NULL,
  ks_code 		varchar(10) NOT NULL,
  PRIMARY KEY(pos_code,ks_code),
  foreign key (pos_code) references jobProfile
		on delete cascade,
	foreign key (ks_code) references knowledgeSkill
		on delete cascade	
);

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U4N9E4','COM2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U4N9E4','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U4N9E4','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U4N9E4','ALGB1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U4N9E4','ALGB1002');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','COM2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','ALGB1003');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','LFS2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','DBAS2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','RDBMS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','DBAS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','COMP2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A6A3H7','COMP2001');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','COM2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','FIN2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','FIN3000');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','ACC1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('S1N9T4','ALGB1003');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('K4A0M4','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('K4A0M4','ACC1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('K4A0M4','ALGB1003');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','ALGB1003');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','DBAS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','JAVS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','JAVS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','WDFE1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','LFS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('F5G8Y8','CSS1002');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','RDBMS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','DBAS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','DBAS1003');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('A2G7P5','DBAS3003');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U5J6F3','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U5J6F3','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U5J6F3','DBAS1003');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U5J6F3','DBAS3003');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('J3B5W2','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('J3B5W2','FIN2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('J3B5W2','ACC1001');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('Y8H7C0','COMP2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('Y8H7C0','COMP2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('Y8H7C0','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('Y8H7C0','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('Y8H7C0','LFS1002');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U1S5D5','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U1S5D5','FIN2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U1S5D5','FIN3000');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('U1S5D5','ACC1001');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','LFS2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','RUBY1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','COMP2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('B7N1R7','COMP2002');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','COMP2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','COMP2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','COM1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','JDBC1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','LFS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','DBAS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','JAVA2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','JAVA2001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('M4A3B3','JAVA1002');

INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','DBAS2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','COM2002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','RDBMS1001');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','DBAS1002');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','DBAS1003');
INSERT INTO requiredSkill (pos_code,ks_code) VALUES ('N7K9I8','DBAS3003');
