

USE [NileTrading]
GO
BEGIN TRANSACTION tran1
BEGIN
    try

INSERT INTO [dbo].[T10Customer]
           ([Firstname]
           ,[Lastname]
           ,[DateOfBirth]
           ,[Address1]
           ,[Address2]
           ,[Address3]
           ,[Address4]
           ,[Postcode])
SELECT 
[Firstname]
           ,[Lastname]
           ,[DateOfBirth]
           ,[Address1]
           ,[Address2]
           ,[Address3]
           ,[Address4]
           ,[Postcode]
		   FROM dbo.T10Customer 
		   WHERE PKey = 2
 COMMIT TRANSACTION
		  
		    END TRY 

  BEGIN Catch  
		   ROLLBACK
		
		   TRANSACTION tran1

		   END CATCH
		  
		


 
GO


