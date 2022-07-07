{{ config(materialized='table') }}

with mart_sightings as (
    Select * from {{ ref('int_sightings_fact') }}
)

select {{ dbt_utils.surrogate_key(['date_witness','date_agent']) }} as sighting_id, mart_sightings.* FROM mart_sightings




