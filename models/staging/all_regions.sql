with africa as (
    Select * from {{source('redshift-cluster-2','stg_africa')}}
),

europe as (
    Select * from {{source('redshift-cluster-2','stg_europe')}}
),

america as (
    Select * from {{source('redshift-cluster-2','stg_america')}}
),

indian as (
    Select * from {{source('redshift-cluster-2','stg_indian')}}
),

asia as (
    Select * from {{source('redshift-cluster-2','stg_asia')}}
),

australia as (
    Select * from {{source('redshift-cluster-2','stg_australia')}}

),
pacific as (
Select * from {{source('redshift-cluster-2','stg_pacific')}}
),

atlantic as (
Select * from {{source('redshift-cluster-2','stg_atlantic')}}
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
