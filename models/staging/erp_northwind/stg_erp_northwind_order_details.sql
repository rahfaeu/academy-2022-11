with
    source_order_details as (
        select
            cast(order_id as int) as order_details_order_id
            , cast(product_id as int) as order_details_product_id
            , cast(discount as numeric) as order_details_discount
            , cast(unit_price as numeric) as order_details_unit_price
            , cast(quantity as int) as order_details_quantity
        from {{ source('erp', 'order_details') }}
    )
select *
from source_order_details