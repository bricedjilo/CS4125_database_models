BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE person CASCADE CONSTRAINTS'; 		
	EXECUTE IMMEDIATE 'DROP TABLE person PURGE'; 	
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE person (
  per_id 	number NOT NULL,
  name 		varchar(100) NOT NULL,
  email 	varchar(100) NOT NULL,
  gender 	varchar(10) NOT NULL,
  PRIMARY KEY(per_id)
);

create sequence person_seq start with 1 increment by 1 nomaxvalue;
create trigger person_trigger
before insert on person
for each row
	begin
	 select person_seq.nextval into :new.per_id from dual;
	end;
/

INSERT INTO person (per_id,name,email,gender) VALUES (1,'Lowery, Meghan P.','Nam.ligula@metusInlorem.ca','female');
INSERT INTO person (per_id,name,email,gender) VALUES (2,'Farmer, Boris D.','ipsum@Quisquenonummyipsum.net','male');
INSERT INTO person (per_id,name,email,gender) VALUES (3,'Wilkinson, Jillian I.','lacinia.orci@disparturient.net','male');
INSERT INTO person (per_id,name,email,gender) VALUES (4,'Shelton, Gil P.','Donec@tortorNunccommodo.ca','male');
INSERT INTO person (per_id,name,email,gender) VALUES (5,'Sanchez, Sydnee A.','tempus.lorem@ultricesposuerecubilia.net','female');
INSERT INTO person (per_id,name,email,gender) VALUES (6,'Carney, Garrett T.','urna.suscipit.nonummy@cursuset.net','male');
INSERT INTO person (per_id,name,email,gender) VALUES (7,'Ewing, Keaton S.','arcu@quamelementum.edu','female');
INSERT INTO person (per_id,name,email,gender) VALUES (8,'Keith, Brooke J.','lorem.auctor.quis@nonleo.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (9,'Olsen, Ashton A.','tortor@ametconsectetueradipiscing.org','male.');
INSERT INTO person (per_id,name,email,gender) VALUES (10,'Pennington, Oliver X.','sollicitudin.a@elit.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (11,'Castro, Deirdre V.','arcu.Vivamus.sit@ante.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (12,'Valentine, Rhonda H.','Class.aptent@Aliquamerat.net','male');
INSERT INTO person (per_id,name,email,gender) VALUES (13,'Mcknight, Jeanette E.','fermentum@facilisi.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (14,'Donaldson, Holmes Y.','convallis@mollisIntegertincidunt.ca','male');
INSERT INTO person (per_id,name,email,gender) VALUES (15,'Brennan, Jin A.','Pellentesque.ultricies.dignissim@sit.org','female');
INSERT INTO person (per_id,name,email,gender) VALUES (16,'Mack, Drew Y.','et@semmolestie.com','male');
INSERT INTO person (per_id,name,email,gender) VALUES (17,'Wiggins, Stephen K.','Aliquam@metusInlorem.com','male');
INSERT INTO person (per_id,name,email,gender) VALUES (18,'Pruitt, Vivien K.','Mauris@neque.org','male');
INSERT INTO person (per_id,name,email,gender) VALUES (19,'French, Hall A.','sagittis.semper.Nam@eleifendnon.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (20,'Joyce, Regina K.','velit@Donecelementum.ca','female');
INSERT INTO person (per_id,name,email,gender) VALUES (21,'Baxter, Robin V.','risus.varius@scelerisque.ca','male');
INSERT INTO person (per_id,name,email,gender) VALUES (22,'Gibson, Signe J.','mollis@bibendumullamcorperDuis.org','male');
INSERT INTO person (per_id,name,email,gender) VALUES (23,'Fleming, Dennis R.','neque.et@Proin.org','male,');
INSERT INTO person (per_id,name,email,gender) VALUES (24,'Boyer, Demetrius B.','tincidunt.adipiscing.Mauris@amet.edu','male');
INSERT INTO person (per_id,name,email,gender) VALUES (25,'Koch, Lois D.','amet.risus@Praesent.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (26,'Hull, Ariana U.','tellus@interdumNuncsollicitudin.net','female');
INSERT INTO person (per_id,name,email,gender) VALUES (27,'Stephenson, Jin P.','at.velit.Cras@mauris.co.uk','male');
INSERT INTO person (per_id,name,email,gender) VALUES (28,'Huber, Clarke E.','a@vulputatenisisem.org','male');
INSERT INTO person (per_id,name,email,gender) VALUES (29,'Stanton, Hedy B.','sit.amet@at.org','male');
INSERT INTO person (per_id,name,email,gender) VALUES (30,'Holt, Ashely F.','ut.dolor@neceuismod.co.uk','female');
INSERT INTO person (per_id,name,email,gender) VALUES (31,'Montoya, Zelda K.','amet.consectetuer@scelerisquesed.edu','female');
INSERT INTO person (per_id,name,email,gender) VALUES (32,'Stafford, Gray W.','bibendum@ipsum.com','male');
INSERT INTO person (per_id,name,email,gender) VALUES (33,'Graham, Phoebe X.','In.mi@pedeSuspendissedui.edu','male');
INSERT INTO person (per_id,name,email,gender) VALUES (34,'Richard, Camilla W.','convallis@utmolestiein.org','female,');
INSERT INTO person (per_id,name,email,gender) VALUES (35,'Mcknight, Tana T.','a.scelerisque.sed@mattisornarelectus.net','female,');
INSERT INTO person (per_id,name,email,gender) VALUES (36,'Stanton, Carla U.','aliquet.vel.vulputate@Sed.org','female');
INSERT INTO person (per_id,name,email,gender) VALUES (37,'Wilcox, Shad H.','mollis@Quisquetinciduntpede.org','male');
INSERT INTO person (per_id,name,email,gender) VALUES (38,'Thornton, Medge I.','faucibus.Morbi@mauris.com','male.');
INSERT INTO person (per_id,name,email,gender) VALUES (39,'Estes, Garrett P.','lorem.ipsum@molestieorci.net','male,');
INSERT INTO person (per_id,name,email,gender) VALUES (40,'Beach, Idola L.','et.commodo.at@dignissimmagna.org','female');
INSERT INTO person (per_id,name,email,gender) VALUES (41,'Bartlett, Sacha I.','dis@dui.ca','female');
INSERT INTO person (per_id,name,email,gender) VALUES (42,'Massey, Shelley Y.','venenatis@eu.ca','female,');
INSERT INTO person (per_id,name,email,gender) VALUES (43,'Duran, Hayfa T.','lacus.pede@mauris.co.uk','female');
INSERT INTO person (per_id,name,email,gender) VALUES (44,'Robbins, Madonna Z.','Integer.eu@amet.org','female');
INSERT INTO person (per_id,name,email,gender) VALUES (45,'Carney, Emi S.','euismod.in@atfringillapurus.edu','female,');
INSERT INTO person (per_id,name,email,gender) VALUES (46,'Kirby, Echo N.','magna.Ut.tincidunt@Aliquamultricesiaculis.edu','male');
INSERT INTO person (per_id,name,email,gender) VALUES (47,'Reyes, Abel I.','enim.Mauris@magnased.com','male');
INSERT INTO person (per_id,name,email,gender) VALUES (48,'Warner, Tatyana O.','Suspendisse.commodo.tincidunt@dignissimmagnaa.edu','female');
INSERT INTO person (per_id,name,email,gender) VALUES (49,'Beck, Jerome O.','id@Maurismolestie.ca','male');
INSERT INTO person (per_id,name,email,gender) VALUES (50,'Berg, Carl V.','nulla.In.tincidunt@euodioPhasellus.com','male');
INSERT INTO person (per_id,name,email,gender) VALUES (51,'Marsh, Justin M.','malesuada@Donec.org','male');