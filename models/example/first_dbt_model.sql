
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with cities as (

    select 
        _id as id,
        active as status,
        name_en as city,
        code as code,
        parent_code as parent_code

    from brantu-test.mongo_brantu.cities
)

select *
from cities
where id is not null
