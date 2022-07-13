with source as (
    Select * from "cascade"."sightings"."australia"
),

australia as (
    Select witnessed as date_witness, 
    observer as witness, 
    md5(cast(coalesce(cast(witness as varchar), '') as varchar)) as witness_id,
    reported as date_agent, 
    field_chap as agent, 
    md5(cast(coalesce(cast(agent as varchar), '') as varchar)) as agent_id,
    interpol_spot as city_agent, 
    md5(cast(coalesce(cast(city_agent as varchar), '') as varchar)) as city_agent_id,
    nation as country, 
    md5(cast(coalesce(cast(country as varchar), '') as varchar)) as country_id,
    place as city, 
    md5(cast(coalesce(cast(city as varchar), '') as varchar)) as city_id,
    lat as latitude, 
    long as longitude, 
    md5(cast(coalesce(cast(latitude as varchar), '') || '-' || coalesce(cast(longitude as varchar), '') as varchar)) as coordinate_id,
    has_weapon, 
    has_hat, 
    has_jacket, 
    state_of_mind as behavior,
    md5(cast(coalesce(cast(behavior as varchar), '') as varchar)) as description_id
    FROM source
)

SELECT * from australia