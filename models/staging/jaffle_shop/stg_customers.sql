with customers as (
    select id as customer_id
    , first_name
    , last_name
    from `tonal-nucleus-339323.dbt_tutorial.customers`
)

select * from customers 