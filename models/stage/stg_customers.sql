with raw_customers as 
(
 select * from {{ ref('raw_customers') }}  
)
select 
  try_to_number(id) as cust_id,
  first_name,
  last_name
from raw_customers
