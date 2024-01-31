select 
 --from raw_orders
 o.OORDERID,
 o.ORDERSDATE,
 o.SHIPDATE,
 o.SHIPMODE,
 CAST(o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE AS  INT) AS Profit,
 o.ORDERSELLINGPRICE,
 o.ORDERCOSTPRICE ,
 --from raw_cusomer
 c.CUSTOMERNAME,
 c.SEGMENT,
 c.COUNTRY,
  p.CATEGORY,
 p.PRODUCTNAME,
 p.SUBCATEGORY
 
FROM {{ ref('Raw_Orders') }} as o
LEFT JOIN {{ ref('Raw_customer') }} as c
on o.CSUTOMERID=c.CUSTOMERID 
LEFT JOIN {{ ref('Raw_product') }} p
ON o.PRODUCTID=p.PRODUCTID