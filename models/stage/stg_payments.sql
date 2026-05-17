
with raw_payments as 
(
 select * from {{ ref('raw_payments') }}  
)
select 
  try_to_number(id) as payment_id,
  order_id,
  payment_method,
  amount
from raw_payments 