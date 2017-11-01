
SELECT 
	TOP 500 ROW_NUMBER() OVER (ORDER BY ShipDate) AS RowNum,
	OrderNumber, OrderTotal, ShipDate, ShipAddress1,
	ShipAddress2, ShipAddress3, ShipAddress4, ShipAddress5, shipzip
FROM 
	T20OrderHeader
ORDER BY 
	ShipDate