       WITH Cte 
	    AS
     ( 

SELECT [FirstName],
       RN = ROW_NUMBER()OVER(PARTITION BY [FirstName] ORDER BY [FirstName])
   FROM [dbo].[T50Employee]

     
     )
        SELECT *  FROM CTE WHERE RN > 1 