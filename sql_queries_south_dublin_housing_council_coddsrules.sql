RULE1

SHOW TABLES FROM south_dublin_housing_council_repairs;

SELECT * FROM equipment;
SELECT * FROM property;
SELECT * FROM tenant;
SELECT * FROM repairs;
SELECT * FROM tradesman;

RULE2
ALTER TABLE `tenant` ADD PRIMARY KEY(`TENANT_ID`);

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('3','','Nadia','Baouche','087348967','fortyacres@gmail.com');

SELECT FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE 
FROM property, tenant 
WHERE property.TENANT_ID = tenant.TENANT_ID;

SELECT tenant.TENANT_ID, FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE, repairs.REPAIR_ID, DETAILS 
FROM property, tenant, repairs 
WHERE property.TENANT_ID = tenant.TENANT_ID 
AND property.REPAIR_ID = repairs.REPAIR_ID;

SELECT tenant.TENANT_ID, FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE, repairs.REPAIR_ID, DETAILS 
FROM property, tenant, repairs;


RULE3

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('31','','Han','Solo','089458765','milleniumfalcon@starwars.com');

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('32','68785858','Luke','Skywalker','','deathstar@starwars.com');

INSERT INTO property (POSTCODE, TENANT_ID, ADDRESS, REPAIR_ID) 
VALUES 
('D6 WH49','6',NULL,'2');

ALTER TABLE `tenant` CHANGE `REGISTER_NUMBER` `REGISTER_NUMBER` INT(20) NULL;

ALTER TABLE `tenant` CHANGE `CONTACT` `CONTACT` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;

UPDATE 'tenant' SET 'REGISTER_NUMBER' = NULL 
WHERE 'tenant'.TENANT_ID = '31';

UPDATE `tenant` SET `CONTACT` = NULL 
WHERE `tenant`.`TENANT_ID` = '32';

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('33', NULL, 'FRODO','BAGGINS', NULL, 'theshire@onering.com' );

ALTER TABLE `tenant` CHANGE `TENANT_ID` `TENANT_ID` INT(20) NULL;

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES (NULL,'55885','GEORGE','LUCAS','089458765','milleniumfalcon@starwars.com');


RULE4
;
SELECT * FROM INNODB_SYS_TABLES;

SELECT * FROM `INNODB_SYS_TABLES` WHERE TABLE_ID='98';

SELECT * FROM INNODB_SYS_TABLES
WHERE TABLE_ID = ‘102’;

SELECT * FROM INNODB_SYS_TABLES
WHERE TABLE_ID = ‘103’;

SELECT * FROM INNODB_SYS_TABLES
WHERE TABLE_ID = ‘105’;


RULE5

CREATE TABLE housing_issue
(
HOUSE_ID int,
ADDRESS varchar(255),
TYPE varchar(255),
COMPLAINT varchar(255)
);

ALTER TABLE `housing_issue` ADD PRIMARY KEY(`HOUSE_ID`);

INSERT INTO housing_issue (HOUSE_ID, ADDRESS, TYPE, COMPLAINT)
VALUES ('45','543 Spencer Street','leak','leak coming down through the ceiling');

ALTER TABLE housing_issue 
ADD COLUMN AREA VARCHAR(30);

UPDATE housing_issue SET TYPE ='leaking roof' WHERE HOUSE_ID = '45';

UPDATE housing_issue SET AREA ='DUBLIN 4' WHERE HOUSE_ID = '45';

DELETE FROM housing_issue WHERE AREA = 'DUBLIN 4';

DROP TABLE housing_issue;


RULE6

CREATE VIEW tenant_details AS SELECT TENANT_ID, FIRST_NAME, LAST_NAME FROM tenant;

SELECT * FROM ‘tenant_details’
WHERE LAST_NAME=’DONNELLY’;

SELECT * FROM `tenant_details` WHERE TENANT_ID = '13';

UPDATE `tenant_details` SET FIRST_NAME='PHIL' WHERE TENANT_ID = '13';

INSERT INTO tenant_details (TENANT_ID, FIRST_NAME, LAST_NAME) VALUES ('60','Pat', 'LYONS'); 

CREATE VIEW tenant_details_and_repairs AS SELECT tenant.TENANT_ID, FIRST_NAME, LAST_NAME, ADDRESS, repairs.REPAIR_ID, TYPE, DETAILS 
FROM tenant, property, repairs 
WHERE tenant.TENANT_ID = property.TENANT_ID AND property.REPAIR_ID = repairs.REPAIR_ID; 

UPDATE `tenant_details_and_repairs` SET TYPE='carpentry' 
WHERE TENANT_ID = '20'; 

UPDATE `tenant_details_and_repairs` SET TYPE='carpentry' 
WHERE TENANT_ID = '5'; 

INSERT INTO tenant_details_and_repairs (TENANT_ID, FIRST_NAME, LAST_NAME, ADDRESS, REPAIR_ID, TYPE, DETAILS) 
VALUES ('61','JACKIE', 'KENNY','802 Sunset Avenue','11', 'Plumbing','install heaters into sitting room');

CREATE VIEW tenant_details2 
AS SELECT TENANT_ID, FIRST_NAME, LAST_NAME 
FROM tenant_details;

CREATE VIEW tenant_details_and_repairs2 
AS SELECT tenant.TENANT_ID, FIRST_NAME, LAST_NAME, ADDRESS, repairs.REPAIR_ID, TYPE, DETAILS 
FROM tenant, property, repairs;

