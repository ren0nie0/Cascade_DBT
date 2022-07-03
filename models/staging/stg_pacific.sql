with source as (
    Select * from sightings.pacific
),

pacific as (
    Select sight_on as date_witness, sighter as witness, file_on as date_agent, filer as agent, report_office as city_agent, nation as country, town as city, lat as latitude, long as longitude, has_weapon, has_hat, has_jacket, behavior
      FROM source
)

SELECT * from pacific