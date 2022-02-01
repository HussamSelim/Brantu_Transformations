with cities as (

    select 
        _id as id,
        active as status,
        name_en as city,
        code as code,
        parent_code as parent_code

    from {{ source('brantu_test', 'cities') }}
)

select * from cities