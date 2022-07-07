{{ config(materialized='table') }}

with mart_agent as (
    Select * from {{ ref('int_agent_dim') }}
)

select * FROM mart_agent