WITH behavior as (
    Select * from {{ ref('mart_behavior_dim') }}
),

sightings as (
    Select extract(Month from date_agent) as sighting_month, description_id
      from {{ ref('mart_sightings_fct') }}),

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
),

edited_sightings as (
select * from (
select sum(num_of_sightings) over (partition by sighting_month) as num_of_sightings, sighting_month from sightings_w_criteria) 
group by 1,2 
order by sighting_month),

probability_per_month as (
select ROUND(CAST(num_of_sightings as FLOAT)*1.0/CAST(total_num_of_sightings AS FLOAT),2) as probability , 
c.sighting_month as sighting_month
  from edited_sightings c
  join sightings_per_month s
  on s.sighting_month = c.sighting_month)

select sighting_month, probability from probability_per_month order by sighting_month

