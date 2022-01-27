with orders as (
    select * from {{ ref('stg_orders')}}
),

payments as (
    select * from {{ ref('stg_payments')}}
),

order_payments as (
    select order_id
    , sum(case when status = 'success' then dollar_amount end) as dollar_amount
    from payments
    group by order_id
),

final_fct_orders as (
    select o.order_id
    , o.customer_id
    , o.order_date
    , coalesce(op.dollar_amount,0) as dollar_amount
    from orders o
    left join order_payments op on o.order_id = op.order_id 
)

select * from final_fct_orders