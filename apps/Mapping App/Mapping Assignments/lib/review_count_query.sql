select count(*) as review_count from concept_maps.source_concept
where assigned_reviewer is not null
and concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}