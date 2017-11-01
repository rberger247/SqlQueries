       WITH Cte 
	    AS
     ( 

SELECT [FirstName],
       RN = ROW_NUMBER()OVER(PARTITION BY [FirstName] ORDER BY [FirstName])
   FROM [dbo].[T50Employee]

     
     )
    Delete FROM CTE WHERE RN > 1 