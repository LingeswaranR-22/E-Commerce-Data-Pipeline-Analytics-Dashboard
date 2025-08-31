
  create view "ecommerce"."public"."product_performance__dbt_tmp"
    
    
  as (
    

with orders as (
    select
        product_id,
        order_id,
        order_date,
        total_amount as line_revenue
    from "ecommerce"."public"."orders"
)

select
    product_id,
    count(distinct order_id) as total_orders,
    count(*) as total_items,
    sum(line_revenue) as total_revenue
from orders
group by product_id
  );