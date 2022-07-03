with source as (
    Select * from sightings.africa
),

africa as (
    Select date_witness, witness, date_agent, agent, region_hq as city_agent, country, city, latitude, longitude, has_weapon, has_hat, has_jacket, behavior
      FROM source
)

SELECT * from africa