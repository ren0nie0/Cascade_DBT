{{ config(materialized='table') }}

with int_table as (
    Select * from {{ ref('int_witness_dim') }}
)

select * FROM int_table