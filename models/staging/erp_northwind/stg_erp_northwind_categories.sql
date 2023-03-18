with
    source_categories as (
        select
            cast(category_id as int) as categories_category_id
            , cast(category_name as string) as categories_category_name
            , cast(description as string) as categories_description
        from {{ source('erp', 'categories') }}
    )
select *
from source_categories