
ALTER TABLE company ADD CONSTRAINT check_primary_sector CHECK (primary_sector IN (
'tourism', 'entertainment', 'oil', 'technology', 'mining', 'education', 'service'));

ALTER TABLE course_ ADD CONSTRAINT check_course_level CHECK (course_level IN (
'beginner','medium','advanced'));

ALTER TABLE course_ ADD CONSTRAINT check_status CHECK (status IN (
'Active','Expired'));

ALTER TABLE jobs ADD CONSTRAINT check_job_type CHECK (job_type IN (
'part-time','full-time'));

ALTER TABLE jobs ADD CONSTRAINT check_pay_type CHECK (pay_type IN (
'wage','salary', 'volunteer'));

ALTER TABLE knowledgeSkill ADD CONSTRAINT check_skill_level CHECK (skill_level IN (
'beginner','advanced', 'medium'));

ALTER TABLE person ADD CONSTRAINT check_gender CHECK (gender IN (
'male','female'));

ALTER TABLE section ADD CONSTRAINT check_sec_no CHECK (sec_no IN (
'1','2', '3', '4'));

ALTER TABLE section ADD CONSTRAINT check_format CHECK (format IN (
'classroom','online-sync', 'online-selfpaced'));

ALTER TABLE speciality ADD CONSTRAINT check_speciality_name CHECK (speciality_name IN (
'electronics','construction', 'transportation', 'computer hardware', 'IT consulting',
'logistics service', 'software', 'basic materials'));

ALTER TABLE takes ADD CONSTRAINT check_grade CHECK (grade IN (
'A','B','C', 'D', 'E'));








