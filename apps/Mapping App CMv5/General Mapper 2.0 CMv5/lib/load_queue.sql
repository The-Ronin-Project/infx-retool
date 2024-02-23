select * from concept_maps.source_concept_data sc 
where sc.assigned_mapper={{user_select.value}}
and sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.map_status = 'pending'
and sc.save_for_discussion = FALSE
and (sc.mapping_group={{mapping_group_select.value}} or {{mapping_group_select.value == null}})
and sc.uuid not in 
(select cr.source_concept_uuid from concept_maps.concept_relationship_data cr
join concept_maps.source_concept sc on sc.uuid=cr.source_concept_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}})
order by (CASE  
 WHEN sc.code_simple IS NOT NULL THEN sc.code_simple  
ELSE sc.code_jsonb->>'code' END) ASC