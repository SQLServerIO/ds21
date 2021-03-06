# oracleds2_create_all_large.sh
# start in ./ds2/oracleds2
# mount large datafiles over load/* directories or modify this script
cd ./build
sqlplus "/ as sysdba" @oracleds2_create_tablespaces_large_asm.sql
sqlplus "/ as sysdba" @oracleds2_create_db_large.sql
cd ../load/cust
sh oracleds2_cust_sqlldr.sh
cd ../orders
sh oracleds2_orders_sqlldr.sh
sh oracleds2_orderlines_sqlldr.sh
sh oracleds2_cust_hist_sqlldr.sh
cd ../prod
sh oracleds2_prod_sqlldr.sh
sh oracleds2_inv_sqlldr.sh
cd ../../build
sqlplus ds2/ds2 @oracleds2_create_ind.sql
sqlplus ds2/ds2 @oracleds2_create_fulltextindex.sql
sqlplus ds2/ds2 @oracleds2_create_sp.sql

