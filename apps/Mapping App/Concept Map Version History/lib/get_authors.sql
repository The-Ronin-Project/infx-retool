select distinct author from concept_maps.concept_relationship cm
join concept_maps.source_concept sc on cm.source_concept_uuid = sc.uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}