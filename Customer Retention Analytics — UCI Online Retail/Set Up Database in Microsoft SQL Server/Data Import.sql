BULK INSERT Sales
FROM 'C:\Users\New\OneDrive\Desktop\Cohort Analysis\Online Retail.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);