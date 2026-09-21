<<<<<<< Updated upstream

=======
--Bulk inserting records from source(CRM,ERP) --> Bronze layer tables

COPY INTO bronze.crm_cust_info
FROM '/Volumes/datawarehouse/source/datasets/datasets/source_crm/cust_info.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS (
    'header' = 'true',
    'inferSchema' = 'true'
);

COPY INTO bronze.crm_prd_info
FROM '/Volumes/datawarehouse/source/datasets/datasets/source_crm/prd_info.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS(
    'header'='true',
    'inferschema'='true'
);

COPY INTO bronze.crm_sales_details
FROM '/Volumes/datawarehouse/source/datasets/datasets/source_crm/sales_details.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS(
    'header'='true',
    'inferschema'='true'
);

COPY INTO bronze.erp_cust_az12
FROM '/Volumes/datawarehouse/source/datasets/datasets/source_erp/CUST_AZ12.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS(
    'header'='true',
    'inferschema'='true'
);

COPY INTO bronze.erp_loc_a101
FROM '/Volumes/datawarehouse/source/datasets/datasets/source_erp/LOC_A101.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS(
    'header'='true',
    'inferschema'='true'
);

COPY INTO bronze.erp_px_cat_g1v2
FROM (
    SELECT _c0 AS id,
           _c1 AS cat,
           _c2 AS subcat,
           _c3 AS maintanance
    FROM
    '/Volumes/datawarehouse/source/datasets/datasets/source_erp/PX_CAT_G1V2.csv'
)
FILEFORMAT = CSV
FORMAT_OPTIONS(
    'header'='false',
    'inferschema'='true'
);
>>>>>>> Stashed changes
