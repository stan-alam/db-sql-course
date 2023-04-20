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

  --4
  select FirstName, LastName, HireDate from AdventureWorks.dbo.Employees where Title = 'Sales Representative'

  --5
  select FirstName, LastName, HireDate from AdventureWorks.dbo.Employees where Title = 'Sales Representative' and 
  Country = 'USA'

  