select concept_relationship.uuid as mapping_uuid, rc.display as relationship_display,source_concept.uuid as source_code_uuid, source_concept.display as source_display, source_concept.code as source_code, source_concept.system as source_system, source_concept.comments as source_comments, ctc.additional_data, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected, pmu.first_last_name, * from concept_maps.concept_relationship
join concept_maps.source_concept on source_concept.uuid = source_concept_uuid
left join project_management.user pmu on source_concept.assigned_reviewer=pmu.uuid
join concept_maps.relationship_codes rc on concept_relationship.relationship_code_uuid=rc.uuid
left join custom_terminologies.code ctc on source_concept.custom_terminology_uuid = ctc.uuid
where source_concept.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and ({{select_user.value}}::uuid IS NULL or source_concept.assigned_reviewer = {{select_user.value}})
and ((concept_relationship.review_status is null) or (concept_relationship.review_status = 'ready for review'))
and ((source_concept.save_for_discussion = FALSE))