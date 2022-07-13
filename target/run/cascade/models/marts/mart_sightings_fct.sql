

  create  table
    "cascade"."sightings"."mart_sightings_fct__dbt_tmp"
    
    
    
  as (
    

with mart_sightings as (
    Select * from "cascade"."sightings"."int_sightings_fct"
)

select md5(cast(coalesce(cast(date_witness as varchar), '') || '-' || coalesce(cast(date_agent as varchar), '') as varchar)) as sighting_id, mart_sightings.* FROM mart_sightings
  );