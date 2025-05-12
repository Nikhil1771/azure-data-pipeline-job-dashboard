--first we need credential so we need to create master key

Create Master KEY ENCRYPTION by PASSWORD = 'Nikhil@123'


-- now we create credential 

CREATE DATABASE SCOPED CREDENTIAL MyCredential
WITH IDENTITY = 'Managed Identity';


-- now we create external table sorces

create EXTERNAL data SOURCE source_silver
with    
    (
        LOCATION = 'https://storagejobdata.dfs.core.windows.net/processedjobdata/processed_job_adb',
        CREDENTIAL = MyCredential
    )

create EXTERNAL data SOURCE source_gold
with    
    (
        LOCATION = 'https://storagejobdata.dfs.core.windows.net/gold',
        CREDENTIAL = MyCredential
    )

-- now we create file_format

CREATE EXTERNAL FILE FORMAT CsvFileFormat
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
        STRING_DELIMITER = '"',
        FIRST_ROW = 2,
        USE_TYPE_DEFAULT = TRUE
    )
);

--- now we will create the external table from silver to gold using CETAS(Create external table as select)

create EXTERNAL table gold.ext_jobs
WITH
    (
        LOCATION = 'extjobs',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = CsvFileFormat
    )
AS
select * from gold.job_data


select * from gold.ext_jobs;