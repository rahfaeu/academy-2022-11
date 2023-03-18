with
    source_employees as (
        select
            cast(employee_id as int) as employees_employee_id
            , cast(reports_to as int) as employees_reports_to
            , cast(first_name as string) as employees_first_name
            , cast(last_name as string) as employees_last_name
            , cast((first_name || ' ' || last_name) as string) as employees_full_name
            , cast(title_of_courtesy as string) as employees_title_of_courtesy
            , cast(birth_date as date) as employees_birth_date
            , cast(title as string) as employees_title
            , cast(hire_date as date) as employees_hire_date
            , cast('address' as string) as employees_address
            , cast(postal_code as string) as employees_postal_code
            , cast(city as string) as employees_city
            , cast(region as string) as employees_region
            , cast(country as string) as employees_country
            , cast(home_phone as string) as employees_home_phone
            , cast(notes as string) as employees_notes
        from {{ source('erp', 'employees') }}
    )
select *
from source_employees