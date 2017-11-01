Select Year(OrderDate) As OrderYear,
Month(OrderDate)as OrderMonth,
Day(orderDate)as OrderDay,
Count(*)as NumberOfOrders
from T20OrderHeader
where Year(OrderDate)in ( 2007, 2015) and month(OrderDate)In (7,8)
group by 
grouping sets((),
(
Year(OrderDate), Month(OrderDate), Day(OrderDate)), (Month(OrderDate)) ) 


-- with cube
Order By Year(OrderDate), Month(OrderDate),Day(OrderDate)