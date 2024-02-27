select count(*)from concept_maps.source_concept_data sc
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and save_for_discussion = TRUE