
  create view "ecommerce"."public"."customer_lifetime_value__dbt_tmp"
    
    
  as (
    

with orders as (
    select
        customer_id,
        order_id,
        order_date::date as order_date,
        total_amount as order_revenue
    from "ecommerce"."public"."orders"
),
clv as (
    select
        customer_id,
        count(distinct order_id) as order_count,
        sum(order_revenue) as total_revenue,
        avg(order_revenue) as avg_order_value,
        min(order_date) as first_order_date,
        max(order_date) as last_order_date
    from orders
    group by customer_id
)

select * from clv
  );