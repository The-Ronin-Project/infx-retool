select count(DISTINCT sc.uuid) from concept_maps.source_concept sc 
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and map_status = 'reviewed'
and no_map=true