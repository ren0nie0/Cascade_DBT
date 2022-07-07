{{ config(materialized='table') }}

with int_table as (
    Select * from {{ ref('int_behavior_dim') }}
)

select * FROM int_table