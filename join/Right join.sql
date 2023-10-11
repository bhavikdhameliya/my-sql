-- Right join
select PRODUCT_MASTER.DESCRIPTION, SALES_ORDER_DETAILS.ORDERN0 from SALES_ORDER_DETAILS
Right outer join product_master on SALES_ORDER_DETAILS.productno = product_master.productno;

+--------------+---------+
| DESCRIPTION  | ORDERN0 |
+--------------+---------+
| T-Shirts     | 019001  |
| T-Shirts     | 019002  |
| T-Shirts     | 046865  |
| T-Shirts     | 019008  |
| Shirts       | 046865  |
| Shirts       | 019003  |
| Cotton jeans | 019003  |
| Jeans        | NULL    |
| Trousers     | 046865  |
| Pull Overs   | 019001  |
| Pull Overs   | 046865  |
| Denim Shirts | 019001  |
| Denim Shirts | 046866  |
| Lycra Tops   | 046866  |
| Lycra Tops   | 019008  |
| Skirts       | NULL    |
+--------------+---------+