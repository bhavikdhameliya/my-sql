-- inner join
select CLIENT_MASTER.name from SALES_ORDER
inner join CLIENT_MASTER on SALES_ORDER.CLIENTN0 = CLIENT_MASTER.CLIENTN0;

+----------------+
| name           |
+----------------+
| Ivan Bayross   |
| Ivan Bayross   |
| Mamta Muzumdar |
| Chhaya Bankar  |
| Ashwini Joshi  |
| Hansel Colaco  |
+----------------+