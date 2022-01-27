select id as payment_id
, orderid as order_id
, paymentmethod as payment_method
, status
, amount/100 as dollar_amount
, created as created_at
, _batched_at as batched_at 
from `tonal-nucleus-339323.dbt_tutorial.payments`