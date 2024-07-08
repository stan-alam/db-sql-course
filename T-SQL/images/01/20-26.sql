/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [AdventureWorks].[dbo].[Customers]
  -- 17
  Use AdventureWorks
  select ContactTitle, TotalContactTitles = count (*) from Customers
  Group By ContactTitle
  Order By count (*)

  --18
  select ProductID, ProductName, Supplier = CompanyName
  from Products
  Join Suppliers on Products.SupplierID = Suppliers.SupplierID

  --19
  select OrderID , OrderDate = CONVERT(date, OrderDate), Shipper = CompanyName 
  from Orders JOIN Shippers ON Shippers.ShipperID = Orders.ShipVia
  Where
	OrderID < 10270
Order BY
	OrderID
--20

select CategoryName, TotalProducts = count(*) From Products JOIN Categories ON Products.CategoryID = Categories.CategoryID
Group BY CategoryName
Order BY
	count(*) DESC

--21
select Country, City, TotalCustomers = Count(*) from Customers
Group By Country, City
Order By count(*) -- lookup why By can be in lowercase in some instances

--22A
select ProductID 
      ,ProductName
	  ,UnitsInStock
	  ,ReorderLevel 
From Products
Where 
	UnitsInStock <= ReorderLevel
Order by ProductID

--23
select
	ProductID
	,ProductName
	,UnitsInStock
	,UnitsOnOrder
	,ReorderLevel
From Products
Where
	UnitsInStock <= ReorderLevel
Order by ProductID

--24
Select 
	CustomerID
	,CompanyName
	,Region
From Customers
Order By
	Case when Region is null then 1
		else 0
	End
	,Region
	,CustomerID

--25 
-- High Freight Charges
select Top 3
	ShipCountry
	,AverageFreight = Avg(freight)
From Orders
Group By ShipCountry
Order By AverageFreight desc

--26 High Freight Charges for 2015
select Top 3
	ShipCountry
	,AverageFreight = avg(freight)
From Orders
Where
	OrderDate >= '20150101'
Group By ShipCountry
Order By AverageFreight desc
--26A using the Year order Date function
Select Top 3
	ShipCountry
	,AvgFreight = avg(freight)
From Orders
Where
	year(OrderDate) = 2015
Group By ShipCountry
Order By AvgFreight desc
