

with int_table as (
    Select * from "cascade"."sightings"."int_city_dim"
)

select * FROM int_table