with source as (
    Select * from {{source('redshift-cluster-2','europe')}}
),

europe as (
    Select date_witness, 
    witness, 
    {{ dbt_utils.surrogate_key(['witness']) }} as witness_id,
    date_filed as date_agent, 
    agent, 
    {{ dbt_utils.surrogate_key(['agent']) }} as agent_id,
    region_hq as city_agent, 
    {{ dbt_utils.surrogate_key(['region_hq']) }} as city_agent_id,
    country, 
    {{ dbt_utils.surrogate_key(['country']) }} as country_id,
    city, 
    {{ dbt_utils.surrogate_key(['city']) }} as city_id,
    lat_ as latitude, 
    long_ as longitude, 
    {{ dbt_utils.surrogate_key(['latitude','longitude']) }} as coordinate_id,
    armed as has_weapon, 
    chapeau as has_hat, 
    coat as has_jacket, 
    observed_action as behavior,
    {{ dbt_utils.surrogate_key(['behavior']) }} as description_id
    FROM source
)

SELECT * from europe