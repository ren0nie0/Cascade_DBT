

  create view "cascade"."sightings"."int_witness_dim__dbt_tmp" as (
    with africa as (
    Select witness_id, witness from "cascade"."sightings"."stg_africa"
),

europe as (
    Select witness_id, witness from "cascade"."sightings"."stg_europe"
),

america as (
    Select witness_id, witness from "cascade"."sightings"."stg_america"
),

indian as (
    Select witness_id, witness  from "cascade"."sightings"."stg_indian"
),

asia as (
    Select witness_id, witness  from "cascade"."sightings"."stg_asia"
),

australia as (
    Select witness_id, witness  from "cascade"."sightings"."stg_australia"

),
pacific as (
Select witness_id, witness from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select witness_id, witness from "cascade"."sightings"."stg_atlantic"
)

SELECT witness, witness_id FROM (
Select * From africa
UNION ALL
SELECT * FROM america
UNION ALL
SELECT * FROM europe
UNION ALL 
SELECT * FROM australia
UNION ALL
SELECT * FROM pacific
UNION ALL
SELECT * FROM asia
UNION ALL 
SELECT * FROM indian
UNION ALL 
SELECT * FROM atlantic) GROUP BY 1,2
  ) ;
