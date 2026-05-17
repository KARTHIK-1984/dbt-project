{{ config(materialized = 'incremental', unique_key = 'order_id')}}
with stg_orders as 
 (
    select * from {{ref('stg_orders')}}
 )
select 
  order_id,
  cust_id,
  order_date,
  status
from stg_orders
