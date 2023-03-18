with
    source_products as (
        select
            cast(product_id	as int) as products_product_id
            , cast(supplier_id as int) as products_supplier_id
            , cast(category_id as int) as products_category_id
            , cast(product_name as string) as products_product_name
            , cast(quantity_per_unit as string)	as products_quantity_per_unit
            , cast(unit_price as numeric) as products_unit_price
            , cast(units_in_stock as int) as products_units_in_stock
            , cast(units_on_order as int) as products_units_on_order
            , cast(reorder_level as int) as	products_reorder_level
            , case
                when discontinued = 1 then true
                else false
            end as products_is_discontinued
        from {{ source('erp', 'products') }}
    )
select *
from source_products