Delete 
c
 from CaliforniaCustomer c
inner join T10Customer t10
 on ISNULL(c.Firstname, '') + ISNULL(c.lastname,'')	+ cast(c.DateOfBirth as varchar)
 
+ isNUll(c.address1, '')  = ISNULL(t10.Firstname, '') + ISNULL(t10.lastname,'')	+ cast(t10.DateOfBirth as varchar)
 
+ isNUll(t10.address1, '')
inner join T20OrderHeader t20 on t10.pkey  = t20.T10FKey
where t20.OrderStatus = 1
 
