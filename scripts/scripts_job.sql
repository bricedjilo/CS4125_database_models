BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE job CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE job PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE job (
	job_code 	number NOT NULL,
	comp_id 	number NOT NULL,
	job_type 	number NOT NULL,
	pay_rate	varchar(10) NOT NULL,
	pay_type 	number NOT NULL,
	PRIMARY KEY (sec_no,c_code,per_id,year),
	foreign key (sec_no) references section on delete cascade,
	foreign key (c_code) references course on delete cascade,
	foreign key (per_id) references person on delete cascade
);

