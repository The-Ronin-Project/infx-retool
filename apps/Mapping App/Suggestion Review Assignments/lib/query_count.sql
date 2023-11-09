select count(*) match_count from concept_maps.source_concept
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and lower(display) like {{query.value}}