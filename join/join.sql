-- join query
select  client_master.NAME,product_master.description,sales_order.ORDERN0 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERN0 = sales_order.ORDERN0 
inner join client_master on sales_order.CLIENTN0 =  client_master.CLIENTN0
 inner join  product_master on sales_order_details.productNo = product_master.productNo 


+----------------+--------------+---------+
| NAME           | description  | ORDERN0 |
+----------------+--------------+---------+
| Ivan Bayross   | T-Shirts     | 019001  |
| Ivan Bayross   | Denim Shirts | 019001  |
| Ivan Bayross   | Pull Overs   | 019001  |
| Ivan Bayross   | Shirts       | 019003  |
| Ivan Bayross   | Cotton jeans | 019003  |
| Mamta Muzumdar | T-Shirts     | 019002  |
| Chhaya Bankar  | Trousers     | 046865  |
| Chhaya Bankar  | Pull Overs   | 046865  |
| Chhaya Bankar  | T-Shirts     | 046865  |
| Chhaya Bankar  | Shirts       | 046865  |
| Ashwini Joshi  | Denim Shirts | 046866  |
| Ashwini Joshi  | Lycra Tops   | 046866  |
| Hansel Colaco  | T-Shirts     | 019008  |
| Hansel Colaco  | Lycra Tops   | 019008  |
+----------------+--------------+---------+