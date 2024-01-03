select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents. 
    amount/100 as amount_in_dollars,
    created as created_at
from {{source('stripe', 'payment')}}