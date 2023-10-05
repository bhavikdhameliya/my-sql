--ganpati bapa morya 

--\sql
--\connect root@localhost:3306

--show databases;
--create database bhavik;
--use bhavik;
--show tables

create table client_master(
clientno varchar(10),
name varchar(20),
city varchar(15),
pincode int (8),
state varchar(15),
buldue int(15)
);
insert into client_master(clientno,name,city,pincode,state,buldue)values("C00001","ivan bayross","mumbai","400054","maharashtra","15000"),
("C00002","mamta muzumdar","madras","780001","tmilnadu","0"),
("C00003","chhaya banker","mumbai","400057","maharashtra","5000"),
("C00004","Ashwini joshi","banglore","560001","karnataka","0"),
("C00005","Hansel colaco","mumbai","400060","maharashtra","2000"),
("C00006","Deepak sharma","manglore","560050","karnataka","0");


