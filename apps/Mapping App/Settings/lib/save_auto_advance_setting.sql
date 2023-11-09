update concept_maps.concept_map
set auto_advance_mapping = {{auto_advance_mapping_switch.value}}
where uuid = (select concept_map_uuid from concept_maps.concept_map_version where uuid={{urlparams.concept_map_version_uuid}})