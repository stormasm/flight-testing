#!/bin/bash

flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table person (id int, name string, primary key(id));"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "create table human (id int, name string, primary key(id));"



"create table region (r_regionkey int, r_name varchar, r_comment varchar, primary key (r_regionkey));"
"create table nation (n_nationkey int, n_name varchar, n_regionkey int, n_comment varchar, primary key (n_nationkey));"
"create table part (p_partkey int, p_name varchar, p_mfgr varchar, p_brand varchar, p_type varchar, p_size int,
p_container varchar,
p_retailprice float,
p_comment varchar,
primary key (p_partkey));"

"create table supplier (
s_suppkey int,
s_name varchar,
s_address varchar,
s_nationkey int,
s_phone varchar,
s_acctbal float,
s_comment varchar,
primary key (s_suppkey))"))

"create table partsupp (
ps_partkey int,
ps_suppkey int,
ps_availqty int,
ps_supplycost float,
ps_comment varchar,
primary key (ps_partkey, ps_suppkey))"

"create table customer (
c_custkey int,
c_name varchar,
c_address varchar,
c_nationkey int,
c_phone varchar,
c_acctbal float,
c_mktsegment varchar,
c_comment varchar,
primary key (c_custkey))"

"create table orders (
o_orderkey int,
o_custkey int,
o_orderstatus varchar,
o_totalprice float,
o_orderdate datetime,
o_orderpriority varchar,
o_clerk varchar,
o_shippriority int,
o_comment varchar,
primary key (o_orderkey))"

"create table lineitem (
l_orderkey int,
l_partkey int,
l_suppkey int,
l_linenumber int,
l_quantity float,
l_extendedprice float,
l_discount float,
l_tax float,
l_returnflag varchar,
l_linestatus varchar,
l_shipdate datetime,
l_commitdate datetime,
l_receiptdate datetime,
l_shipinstruct varchar,
l_shipmode varchar,
l_comment varchar,
primary key (l_orderkey, l_linenumber))
