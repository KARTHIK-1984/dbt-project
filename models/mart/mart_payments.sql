{{config(materialized='incremental', unique_key='payment_id')}}

with stg_payments as
(
select * from {{ref('stg_payments')}}
)
select
    payment_id,
    order_id,
    payment_method,
    amount
from stg_payments