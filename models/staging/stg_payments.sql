select
    "ID" as id,
    "orderID" as order_id,
    -- Amount is stored as cents, converting it to dollars.
    AMOUNT / 100 as amount
-- from raw.stripe.payment
from {{ source('stripe', 'payment') }}