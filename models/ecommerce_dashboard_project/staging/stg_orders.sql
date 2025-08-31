{{ config(materialized='view') }}

with orders as (
    select
        order_id,
        customer_id,
        product_id,
        order_date,
        total_amount
    from {{ source('public', 'orders') }}
)

select * from orders



