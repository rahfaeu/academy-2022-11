with
    source_orders as (
        select
            cast(order_id as int) order_id
            , cast(employee_id as int) as order_employee_id
            , cast(customer_id as string) as order_customer_id
            , cast(ship_via as int) as order_ship_via
            , cast(order_date as date) as order_order_date
            , cast(freight as numeric) as order_freight
            , cast(ship_name as string) as order_ship_name
            , cast(ship_address as string) as order_ship_address
            , cast(ship_postal_code as string) as order_ship_postal_code
            , cast(ship_city as string) as order_ship_city
            , cast(ship_region as string) as order_ship_region
            , cast(ship_country as string) as order_ship_country
            , cast(shipped_date as date) as order_shipped_date
            , cast(required_date as date) as order_required_date
        from {{ source('erp', 'orders') }}
    )

select *
from source_orders