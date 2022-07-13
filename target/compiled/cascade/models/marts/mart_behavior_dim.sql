

with int_table as (
    Select * from "cascade"."sightings"."int_behavior_dim"
)

select * FROM int_table