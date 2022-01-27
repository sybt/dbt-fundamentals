with orders as (
    select id as order_id
    , user_id as customer_id
    , order_date
    , status
    from `tonal-nucleus-339323.dbt_tutorial.orders`
)

select * from orders