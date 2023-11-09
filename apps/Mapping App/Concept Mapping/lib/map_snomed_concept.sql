insert into concept_maps.concept_relationship
(uuid, concept_map_version_uuid, review_status, mapping_comments, source_concept_uuid, relationship_code_uuid, target_concept_code, target_concept_display, target_concept_system, target_concept_system_version_uuid, created_date, author)
values
({{uuid.v4()}}, {{urlparams.uuid}}, 'ready for review', {{mapcomments.value}}, {{source_concepts.selectedRow.data.uuid}}, {{relationship_selection.value}}, {{snomed_result_table.selectedRow.data.conceptId}}, {{snomed_result_table.selectedRow.data.fsn.term}}, 'http://snomed.info/sct', '5efa6244-32ad-4a2d-9d21-8f237499325a', now(), {{current_user.fullName}})