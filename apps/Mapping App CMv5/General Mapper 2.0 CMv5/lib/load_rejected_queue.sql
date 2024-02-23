select sc.* from concept_maps.source_concept_data sc
join concept_maps.concept_relationship_data cr
on cr.source_concept_uuid = sc.uuid
where sc.assigned_mapper = {{user_select.value}}
and sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and sc.save_for_discussion = FALSE
and cr.review_status = 'rejected'
order by (CASE  
 WHEN sc.code_simple IS NOT NULL THEN sc.code_simple  
ELSE sc.code_jsonb->>'code' END) ASC