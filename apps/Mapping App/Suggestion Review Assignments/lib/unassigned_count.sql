select count(*) as unassigned_count from concept_maps.source_concept
where assigned_reviewer is null
and concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}