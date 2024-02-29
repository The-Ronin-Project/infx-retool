select 
  cr.uuid as mapping_uuid, 
  rc.display as relationship_display,
  sc.uuid as source_code_uuid, 
  sc.display as source_display, 
  sc.code_simple as source_code_simple,
  sc.code_jsonb as source_code_jsonb,
  sc.system_uuid as source_system, 
  sc.comments as source_comments, 
  cr.target_concept_code,
  cr.target_concept_display,
  cr.mapping_comments,
  sc.reason_for_no_map,
  ctc.additional_data, 
  ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected, 
  pmu.first_last_name AS mapper,
  pmr.first_last_name AS assigned_reviewer,
  sc.previous_version_context,
  cr.mapped_date_time
from concept_maps.concept_relationship_data cr
join concept_maps.source_concept_data sc on sc.uuid = cr.source_concept_uuid
left join project_management.user pmu on sc.assigned_mapper=pmu.uuid
left join project_management.user pmr on sc.assigned_reviewer=pmr.uuid
join concept_maps.relationship_codes rc on cr.relationship_code_uuid=rc.uuid
left join custom_terminologies.code_data ctc on sc.custom_terminology_code_uuid = ctc.uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and ({{select_user.value}}::uuid IS NULL or sc.assigned_reviewer = {{select_user.value}})
and ((cr.review_status is null) or (cr.review_status = 'ready for review'))
and ((sc.save_for_discussion = FALSE))
and ((sc.assigned_mapper = any({{mapper_selection.value}})) or ({{mapper_selection.value.length == 0}}))