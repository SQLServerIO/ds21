use DS2;

SET UNIQUE_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE INVENTORY DISABLE KEYS;

LOAD DATA LOCAL INFILE "../../../data_files/prod/inv.csv" INTO TABLE INVENTORY FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

ALTER TABLE INVENTORY ENABLE KEYS;
SET UNIQUE_CHECKS=1;
SET FOREIGN_KEY_CHECKS=1;
