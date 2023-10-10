-- join query
select CLIENT_MASTER.name, PRODUCT_MASTER.DESCRIPTION,SALES_ORDER.ORDERNO  from SALES_ORDER_DETAILS 
inner join SALES_ORDER on SALES_ORDER_DETAILS.ORDERNO = SALES_ORDER.ORDERNO
inner join CLIENT_MASTER on SALES_ORDER.CLIENTNO = CLIENT_MASTER.CLIENTNO
inner join PRODUCT_MASTER on SALES_ORDER_DETAILS.wO = PRODUCT_MASTER.PRODUCTNO;

+----------------+--------------+---------+
| name           | DESCRIPTION  | ORDERNO |
+----------------+--------------+---------+
| Hitesh         | T-SHIRTS     | O19001  |
| Hitesh         | DENIM SHIRTS | O19001  |
| Hitesh         | PULL OVERS   | O19001  |
| Hitesh         | SHIRTS       | O19003  |
| Hitesh         | COTTON JEANS | O19003  |
| Mamta Muzmudar | T-SHIRTS     | O19002  |
| Chhaya Bankar  | TROUSERS     | O46865  |
| Chhaya Bankar  | PULL OVERS   | O46865  |
| Chhaya Bankar  | T-SHIRTS     | O46865  |
| Chhaya Bankar  | SHIRTS       | O46865  |
| Ashwini joshi  | DENIM SHIRTS | O46866  |
| Ashwini joshi  | LYCRA TOPS   | O46866  |
| Deepak Sharma  | T-SHIRTS     | O19008  |
| Deepak Sharma  | LYCRA TOPS   | O19008  |
+----------------+--------------+---------+