select id, first_name, last_name
from {{ source('raw_1', 'raw_customers') }}



    -- orders:
    --   +column_types:
    --     id: integer
    --     user_id: integer
    --     order_date: date
    --     status: string

    --     payments:
    --   +column_types:
    --     id: integer
    --     order_id: integer
    --     payment_method: string
    --     amount: number


