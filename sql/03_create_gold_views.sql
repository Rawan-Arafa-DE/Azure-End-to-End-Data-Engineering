create view gold.calender
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Calender/',
    format = 'PARQUET'
) as q1

create view gold.Customers
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Customers/',
    format = 'PARQUET'
) as Customers

create view gold.Product_Categories
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Product_Categories/',
    format = 'PARQUET'
) as Product_Categories

create view gold.Products
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Products/',
    format = 'PARQUET'
) as Products


create view gold.Returnss
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Returns/',
    format = 'PARQUET'
) as Returnss


create view gold.Sales
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Sales/',
    format = 'PARQUET'
) as Sales


create view gold.Subcategories
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Subcategories/',
    format = 'PARQUET'
) as Subcategories


create view gold.Territories
AS
select *
from OPENROWSET (
    bulk 'https://storagedatalake1.blob.core.windows.net/silver/Territories/',
    format = 'PARQUET'
) as Territories


