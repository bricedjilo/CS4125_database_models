
-- Takes
--ALTER TABLE takes ALTER COLUMN c_code NVARCHAR(10) NULL
ALTER TABLE takes MODIFY sec_no DEFAULT 5;
ALTER TABLE takes MODIFY year DEFAULT 'N/A';
ALTER TABLE takes MODIFY c_code DEFAULT 'NOCOURSE';
ALTER TABLE takes MODIFY grade DEFAULT 'N/A';

-- Works
ALTER TABLE jobs MODIFY job_code DEFAULT 'NOJOBCODE';
ALTER TABLE jobs MODIFY comp_id DEFAULT '1000000';
ALTER TABLE jobs ALTER COLUMN start_date Date NOT NULL
ALTER TABLE jobs MODIFY start_date DEFAULT to_date('01-01-5000','MM-DD-YYYY');
ALTER TABLE jobs ALTER COLUMN start_date Date NOT NULL
ALTER TABLE jobs MODIFY end_date DEFAULT to_date('01-01-5000','MM-DD-YYYY');