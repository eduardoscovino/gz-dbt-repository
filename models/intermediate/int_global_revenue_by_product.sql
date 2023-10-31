SELECT
    *
    , avg_price * quantity as estimated_value
FROM {{ref("int_stock_sales_by_product")}}
order by estimated_value desc