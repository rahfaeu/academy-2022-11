with
    source_customers as (
        select
            cast(customer_id as string) customers_customer_id
            , cast(contact_name as string) as customers_contact_name
            , cast(contact_title as string) as customers_contact_title
            , cast(company_name as string) as customers_company_name
            , cast('address' as string) as customers_address
            , cast(postal_code as string) as customers_postal_code
            , cast(city as string) as customers_city
            , cast(region as string) as customers_region
            , cast(country as string) as customers_country
            , cast(fax as string) as customers_fax
            , cast(phone as string) as customers_phone
        from {{ source('erp', 'customers') }}
    )
select *
from source_customers