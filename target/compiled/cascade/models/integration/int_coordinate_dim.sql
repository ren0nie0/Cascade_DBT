with africa as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_africa"
),

europe as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_europe"
),

america as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_america"
),

indian as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_indian"
),

asia as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_asia"
),

australia as (
    Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_australia"

),
pacific as (
Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select coordinate_id, latitude, longitude, city_id from "cascade"."sightings"."stg_atlantic"
)
select * from (
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
SELECT * FROM atlantic) GROUP BY 1,2,3,4