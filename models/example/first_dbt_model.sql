
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with cities as (

    select _id as id
    select active as status
    select name_en as city
    select code as code
    select parent_code as parent_code

)

select *
from brantu-test.mongo_production_brantu.cities
where id is not null
