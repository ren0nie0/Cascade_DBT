with source as (
    Select * from sightings.europe
),

europe as (
    Select date_witness, witness, date_filed as date_agent, agent, region_hq as city_agent, country, city, lat_ as latitude, long_ as longitude, armed as has_weapon, chapeau as has_hat, coat as has_jacket, observed_action as behavior
      FROM source
)

SELECT * from europe