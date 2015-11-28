BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE section CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE section PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE section(
	c_code			varchar(10) NOT NULL,
	sec_no			number NOT NULL,
	year			varchar(4) NOT NULL,
	complete_date	DATE NOT NULL,
	offered_by		varchar(10) NOT NULL,
	format			varchar(20) NOT NULL,
	price			number(10,2) NOT NULL,
	primary key (c_code, sec_no, year),
	foreign key (c_code) references course_ on delete cascade
);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('COM2020',1,'2014',
TO_DATE('2014-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('COM2020',2,'2014',
TO_DATE('2014-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',650);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('LSAT1001',1,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('LSAT1001',2,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('BUSI2020',1,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('BUSI2020',2,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('UDW1000',1,'2014',
TO_DATE('2014-DEC-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Pearson','online-selfpaced',500);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('UDW1000',2,'2014',
TO_DATE('2014-DEC-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Pearson','online-selfpaced',500);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('FIN2302',1,'2014',
TO_DATE('2014-MAY-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','online-sync',650);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('FIN2302',2,'2014',
TO_DATE('2014-MAY-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','online-selfpaced',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2121',1,'2013',
TO_DATE('2013-MAY-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','online-sync',650);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2121',2,'2013',
TO_DATE('2013-MAY-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','online-selfpaced',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2120',1,'2014',
TO_DATE('2014-DEC-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Pearson','online-selfpaced',800);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2120',2,'2014',
TO_DATE('2014-DEC-10 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Pearson','online-selfpaced',800);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4125',1,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4125',2,'2015',
TO_DATE('2015-DEC-15 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4101',1,'2015',
TO_DATE('2015-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4101',2,'2015',
TO_DATE('2015-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',550);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI1583',1,'2014',
TO_DATE('2014-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',550);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI1583',2,'2014',
TO_DATE('2014-AUG-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',650);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4208',1,'2012',
TO_DATE('2012-MAY-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',650);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4208',2,'2012',
TO_DATE('2012-MAY-12 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4350',1,'2011',
TO_DATE('2011-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','classroom',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4350',2,'2011',
TO_DATE('2011-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Berkley','online-sync',800);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('MATH1115',1,'2011',
TO_DATE('2011-MAY-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('MATH1115',1,'2012',
TO_DATE('2012-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2450',1,'2016',
TO_DATE('2016-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2450',2,'2016',
TO_DATE('2016-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4402',1,'2015',
TO_DATE('2015-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4402',2,'2015',
TO_DATE('2015-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UNO','classroom',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2125',1,'2015',
TO_DATE('2015-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2125',2,'2015',
TO_DATE('2015-DEC-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI4401',1,'2013',
TO_DATE('2013-MAY-11 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI1581',1,'2016',
TO_DATE('2016-MAY-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',700);
INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI1581',2,'2016',
TO_DATE('2016-MAY-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','online-sync',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI2467',1,'2013',
TO_DATE('2013-MAY-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'UMC','classroom',700);

INSERT INTO section (c_code,sec_no,year,complete_date,offered_by,format,price) VALUES ('CSCI3301',1,'2016',
TO_DATE('2016-MAY-05 12:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'),'Pearson','classroom',700);

