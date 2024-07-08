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