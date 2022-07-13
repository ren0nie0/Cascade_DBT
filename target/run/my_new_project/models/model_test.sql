

  create view "cascade"."sightings"."model_test__dbt_tmp" as (
    with num_sightings as (
    select sighting, count(*) as num_sightings from sightings.asia group by sighting),

australia_sightings as (
    select witnessed, count(*) as australia_num_sightings from sightings.australia group by witnessed)


select num_sightings.*, australia_sightings.* from num_sightings, australia_sightings
  ) ;
