-- table (4);
create table sales_order(
    orderNo varchar(6) primary key,
    clientNO varchar(6) foreign key references client_master(clientNO),
    orderDate date,
    delyaddr varchar(30),
    SALESMANNO varchar(6),
    delyType varchar(1),
    BillYN varchar(1),
    delyDate date,
    orderStatus varchar(15),

    foreign key (clientNo) references client_master(clientNO), 
    foreign key (SALESMANNO) references SALESMAN_MASTER(SALESMANNO) 
);
INSERT INTO sales_order values
("O19001", "C00001", "2004-06-12", "Mumbai","S00001", "F", "N", "2002-07-20", "In Process");
 ("O19002", "C00002", "2004-06-25", "Mumbai","S00002", "P", "N", "2002-06-27", "Cancelled"),
 ("O46865", "C00003", "2004-02-18", "Banglore","S00003", "F", "Y", "2002-02-20", "Fulfilled"),
 ("O19003", "C00001", "2004-04-03", "Pune","S00001", "F", "Y", "2002-04-07", "Fulfilled"),
 ("O46866", "C00004", "2004-05-20", "Pune","S00002", "P", "N", "2002-05-22", "Cancelled"),
 ("O19008", "C00005", "2004-05-24", "Banglore","S00004", "F", "N", "2002-07-26", "In Process");

select * from sales_order;


-- table (5);
create table sales_order_details(
    orderNo varchar(6), 
    PRODUCTNO varchar(6), 
    qtyOrdered int(8),
    qtyDisp int (8),
    productRate int(10),

    foreign key (orderNo) references sales_order(orderNo),
    foreign key (PRODUCTNO) references PRODUCT_MASTER(PRODUCTNO));

INSERT INTO sales_order_details values
("O19001", "P00001", 4, 4 , 525);
 ("O19001", "P07965", 2, 1, 8400),
 ("O19001", "P07885", 2, 1, 5250),
 ("O19002", "P00001",10, 0, 525),
 ("O46865","P07868",3,3,3150),
 ("O46865","P07885",3,1,5250),
 ("O46865","P00001",10,10,525),
 ("O46865","P0345",4,4,1050),
 ("O19003","P0345",2,2,1050),
 ("O19003","P06734",1,1,12000),
 ("O46866","P07965",1,0,8400),
 ("O46866","P07975",1,0,1050),
 ("O19008","P00001",10,5,525),
 ("O19008","P07975",5,3,1050);

