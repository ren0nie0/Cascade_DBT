WITH behavior as (
    Select * from "cascade"."sightings"."mart_behavior_dim"
),

sightings as (
    Select * from "cascade"."sightings"."mart_sightings_fact"
),