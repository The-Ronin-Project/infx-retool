insert into concept_maps.concept_relationship
(uuid, concept_map_version_uuid, review_status, mapping_comments, source_concept_uuid, relationship_code_uuid, target_concept_code, target_concept_display, target_concept_system, target_concept_system_version_uuid, created_date, author)
values
({{uuid.v4()}}, {{cm_version_uuid}}, 'ready for review', {{map_comments}}, {{source_concept}}, {{relationship}}, {{display_results.selectedRow.data.code}}, {{display_results.selectedRow.data.display}}, 'ICD-10-CM', {{version_select.value}}', now(), {{current_user.fullName}})