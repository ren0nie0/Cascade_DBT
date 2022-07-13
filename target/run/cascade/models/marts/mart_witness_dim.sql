

  create  table
    "cascade"."sightings"."mart_witness_dim__dbt_tmp"
    
    
    
  as (
    

with int_table as (
    Select * from "cascade"."sightings"."int_witness_dim"
)

select * FROM int_table
  );