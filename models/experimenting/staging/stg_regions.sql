with regions as (

    select 
        _id as id,
        active as status,
        name_en as city,
        code as parent_code,
        country as country

    from {{ source('brantu_test', 'regions') }}
)

select * from regions