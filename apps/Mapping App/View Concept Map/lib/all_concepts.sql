select cr.uuid as mapping_uuid, sc.*, cr.*, rc.display as relationship_display, ctc.additional_data, ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected from concept_maps.source_concept sc
left join concept_maps.concept_relationship cr on sc.uuid=cr.source_concept_uuid
left join concept_maps.relationship_codes rc on rc.uuid=cr.relationship_code_uuid
left join custom_terminologies.code ctc on sc.custom_terminology_uuid=ctc.uuid
WHERE sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and ((lower(sc.code) like lower({{'%' + source_code_filter_input.value + '%'}})) or ({{source_code_filter_input.value==''}}))
and ((lower(sc.display) like lower({{'%' + source_display_filter_input.value + '%'}})) or ({{source_display_filter_input.value==''}}))
and ((lower(cr.target_concept_code) like lower({{'%' + target_code_input.value + '%'}})) or ({{target_code_input.value==''}}))
and ((lower(cr.target_concept_display) like lower({{'%' + display_code_input.value + '%'}})) or ({{display_code_input.value==''}}))
and ((lower(sc.comments) like lower({{'%' + source_comments_input.value + '%'}})) or ({{source_comments_input.value==''}}))
and ((lower(cr.mapping_comments) like lower({{'%' + mapping_comments_input.value + '%'}})) or ({{mapping_comments_input.value==''}}))
and ((lower(cr.review_comment) like lower({{'%' + review_comment_input.value + '%'}})) or ({{review_comment_input.value==''}}))
and ((cr.relationship_code_uuid = any({{relationship_filter_select.value}})) or ({{relationship_filter_select.value.length == 0}}))
and ((sc.map_status = any({{map_status_select.value}})) or ({{map_status_select.value.length == 0}}))
and ((cr.review_status = any({{review_status_select.value}})) or ({{review_status_select.value.length == 0}}))
and ((sc.assigned_mapper = any({{mapper_select.value}})) or ({{mapper_select.value.length == 0}}))
and ((sc.assigned_reviewer = any({{reviewer_select.value}})) or ({{reviewer_select.value.length == 0}}))
and ((sc.mapping_group = any({{mapping_group_select.value}})) or ({{mapping_group_select.value.length == 0}}))
and ((sc.reason_for_no_map = any({{no_map_reason_select.value}})) or ({{no_map_reason_select.value.length == 0}}))
and ((cr.target_concept_code is null and cr.target_concept_display is null) or ({{show_only_unmapped.value == false}}))
and ((cr.target_concept_code is not null and cr.target_concept_display is not null) or ({{show_only_mapped.value == false}}))
order by (case when {{sorting_column_select.value}} = 'source_code' and {{sort_direction_select.value}} = 'ASC' then sc.code end) asc,
(case when {{sorting_column_select.value}} = 'source_code' and {{sort_direction_select.value}} = 'DESC' then sc.code end) desc,
(case when {{sorting_column_select.value}} = 'relationship' and {{sort_direction_select.value}} = 'ASC' then cr.relationship_code_uuid end) asc,
(case when {{sorting_column_select.value}} = 'relationship' and {{sort_direction_select.value}} = 'DESC' then cr.relationship_code_uuid end) desc,
(case when {{sorting_column_select.value}} = 'map_status' and {{sort_direction_select.value}} = 'ASC' then sc.map_status end) asc,
(case when {{sorting_column_select.value}} = 'map_status' and {{sort_direction_select.value}} = 'DESC' then sc.map_status end) desc,
(case when {{sorting_column_select.value}} = 'mapper' and {{sort_direction_select.value}} = 'ASC' then cr.author end) asc,
(case when {{sorting_column_select.value}} = 'mapper' and {{sort_direction_select.value}} = 'DESC' then cr.author end) desc,
(case when {{sorting_column_select.value}} = 'reviewer' and {{sort_direction_select.value}} = 'ASC' then cr.reviewed_by end) asc,
(case when {{sorting_column_select.value}} = 'reviewer' and {{sort_direction_select.value}} = 'DESC' then cr.reviewed_by end) desc,
(case when {{sorting_column_select.value}} = 'mapping_group' and {{sort_direction_select.value}} = 'ASC' then sc.mapping_group end) asc,
(case when {{sorting_column_select.value}} = 'mapping_group' and {{sort_direction_select.value}} = 'DESC' then sc.mapping_group end) desc,
(case when {{sorting_column_select.value}} = 'target_display' and {{sort_direction_select.value}} = 'ASC' then cr.target_concept_display end) asc,
(case when {{sorting_column_select.value}} = 'target_display' and {{sort_direction_select.value}} = 'DESC' then cr.target_concept_display end) desc,
(case when {{sorting_column_select.value}} = 'resource_count' and {{sort_direction_select.value}} = 'ASC' then (ctc.additional_data->>'count_of_resources_affected')::integer end) asc,
(case when {{sorting_column_select.value}} = 'resource_count' and {{sort_direction_select.value}} = 'DESC' then (ctc.additional_data->>'count_of_resources_affected')::integer end) desc,
(case when {{sorting_column_select.value}} = 'review_status' and {{sort_direction_select.value}} = 'ASC' then cr.review_status end) asc,
(case when {{sorting_column_select.value}} = 'review_status' and {{sort_direction_select.value}} = 'DESC' then cr.review_status end) desc,
(case when {{sorting_column_select.value}} = 'mapping_comments' and {{sort_direction_select.value}} = 'ASC' then cr.mapping_comments end) asc,
(case when {{sorting_column_select.value}} = 'mapping_comments' and {{sort_direction_select.value}} = 'DESC' then cr.mapping_comments end) desc,
(case when {{sorting_column_select.value}} = 'review_comment' and {{sort_direction_select.value}} = 'ASC' then cr.review_comment end) asc,
(case when {{sorting_column_select.value}} = 'review_comment' and {{sort_direction_select.value}} = 'DESC' then cr.review_comment end) desc,
(case when {{sorting_column_select.value}} = 'reason_for_no_map' and {{sort_direction_select.value}} = 'ASC' then sc.reason_for_no_map end) asc,
(case when {{sorting_column_select.value}} = 'reason_for_no_map' and {{sort_direction_select.value}} = 'DESC' then sc.reason_for_no_map end) desc,
(case when {{sorting_column_select.value}} = 'source_comments' and {{sort_direction_select.value}} = 'ASC' then sc.comments end) asc,
(case when {{sorting_column_select.value}} = 'source_comments' and {{sort_direction_select.value}} = 'DESC' then sc.comments end) desc
limit {{ mapped_concepts.pageSize }}
offset {{ mapped_concepts.paginationOffset }}