with cities as (
    select * from {{ ref('stg_cities') }}
),

regions as (
    select * from {{ ref('stg_regions') }}
),

final as (
    select 
        cities.status,
        cities.city,
        cities.code,
        cities.parent_code,
        regions.country,
        cities.id

    from cities
    left join regions using (parent_code)
)

select * from final