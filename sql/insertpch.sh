#!/bin/bash

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table region (r_regionkey int, r_name varchar, r_comment varchar, primary key (r_regionkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into region values (0, 'Africa', 'john ran home')"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table nation (n_nationkey int, n_name varchar, n_regionkey int, n_comment varchar, primary key (n_nationkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into nation values (0, 'ALGERIA', 0, 'john ate cookies')"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table partsupp (ps_partkey int,ps_suppkey int,ps_availqty int,ps_supplycost float,ps_comment varchar,primary key (ps_partkey, ps_suppkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into partsupp values (1, 2, 29, 771.64, 'sarah lives in reno')"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table part (p_partkey int, p_name varchar, p_mfgr varchar, p_brand varchar, p_type varchar, p_size int, p_container varchar, p_retailprice float, p_comment varchar, primary key (p_partkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into part values (1, 'part name 1', 'Manufacturer#1', 'Brand#13', 'type 1', 7, 'container JUMBO PKG', 901.00, 'comment');"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table supplier (s_suppkey int,s_name varchar,s_address varchar,s_nationkey int,s_phone varchar,s_acctbal float,s_comment varchar,primary key (s_suppkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into supplier values (1, 'Supplier#000000001', 'address N kD4on9OM Ipw3', 17, '27-918-335-1736', 5755.94, 'comment 1');"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table customer (c_custkey int,c_name varchar,c_address varchar,c_nationkey int,c_phone varchar,c_acctbal float,c_mktsegment varchar,c_comment varchar,primary key (c_custkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into customer values (1, 'Customer#000000001', 'address IVhzIApeRb ot,c,E', 15, '25-989-741-2988', 711.56, 'market segment 1', 'comment 1');"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table orders (o_orderkey int,o_custkey int,o_orderstatus varchar,o_totalprice float,o_orderdate timestamp,o_orderpriority varchar,o_clerk varchar,o_shippriority int,o_comment varchar,primary key (o_orderkey));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into orders values (1, 36901, 'O', 173665.47, '1996-01-02', '5-LOW', 'Clerk#000000951', 0, 'comment 1');"

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table lineitem (l_orderkey int,l_partkey int,l_suppkey int,l_linenumber int,l_quantity float,l_extendedprice float,l_discount float,l_tax float,l_returnflag varchar,l_linestatus varchar,l_shipdate timestamp,l_commitdate timestamp,l_receiptdate timestamp,l_shipinstruct varchar,l_shipmode varchar,l_comment varchar,primary key (l_orderkey, l_linenumber));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "insert into lineitem values (1, 155190, 7706, 1, 17, 21168.23, 0.04, 0.02, 'N', 'O', '1996-03-13', '1996-02-12', '1996-03-22', 'DELIVER IN PERSON', 'TRUCK', 'comment 1');"
