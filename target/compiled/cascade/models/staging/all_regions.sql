

with africa as (
    Select * from "cascade"."sightings"."stg_africa"
),

europe as (
    Select * from "cascade"."sightings"."stg_europe"
),

america as (
    Select * from "cascade"."sightings"."stg_america"
),

indian as (
    Select * from "cascade"."sightings"."stg_indian"
),

asia as (
    Select * from "cascade"."sightings"."stg_asia"
),

australia as (
    Select * from "cascade"."sightings"."stg_australia"

),
pacific as (
Select * from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select * from "cascade"."sightings"."stg_atlantic"
)

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
SELECT * FROM atlantic