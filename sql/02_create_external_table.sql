CREATE DATABASE SCOPED CREDENTIAL MyCredential
WITH
    IDENTITY = 'Managed Identity'

create EXTERNAL DATA SOURCE source_silver
with (
    LOCATION = 'https://storagedatalake1.blob.core.windows.net/silver',
    CREDENTIAL = MyCredential
)

create EXTERNAL DATA SOURCE source_gold
with (
    LOCATION = 'https://storagedatalake1.blob.core.windows.net/gold',
    CREDENTIAL = MyCredential
)

CREATE EXTERNAL FILE FORMAT format_parquet
with(
    FORMAT_TYPE = PARQUET ,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)




CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.Sales


select * from gold.extsales



