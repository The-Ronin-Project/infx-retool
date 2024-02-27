update concept_maps.concept_map
set auto_fill_search = {{auto_fill_search_switch.value}}
where uuid = (select concept_map_uuid from concept_maps.concept_map_version where uuid={{urlparams.concept_map_version_uuid}})