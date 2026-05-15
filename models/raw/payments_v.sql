select id, order_id, payment_method, amount
from {{ source('raw_1', 'raw_payments')}}
