BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE prerequisite CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE prerequisite PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE prerequisite(
	c_code				varchar(10) NOT NULL,
	prerequisite_id		varchar(10) NOT NULL,
	co_prerequisite_id	varchar(10) NOT NULL,
	primary key (c_code, prerequisite_id),
	foreign key (c_code) references course_
		on delete cascade
);

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('COM2020','None','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('LSAT1001','None','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('BUSI2020','None','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('UDW1000','None','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('FIN2302','None','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('CSCI1581','None','CSCI1583');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('CSCI1583','MATH1115','CSCI1581');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('CSCI2120','CSCI1581','CSCI2121');
INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id) 
VALUES ('CSCI2120','CSCI1583','CSCI2121');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2121','None','CSCI2120');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2125','CSCI2120','None');
INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2125','CSCI2121','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2450','CSCI1583','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2467','CSCI2120','None');
INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI2467','CSCI2450','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI3301','CSCI2120','None');
INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI3301','CSCI2450','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4101','CSCI2125','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4125','CSCI2125','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)   
VALUES ('CSCI4208','CSCI2125','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4350','CSCI2125','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4401','CSCI2125','None');
INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4401','CSCI2467','None');

INSERT INTO prerequisite (c_code,prerequisite_id,co_prerequisite_id)  
VALUES ('CSCI4402','CSCI4101','None');

