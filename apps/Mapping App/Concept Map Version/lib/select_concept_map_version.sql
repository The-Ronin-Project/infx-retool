select vs.title as source_title, vs2.title as target_title, cmv.* from concept_maps.concept_map_version cmv
left join value_sets.value_set_version vsv on cmv.source_value_set_version_uuid=vsv.uuid
left join value_sets.value_set vs on vsv.value_set_uuid=vs.uuid
left join value_sets.value_set_version vsv2 on cmv.target_value_set_version_uuid=vsv2.uuid
left join value_sets.value_set vs2 on vsv.value_set_uuid=vs2.uuid
where cmv.concept_map_uuid = {{urlparams.uuid}}
order by version DESC