select * from concept_maps.concept_relationship as cr
join (select uuid as sc_uuid, code as sc_code, display as sc_display, system as sc_system, assigned_reviewer, concept_map_version_uuid from concept_maps.source_concept) 
as sc on (cr.source_concept_uuid = sc.sc_uuid)
join (select uuid as rel_uuid, code as rel_code, display as rel_display from concept_maps.relationship_codes) 
as rc on (cr.relationship_code_uuid = rc.rel_uuid)
join (select uuid as asr_uuid, first_last_name as asr_name from project_management.user)
as asr on (sc.assigned_reviewer = asr_uuid)
where sc.concept_map_version_uuid = {{urlparams.uuid}}
and sc.code= {{concept_map_review.selectedRow.data.}}
and asr_uuid = {{reviewerNameSelection2.value}}