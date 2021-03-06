use DS2;

SET UNIQUE_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE PRODUCTS DISABLE KEYS;

LOAD DATA LOCAL INFILE "../../../data_files/prod/prod.csv" INTO TABLE PRODUCTS FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

ALTER TABLE PRODUCTS ENABLE KEYS;
SET UNIQUE_CHECKS=1;
SET FOREIGN_KEY_CHECKS=1;
