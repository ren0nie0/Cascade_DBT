

  create  table
    "cascade"."sightings"."mart_country_dim__dbt_tmp"
    
    
    
  as (
    

with int_table as (
    Select * from "cascade"."sightings"."int_country_dim"
)

select * FROM int_table
  );