{{config(materialized = 'incremental', unique_key= 'cust_id')}}

with stg_customers as 
(
 select * from {{ ref('stg_customers') }}  
)
select 
  cust_id,
  first_name,
  last_name
from stg_customers
