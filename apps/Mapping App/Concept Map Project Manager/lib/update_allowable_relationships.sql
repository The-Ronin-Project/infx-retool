insert INTO concept_maps.concept_map_version_terminologies (concept_map_version_uuid, terminology_version_uuid, context, special_use_enabled)
values ({{urlparams.uuid}}, {{relationship_selector.value}}, 'relationship_system', {{allow_special_use_codes.value}})