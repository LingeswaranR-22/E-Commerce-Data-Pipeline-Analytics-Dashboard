{{ config(materialized='view') }}

with orders as (
    select
        order_id,
        order_date::date as order_date,
        total_amount
    from {{ source('public', 'orders') }}
)

select
    order_date,
    count(distinct order_id) as order_ct,
    sum(total_amount) as revenue
from orders
group by order_date
order by order_date
