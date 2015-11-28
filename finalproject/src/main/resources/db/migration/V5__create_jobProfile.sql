BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE jobProfile CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE jobProfile PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE jobProfile (
  pos_code 		varchar(10) NOT NULL,
  title 		varchar(100) NOT NULL,
  description 	varchar(300) NOT NULL,
  PRIMARY KEY(pos_code)
);

INSERT INTO jobProfile (pos_code,title,description) VALUES ('U4N9E4','Scientific Recruiter','molestie orci tincidunt');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('A6A3H7','Software Developer','scelerisque mollis. Phasellus');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('S1N9T4','Senior Product Manager','id, mollis nec,');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('K4A0M4','Account Manager','mollis lectus pede');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('F5G8Y8','Web Developer','odio sagittis semper.');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('A2G7P5','SaaS Data Scientist','natoque penatibus et');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('U5J6F3',' Big Data Scientist','tincidunt tempus risus.');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('J3B5W2','Accounting Supervisor','erat neque non');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('Y8H7C0','Machine Learning Specialist','sociis natoque penatibus');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('U1S5D5','Forensic Accountant','ac mattis ornare,');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('B7N1R7','DevOps Developer','eu nulla at');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('M4A3B3','Java Developer','a, aliquet vel,');
INSERT INTO jobProfile (pos_code,title,description) VALUES ('N7K9I8','Big Data Software Engineer','gravida. Praesent eu');
