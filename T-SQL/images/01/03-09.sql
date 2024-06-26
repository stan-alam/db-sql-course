/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [AdventureWorks].[dbo].[Orders]

  --05
  select OrderID, OrderDate from AdventureWorks.dbo.Orders WHERE EmployeeID = 5

  --06
    select SupplierId, ContactName, ContactTitle From AdventureWorks.dbo.Suppliers WHERE ContactTitle != 'Marketing Manager'

  --07
    select ProductID, ProductName FROM AdventureWorks.dbo.Products WHERE ProductName like '%queso%'

--08
  select OrderID, CustomerID, ShipCountry from AdventureWorks.dbo.Orders WHERE ShipCountry = 'France' or ShipCountry ='Belgium'

 --09
 select OrderID, CustomerID, ShipCountry from AdventureWorks.dbo.Orders WHERE ShipCountry in ('Brazil','Argentina','Venezual')