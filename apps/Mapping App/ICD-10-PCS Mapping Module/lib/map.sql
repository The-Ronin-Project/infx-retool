insert into concept_maps.concept_relationship
(uuid, concept_map_version_uuid, review_status, mapping_comments, source_concept_uuid, relationship_code_uuid, target_concept_code, target_concept_display, target_concept_system, target_concept_system_version_uuid, created_date, author)
values
({{uuid.v4()}}, {{cm_version}}, 'ready for review', {{map_comment}}, {{source_concept}}, {{relationship}}, {{pcs_results.selectedRow.data.code}}, {{pcs_results.selectedRow.data.display}}, 'ICD-10-PCS', {{version_select.value}}, now(), {{current_user.fullName}})