create view vw_CustomerSummery
SELECT 
	Firstname, Lastname, Address1, Address2, Address3, Address4, Postcode,
	MAX(OrderDate) AS LastOrderDate, SUM(OrderTotal) AS OrderTotal
FROM 
	T10Customer t10 
	INNER JOIN T20OrderHeader t20 ON T10.PKey = T20.T10FKey
GROUP BY 
	Firstname, Lastname, Address1, Address2, Address3, Address4, Postcode
HAVING 
	Firstname IS NOT NULL AND 
	Lastname IS NOT NULL AND
	Address3 IS NOT NULL