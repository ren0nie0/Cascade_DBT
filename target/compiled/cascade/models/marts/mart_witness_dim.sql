

with int_table as (
    Select * from "cascade"."sightings"."int_witness_dim"
)

select * FROM int_table