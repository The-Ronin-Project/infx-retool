select version from concept_maps.concept_map_version
where concept_map_uuid = {{urlparams.uuid}}
order by version DESC