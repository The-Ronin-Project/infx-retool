Select
  (select count(*)
  from concept_maps.source_concept
  where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
  and assigned_mapper = {{mapper.value}})
  -
  (select count(distinct sc.uuid) from concept_maps.concept_relationship cr 
  join concept_maps.source_concept sc 
  on cr.source_concept_uuid = sc.uuid
  where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
  and sc.assigned_mapper = {{mapper.value}}) as unmapped