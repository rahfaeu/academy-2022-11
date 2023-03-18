with
    source_suppliers as (
        select
            cast(supplier_id as int) as suppliers_supplier_id
            , cast(company_name as string) as suppliers_company_name
            , cast(contact_name as string) as suppliers_contact_name
            , cast(contact_title as string) as suppliers_contact_title
            , cast('address' as string) as suppliers_address
            , cast(postal_code as string) as suppliers_postal_code
            , cast(city as string) as suppliers_city
            , cast(region as string) as suppliers_region
            , cast(country as string) as suppliers_country
            , cast(fax as string) as suppliers_fax
            , cast(phone as string) as suppliers_phone
        from {{ source('erp', 'suppliers') }}
    )
select *
from source_suppliers