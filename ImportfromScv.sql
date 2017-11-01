
-- generate .fmt file for csv import
--    bcp NileTrading.dbo.T40Product format nul -c -t, -r \n -f C:\Users\Rafib\Downloads\Product-Files\productFormat.fmt 
--  -S (LocalDB)\MSSQLLocalDB –T
--

Bulk Insert t40Product
from 'C:\Users\Rafib\Downloads\Product-Files\productcodes.csv'
with 
(
FirstRow = 2 ,
formatfile = 'C:\Users\Rafib\Downloads\Product-Files\productFormat.fmt' 
)
Insert into T40Product
 
Select productcode, productname, ListPrice
listPrice from openrowset(Bulk 'C:\Users\Rafib\Downloads\Product-Files\productcodes.csv',
formatfile = 'C:\Users\Rafib\Downloads\Product-Files\productFormat.fmt',
firstrow = 2) i 
where listPrice > 20.0