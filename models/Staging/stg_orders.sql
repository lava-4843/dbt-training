select 
 --from raw_orders
 o.order_id,
 o.orderdate,
 o.shipdate,
 o.shipmode,
 CAST(o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE AS  INT) AS Profit,
 --from raw_cusomer
 c.customername,
 c.segment,
 c.country
 
FROM {{ ref('Raw_Orders') }} as o
LEFT JOIN {{ ref('Raw_customer') }} as c
on o.CUSTOMERID=c.CUSTOMERID 