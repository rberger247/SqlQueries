/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.FirstName AS firstname,  A.[LastName] AS EmployeeName, B.[LastName] AS  EmployerName
FROM [dbo].[T50Employee] A, [dbo].[T50Employee] B
WHERE A.ManagerID = B.PKey

