SELECT
    product_id
    , SUM(quantity) as quantity
    , SUM(stock) as stock
    , AVG(price) as avg_price
FROM {{ref("int_stock_sales")}}
GROUP BY product_id