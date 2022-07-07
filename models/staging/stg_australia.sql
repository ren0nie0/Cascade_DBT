with source as (
    Select * from {{source('redshift-cluster-2','australia')}}
),

australia as (
    Select witnessed as date_witness, 
    observer as witness, 
    {{ dbt_utils.surrogate_key(['witness']) }} as witness_id,
    reported as date_agent, 
    field_chap as agent, 
    {{ dbt_utils.surrogate_key(['agent']) }} as agent_id,
    interpol_spot as city_agent, 
    {{ dbt_utils.surrogate_key(['city_agent']) }} as city_agent_id,
    nation as country, 
    {{ dbt_utils.surrogate_key(['country']) }} as country_id,
    place as city, 
    {{ dbt_utils.surrogate_key(['city']) }} as city_id,
    lat as latitude, 
    long as longitude, 
    {{ dbt_utils.surrogate_key(['latitude','longitude']) }} as coordinate_id,
    has_weapon, 
    has_hat, 
    has_jacket, 
    state_of_mind as behavior,
    {{ dbt_utils.surrogate_key(['behavior']) }} as description_id
    FROM source
)

SELECT * from australia