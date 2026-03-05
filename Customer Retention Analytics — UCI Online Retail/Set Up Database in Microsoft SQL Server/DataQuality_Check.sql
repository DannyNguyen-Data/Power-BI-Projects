select 
sum(case when invoiceno is null  then 1 else 0 end) invoiceno_missing,
sum(case when stockcode is null then 1 else 0 end) stockcode_missing,
sum(case when description is null then 1 else 0 end) description_missing,
sum(case when quantity is null  then 1 else 0 end) quantity_missing,
sum(case when invoicedate is null then 1 else 0 end) invoicedate_missing,
sum(case when unitprice is null then 1 else 0 end) unitprice_missing,
sum(case when customerid is null then 1 else 0 end) customerid_missing,
sum(case when country is null then 1 else 0 end) country_missing
from sales;


SELECT 
    SUM(CASE WHEN Quantity <= 0 THEN 1 ELSE 0 END) AS negative_qty,
    SUM(CASE WHEN UnitPrice <= 0 THEN 1 ELSE 0 END) AS zero_price,
    SUM(CASE WHEN InvoiceNo LIKE 'C%' THEN 1 ELSE 0 END) AS cancelled_orders
FROM Sales;