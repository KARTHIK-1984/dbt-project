with raw_orders as 
(
 select * from {{ ref('raw_orders') }}  
)
select 
    try_to_number(id) as order_id,
    try_to_number(user_id) as cust_id,
    order_date,
    status
from raw_orders
