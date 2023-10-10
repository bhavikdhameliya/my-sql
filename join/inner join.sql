-- inner join
select CLIENT_MASTER.name from SALES_ORDER
inner join CLIENT_MASTER on SALES_ORDER.CLIENTNO = CLIENT_MASTER.CLIENTNO;

+----------------+
| name           |
+----------------+
| Hitesh         |
| Hitesh         |
| Mamta Muzmudar |
| Chhaya Bankar  |
| Ashwini joshi  |
| Deepak Sharma  |
+----------------+