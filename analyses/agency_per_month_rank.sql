with city_agent as (
    Select * from {{ ref('mart_city_agent_dim') }}
),

sightings as (
    Select extract(Month from date_agent) as sighting_month, city_agent_id 
      from {{ ref('mart_sightings_fact') }}
   
),

sightings_per_month as (
select COUNT(*) as total_num_of_sightings, sighting_month 
  from sightings 
  group by 2 order by 2
),

sightings_per_month_per_city_agent as (
select count(*) as num_of_sightings, sighting_month, c.city_agent
  from sightings s
  join city_agent c
  on c.city_agent_id = s.city_agent_id
  group by 2,3 order by sighting_month),

probability_per_month_region as (
select ROUND(CAST(num_of_sightings as FLOAT)*1.0/CAST(total_num_of_sightings AS FLOAT),2)*10 as probability , c.sighting_month as sighting_month, city_agent
  from sightings_per_month_per_city_agent c
  join sightings_per_month s
  on s.sighting_month = c.sighting_month),

ranked_probability as (
select probability, row_number() over (partition by sighting_month order by probability desc) as ranked_probability, sighting_month, city_agent
  from probability_per_month_region),

probability_month_grouping as (
  select * 
    from ranked_probability 
    order by sighting_month asc)

select sighting_month, city_agent, probability 
  from probability_month_grouping 
  WHERE ranked_probability = (
    select min(ranked_probability) from probability_month_grouping) order by sighting_month asc
  

 