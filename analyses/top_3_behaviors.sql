WITH behavior as (
    Select * from {{ ref('mart_behavior_dim') }}
),

sightings as (
    Select * from {{ ref('mart_sightings_fact') }}
),

behavior_counts as (
    select COUNT(*) as behavior_count, b.behavior
      from sightings s
      join behavior b
      on s.description_id = b.description_id
      group by 2
)

select * from behavior_counts ORDER by behavior_count DESC limit 3;