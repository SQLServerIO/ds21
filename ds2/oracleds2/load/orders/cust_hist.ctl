OPTIONS(DIRECT=TRUE, PARALLEL=FALSE)

UNRECOVERABLE

LOAD DATA

APPEND

INTO TABLE ds2.cust_hist

FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'

TRAILING NULLCOLS

(CUSTOMERID integer external,
ORDERID integer external,
PROD_ID integer external)