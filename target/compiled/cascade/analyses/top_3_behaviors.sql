WITH behavior as (
    Select * from "cascade"."sightings"."mart_behavior_dim"
),

sightings as (
    Select * from "cascade"."sightings"."mart_sightings_fct"
),

behavior_counts as (
    select COUNT(*) as behavior_count, b.behavior
      from sightings s
      join behavior b
      on s.description_id = b.description_id
      group by 2
)

select * from behavior_counts ORDER by behavior_count DESC limit 3;