DROP VIEW tenant_details;

DROP VIEW tenant_details_and_repairs;

DROP VIEW tenant_details_and_repairs2;

DROP VIEW tenant_details2;

 

RULE7

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('35','937847', 'John', 'Grisham','08976543', 'ilovegeneaology@gmail.com'), 
       ('36', '74573', 'Eve', 'Malone','087773789', 'meowtastic@hotmail.com'), 
	   ('37', '8764', 'Vera', 'Duckworth', '085337478', 'finalcountdown@europe.com'), 
	   ('38', '16274', 'Jack', 'Hackett', '0893646636', 'drinkfeckarse@feckarseindustries.ie');
	   

UPDATE tenant 
SET FIRST_NAME = 'JOHNNY' 
WHERE FIRST_NAME = 'JOHN';

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES ('39','937', 'JOHNNY', 'LYONS','08976543', 'ilovegeneaology@gmail.com'), 
       ('40', '743', 'JOHNNY', 'Malone','087773789', 'meowtastic@hotmail.com');
	   
INSERT INTO tradesman (TRADESMAN_ID, FIRST_NAME, LAST_NAME, SKILL, CONTACT, EQUIPMENT_ID) 
VALUES ('40', 'JOHNNY', 'LYONS','plumbing', '089575757', '10'), 
       ('42', 'JOHNNY', 'Malone','woodwork', '087543653', '9');
	   
UPDATE tenant
SET FIRST_NAME = 'JOHN' 
WHERE FIRST_NAME = 'JOHNNY';


UPDATE tradesman SET FIRST_NAME = 'JOHN' 
WHERE FIRST_NAME = 'JOHNNY';

DELETE FROM tenant WHERE FIRST_NAME ='JOHN';  
  

RULE8

RULE9
ALTER TABLE tenant ADD POSTCODE VARCHAR(10) NOT NULL;

INSERT INTO equipment (EQUIPMENT_ID, TYPE, DESCRIPTION, VALUE, INSPECTION_DATE, STATE_OF_REPAIR, IN_NEED_OF_REPLACEMENT) 
VALUES ('17', 'Nail Gun', 'Powergun 5000','29.99', '2015/12/17', 'Poor','Yes'), 
       ('18', 'Measuring Tape', 'Master Tape 4 metres length','31.50', '2015/12/10', 'Good', 'No');
	   
INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL, POSTCODE) 
VALUES ('39','937', 'JOHNNY', 'LYONS','08976543', 'ilovegeneaology@gmail.com', ''), 
       ('40', '743', 'JOHNNY', 'VEGAS','087773789', 'meowtastic@hotmail.com', '');
	   
CREATE TABLE housing_issue
(
HOUSE_ID int,
ADDRESS varchar(255),
TYPE varchar(255),
COMPLAINT varchar(255)
);

ALTER TABLE `housing_issue` ADD PRIMARY KEY(`HOUSE_ID`);

INSERT INTO housing_issue (HOUSE_ID, ADDRESS, TYPE, COMPLAINT)
VALUES ('45','543 Spencer Street','leak','leak coming down through the ceiling'),
       ('46','544 Spencer Street','burstpipe','burst pipe in the kitche'),
	   ('47','545 Spencer Street','rodent infestation','there are rats in the house');
	   
CREATE VIEW housing_issue_view AS SELECT HOUSE_ID, ADDRESS, TYPE, COMPLAINT FROM housing_issue;

ALTER TABLE housing_issue
DROP COLUMN COMPLAINT;

INSERT INTO housing_issue_view (HOUSE_ID, ADDRESS, TYPE, COMPLAINT) 
VALUES ('48','937 HAZEL GROVE', 'bad smell', 'bad smell coming from sewers'),   
       ('49','24 CASTLE PARK','flooding','river is flooding apartment');  
	   
CREATE VIEW housing_issue_view2 AS SELECT HOUSE_ID, ADDRESS, TYPE FROM housing_issue;

INSERT INTO housing_issue_view2 (HOUSE_ID, ADDRESS, TYPE) 
VALUES ('48','937 HAZEL GROVE', 'bad smell'),   
       ('49','24 CASTLE PARK', 'flooding');
	   
DROP TABLE housing_issue;

DROP VIEW housing_issue_view;

DROP VIEW housing_issue_view2;

	   


RULE10

ALTER TABLE ‘tenant’ CHANGE ‘TENANT_ID’ ‘TENANT_ID’ INT(20) NULL; /* THIS WAS ALREADY ENTERED FOR RULE 3*/

INSERT INTO tenant (TENANT_ID, REGISTER_NUMBER, FIRST_NAME, LAST_NAME, CONTACT, EMAIL) 
VALUES (NULL,'55885', 'GEORGE', 'LUCAS','089458765','milleniumfalcon@starwars.com'); /* THIS WAS ALREADY ENTERED FOR RULE 3*/

ALTER TABLE ‘equipment’ CHANGE ‘EQUIPMENT_ID’ ‘EQUIPMENT_ID’ INT(10) NULL;

INSERT INTO equipment (EQUIPMENT_ID, TYPE, DESCRIPTION, VALUE, INSPECTION_DATE, STATE_OF_REPAIR, IN_NEED_OF_REPLACEMENT) 
VALUES (NULL, 'Nail Gun', 'Powergun 5000','29.99', '2015/12/17', 'Poor','Yes'); /*DATA CAN NOT BE ENTERED BECAUSE THE PRIMARY KEY CAN NOT BE NULL*/



RULE11

