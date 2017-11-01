--insert into [dbo].[StagingProduct]( productcode, productname, ListPrice)
 
--Select 
--productcode, productname, ListPrice from openrowset(Bulk 'C:\Users\Rafib\Downloads\Product-Files\productcodes.csv',
--formatfile = 'C:\Users\Rafib\Downloads\Product-Files\productFormat.fmt',
--firstrow = 2) i 
 
 Merge T40Product t
 Using StagingProduct s
 on (t.Productcode = s.productcode )
 when not matched by target then Insert (productCode, ProductName, ListPrice)
 values (s.productCode, s.ProductName, s.ListPrice)
 when matched 
 and isnull(t.productName, '')<> s.ProductName or t.listPrice <> s.listPrice then update set t.productName = s.productName, t.listPrice = s.ListPrice ;