select * from concept_maps.concept_map
where uuid in (select concept_map_uuid from concept_maps.concept_map_version where uuid={{urlparams.concept_map_version_uuid}})