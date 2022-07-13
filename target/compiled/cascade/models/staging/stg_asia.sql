with source as (
    Select * from "cascade"."sightings"."asia"
),

asia as (
    Select sighting as date_witness, 
    citizen as witness, 
    md5(cast(coalesce(cast(witness as varchar), '') as varchar)) as witness_id,
    报道 as date_agent, 
    officer as agent, 
    md5(cast(coalesce(cast(agent as varchar), '') as varchar)) as agent_id,
    city_interpol as city_agent, 
    md5(cast(coalesce(cast(city_interpol as varchar), '') as varchar)) as city_agent_id,
    nation as country, 
    md5(cast(coalesce(cast(country as varchar), '') as varchar)) as country_id,
    city, 
    md5(cast(coalesce(cast(city as varchar), '') as varchar)) as city_id, 
    纬度 as latitude, 
    经度 as longitude, 
    md5(cast(coalesce(cast(latitude as varchar), '') || '-' || coalesce(cast(longitude as varchar), '') as varchar)) as coordinate_id,
    has_weapon, 
    has_hat, 
    has_jacket,
    behavior,
    md5(cast(coalesce(cast(behavior as varchar), '') as varchar)) as description_id
      FROM source
)

SELECT * from asia