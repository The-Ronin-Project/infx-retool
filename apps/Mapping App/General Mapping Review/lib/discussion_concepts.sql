select cr.author, pmu.first_last_name as assigned_mapper, sc.uuid, sc.code, sc.display, sc.comments, sc.additional_context, cr.review_comment, cr.target_concept_code, cr.target_concept_display, ctc.additional_data, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected from concept_maps.source_concept as sc
join project_management.user as pmu on sc.assigned_mapper = pmu.uuid
left join concept_maps.concept_relationship cr on sc.uuid = cr.source_concept_uuid
left join custom_terminologies.code ctc on sc.custom_terminology_uuid = ctc.uuid where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and sc.save_for_discussion is TRUE