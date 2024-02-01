select * from concept_maps.source_concept sc 
where (sc.assigned_mapper={{user_select.value}}::uuid IS NULL or sc.assigned_mapper = {{user_select.value}})
and sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.map_status = 'pending'
and sc.save_for_discussion = FALSE
and (sc.mapping_group={{mapping_group_select.value}} or {{mapping_group_select.value == null}})
and sc.uuid not in 
(select cr.source_concept_uuid from concept_maps.concept_relationship cr
join concept_maps.source_concept sc on sc.uuid=cr.source_concept_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}})
order by sc.code ASC