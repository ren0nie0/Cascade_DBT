

with int_table as (
    Select * from "cascade"."sightings"."int_city_agent_dim"
)

select * FROM int_table