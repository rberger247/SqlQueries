Insert Into CaliforniaCustomer 
select [Firstname],
[Lastname],
[DateOfBirth],
[Address1],
[Address2],
[Address3],
[Address4],
[Postcode]
from 
[dbo].[T10Customer] t10
where Address3 = 'California'
And Not Exists(
select *
from CaliforniaCustomer c
where IsNull(t10.Firstname, '') +  IsNull(t10.Lastname, '')=
ISNULL(c.Firstname, '' ) + IsNull(c.Lastname, '')
)
