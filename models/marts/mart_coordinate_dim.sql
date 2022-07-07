{{ config(materialized='table') }}

with int_table as (
    Select * from {{ ref('int_coordinate_dim') }}
)

select * FROM int_table