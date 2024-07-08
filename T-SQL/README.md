<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%201.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/03.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/04.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%202.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/05.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%203.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/06.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%204.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/07.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/08.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%205.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/09.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%206.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/10.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/11.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%207.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/12.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%208.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/13.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/14.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%209.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/15.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/16.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2010.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/17.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/17A.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2011.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/18.png" width="100%" height="100%">
</a>

```sql
  --19
  select OrderID , OrderDate = CONVERT(date, OrderDate), Shipper = CompanyName 
  from Orders JOIN Shippers ON Shippers.ShipperID = Orders.ShipVia
  Where
	  OrderID < 10270
  Order BY
	  OrderID
```

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/19.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2012.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/20.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2013.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2014.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2014.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2015.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/21.png" width="100%" height="100%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/T%E2%80%93sql01%20-%20page%2016.png" width="80%" height="80%">
</a>

<a>
  <img src="https://github.com/stan-alam/db-sql-course/blob/develop/T-SQL/images/01/22.png" width="100%" height="100%">
</a>

