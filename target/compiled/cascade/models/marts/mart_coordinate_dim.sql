

with int_table as (
    Select * from "cascade"."sightings"."int_coordinate_dim"
)

select * FROM int_table