update concept_maps.concept_map
set show_target_codes = {{show_target_code_switch.value}}
where uuid = (select concept_map_uuid from concept_maps.concept_map_version where uuid={{urlparams.concept_map_version_uuid}})