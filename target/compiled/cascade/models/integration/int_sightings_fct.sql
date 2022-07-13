with africa as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id from "cascade"."sightings"."stg_africa"
),

europe as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_europe"
),

america as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id from "cascade"."sightings"."stg_america"
),

indian as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_indian"
),

asia as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_asia"
),

australia as (
    Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_australia"

),
pacific as (
Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_pacific"
),

atlantic as (
Select date_witness, date_agent, has_weapon, has_hat, has_jacket, agent_id, city_agent_id, country_id, city_id, coordinate_id, description_id  from "cascade"."sightings"."stg_atlantic"
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