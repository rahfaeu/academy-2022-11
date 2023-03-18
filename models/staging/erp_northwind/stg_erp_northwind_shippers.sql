with
    source_shippers as (
        select
            cast(shipper_id as int) as shippers_shipper_id
            , cast(company_name as string) as shippers_company_name
            , cast(phone as string) as shippers_phone
        from {{ source('erp', 'shippers') }}
    )
select *
from source_shippers