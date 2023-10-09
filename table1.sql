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

-- output
-- +----------+----------------+-----------+---------+-------------+--------+
-- | clientno | name           | city      | pincode | state       | buldue |
-- +----------+----------------+-----------+---------+-------------+--------+
-- | C00001   | ivan Bayross   | mumbai    |  400054 | maharashtra |  15000 |
-- | C00002   | Mamta muzumdar | madras    |  780001 | tamil nadu  |      0 |
-- | C00003   | Chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
-- | C00004   | Ashwini joshi  | Banglore  |  560001 | Karnataka   |      0 |
-- | C00005   | Hansel Colaco  | mumbai    |  400060 | maharashtra |   2000 |
-- | C00006   | Deepak Sharma  | mangalore |  560050 | karnataka   |      0 |
-- +----------+----------------+-----------+---------+-------------+--------+


-- table-(2)
create table product_master(
    PROCUCTNO varchar(6),
    DESCRIPTION varchar(15),
    PROFITPERCENT int(4),
    UNITMEASURE varchar(10),
    QTYONHAND int(8),
    REORDERLVL int(8),
    SELLPRICE int(8),
    COSTPRICE int(8)
);

insert into product_master(PROCUCTNO,DESCRIPTION,PROFITPERCENT,UNITMEASURE,QTYONHAND,REORDERLVL,SELLPRICE,COSTPRICE)
values("p0001","t-shirt",5,"piece",200,50,350,250),
("p0345","shirts",6,"piece",150,50,500,350),
("p06734","cotton jeans",5,"piece",100,20,600,450),
("p07865","jeans",5,"piece",100,20,750,500),
("p07868","trousers",2,"piece",150,50,850,550),
("p07885","pull overs",5,"piece",80,30,700,450),
("p07965"," Denim shirts",4,"piece",100,40,350,250),
("p07975","Lycra Tops",5,"piece",70,30,300,175),
("p08865","skirts",5,"piece",75,30,450,300);

-- output
-- +-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
-- | PROCUCTNO | DESCRIPTION   | PROFITPERCENT | UNITMEASURE | QTYONHAND | REORDERLVL | SELLPRICE | COSTPRICE |
-- +-----------+---------------+---------------+-------------+-----------+------------+-----------+-----------+
-- | p0001     | t-shirt       |             5 | piece       |       200 |         50 |       350 |       250 |
-- | p0345     | shirts        |             6 | piece       |       150 |         50 |       500 |       350 |
-- | p06734    | cotton jeans  |             5 | piece       |       100 |         20 |       600 |       450 |
-- | p07865    | jeans         |             5 | piece       |       100 |         20 |       750 |       500 |
-- | p07868    | trousers      |             2 | piece       |       150 |         50 |       850 |       550 |
-- | p07885    | pull overs    |             5 | piece       |        80 |         30 |       700 |       450 |
-- | p07965    |  Denim shirts |             4 | piece       |       100 |         40 |       350 |       250 |
-- | p07975    | Lycra Tops    |             5 | piece       |        70 |         30 |       300 |       175 |
-- | p08865    | skirts        |             5 | piece       |        75 |         30 |       450 |       300 |
-- +-----------+---------------+---------------+-------------+-----------+------------+---------


-- table-(3)
create table salesman_master(
    SALESMANNO varchar(6),
    SALESMANNAME varchar(20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE int(8),
    STATE varchar(20),
    SALAMT int(8),
    TGTTOGET int(6),
    YTDSALES int(6),
    REMARKS varchar(60)
);  

insert into salesman_master(SALESMANNO,SALESMANNAME,ADDRESS1,ADDRESS2,CITY,PINCODE,STATE,SALAMT,TGTTOGET,YTDSALES,REMARKS) values("s00001","aman","A/14","Worli","mumbai",400002,"mahrastra",3000,100,50,"Good"),
("s00002","omkar","65","Nariman","mumbai",400001,"mahrastra",3000,200,100,"Good"),
("s00003","Raj","p-7","Bandra","mumbai",400032,"mahrastra",3000,200,100,"Good"),
("s00004","Ashish","A/5","Juhu","mumbai",400044,"mahrastra",3500,200,150,"Good");

-- output
-- +------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+
-- | SALESMANNO | SALESMANNAME | ADDRESS1 | ADDRESS2 | CITY   | PINCODE | STATE     | SALAMT | TGTTOGET | YTDSALES | REMARKS |
-- +------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+
-- | s00001     | aman         | A/14     | Worli    | mumbai |  400002 | mahrastra |   3000 |      100 |       50 | Good    |
-- | s00002     | omkar        | 65       | Nariman  | mumbai |  400001 | mahrastra |   3000 |      200 |      100 | Good    |
-- | s00003     | Raj          | p-7      | Bandra   | mumbai |  400032 | mahrastra |   3000 |      200 |      100 | Good    |
-- | s00004     | Ashish       | A/5      | Juhu     | mumbai |  400044 | mahrastra |   3500 |      200 |      150 | Good    |
-- +------------+--------------+----------+----------+--------+---------+-----------+--------+----------+----------+---------+

-- table-(4)
