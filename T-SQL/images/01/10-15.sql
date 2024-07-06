/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[LastName]
      ,[FirstName]
      ,[Title]
      ,[TitleOfCourtesy]
      ,[BirthDate]
      ,[HireDate]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[HomePhone]
      ,[Extension]
      ,[Notes]
      ,[ReportsTo]
      ,[PhotoPath]
  FROM [AdventureWorks].[dbo].[Employees]

  select FirstName, LastName, Title, BirthDate from AdventureWorks.dbo.Employees Order by BirthDate

  select FirstName, LastName, Title, BirthDate = convert(date, BirthDate) from AdventureWorks.dbo.Employees Order By BirthDate
  --12
  select FirstName, LastName, FullName = FirstName + ' ' + LastName from AdventureWorks.dbo.Employees
  --13
  select TotalPrice = UnitPrice * Quantity, OrderID, ProductID, UnitPrice, Quantity from AdventureWorks.dbo.OrderDetails Order By
  OrderID, ProductID
  --14
  select TotalCustomer = count(*) from AdventureWorks.dbo.Customers
  --15
  select FirstOrder = min(OrderDate) from AdventureWorks.dbo.Orders