Create SCHEMA RetailOnline;
GO

DROP TABLE IF EXISTS RetailOnline.Sales;
GO

CREATE TABLE RetailOnline.Sales (
    InvoiceNo NVARCHAR(20),
    StockCode NVARCHAR(20),
    Description NVARCHAR(500) NULL,
    Quantity INT,
    InvoiceDate DATETIME2,
    UnitPrice DECIMAL(10,2),
    CustomerID INT NULL,
    Country NVARCHAR(100)
);