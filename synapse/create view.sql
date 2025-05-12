create view gold.job_data
as
SELECT *
FROM OPENROWSET(
    BULK 'https://storagejobdata.dfs.core.windows.net/processedjobdata/processed_job_adb/part-00000-tid-7680056175524488906-08b1f1e4-416c-4c78-9a35-ba94b01dd124-15-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) WITH (
    id NVARCHAR(200),
    company NVARCHAR(200),
    position NVARCHAR(200),
    location NVARCHAR(200),
    salary_min numeric,
    salary_max numeric,
    date date
    
) AS jobs

SELECT * from gold.job_data;


