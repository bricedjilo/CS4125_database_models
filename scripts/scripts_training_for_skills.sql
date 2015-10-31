BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE training_for_skills';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE training_for_skills (
	c_code				varchar(10) NOT NULL,
	ks_code				varchar(10) NOT NULL
	primary key (c_code, ks_code)
);

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('MATH1115','ALGB1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('MATH1115','ALGB1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('MATH1115','ALGB1003');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI1583','JAVA1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI1583','JAVA1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI1581','JAVA1001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI2120','JAVA2001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI2121','JAVA2001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI2125','JAVA2002');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('BUSI2020','COM1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('BUSI2020','COM2002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('BUSI2020','COM2003');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('LSAT1001','LFS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('LSAT1001','LFS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('LSAT1001','LFS2001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('UDW1000','WDFE1001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI2450','COMP2001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI2467','COMP2001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI3301','COMP2001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4101','COMP2002');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','RDBMS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','DBAS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','DBAS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','DBAS1003');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','DBAS3003');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','JDBC1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4125','DBAS2002');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','CSS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','RUBY1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','DBAS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','JAVS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','JAVS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4208','WDFE1001');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4350','LFS2001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4350','LFS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4350','LFS1002');

INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4401','LFS1001');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4401','LFS1002');
INSERT INTO training_for_skills (c_code,ks_code) VALUES ('CSCI4402','LFS2001');

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('None','No Prerequisites','N/A','This course has no prerequisites','N/A',0);






















