
  create view "ecommerce"."public"."stg_orders__dbt_tmp"
    
    
  as (
    

with orders as (
    select
        order_id,
        customer_id,
        product_id,
        order_date,
        total_amount
    from "ecommerce"."public"."orders"
)

select * from orders
  );