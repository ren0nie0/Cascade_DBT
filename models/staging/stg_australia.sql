with source as (
    Select * from sightings.australia
),

australia as (
    Select witnessed as date_witness, observer as witness, reported as date_agent, field_chap as agent, interpol_spot as city_agent, nation as country, place as city, lat as latitude, long as longitude, has_weapon, has_hat, has_jacket, state_of_mind as behavior
      FROM source
)

SELECT * from australia