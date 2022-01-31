
{{ config(materialized='table') }}

with cities as (

    select 
        _id as id,
        active as status,
        name_en as city,
        code as code,
        parent_code as parent_code

    from brantu-test.mongo_production_brantu.cities
)

select *
from cities
where id is not null
