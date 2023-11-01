select
    product_id
    , sum(quantity) as quantity
    , sum(stock) as stock
    , avg(price) as avg_price
    , sum(quantity) * avg(price) as revenue
from {{ref("int_stock_sales")}}
group by product_id
order by revenue desc