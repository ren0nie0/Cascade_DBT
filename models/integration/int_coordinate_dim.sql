with africa as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_africa') }}
),

europe as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_europe') }}
),

america as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_america') }}
),

indian as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_indian') }}
),

asia as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_asia') }}
),

australia as (
    Select coordinate_id, latitude, longitude from {{ ref('stg_australia') }}

),
pacific as (
Select coordinate_id, latitude, longitude from {{ ref('stg_pacific') }}
),

atlantic as (
Select coordinate_id, latitude, longitude from {{ ref('stg_atlantic') }}
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
SELECT * FROM atlantic) GROUP BY 1,2,3