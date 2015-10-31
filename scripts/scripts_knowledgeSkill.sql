BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE knowledgeSkill CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE knowledgeSkill PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE knowledgeSkill (
  ks_code 		varchar(10) NOT NULL,
  title 		varchar(100) NOT NULL,
  description 	varchar(300) NOT NULL,
  skill_level 		varchar(15) NOT NULL,
  PRIMARY KEY(ks_code)
);

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('COM2001','Effective Technical Writing',
'Create a full range of technical documents with solid structures 
Use templates to quickly start the writing process 
Explore techniques for getting past writer’s block','Beginner');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('COM2002','Communicate with Diplomacy, Tact and Credibility',
'Apply diplomacy and tact to be a credible and effective communicator 
Manage the impact your communications have on your image 
Define and leverage your communication style','Advanced');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('LFS1001','Introduction to Linux',
'Linux powers 94% of the world’s supercomputers, most of the servers powering the Internet, the majority 
of financial trades worldwide and a billion Android devices. In short, Linux is everywhere. It appears in 
many different architectures, from mainframes to server to desktop to mobile and on a staggeringly wide 
variety of hardware. This free self-paced course will teach you how to develop a good working knowledge of 
Linux using both the graphical interface and command line','Beginner');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('LFS1002','Fundamentals of Linux',
'Linux is everywhere and is becoming more and more ubiquitous every day. This live, instructor-led course 
will help you acquire a practical understanding of how Linux works, quickly get up to speed using the 
Linux graphical interface and leverage efficiencies by using the command line tools.','Beginner');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('LFS2001','Essentials of System Administration',
'Linux is the #1 operating system for web servers, cloud computing, smart phones and consumer electronics. Due to its 
rapid adoption, theres a shortage of Linux system administrators. According to the 2015 Linux Jobs Report, "the unstoppable 
Linux job market shows no sign of slowing down." The Linux Foundation has created a career entry training and certification 
path that is 100% online, highly respected and exceptionally affordable.','Beginner');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('WDFE1001','Introduction to Web Design','You will replicate a design mockup in HTML and CSS. 
You will develop a responsive website that will display images, descriptions and links to each of the portfolio projects you will 
complete throughout the course of the Front-End Web Developer.','Beginner');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('DBAS2002','Database Concurrency Control',
'Transaction Processing and Concurrency Control:Transaction Fundamentals (3 sessions): OLTP environments, Concurrency 
issues, need for transactions, Necessary properties of transactions (ACID properties), Transaction states, serializability, 
Serial schedules, Conflict serializability, View serializability, Recoverable and non-recoverable schedules, Cascading rollbacks, 
Cascadeless schedules - Concurrency control:Serialized and non-serialized schedules, Testing for serializability, Locking, 
Lock compatibility matrix, Locking and serializability, Deadlocks and starvation, Two-phase locking (2PL) protocol, 
Conservative, strict and rigorous 2PL, 2PL with lock conversions, Timestamp-ordering based protocol, Multi-versioning protocol, 
Multi-granularity locking, Deadlock prevention protocols, Wait-die and wound-wait schemes, Time-out based schemes, 
Deadlock recovery, Nested transactions - Database recovery techniques:Recovery concepts, Deferred updates technique, 
Immediate update technique, Shadow paging, ARIES recovery algorithm','Advance');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JDBC1001','JDBC Programming',
'The course starts with an overview of the JDBC API. Then you learn how to set up your development 
environment with the appropriate MySQL database drivers. Next the course shows you how to submit a SQL query and process the 
result set. Also, you learn how to perform SQL insert, updates and deletes.
The course moves on to advanced topics such as Prepared Statements to handle SQL paramaters. You also learn how to call stored 
procedures using various parameter types (IN, INOUT, OUT and ResultSet). Next, the course shows you how to process large data 
types such as BLOBs and CLOBs. Finally, the course wraps up with a section on reading database connection information from a 
configuration file.','Medium');

INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('RDBMS1001','RDBMS Design','nec, diam.','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('CSS1002','CSS','non, sollicitudin','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('RUBY1001','Ruby','volutpat nunc','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('DBAS1001','Data Modeling','Sed neque.','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('DBAS1002','SQL','sodales. Mauris','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('FIN2002',' Financial Analysis','nunc ac','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('COM1001','Composition','semper, dui','Advanced');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('FIN3000','Financial Software','velit dui,','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('ACC1001','Bookkeeping','tristique neque','Advanced');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('DBAS1003','Relational Models','ac turpis','Advanced');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVS1001','Javascript','pretium aliquet,','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('DBAS3003','Relational Object Database','interdum. Curabitur','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVS1002','Javascript','ut, nulla.','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVA1001','Core Java','ut, nulla.','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVA1002','Core Java','ut, nulla.','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVA2001','Core Java','ut, nulla.','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('JAVA2002','Core Java','ut, nulla.','Advanced');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('ALGB1001','Algebra I','ut, nulla.','Beginner');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('ALGB1002','Algebra II','ut, nulla.','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('ALGB1003','Algebra III','ut, nulla.','Advanced');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('COMP2001','Computer Hardware','ut, nulla.','Medium');
INSERT INTO knowledgeSkill (ks_code,title,description,skill_level) VALUES ('COMP2002','Computer Software - Algorithms','ut, nulla.','Advanced');
