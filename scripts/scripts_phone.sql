BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE phone CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE phone PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

create table phone(
	per_id				number NOT NULL, 
	phone_number		varchar(20) NOT NULL,
	phone_type			varchar(20) NOT NULL, 
	primary key (per_id, phone_number),
	foreign key (per_id) references person
		on delete cascade
);

INSERT INTO phone (per_id,phone_number,phone_type) VALUES (1,'1-719-584-6538','massa.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (2,'1-587-188-9820','fringilla');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (3,'1-827-354-1493','non,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (4,'1-409-405-8701','a,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (5,'1-165-750-4853','aliquet.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (6,'1-766-288-6154','torquent');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (7,'1-240-455-7886','ac');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (8,'1-630-162-9233','felis');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (9,'1-431-550-1958','est');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (10,'1-279-528-2034','vitae,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (11,'1-137-995-2611','Suspendisse');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (12,'1-722-409-0011','egestas');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (13,'1-143-965-1430','euismod');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (14,'1-181-376-1926','sit');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (15,'1-894-264-3922','placerat.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (16,'1-586-500-3084','nunc');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (17,'1-670-387-1823','pellentesque');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (18,'1-465-700-1941','Duis');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (19,'1-591-947-5827','purus.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (20,'1-146-214-8161','sodales.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (21,'1-379-801-5309','non,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (22,'1-777-421-0392','pede.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (23,'1-260-155-1683','sit');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (24,'1-665-774-3000','sagittis.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (25,'1-491-639-2701','Fusce');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (26,'1-808-441-1291','ullamcorper,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (27,'1-969-877-7941','egestas');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (28,'1-625-188-9033','Curabitur');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (29,'1-749-462-0877','pede.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (30,'1-921-920-8864','vel,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (31,'1-511-944-5273','enim');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (32,'1-555-231-5019','ipsum');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (33,'1-593-171-2720','posuere');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (34,'1-640-725-6281','libero.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (35,'1-963-618-3541','lacus,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (36,'1-107-939-0445','euismod');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (37,'1-254-347-0218','risus.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (38,'1-215-209-7578','nonummy');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (39,'1-791-679-6563','iaculis');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (40,'1-361-137-6216','Nunc');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (41,'1-911-312-4921','aliquet.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (42,'1-484-726-0507','et,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (43,'1-739-880-7695','diam');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (44,'1-227-980-0766','eget,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (45,'1-370-848-1976','gravida.');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (46,'1-254-828-7078','lobortis,');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (47,'1-196-654-7807','varius');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (48,'1-576-735-9294','eleifend');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (49,'1-348-919-6409','luctus');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (50,'1-258-847-5163','Integer');
INSERT INTO phone (per_id,phone_number,phone_type) VALUES (51,'1-276-513-9403','tellus.');