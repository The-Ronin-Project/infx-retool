select count(distinct source_concept.uuid) as count_left from concept_maps.source_concept
join concept_maps.suggestion on source_concept.uuid = suggestion.source_concept_uuid
where source_concept.assigned_reviewer = {{select_user.value}}
and accepted is null
