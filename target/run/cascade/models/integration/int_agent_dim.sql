

  create view "cascade"."sightings"."int_agent_dim__dbt_tmp" as (
    with africa as (
    Select agent_id, agent from "cascade"."sightings"."stg_africa"
),

europe as (
    Select agent_id, agent  from "cascade"."sightings"."stg_europe"
),

america as (
    Select agent_id, agent  from "cascade"."sightings"."stg_america"
),

indian as (
    Select agent_id, agent  from "cascade"."sightings"."stg_indian"
),

asia as (
    Select agent_id, agent from "cascade"."sightings"."stg_asia"
),

australia as (
    Select agent_id, agent from "cascade"."sightings"."stg_australia"

),
pacific as (
Select agent_id, agent  from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select agent_id, agent  from "cascade"."sightings"."stg_atlantic"
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
