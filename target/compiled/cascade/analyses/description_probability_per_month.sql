with sightings as (
    Select extract(Month from date_agent) as sighting_month, has_weapon, has_jacket, has_hat
      from "cascade"."sightings"."mart_sightings_fct"),

sightings_per_month as (
select COUNT(*) as total_num_of_sightings, sighting_month 
  from sightings 
  group by 2 order by 2
),

sightings_w_criteria as (
    select count(*) as num_of_sightings, sighting_month, has_weapon, has_jacket, has_hat
      from sightings
      where has_jacket = TRUE AND has_weapon = TRUE AND has_hat = FALSE
      GROUP BY 2,3,4,5
      order by sighting_month
),

probability_per_month as (
select ROUND(CAST(num_of_sightings as FLOAT)*1.0/CAST(total_num_of_sightings AS FLOAT),2) as probability , 
c.sighting_month as sighting_month, has_weapon, has_jacket, has_hat
  from sightings_w_criteria c
  join sightings_per_month s
  on s.sighting_month = c.sighting_month)

select sighting_month, probability from probability_per_month order by sighting_month