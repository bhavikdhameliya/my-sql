-- Full join
select CLIENT_MASTER.*, SALES_ORDER.* from SALES_ORDER
inner join CLIENT_MASTER on SALES_ORDER.CLIENTNO = CLIENT_MASTER.clientno;

+----------+----------------+-----------+----------+-----------+---------+-------------+--------+---------+----------+------------+----------+------------+----------+--------+------------+-------------+
| clientNo | name           | address1  | address2 | city      | pincode | state       | baldue | orderNo | clientNO | orderDate  | delyaddr | SALESMANNO | delyType | BillYN | delyDate   | orderStatus |
+----------+----------------+-----------+----------+-----------+---------+-------------+--------+---------+----------+------------+----------+------------+----------+--------+------------+-------------+
| C00001   | Hitesh         | Bhavnagar | TaLAJA   | Bhavnagar |  395008 | Gujarat     | 150000 | O19001  | C00001   | 2004-06-12 | Mumbai   | S00001     | F        | N      | 2002-07-20 | In Process  |
| C00002   | Mamta Muzmudar | A-104     | worli    | Mumbai    |  400002 | Maharashtra |  12000 | O19002  | C00002   | 2004-06-25 | Mumbai   | S00002     | P        | N      | 2002-06-27 | Cancelled   |
| C00001   | Hitesh         | Bhavnagar | TaLAJA   | Bhavnagar |  395008 | Gujarat     | 150000 | O19003  | C00001   | 2004-04-03 | Pune     | S00001     | F        | Y      | 2002-04-07 | Fulfilled   |
| C00005   | Deepak Sharma  | D-104     | Kapodra  | Mangalore |  560050 | Karnataka   |      0 | O19008  | C00005   | 2004-05-24 | Banglore | S00004     | F        | N      | 2002-07-26 | In Process  |
| C00003   | Chhaya Bankar  | B-104     | Nariman  | Mumbai    |  400001 | Maharashtra |  14000 | O46865  | C00003   | 2004-02-18 | Banglore | S00003     | F        | Y      | 2002-02-20 | Fulfilled   |
| C00004   | Ashwini joshi  | C-104     | Bandra   | Bangalore |  560001 | Karnataka   |   5000 | O46866  | C00004   | 2004-05-20 | Pune     | S00002     | P        | N      | 2002-05-22 | Cancelled   |
+----------+----------------+-----------+----------+-----------+---------+-------------+--------+---------+----------+------------+----------+------------+----------+--------+------------+-------------+
 