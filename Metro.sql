CREATE DATABASE ME_INFO;
USE ME_INFO;
CREATE TABLE ME_INFO(ID INT NOT NULL,Metro_INFO_NAME VARCHAR(20) NOT NULL,Metro_INFO_LOCATION VARCHAR(20),Metro_INFO_EMPID INT,Metro_INFO_EMPLOC VARCHAR(20),Metro_INFO_PHONENO BIGINT,Metro_INFO_Source VARCHAR(20),Metro_INFO_Destination VARCHAR(20), Metro_INFO_EMNO BIGINT,Metro_INFO_Platformno INT,Metro_INFO_PROFIT INT , CONSTRAINT PH_UNI UNIQUE(Metro_INFO_PHONENO), CONSTRAINT NAME_UNI UNIQUE(Metro_INFO_NAME),CONSTRAINT PRO_CHECK CHECK (Metro_INFO_PROFIT>10000), CONSTRAINT EMPID_CHECK CHECK (Metro_INFO_EMPID<50));
DESC ME_INFO;
SELECT * FROM ME_INFO;
INSERT INTO ME_INFO VALUES (1,'Rajajinagar','BM ROAD',1,'JP NAGAR',9008974134,'MR ROAD','JP NAGAR',986345698,1,100000);
INSERT INTO Me_INFO VALUES (2,'Mg Road','KR ROAD',2,'BM ROAD',900897467,'KR ROAD','JR ROAD',10000000,2,200000);
INSERT INTO Me_INFO VALUES (3,'GP ROAD','KR PURMA',3,'KR ROAD',9008975678,'JE ROAD','YU ROAD',10000000,3,300000);
INSERT INTO Me_INFO VALUES (4,'ORION','STEDIUM ROAD',4,'JP NAGAR',9008974768,'SUMMER WEAR','AU ROAD',10000000,4,400000);
INSERT INTO Me_INFO VALUES (5,'FORUM','JR NAGAR',5,'STEDIUM ROAD',90786974134,'WINTER COLLECTION','IJ ROAD',10000000,5,500000);
INSERT INTO Me_INFO VALUES (6,'MANTRI','GARUDA',6,'JR NAGAR',9008978934,'SPORTS COLLECTION','OP ROAD',10000000,6,600000);
INSERT INTO Me_INFO VALUES (7,'ADIDAS','BGS ROAD',7,'JPR NAGAR',90089749834,'NIGHT DRESS','DR ROAD',2000000,7,700000);
INSERT INTO Me_INFO VALUES (8,'VR','BMS ROAD',8,'JPR NAGAR',954974134,'JEANS','TH ROAD',3000000,8,80000);
INSERT INTO Me_INFO VALUES (9,'LULU','MH ROAD',9,'JP NAGAR',900896758,'JEANSS','TY ROAD',1000000,9,900000);
INSERT INTO Me_INFO VALUES (10,'VH','GP ROAD',10,'MH NAGAR',9008786134,'BAG','HP ROAD',7000000,10,1000000);
ALTER TABLE Me_INFO MODIFY ID INT;
ALTER TABLE Me_INFO ADD CONSTRAINT EMPID_Info_CHECK CHECK(Metro_INFO_EMPID<50);
ALTER TABLE Me_INFO ADD CONSTRAINT Platformno_info_CHECK CHECK(Metro_INFO_Platformno <50);