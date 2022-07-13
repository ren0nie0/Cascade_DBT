

with int_table as (
    Select * from "cascade"."sightings"."int_country_dim"
)

select * FROM int_table