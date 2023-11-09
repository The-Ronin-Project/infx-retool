select * from concept_maps.source_concept
where assigned_mapper={{user_select.value}}
and concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and uuid not in (
  select distinct source_concept_uuid from concept_maps.concept_relationship
)
and no_map is not true
and (mapping_group={{mapping_group_select.value}} or {{mapping_group_select.value == null}})