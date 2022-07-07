{{ config(materialized='table') }}

with int_table as (
    Select * from {{ ref('int_city_agent_dim') }}
)

select * FROM int_table