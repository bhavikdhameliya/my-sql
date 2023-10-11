-- left join
select PRODUCT_MASTER.*, SALES_ORDER_DETAILS.ORDERN0 from SALES_ORDER_DETAILS
left outer join product_master on SALES_ORDER_DETAILS.productno = product_master.productno;

+-----------+--------------+---------------+-------------+-----------+------------+-----------+-----------+---------+
| productNo | description  | ProfitPercent | UnitMeasure | QtyOnHand | ReorderLv1 | sellPrice | costPrice | ORDERN0 |
+-----------+--------------+---------------+-------------+-----------+------------+-----------+-----------+---------+
| P00001    | T-Shirts     |             5 | Piece       |       200 |         50 |       300 |       250 | 019001  |
| P07965    | Denim Shirts |             4 | Piece       |       100 |         40 |       350 |       250 | 019001  |
| P07885    | Pull Overs   |           2.5 | Piece       |        80 |         30 |       700 |       450 | 019001  |
| P00001    | T-Shirts     |             5 | Piece       |       200 |         50 |       300 |       250 | 019002  |
| P07868    | Trousers     |             2 | Piece       |       150 |         50 |       850 |       550 | 046865  |
| P07885    | Pull Overs   |           2.5 | Piece       |        80 |         30 |       700 |       450 | 046865  |
| P00001    | T-Shirts     |             5 | Piece       |       200 |         50 |       300 |       250 | 046865  |
| P0345     | Shirts       |             6 | Piece       |       150 |         50 |       500 |       350 | 046865  |
| P0345     | Shirts       |             6 | Piece       |       150 |         50 |       500 |       350 | 019003  |
| P06734    | Cotton jeans |             5 | Piece       |       100 |         20 |       600 |       450 | 019003  |
| P07965    | Denim Shirts |             4 | Piece       |       100 |         40 |       350 |       250 | 046866  |
| P07975    | Lycra Tops   |             5 | Piece       |        70 |         30 |       300 |       175 | 046866  |
| P00001    | T-Shirts     |             5 | Piece       |       200 |         50 |       300 |       250 | 019008  |
| P07975    | Lycra Tops   |             5 | Piece       |        70 |         30 |       300 |       175 | 019008  |
+-----------+--------------+---------------+-------------+-----------+------------+-----------+-----------+---------+