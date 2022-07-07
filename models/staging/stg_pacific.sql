with source as (
    Select * from {{source('redshift-cluster-2','pacific')}}
),

pacific as (
    Select sight_on as date_witness, 
    sighter as witness, 
    {{ dbt_utils.surrogate_key(['witness']) }} as witness_id,
    file_on as date_agent, 
    filer as agent, 
    {{ dbt_utils.surrogate_key(['agent']) }} as agent_id,
    report_office as city_agent,
    {{ dbt_utils.surrogate_key(['city_agent']) }} as city_agent_id, 
    nation as country, 
    {{ dbt_utils.surrogate_key(['country']) }} as country_id,
    town as city, 
    {{ dbt_utils.surrogate_key(['city']) }} as city_id, 
    lat as latitude, 
    long as longitude, 
    {{ dbt_utils.surrogate_key(['latitude','longitude']) }} as coordinate_id,
    has_weapon, 
    has_hat, 
    has_jacket, 
    behavior,
    {{ dbt_utils.surrogate_key(['behavior']) }} as description_id
      FROM source
)

SELECT * from pacific