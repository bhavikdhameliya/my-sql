--query

--1.find out the product,which have been sold to 'lvan Bayross'

select  client_master.NAME,product_master.description,sales_order.ORDERN0 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where name = "Ivan Bayross";

+--------------+--------------+---------+
| NAME         | description  | ORDERN0 |
+--------------+--------------+---------+
| Ivan Bayross | T-Shirts     | 019001  |
| Ivan Bayross | Denim Shirts | 019001  |
| Ivan Bayross | Pull Overs   | 019001  |
| Ivan Bayross | Shirts       | 019003  |
| Ivan Bayross | Cotton jeans | 019003  |
+--------------+--------------+---------+

--2.find out the product and their quantities that will have to be deliverd in the current month.

select product_master.description,sales_order.DELYDATE,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where DELYDATE = "2002-06-27";


+-------------+------------+------------+
| description | DELYDATE   | qtyordered |
+-------------+------------+------------+
| T-Shirts    | 2002-06-27 |         10 |
+-------------+------------+------------+


--3.list the product no and description of constantly sod product.

select distinct Product_Master.description,Product_Master.productNo 
from Product_Master,sales_order_details where Product_Master.productNo=sales_order_details.productNo;

+--------------+-----------+
| description  | productNo |
+--------------+-----------+
| T-Shirts     | P00001    |
| Shirts       | P0345     |
| Cotton jeans | P06734    |
| Trousers     | P07868    |
| Pull Overs   | P07885    |
| Denim Shirts | P07965    |
| Lycra Tops   | P07975    |
+--------------+-----------+


--4.find the names of clients who have purchased 'trousers'.

select product_master.description,client_master.name
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where description = "Trousers";


+-------------+---------------+
| description | name          |
+-------------+---------------+
| Trousers    | Chhaya Bankar |
+-------------+---------------+

--5. list the product and orders from custmoers who have ordered less than 5 units of 'pull overs'.

select product_master.description,sales_order_details.qtyordered,client_master.NAME
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where qtyordered <5 and 
 description = "Pull Overs" ;


 +-------------+------------+---------------+
| description | qtyordered | NAME          |
+-------------+------------+---------------+
| Pull Overs  |          2 | Ivan Bayross  |
| Pull Overs  |          3 | Chhaya Bankar |
+-------------+------------+---------------+

--6.  find the product and their quantities for the orders placed by "ivan bayross" and "mamta muzumder".

select product_master.description,sales_order_details.qtyordered,client_master.name
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where NAME in ("Ivan Bayross" , "Mamta Muzumdar");

 +--------------+------------+----------------+
| description  | qtyordered | name           |
+--------------+------------+----------------+
| T-Shirts     |          4 | Ivan Bayross   |
| Denim Shirts |          2 | Ivan Bayross   |
| Pull Overs   |          2 | Ivan Bayross   |
| Shirts       |          2 | Ivan Bayross   |
| Cotton jeans |          1 | Ivan Bayross   |
| T-Shirts     |         10 | Mamta Muzumdar |
+--------------+------------+----------------+

--7. find the product and their quantities for the orders placed by clientno'C00001' and 'C00002'.

select product_master.description,sales_order_details.qtyordered,client_master.CLIENTN0
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo where client_master.CLIENTN0  in ("C00001" , "C00002");

 +--------------+------------+----------+
| description  | qtyordered | CLIENTN0 |
+--------------+------------+----------+
| T-Shirts     |          4 | C00001   |
| Denim Shirts |          2 | C00001   |
| Pull Overs   |          2 | C00001   |
| Shirts       |          2 | C00001   |
| Cotton jeans |          1 | C00001   |
| T-Shirts     |         10 | C00002   |
+--------------+------------+----------+