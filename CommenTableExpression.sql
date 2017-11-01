--;With cteOrder
--(OrderAge , OrderNumber, OrderTotal, ShipDate)
--As 
--(
--Select
--DATEDIFF(dd, [OrderDate], GetDate()), OrderNumber, OrderTotal, ShipDate
--from 
--T20OrderHeader
--)
--select * from cteOrder
--where OrderAge > 7000
WITH cteHierarchy (ManagerID, EmployeeID, Title, DeptID, [Level])
AS
(
	-- Anchor member definition
    SELECT 
		e.ManagerID, e.PKey, e.Title, e.DeptID, 0
    FROM 
		T50Employee e
    WHERE 
		ManagerID IS NULL
    UNION ALL
	-- Recursive member definition
    SELECT 
		e.ManagerID, e.PKey, e.Title, e.DeptID, [Level] + 1
    FROM 
		T50Employee e
		INNER JOIN cteHierarchy h ON e.ManagerID = h.EmployeeID
)
SELECT 
	ManagerID, EmployeeID, Title, DeptID, [Level]
FROM 
	cteHierarchy

