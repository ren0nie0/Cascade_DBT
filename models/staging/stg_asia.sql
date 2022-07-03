with source as (
    Select * from sightings.asia
),

asia as (
    Select sighting as date_witness, citizen as witness, 报道 as date_agent, officer as agent, city_interpol as city_agent, nation as country, city, 纬度 as latitude, 经度 as longitude, has_weapon, has_hat, has_jacket, behavior
      FROM source
)

SELECT * from asia