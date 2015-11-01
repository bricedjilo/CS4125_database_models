BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE takes CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE takes PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE takes (
	sec_no 	number NOT NULL,
	c_code 	varchar(10) NOT NULL,
	per_id 	number NOT NULL,
	year_taken	varchar(20) NOT NULL,
	grade 	number NOT NULL,
	PRIMARY KEY (sec_no,c_code,per_id,year_taken),
	foreign key (sec_no) references section on delete cascade,
	foreign key (c_code) references course on delete cascade,
	foreign key (per_id) references person on delete cascade
);

INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'LSAT1001',40,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4125',51,'2014','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2125',51,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4101',3,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'FIN2302',4,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1581',25,'2013','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4402',5,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI1581',18,'2013','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4350',41,'2013','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4402',39,'2011','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI1581',11,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'MATH1115',49,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'BUSI2020',20,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2450',45,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4208',42,'2012','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2450',20,'2012','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2121',42,'2015','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1583',41,'2011','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'LSAT1001',47,'2015','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4208',30,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'UDW1000',44,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI1583',49,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI1583',24,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2450',41,'2013','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2125',9,'2012','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'BUSI2020',5,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4350',49,'2014','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',23,'2014','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4125',45,'2012','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'FIN2302',33,'2015','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'UDW1000',15,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2120',15,'2012','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4101',36,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI1583',28,'2012','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',48,'2012','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2121',3,'2014','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'BUSI2020',3,'2012','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4125',21,'2011','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4402',45,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2467',7,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2450',9,'2011','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',17,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4401',32,'2011','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4101',4,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'FIN2302',39,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2467',16,'2014','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4350',34,'2013','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2467',8,'2015','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2120',4,'2014','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2125',34,'2014','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'LSAT1001',16,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI3301',41,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',7,'2011','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4208',39,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2125',9,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4401',41,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4401',14,'2011','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI3301',1,'2014','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI1583',5,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4350',6,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1583',15,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'LSAT1001',43,'2013','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2125',28,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2121',27,'2015','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2120',26,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4208',40,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4101',9,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2467',32,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4401',11,'2015','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI3301',2,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2450',36,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'MATH1115',21,'2014','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4401',47,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2125',43,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1583',45,'2012','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',26,'2011','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2467',41,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI1583',18,'2013','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4101',16,'2014','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'UDW1000',36,'2012','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2120',39,'2013','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'MATH1115',21,'2012','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1581',22,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4101',44,'2015','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4101',28,'2014','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4208',20,'2014','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2121',6,'2013','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4350',12,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'UDW1000',31,'2014','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI4101',24,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'CSCI2450',21,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI1583',22,'2011','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4401',1,'2013','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI4101',6,'2014','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (2,'UDW1000',19,'2015','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI4402',4,'2015','D');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'MATH1115',27,'2015','C');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (1,'CSCI2125',12,'2011','B');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI2125',11,'2012','A');
INSERT INTO takes (sec_no,c_code,per_id,year_taken,grade) VALUES (3,'CSCI3301',47,'2014','D');
