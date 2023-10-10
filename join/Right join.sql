-- Right join
select PRODUCT_MASTER.DESCRIPTION, SALES_ORDER_DETAILS.ORDERNO from SALES_ORDER_DETAILS
Right outer join product_master on SALES_ORDER_DETAILS.productno = product_master.productno;

+--------------+---------+
| DESCRIPTION  | ORDERNO |
+--------------+---------+
| T-SHIRTS     | O19001  |
| T-SHIRTS     | O19002  |
| T-SHIRTS     | O46865  |
| T-SHIRTS     | O19008  |
| SHIRTS       | O46865  |
| SHIRTS       | O19003  |
| COTTON JEANS | O19003  |
| JEANS        | NULL    |
| TROUSERS     | O46865  |
| PULL OVERS   | O19001  |
| PULL OVERS   | O46865  |
| DENIM SHIRTS | O19001  |
| DENIM SHIRTS | O46866  |
| LYCRA TOPS   | O46866  |
| LYCRA TOPS   | O19008  |
| SKIRTS       | NULL    |
+--------------+---------+