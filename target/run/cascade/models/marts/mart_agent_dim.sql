

  create  table
    "cascade"."sightings"."mart_agent_dim__dbt_tmp"
    
    
    
  as (
    

with mart_agent as (
    Select * from "cascade"."sightings"."int_agent_dim"
)

select * FROM mart_agent
  );