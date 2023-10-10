-- left join
select PRODUCT_MASTER.*, SALES_ORDER_DETAILS.ORDERNO from SALES_ORDER_DETAILS
left outer join product_master on SALES_ORDER_DETAILS.productno = product_master.productno;

+-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+---------+
| PRODUCTNO | DESCRIPTION  | PROFITPERCENT | UNITMEASURE | QTYONHAND | RECORDERLVL | SELLPRICE | COSTPRICE | ORDERNO |
+-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+---------+
| P00001    | T-SHIRTS     |             5 | PIECE       |       200 |          50 |       350 |       250 | O19001  |
| P07965    | DENIM SHIRTS |             4 | PIECE       |       100 |          40 |       350 |       250 | O19001  |
| P07885    | PULL OVERS   |             3 | PIECE       |        80 |          30 |       700 |       450 | O19001  |
| P00001    | T-SHIRTS     |             5 | PIECE       |       200 |          50 |       350 |       250 | O19002  |
| P07868    | TROUSERS     |             2 | PIECE       |       150 |          50 |       850 |       550 | O46865  |
| P07885    | PULL OVERS   |             3 | PIECE       |        80 |          30 |       700 |       450 | O46865  |
| P00001    | T-SHIRTS     |             5 | PIECE       |       200 |          50 |       350 |       250 | O46865  |
| P0345     | SHIRTS       |             6 | PIECE       |       150 |          50 |       500 |       350 | O46865  |
| P0345     | SHIRTS       |             6 | PIECE       |       150 |          50 |       500 |       350 | O19003  |
| P06734    | COTTON JEANS |             5 | PIECE       |       100 |          20 |       600 |       450 | O19003  |
| P07965    | DENIM SHIRTS |             4 | PIECE       |       100 |          40 |       350 |       250 | O46866  |
| P07975    | LYCRA TOPS   |             5 | PIECE       |        70 |          30 |       300 |       175 | O46866  |
| P00001    | T-SHIRTS     |             5 | PIECE       |       200 |          50 |       350 |       250 | O19008  |
| P07975    | LYCRA TOPS   |             5 | PIECE       |        70 |          30 |       300 |       175 | O19008  |
+-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+---------+
