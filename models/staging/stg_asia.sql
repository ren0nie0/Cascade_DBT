with source as (
    Select * from {{source('redshift-cluster-2','asia')}}
),

asia as (
    Select sighting as date_witness, 
    citizen as witness, 
    {{ dbt_utils.surrogate_key(['witness']) }} as witness_id,
    报道 as date_agent, 
    officer as agent, 
    {{ dbt_utils.surrogate_key(['agent']) }} as agent_id,
    city_interpol as city_agent, 
    {{ dbt_utils.surrogate_key(['city_interpol']) }} as city_agent_id,
    nation as country, 
    {{ dbt_utils.surrogate_key(['country']) }} as country_id,
    city, 
    {{ dbt_utils.surrogate_key(['city']) }} as city_id, 
    纬度 as latitude, 
    经度 as longitude, 
    {{ dbt_utils.surrogate_key(['latitude','longitude']) }} as coordinate_id,
    has_weapon, 
    has_hat, 
    has_jacket,
    behavior,
    {{ dbt_utils.surrogate_key(['behavior']) }} as description_id
      FROM source
)

SELECT * from asia