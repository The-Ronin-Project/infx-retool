select count(*) as assigned_count from concept_maps.source_concept_data
where assigned_mapper is not null
and concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}