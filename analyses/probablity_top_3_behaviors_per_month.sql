WITH behavior as (
    Select * from {{ ref('mart_behavior_dim') }}
),

sightings as (
    Select extract(Month from date_agent) as sighting_month, description_id
      from {{ ref('mart_sightings_fact') }}),

sightings_per_month as (
select COUNT(*) as total_num_of_sightings, sighting_month 
  from sightings 
  group by 2 order by 2
),

sightings_w_criteria as (
    select count(*) as num_of_sightings, sighting_month, behavior 
      from sightings s
      JOIN behavior b
      on s.description_id = b.description_id
      WHERE b.behavior = 'complaining' or b.behavior = 'out-of-control' or b.behavior = 'happy'
      GROUP BY 2,3
      order by sighting_month
)
select * from (
select sum(num_of_sightings) over (partition by sighting_month), sighting_month from sightings_w_criteria) group by 1,2 order by sighting_month
