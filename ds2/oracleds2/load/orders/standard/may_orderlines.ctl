OPTIONS(DIRECT=TRUE, PARALLEL=FALSE)

UNRECOVERABLE

LOAD DATA

APPEND

INTO TABLE ds2.orderlines


FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'

TRAILING NULLCOLS

(ORDERLINEID integer external,
ORDERID integer external,
PROD_ID integer external,
QUANTITY integer external,
ORDERDATE date "yyyy/mm/dd") 
