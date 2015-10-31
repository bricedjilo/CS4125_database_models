BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE course_';
  EXCEPTION
	WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE course_(
	c_code				varchar(10) NOT NULL,
	title				varchar(100) NOT NULL,
	course_level		varchar(50) NOT NULL,
	description			varchar(300) NOT NULL,
	status				varchar(10) NOT NULL,
	retail_price		number(10,2) NOT NULL,
	primary key (c_code)
);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('MATH1115','College Algebra','beginner',
'Real numbers and equations, functions, polynomial functions and graphs, exponential and logarithmic functions. A strong component of this course will be applications taken from different areas of concentration.','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI1583','Software Design and Development I','beginner',
'An introduction to software design and development using an object-oriented approach','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('COM2020','Business Communication I','beginner',
'Convey technical content to any audience through specific, clear and concise writing','Active',1200);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('LSAT101','Linux System Administration Training I','beginner',
'Among the chief reasons the adoption of Linux in the server market continues to 
grow are the total cost of ownership, technical superiority and security. 
A portion of the growth can also be attributed to Linux’s dominance in emerging 
cloud infrastructures. The Linux Foundation recognized that this growth created demand 
for in-person and online IT training for Linux system administration professionals. 
Our comprehensive Linux best practices courses are the best way for system administrators 
to get the advanced Linux system administration training and Linux security training they 
need to keep their IT infrastructure secure and operating at optimal levels.','Active',500);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('UDW1000','Front-End Web Developer','beginner',
'Introduction to Front-End Web Development','Active',2400);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI1581','Software Design and Development I Laboratory','beginner',
'Applications, exercises, and explorations in methodologies, software design, and development','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI2120','Software Design and Development II','medium',
'A continuation of CSCI 1583 and 1581 with emphasis on algorithmic techniques and the structuring of larger systems.','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI2121','Software Design and Development II Laboratory','medium',
'Applications, exercises, and explorations in methodologies for software design and development.','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI2125','Data Structures','medium',
'A continuation of CSCI 2120 and 2121 with emphasis on the design and implementation of structured data objects','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI2450','Machine Structure and Assembly Language Programming','medium',
'Assembly language programming and a survey of computer organization.','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI2467','Systems Programming Concepts','medium',
' Introduction to the concepts and tools used in systems programming. ','Active',657);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI3301','Computer Organization','medium',
'Processor design and performance evaluation.','Active',512);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4101','Analysis of Algorithms','advanced',
'Precise definition of the concept of an algorithm; techniques for algorithm verification; analyzing algorithm performance; applications to practical algorithms.','Active',791);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4125','Data Models and Database Systems','advanced',
'Methods, structures, and algorithms used for the organization, representation, and manipulation of large data bases','Active',534);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4208','Developing Advanced Web Applications','advanced',
'Study of the software life-cycle that different applications go through, from conception to release and maintenance.','Expired',775);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4350','Distributed Software Engineering','advanced',
'A study of the concepts, the methodology, the models, and methods that address problems in the development of distributed-software applications with emphasis on distributed-object models and components.','Active',627);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4401','Principles of Operating Systems I','advanced',
'An introduction to the organization of various types of operating systems; machine structure and the functions of an operating system; multiprogramming and time-sharing environments.','Active',680);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('CSCI4402','Principles of Operating Systems II','advanced',
'A continuation of CSCI 4401 with emphasis on time-sharing, multiprocessing, and virtual system environments.','Expired',584);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('FIN2302','Introduction to Investing','Medium',
'The course provides an overview of investment
opportunities in financial instruments such as common
stocks, preferred stocks, government and corporate bonds, rights,
warrants, convertibles, options, futures, and mutual funds.','Active',584);

INSERT INTO course_ (c_code,title,course_level,description,status,retail_price) 
VALUES ('None','No Prerequisites','N/A','This course has no prerequisites','N/A',0);