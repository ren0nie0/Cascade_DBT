

  create view "cascade"."sightings"."stg_europe__dbt_tmp" as (
    with source as (
    Select * from "cascade"."sightings"."europe"
),

europe as (
    Select date_witness, 
    witness, 
    md5(cast(coalesce(cast(witness as varchar), '') as varchar)) as witness_id,
    date_filed as date_agent, 
    agent, 
    md5(cast(coalesce(cast(agent as varchar), '') as varchar)) as agent_id,
    region_hq as city_agent, 
    md5(cast(coalesce(cast(region_hq as varchar), '') as varchar)) as city_agent_id,
    country, 
    md5(cast(coalesce(cast(country as varchar), '') as varchar)) as country_id,
    city, 
    md5(cast(coalesce(cast(city as varchar), '') as varchar)) as city_id,
    lat_ as latitude, 
    long_ as longitude, 
    md5(cast(coalesce(cast(latitude as varchar), '') || '-' || coalesce(cast(longitude as varchar), '') as varchar)) as coordinate_id,
    armed as has_weapon, 
    chapeau as has_hat, 
    coat as has_jacket, 
    observed_action as behavior,
    md5(cast(coalesce(cast(behavior as varchar), '') as varchar)) as description_id
    FROM source
)

SELECT * from europe
  ) ;
