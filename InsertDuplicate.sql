USE [NileTrading]
GO

INSERT INTO [dbo].[T50Employee]( FirstName,
           [LastName]
           ,[Title]
           ,[DeptID]
           ,[ManagerID]

)
           
       SELECT [FirstName]
           ,[LastName]
           ,[Title]
           ,[DeptID]
           ,[ManagerID]
	   
	   FROM	 dbo.T50Employee
	   where pkey = 16
	   
GO


