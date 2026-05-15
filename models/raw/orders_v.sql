select id, user_id, order_date, status
from {{ source('raw_1', 'raw_orders')}}
