{{ config(materialized='table') }}

with int_table as (
    Select * from {{ ref('int_country_dim') }}
)

select * FROM int_table