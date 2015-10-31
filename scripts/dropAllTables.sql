BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE course_ CASCADE CONSTRAINTS'; 		EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE course_ PURGE'; 						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE knowledgeSkill CASCADE CONSTRAINTS'; 	EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE knowledgeSkill PURGE'; 				EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE company CASCADE CONSTRAINTS';			EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE company PURGE'; 						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE companyAddress CASCADE CONSTRAINTS'; 	EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE companyAddress PURGE'; 				EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE employeeAddress CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE employeeAddress PURGE'; 				EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE jobProfile CASCADE CONSTRAINTS'; 		EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE jobProfile PURGE'; 					EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE person CASCADE CONSTRAINTS'; 			EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE person PURGE'; 						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE phone CASCADE CONSTRAINTS'; 			EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE phone PURGE'; 						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE prerequisite CASCADE CONSTRAINTS'; 	EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE prerequisite PURGE';					EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE project CASCADE CONSTRAINTS';			EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE project PURGE'; 						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE requiredSkill CASCADE CONSTRAINTS';	EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE requiredSkill PURGE';					EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE section CASCADE CONSTRAINTS';			EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE section PURGE';						EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE speciality CASCADE CONSTRAINTS';		EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE speciality PURGE';					EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE trainingForSkill CASCADE CONSTRAINTS';EXCEPTION WHEN OTHERS THEN NULL;
	EXECUTE IMMEDIATE 'DROP TABLE trainingForSkill PURGE';				EXCEPTION WHEN OTHERS THEN NULL;
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/