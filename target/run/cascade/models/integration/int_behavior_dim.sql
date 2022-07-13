

  create view "cascade"."sightings"."int_behavior_dim__dbt_tmp" as (
    with africa as (
    Select description_id, behavior from "cascade"."sightings"."stg_africa"
),

europe as (
    Select description_id, behavior from "cascade"."sightings"."stg_europe"
),

america as (
    Select description_id, behavior from "cascade"."sightings"."stg_america"
),

indian as (
    Select description_id, behavior from "cascade"."sightings"."stg_indian"
),

asia as (
    Select description_id, behavior from "cascade"."sightings"."stg_asia"
),

australia as (
    Select description_id, behavior from "cascade"."sightings"."stg_australia"

),
pacific as (
Select description_id, behavior from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select description_id, behavior from "cascade"."sightings"."stg_atlantic"
)

SELECT * FROM(
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
